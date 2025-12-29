package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.android.app.animation.Interpolators;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.systemui.bcsmartspace.R;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardMetadataLoggingInfo;
import com.google.android.systemui.smartspace.logging.BcSmartspaceSubcardLoggingInfo;
import com.google.android.systemui.smartspace.utils.ContentDescriptionUtil;
import java.util.List;
import java.util.Locale;

public class BcSmartspaceCard extends ConstraintLayout implements SmartspaceCard {
    public final DoubleShadowIconDrawable mBaseActionIconDrawable;
    public android.graphics.Rect mBaseActionIconSubtitleHitRect;
    public DoubleShadowTextView mBaseActionIconSubtitleView;
    public float mDozeAmount;
    public BcSmartspaceDataPlugin.SmartspaceEventNotifier mEventNotifier;
    public final DoubleShadowIconDrawable mIconDrawable;
    public int mIconTintColor;
    public BcSmartspaceCardLoggingInfo mLoggingInfo;
    public BcSmartspaceCardSecondary mSecondaryCard;
    public ViewGroup mSecondaryCardGroup;
    public TextView mSubtitleTextView;
    public SmartspaceTarget mTarget;
    public ViewGroup mTextGroup;
    public TextView mTitleTextView;
    public boolean mTouchDelegateIsDirty;
    public String mUiSurface;
    public boolean mUsePageIndicatorUi;
    public boolean mValidSecondaryCard;

    public BcSmartspaceCard(Context context) {
        this(context, null);
    }

