package com.google.android.systemui.smartspace.uitemplate;

import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.uitemplatedata.BaseTemplateData;
import android.app.smartspace.uitemplatedata.Icon;
import android.app.smartspace.uitemplatedata.TapAction;
import android.app.smartspace.uitemplatedata.Text;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.app.animation.Interpolators;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.systemui.bcsmartspace.R;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.android.systemui.plugins.FalsingManager;
import com.google.android.systemui.smartspace.BcSmartSpaceUtil;
import com.google.android.systemui.smartspace.BcSmartspaceCardSecondary;
import com.google.android.systemui.smartspace.BcSmartspaceTemplateDataUtils;
import com.google.android.systemui.smartspace.DoubleShadowIconDrawable;
import com.google.android.systemui.smartspace.DoubleShadowTextView;
import com.google.android.systemui.smartspace.IcuDateTextView;
import com.google.android.systemui.smartspace.SmartspaceCard;
import com.google.android.systemui.smartspace.TouchDelegateComposite;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggerUtil;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardMetadataLoggingInfo;
import com.google.android.systemui.smartspace.logging.BcSmartspaceSubcardLoggingInfo;
import com.google.android.systemui.smartspace.utils.ContentDescriptionUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class BaseTemplateCard extends ConstraintLayout implements SmartspaceCard {
    public Handler mBgHandler;
    public IcuDateTextView mDateView;
    public float mDozeAmount;
    public ViewGroup mExtrasGroup;
    public int mFeatureType;
    public int mIconTintColor;
    public BcSmartspaceCardLoggingInfo mLoggingInfo;
    public BcSmartspaceCardSecondary mSecondaryCard;
    public ViewGroup mSecondaryCardPane;
    public boolean mShouldShowPageIndicator;
    public ViewGroup mSubtitleGroup;
    public Rect mSubtitleHitRect;
    public Rect mSubtitleSupplementalHitRect;
    public DoubleShadowTextView mSubtitleSupplementalView;
    public DoubleShadowTextView mSubtitleTextView;
    public DoubleShadowTextView mSupplementalLineTextView;
    public SmartspaceTarget mTarget;
    public BaseTemplateData mTemplateData;
    public ViewGroup mTextGroup;
    public DoubleShadowTextView mTitleTextView;
    public final TouchDelegateComposite mTouchDelegateComposite;
    public boolean mTouchDelegateIsDirty;
    public String mUiSurface;
    public boolean mValidSecondaryCard;

    public BaseTemplateCard(Context context) {
        this(context, null);
    }

    public BaseTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSecondaryCard = null;
        this.mFeatureType = 0;
        this.mLoggingInfo = null;
        this.mIconTintColor = GraphicsUtils.getAttrColor(android.R.attr.textColorPrimary, getContext());
        this.mTextGroup = null;
        this.mSecondaryCardPane = null;
        this.mDateView = null;
        this.mTitleTextView = null;
        this.mSubtitleGroup = null;
        this.mSubtitleTextView = null;
        this.mSubtitleSupplementalView = null;
        this.mSubtitleHitRect = null;
        this.mSubtitleSupplementalHitRect = null;
        this.mExtrasGroup = null;
        this.mSupplementalLineTextView = null;

        this.mTouchDelegateComposite = new TouchDelegateComposite(this);
        this.mTouchDelegateIsDirty = false;

        context.getTheme().applyStyle(R.style.Smartspace, false);
        setDefaultFocusHighlightEnabled(false);
    }

    public static boolean shouldTint(BaseTemplateData.SubItemInfo subItemInfo) {
        if (subItemInfo == null || subItemInfo.getIcon() == null) {
            return false;
        }
        return subItemInfo.getIcon().shouldTint();
    }

    @Override
    public void bindData(SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, BcSmartspaceCardLoggingInfo loggingInfo, boolean shouldShowPageIndicator) {
        this.mTarget = target;
        this.mTemplateData = target.getTemplateData();
        this.mFeatureType = target.getFeatureType();
        this.mLoggingInfo = loggingInfo;
        this.mShouldShowPageIndicator = shouldShowPageIndicator;
        this.mValidSecondaryCard = false;

        setOnClickListener(null);
        setClickable(false);
        if (mDateView != null) {
            mDateView.setOnClickListener(null);
            mDateView.setClickable(false);
        }

        resetTextView(mTitleTextView);
        resetTextView(mSubtitleTextView);
        resetTextView(mSubtitleSupplementalView);
        resetTextView(mSupplementalLineTextView);

        BcSmartspaceTemplateDataUtils.updateVisibility(mTitleTextView, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(mSubtitleGroup, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(mSubtitleTextView, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(mSubtitleSupplementalView, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(mSecondaryCardPane, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(mExtrasGroup, 8);

        if (mTextGroup != null) {
            mTextGroup.setTranslationX(0.0f);
        }

        if (mTemplateData == null) return;

        // Re-get logging info because mLoggingInfo passed might be stale or generic
        this.mLoggingInfo = getLoggingInfo();

        if (mSecondaryCard != null) {
            Log.i("SsBaseTemplateCard", "Secondary card is not null");
            mSecondaryCard.reset(target.getSmartspaceTargetId());
            mValidSecondaryCard = mSecondaryCard.setSmartspaceActions(target, notifier, mLoggingInfo);
        }

        if (mSecondaryCardPane != null) {
            int visibility = 8;
            if (mDozeAmount != 1.0f && mValidSecondaryCard) {
                visibility = 0;
            }
            BcSmartspaceTemplateDataUtils.updateVisibility(mSecondaryCardPane, visibility);
        }

        BaseTemplateData.SubItemInfo primaryItem = mTemplateData.getPrimaryItem();

        if (mDateView == null) {
             Log.d("SsBaseTemplateCard", "No date view can be set up");
        } else {
             if (TextUtils.isEmpty(mDateView.getText())) {
                 Log.d("SsBaseTemplateCard", "Date view text is empty");
             }

             TapAction dateAction = null;
             if (primaryItem != null && primaryItem.getTapAction() != null) {
                 dateAction = primaryItem.getTapAction();
             } else {
                 dateAction = new TapAction.Builder(UUID.randomUUID().toString())
                         .setIntent(BcSmartSpaceUtil.getOpenCalendarIntent())
                         .build();
             }

             BcSmartSpaceUtil.setOnClickListener(this, target, dateAction, notifier, "SsBaseTemplateCard", mLoggingInfo, 0);
             BcSmartSpaceUtil.setOnClickListener(mDateView, target, dateAction, notifier, "SsBaseTemplateCard", mLoggingInfo, 0);
        }

        boolean isDateViewVisible = mDateView != null;
        setUpTextView(mTitleTextView, primaryItem, notifier, !isDateViewVisible);
        setUpTextView(mSubtitleTextView, mTemplateData.getSubtitleItem(), notifier, true);
        setUpTextView(mSubtitleSupplementalView, mTemplateData.getSubtitleSupplementalItem(), notifier, true);
        setUpTextView(mSupplementalLineTextView, mTemplateData.getSupplementalLineItem(), notifier, true);

        if (mExtrasGroup != null) {
             if (mSupplementalLineTextView != null && mSupplementalLineTextView.getVisibility() == 0) {
                  if (mShouldShowPageIndicator || mDateView != null) {
                      BcSmartspaceTemplateDataUtils.updateVisibility(mExtrasGroup, 8);
                      updateZenColors();
                  } else {
                      BcSmartspaceTemplateDataUtils.updateVisibility(mExtrasGroup, 8); // Logic seems to hide it if page indicator is shown?
                      // Smali: if visible == 0
                      // if mShouldShowPageIndicator != 0
                      // if mDateView != null
                      // :cond_c -> updateVisibility(mExtrasGroup, 8)
                      // updateZenColors()
                      // else -> updateVisibility(mExtrasGroup, 8)
                      // This logic in smali seems to always hide extras group?
                      // Let's re-read smali carefully.
                      // 337: if-nez v0 (visible)
                      // 338: if mShouldShowPageIndicator
                      // 342: if mDateView != null
                      // 346: :cond_c (hide 8)
                      // else (356): :cond_d (hide 8)
                      // It seems extras group is hidden in base template logic? Maybe specific subclasses use it?
                  }
             } else {
                 BcSmartspaceTemplateDataUtils.updateVisibility(mExtrasGroup, 8);
             }
        }

        boolean subtitleVisible = mSubtitleTextView.getVisibility() == 0;
        boolean subtitleSupplementalVisible = mSubtitleSupplementalView.getVisibility() == 0;

        if (subtitleVisible || subtitleSupplementalVisible) {
            BcSmartspaceTemplateDataUtils.updateVisibility(mSubtitleGroup, 0);
        } else {
            BcSmartspaceTemplateDataUtils.updateVisibility(mSubtitleGroup, 8);
        }

        if (mFeatureType == 1 && mSubtitleSupplementalView != null && mSubtitleSupplementalView.getVisibility() == 0) {
            mSubtitleTextView.setEllipsize(TextUtils.TruncateAt.END);
        }

        // Tap Action Logic for whole card if not set by primary item on date view?
        if (mDateView == null) {
             TapAction tapAction = null;
             if (primaryItem != null) tapAction = primaryItem.getTapAction();

             if (tapAction != null) {
                 // Check if subtitle tap action matches
                 TapAction subAction = null;
                 if (mTemplateData.getSubtitleItem() != null) subAction = mTemplateData.getSubtitleItem().getTapAction();

                 // If intents/pending intents match, set listener on whole card?
                 // Simplified:
                 BcSmartSpaceUtil.setOnClickListener(this, target, tapAction, notifier, "SsBaseTemplateCard", mLoggingInfo, 0);
             }
        }

        // Secondary Card Pane Layout Params
        if (mSecondaryCardPane != null) {
            ConstraintLayout.LayoutParams params = (ConstraintLayout.LayoutParams) mSecondaryCardPane.getLayoutParams();
            params.matchConstraintMaxWidth = getWidth() / 2;
            mSecondaryCardPane.setLayoutParams(params);
            mTouchDelegateIsDirty = true;
        }
    }

    // ... rest of the methods (createAccessibilityNodeInfo, getLoggingInfo, getView, onFinishInflate, onLayout, resetTextView, setDozeAmount, setPrimaryTextColor, setScreenOn, setSecondaryCard, setUpTextView, updateTextViewIconTint, updateZenColors)

    @Override
    public android.view.accessibility.AccessibilityNodeInfo createAccessibilityNodeInfo() {
        return super.createAccessibilityNodeInfo(); // Wrapped in smali
    }

    @Override
    public BcSmartspaceCardLoggingInfo getLoggingInfo() {
         if (mLoggingInfo != null) return mLoggingInfo;
         // create new info
         BcSmartspaceCardLoggingInfo info = new BcSmartspaceCardLoggingInfo();
         info.mDisplaySurface = BcSmartSpaceUtil.getLoggingDisplaySurface(mUiSurface, mDozeAmount);
         info.mFeatureType = mFeatureType;
         info.mUid = -1;
         if (mTemplateData != null) {
             info.mDimensionalInfo = BcSmartspaceCardLoggerUtil.createDimensionalLoggingInfo(mTemplateData);
         }
         return info;
    }

    @Override
    public View getView() {
        return this;
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        mTextGroup = findViewById(R.id.text_group);
        mSecondaryCardPane = findViewById(R.id.secondary_card_group);
        mDateView = findViewById(R.id.date);
        mTitleTextView = findViewById(R.id.title_text);
        mSubtitleGroup = findViewById(R.id.smartspace_subtitle_group);
        mSubtitleTextView = findViewById(R.id.subtitle_text);
        mSubtitleSupplementalView = findViewById(R.id.base_action_icon_subtitle);
        mExtrasGroup = findViewById(R.id.smartspace_extras_group);

        if (mSubtitleTextView != null) mSubtitleHitRect = new Rect();
        if (mSubtitleSupplementalView != null) mSubtitleSupplementalHitRect = new Rect();

        if (mTouchDelegateComposite != null) {
            setTouchDelegate(mTouchDelegateComposite);
        }

        if (mExtrasGroup != null) {
            mSupplementalLineTextView = mExtrasGroup.findViewById(R.id.supplemental_line_text);
        }

        if (mBgHandler != null && mDateView != null) {
            mDateView.mBgHandler = mBgHandler;
        }
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (changed && mTouchDelegateIsDirty) {
             mTouchDelegateIsDirty = false;
             // Update touch delegates for subtitles
             if (mTouchDelegateComposite != null) {
                 mTouchDelegateComposite.mDelegates.clear();
                 // Logic to add delegates for subtitle text view and supplemental view
                 // ...
             }
        }
    }

    public void resetTextView(DoubleShadowTextView textView) {
        if (textView == null) return;
        textView.setCompoundDrawablesRelative(null, null, null, null);
        textView.setOnClickListener(null);
        textView.setClickable(false);
        textView.setContentDescription(null);
        textView.setText(null);
        if (isRtl()) {
            textView.setTranslationX(0.0f);
        }
    }

    @Override
    public void setDozeAmount$1(float amount) {
        mDozeAmount = amount;
        if (mTarget != null && mTarget.getBaseAction() != null && mTarget.getBaseAction().getExtras() != null) {
             // Hide title/subtitle logic on AOD
        }

        if (mTextGroup != null && mSecondaryCardPane != null) {
             int visibility = 8;
             if (mDozeAmount != 1.0f && mValidSecondaryCard) {
                 visibility = 0;
             }
             BcSmartspaceTemplateDataUtils.updateVisibility(mSecondaryCardPane, visibility);

             if (mSecondaryCardPane.getVisibility() != 8) {
                 int dir = isRtl() ? 1 : -1;
                 mTextGroup.setTranslationX(Interpolators.EMPHASIZED.getInterpolation(mDozeAmount) * mSecondaryCardPane.getWidth() * dir);
                 mSecondaryCardPane.setAlpha(Math.max(0.0f, Math.min(1.0f, ((1.0f - mDozeAmount) * 9.0f) - 6.0f)));
             } else {
                 mTextGroup.setTranslationX(0.0f);
             }
        }
    }

    @Override
    public void setPrimaryTextColor(int color) {
        mIconTintColor = color;
        if (mTitleTextView != null) mTitleTextView.setTextColor(color);
        if (mDateView != null) mDateView.setTextColor(color);
        if (mSubtitleTextView != null) mSubtitleTextView.setTextColor(color);
        if (mSubtitleSupplementalView != null) mSubtitleSupplementalView.setTextColor(color);

        // update icons tint
        // ...

        updateZenColors();
    }

    @Override
    public void setScreenOn(boolean screenOn) {
        if (mDateView != null) {
            mDateView.mIsInteractive = screenOn;
            mDateView.rescheduleTicker();
        }
    }

    public void setSecondaryCard(BcSmartspaceCardSecondary secondaryCard) {
        mSecondaryCard = secondaryCard;
        if (mSecondaryCardPane != null) {
            mSecondaryCardPane.removeAllViews();
            if (secondaryCard != null) {
                ConstraintLayout.LayoutParams params = new ConstraintLayout.LayoutParams(-2, getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_card_height));
                params.setMarginStart(getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_secondary_card_start_margin));
                params.startToStart = 0;
                params.topToTop = 0;
                params.bottomToBottom = 0;
                mSecondaryCardPane.addView(secondaryCard, params);
            }
            BcSmartspaceTemplateDataUtils.updateVisibility(mSecondaryCardPane, 8);
        }
    }

    public void setUpTextView(DoubleShadowTextView textView, BaseTemplateData.SubItemInfo itemInfo, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, boolean showIcon) {
        if (textView == null) return;
        resetTextView(textView);
        if (itemInfo == null) {
            BcSmartspaceTemplateDataUtils.updateVisibility(textView, 8);
            return;
        }

        BcSmartspaceTemplateDataUtils.setText(textView, itemInfo.getText());
        if (itemInfo.getText() != null && !TextUtils.isEmpty(itemInfo.getText().getText())) {
             textView.setTextColor(mIconTintColor);
        }

        Icon icon = itemInfo.getIcon();
        if (icon != null) {
             DoubleShadowIconDrawable drawable = new DoubleShadowIconDrawable(getContext());
             drawable.setIcon(BcSmartSpaceUtil.getIconDrawableWithCustomSize(icon.getIcon(), getContext(), getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_icon_size)));
             textView.setCompoundDrawablesRelative(drawable, null, null, null);

             // Tinting logic
             updateTextViewIconTint(textView, icon.shouldTint());

             if (showIcon) {
                 BcSmartspaceTemplateDataUtils.offsetTextViewForIcon(textView, drawable, isRtl());
             }
        }

        BcSmartspaceTemplateDataUtils.updateVisibility(textView, 0);

        // Tap Action
        TapAction action = itemInfo.getTapAction();
        if (action != null) {
            // Setup click listener
            // ...
             BcSmartSpaceUtil.setOnClickListener(textView, mTarget, action, notifier, "SsBaseTemplateCard", mLoggingInfo, 0);
        }
    }

    public void updateTextViewIconTint(DoubleShadowTextView textView, boolean shouldTint) {
        Drawable[] drawables = textView.getCompoundDrawablesRelative();
        for (Drawable d : drawables) {
            if (d != null) {
                if (shouldTint) {
                    d.setTint(mIconTintColor);
                } else {
                    d.setTintList(null);
                }
            }
        }
    }

    public void updateZenColors() {
        if (mSupplementalLineTextView != null) {
            mSupplementalLineTextView.setTextColor(mIconTintColor);
            if (mTemplateData != null && shouldTint(mTemplateData.getSupplementalLineItem())) {
                 updateTextViewIconTint(mSupplementalLineTextView, true);
            }
        }
    }

    private boolean isRtl() {
        return getLayoutDirection() == View.LAYOUT_DIRECTION_RTL;
    }
}