    public BcSmartspaceCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSecondaryCard = null;
        this.mIconTintColor = GraphicsUtils.getAttrColor(16842806, getContext());
        this.mTextGroup = null;
        this.mSecondaryCardGroup = null;
        this.mTitleTextView = null;
        this.mSubtitleTextView = null;
        this.mBaseActionIconSubtitleView = null;
        this.mBaseActionIconSubtitleHitRect = null;
        this.mUiSurface = null;
        this.mTouchDelegateIsDirty = false;
        context.getTheme().applyStyle(R.style.Smartspace, false);
        this.mIconDrawable = new DoubleShadowIconDrawable(context);
        this.mBaseActionIconDrawable = new DoubleShadowIconDrawable(context);
        setDefaultFocusHighlightEnabled(false);
    }

    public static int getClickedIndex(BcSmartspaceCardLoggingInfo loggingInfo, int cardTypeId) {
        BcSmartspaceSubcardLoggingInfo subcardInfo = loggingInfo.mSubcardInfo;
        if (subcardInfo != null && subcardInfo.mSubcards != null) {
            List<BcSmartspaceCardMetadataLoggingInfo> subcards = subcardInfo.mSubcards;
            for (int i = 0; i < subcards.size(); i++) {
                BcSmartspaceCardMetadataLoggingInfo info = subcards.get(i);
                if (info != null && info.mCardTypeId == cardTypeId) {
                    return i + 1;
                }
            }
        }
        return 0;
    }

    public final void bindData(SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, BcSmartspaceCardLoggingInfo loggingInfo, boolean usePageIndicatorUi) {
        this.mLoggingInfo = null;
        this.mEventNotifier = null;
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mSecondaryCardGroup, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mBaseActionIconSubtitleView, 8);
        this.mIconDrawable.setIcon(null);
        this.mBaseActionIconDrawable.setIcon(null);
        setTitle(null, null, false);
        setSubtitle(null, null, false);
        setBaseActionIconSubtitle(null, null, null);
        updateIconTint();
        setOnClickListener(null);
        if (this.mTitleTextView != null) {
            this.mTitleTextView.setOnClickListener(null);
            this.mTitleTextView.setClickable(false);
        }
        if (this.mSubtitleTextView != null) {
            this.mSubtitleTextView.setOnClickListener(null);
            this.mSubtitleTextView.setClickable(false);
        }
        if (this.mBaseActionIconSubtitleView != null) {
            this.mBaseActionIconSubtitleView.setOnClickListener(null);
            this.mBaseActionIconSubtitleView.setClickable(false);
        }
        this.mTarget = target;
        this.mEventNotifier = notifier;
        SmartspaceAction headerAction = target.getHeaderAction();
        SmartspaceAction baseAction = target.getBaseAction();
        this.mLoggingInfo = loggingInfo;
        this.mUsePageIndicatorUi = usePageIndicatorUi;
        this.mValidSecondaryCard = false;
        if (this.mTextGroup != null) {
            this.mTextGroup.setTranslationX(0.0f);
        }

        boolean showIcon = false;
        if (headerAction != null) {
             if (this.mSecondaryCard != null) {
                 this.mSecondaryCard.reset(target.getSmartspaceTargetId());
                 this.mValidSecondaryCard = this.mSecondaryCard.setSmartspaceActions(target, this.mEventNotifier, loggingInfo);
             }
             if (this.mSecondaryCardGroup != null) {
                 this.mSecondaryCardGroup.setAlpha(1.0f);
             }

             int secondaryCardVisibility = 8;
             if (this.mSecondaryCardGroup != null && (this.mDozeAmount == 1.0f || this.mValidSecondaryCard)) {
                 secondaryCardVisibility = 0;
             }
             BcSmartspaceTemplateDataUtils.updateVisibility(this.mSecondaryCardGroup, secondaryCardVisibility);

             android.graphics.drawable.Icon icon = headerAction.getIcon();
             Context context = getContext();
             Drawable drawable = BcSmartSpaceUtil.getIconDrawableWithCustomSize(icon, context, context.getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_icon_size));

             if (drawable != null) {
                 showIcon = true;
             }
             this.mIconDrawable.setIcon(drawable);

             CharSequence title = headerAction.getTitle();
             CharSequence subtitle = headerAction.getSubtitle();
             int featureType = target.getFeatureType();
             boolean hasTitle = featureType == 1 || !TextUtils.isEmpty(title);
             boolean hasSubtitle = !TextUtils.isEmpty(subtitle);

             CharSequence titleContentDescription = hasTitle ? title : (hasSubtitle ? subtitle : null);
             CharSequence subtitleContentDescription = headerAction.getContentDescription();

             boolean showTitleIcon = hasTitle && showIcon && featureType != 1;
             setTitle(title, subtitleContentDescription, showTitleIcon); // Wait, logic in smali is complex

             // Re-evaluating logic from smali lines 217-238
             // v12 = hasTitle
             // v14 = hasSubtitle (actually !isEmpty(subtitle))
             // v4 (titleContentDescription) = subtitle
             // v15 = contentDescription
             // if (hasTitle != hasSubtitle) { if (showIcon) { v14 = 1 } else { v14 = 0 } } else { v14 = 0 }
             // setTitle(title, contentDescription, v14)

             // Let's stick to Java logic which is easier to read if I map it correctly.
             // Smali:
             // 238: setTitle(title, contentDescription, boolean)

             // Wait, I will copy logic from smali line 228
             // v15 = headerAction.getContentDescription()
             // if (hasTitle != hasSubtitle) ...

             boolean showTitleIconForReal = false;
             if (hasTitle != hasSubtitle) {
                 if (showIcon) {
                     showTitleIconForReal = true;
                 }
             }

             setTitle(title, subtitleContentDescription, showTitleIconForReal);

             CharSequence subtitleText = hasTitle && !hasSubtitle ? null : subtitle;
             setSubtitle(subtitleText, headerAction.getContentDescription(), showIcon);
        }

        if (baseAction != null) {
            Bundle extras = baseAction.getExtras();
            int subcardType = -1;
            if (extras != null && !extras.isEmpty()) {
                 subcardType = extras.getInt("subcardType", -1);
            }

            android.graphics.drawable.Icon baseActionIcon = baseAction.getIcon();
            Drawable baseActionDrawable = null;
            if (baseActionIcon != null) {
                 Context context = getContext();
                 baseActionDrawable = BcSmartSpaceUtil.getIconDrawableWithCustomSize(baseActionIcon, context, context.getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_icon_size));
            }
            this.mBaseActionIconDrawable.setIcon(baseActionDrawable);

            setBaseActionIconSubtitle(baseAction.getSubtitle(), baseAction.getContentDescription(), this.mBaseActionIconDrawable);

            int clickedIndex = 0;
            if (subcardType != -1) {
                clickedIndex = getClickedIndex(loggingInfo, subcardType);
            } else {
                Log.d("BcSmartspaceCard", "Subcard expected but missing type. loggingInfo=" + loggingInfo + ", baseAction=" + baseAction);
            }

            BcSmartSpaceUtil.setOnClickListener(this.mBaseActionIconSubtitleView, target, baseAction, this.mEventNotifier, "BcSmartspaceCard", loggingInfo, clickedIndex);
        } else {
             updateIconTint();
             // Logic for setting click listener on main view
             SmartspaceAction action = headerAction;
             // ... logic from smali 397-488 is complex regarding which action to use
             // If headerAction has intent/pendingintent, use it.
             // If featureType == 1 and mFeatureType == 39 (0x27), getClickedIndex.

             SmartspaceAction clickAction = null;
             if (headerAction != null && (headerAction.getIntent() != null || headerAction.getPendingIntent() != null)) {
                 clickAction = headerAction;
             } else if (baseAction != null && (baseAction.getIntent() != null || baseAction.getPendingIntent() != null)) {
                 clickAction = baseAction;
             }

             if (clickAction != null) {
                 int clickedIndex = 0;
                 if (target.getFeatureType() == 1 && loggingInfo.mFeatureType == 39) {
                     clickedIndex = getClickedIndex(loggingInfo, 1);
                 }
                 BcSmartSpaceUtil.setOnClickListener(this, target, clickAction, this.mEventNotifier, "BcSmartspaceCard", loggingInfo, clickedIndex);
             }
        }

        if (this.mSecondaryCardGroup != null) {
             ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.mSecondaryCardGroup.getLayoutParams();
             if (BcSmartSpaceUtil.getFeatureType(target) == -2) {
                 layoutParams.matchConstraintMaxWidth = (getWidth() * 3) / 4;
             } else {
                 layoutParams.matchConstraintMaxWidth = getWidth() / 2;
             }
             this.mSecondaryCardGroup.setLayoutParams(layoutParams);
             this.mTouchDelegateIsDirty = true;
        }
    }

    @Override
    public AccessibilityNodeInfo createAccessibilityNodeInfo() {
        AccessibilityNodeInfo nodeInfo = super.createAccessibilityNodeInfo();
        AccessibilityNodeInfoCompat.wrap(nodeInfo).setRoleDescription(" ");
        return nodeInfo;
    }

    public BcSmartspaceCardLoggingInfo getLoggingInfo() {
        if (this.mLoggingInfo != null) {
            return this.mLoggingInfo;
        }
        BcSmartspaceCardLoggingInfo info = new BcSmartspaceCardLoggingInfo();
        info.mDisplaySurface = BcSmartSpaceUtil.getLoggingDisplaySurface(this.mUiSurface, this.mDozeAmount);
        info.mFeatureType = this.mTarget != null ? this.mTarget.getFeatureType() : 0;
        info.mUid = -1;
        return info;
    }

    public View getView() {
        return this;
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mTextGroup = findViewById(R.id.text_group);
        this.mSecondaryCardGroup = findViewById(R.id.secondary_card_group);
        this.mTitleTextView = findViewById(R.id.title_text);
        this.mSubtitleTextView = findViewById(R.id.subtitle_text);
        this.mBaseActionIconSubtitleView = findViewById(R.id.base_action_icon_subtitle);
        if (this.mBaseActionIconSubtitleView != null) {
            this.mBaseActionIconSubtitleHitRect = new android.graphics.Rect();
        }
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (!changed && !this.mTouchDelegateIsDirty) {
            return;
        }
        this.mTouchDelegateIsDirty = false;
        setTouchDelegate(null);
        if (this.mBaseActionIconSubtitleView != null && this.mBaseActionIconSubtitleView.getVisibility() == 0) {
             int height = this.mBaseActionIconSubtitleView.getHeight();
             int hitRectHeight = getResources().getDimensionPixelSize(R.dimen.subtitle_hit_rect_height);
             int offset = (hitRectHeight - height) / 2;
             this.mBaseActionIconSubtitleView.getHitRect(this.mBaseActionIconSubtitleHitRect);
             offsetDescendantRectToMyCoords((View) this.mBaseActionIconSubtitleView.getParent(), this.mBaseActionIconSubtitleHitRect);

             if (offset > 0) {
                 this.mBaseActionIconSubtitleHitRect.top -= offset;
             }
             this.mBaseActionIconSubtitleHitRect.bottom = getHeight();
             setTouchDelegate(new android.view.TouchDelegate(this.mBaseActionIconSubtitleHitRect, this.mBaseActionIconSubtitleView));
        }
    }

    public void setBaseActionIconSubtitle(CharSequence text, CharSequence contentDescription, Drawable icon) {
        if (this.mBaseActionIconSubtitleView == null) {
             Log.w("BcSmartspaceCard", "No base action icon subtitle view to update");
             return;
        }
        if (TextUtils.isEmpty(text)) {
            BcSmartspaceTemplateDataUtils.updateVisibility(this.mBaseActionIconSubtitleView, 8);
            return;
        }
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mBaseActionIconSubtitleView, 0);
        this.mBaseActionIconSubtitleView.setText(text);
        this.mBaseActionIconSubtitleView.setCompoundDrawablesRelative(icon, null, null, null);
        ContentDescriptionUtil.setFormattedContentDescription("BcSmartspaceCard", this.mBaseActionIconSubtitleView, text, contentDescription);
    }

    public void setDozeAmount(float dozeAmount) {
        this.mDozeAmount = dozeAmount;
        if (this.mTarget != null && this.mTarget.getBaseAction() != null && this.mTarget.getBaseAction().getExtras() != null) {
             Bundle extras = this.mTarget.getBaseAction().getExtras();
             if (this.mTitleTextView != null && extras.getBoolean("hide_title_on_aod")) {
                 this.mTitleTextView.setAlpha(1.0f - dozeAmount);
             }
             if (this.mSubtitleTextView != null && extras.getBoolean("hide_subtitle_on_aod")) {
                 this.mSubtitleTextView.setAlpha(1.0f - dozeAmount);
             }
        }

        if (this.mTextGroup == null) return;

        int visibility = 8;
        if (this.mDozeAmount != 1.0f && this.mValidSecondaryCard) {
            visibility = 0;
        }
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mSecondaryCardGroup, visibility);

        if (this.mTarget != null && this.mTarget.getFeatureType() == 30) {
            return;
        }

        if (this.mSecondaryCardGroup != null && this.mSecondaryCardGroup.getVisibility() != 8) {
             int direction = isRtl() ? 1 : -1;
             this.mTextGroup.setTranslationX(Interpolators.EMPHASIZED.getInterpolation(this.mDozeAmount) * this.mSecondaryCardGroup.getWidth() * direction);
             this.mSecondaryCardGroup.setAlpha(Math.max(0.0f, Math.min(1.0f, ((1.0f - this.mDozeAmount) * 9.0f) - 6.0f)));
        } else {
             this.mTextGroup.setTranslationX(0.0f);
        }
    }

    public void setPrimaryTextColor(int color) {
        if (this.mTitleTextView != null) this.mTitleTextView.setTextColor(color);
        if (this.mSubtitleTextView != null) this.mSubtitleTextView.setTextColor(color);
        if (this.mBaseActionIconSubtitleView != null) this.mBaseActionIconSubtitleView.setTextColor(color);
        if (this.mSecondaryCard != null) this.mSecondaryCard.setTextColor(color);
        this.mIconTintColor = color;
        updateIconTint();
    }

    public void setScreenOn(boolean screenOn) {
    }

    public void setSecondaryCard(BcSmartspaceCardSecondary secondaryCard) {
        this.mSecondaryCard = secondaryCard;
        if (this.mSecondaryCardGroup != null) {
            this.mSecondaryCardGroup.removeAllViews();
            if (secondaryCard != null) {
                ConstraintLayout.LayoutParams params = new ConstraintLayout.LayoutParams(-2, getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_card_height));
                params.setMarginStart(getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_secondary_card_start_margin));
                params.startToStart = 0;
                params.topToTop = 0;
                params.bottomToBottom = 0;
                this.mSecondaryCardGroup.addView(secondaryCard, params);
            }
            BcSmartspaceTemplateDataUtils.updateVisibility(this.mSecondaryCardGroup, 8);
        }
    }

    public void setSubtitle(CharSequence text, CharSequence contentDescription, boolean showIcon) {
        if (this.mSubtitleTextView == null) {
            Log.w("BcSmartspaceCard", "No subtitle view to update");
            return;
        }
        this.mSubtitleTextView.setText(text);
        Drawable icon = (TextUtils.isEmpty(text) || !showIcon) ? null : this.mIconDrawable;
        this.mSubtitleTextView.setCompoundDrawablesRelative(icon, null, null, null);

        int maxLines = 1;
        if (this.mTarget != null && this.mTarget.getFeatureType() == 5 && !this.mUsePageIndicatorUi) {
            maxLines = 2;
        }
        this.mSubtitleTextView.setMaxLines(maxLines);

        ContentDescriptionUtil.setFormattedContentDescription("BcSmartspaceCard", this.mSubtitleTextView, text, contentDescription);
        if (showIcon) {
             BcSmartspaceTemplateDataUtils.offsetTextViewForIcon(this.mSubtitleTextView, this.mIconDrawable, isRtl());
        } else {
             BcSmartspaceTemplateDataUtils.offsetTextViewForIcon(this.mSubtitleTextView, null, isRtl());
        }
    }

    public void setTitle(CharSequence text, CharSequence contentDescription, boolean showIcon) {
        if (this.mTitleTextView == null) {
            Log.w("BcSmartspaceCard", "No title view to update");
            return;
        }
        this.mTitleTextView.setText(text);

        SmartspaceAction headerAction = this.mTarget != null ? this.mTarget.getHeaderAction() : null;
        Bundle extras = headerAction != null ? headerAction.getExtras() : null;

        if (extras != null && extras.containsKey("titleEllipsize")) {
            try {
                this.mTitleTextView.setEllipsize(TextUtils.TruncateAt.valueOf(extras.getString("titleEllipsize")));
            } catch (IllegalArgumentException e) {
                // log error
            }
        } else if (this.mTarget != null && this.mTarget.getFeatureType() == 2 && Locale.ENGLISH.getLanguage().equals(getContext().getResources().getConfiguration().locale.getLanguage())) {
             this.mTitleTextView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        } else {
             this.mTitleTextView.setEllipsize(TextUtils.TruncateAt.END);
        }

        if (extras != null) {
            int maxLines = extras.getInt("titleMaxLines");
            if (maxLines != 0) {
                this.mTitleTextView.setMaxLines(maxLines);
            }
            if (extras.getBoolean("disableTitleIcon")) {
                showIcon = false;
            }
        }

        if (showIcon) {
             ContentDescriptionUtil.setFormattedContentDescription("BcSmartspaceCard", this.mTitleTextView, text, contentDescription);
        }

        Drawable icon = showIcon ? this.mIconDrawable : null;
        this.mTitleTextView.setCompoundDrawablesRelative(icon, null, null, null);
        BcSmartspaceTemplateDataUtils.offsetTextViewForIcon(this.mTitleTextView, showIcon ? this.mIconDrawable : null, isRtl());
    }

    public void updateIconTint() {
        if (this.mTarget != null && this.mIconDrawable != null) {
            if (this.mTarget.getFeatureType() == 1) {
                this.mIconDrawable.setTintList(null);
            } else {
                this.mIconDrawable.setTint(this.mIconTintColor);
            }
        }

        SmartspaceAction baseAction = this.mTarget != null ? this.mTarget.getBaseAction() : null;
        int subcardType = -1;
        if (baseAction != null && baseAction.getExtras() != null) {
             subcardType = baseAction.getExtras().getInt("subcardType", -1);
        }

        if (subcardType == 1) {
            this.mBaseActionIconDrawable.setTintList(null);
        } else {
            this.mBaseActionIconDrawable.setTint(this.mIconTintColor);
        }
    }
}
