package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.systemui.bcsmartspace.R;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;
import java.util.List;

public class BcSmartspaceCardCombination extends BcSmartspaceCardSecondary {
    public ConstraintLayout mFirstSubCard;
    public ConstraintLayout mSecondSubCard;

    public BcSmartspaceCardCombination(Context context) {
        super(context);
    }

    public BcSmartspaceCardCombination(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final boolean fillSubCard(ConstraintLayout constraintLayout, SmartspaceTarget smartspaceTarget, SmartspaceAction smartspaceAction, BcSmartspaceDataPlugin.SmartspaceEventNotifier smartspaceEventNotifier, BcSmartspaceCardLoggingInfo bcSmartspaceCardLoggingInfo) {
        TextView textView = (TextView) constraintLayout.findViewById(R.id.sub_card_text);
        ImageView imageView = (ImageView) constraintLayout.findViewById(R.id.sub_card_icon);
        if (textView == null) {
            Log.w("BcSmartspaceCardCombination", "No sub-card text field to update");
            return false;
        }
        if (imageView == null) {
            Log.w("BcSmartspaceCardCombination", "No sub-card image field to update");
            return false;
        }
        BcSmartSpaceUtil.setOnClickListener((View) constraintLayout, smartspaceTarget, smartspaceAction, smartspaceEventNotifier, "BcSmartspaceCardCombination", bcSmartspaceCardLoggingInfo, 0);
        Drawable iconDrawable = BcSmartSpaceUtil.getIconDrawableWithCustomSize(smartspaceAction.getIcon(), getContext(), getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_icon_size));
        boolean z = true;
        if (iconDrawable == null) {
            BcSmartspaceTemplateDataUtils.updateVisibility(imageView, 8);
            z = false;
        } else {
            imageView.setImageDrawable(iconDrawable);
            BcSmartspaceTemplateDataUtils.updateVisibility(imageView, 0);
        }
        CharSequence title = smartspaceAction.getTitle();
        if (TextUtils.isEmpty(title)) {
            BcSmartspaceTemplateDataUtils.updateVisibility(textView, 8);
            z = false;
        } else {
            textView.setText(title);
            BcSmartspaceTemplateDataUtils.updateVisibility(textView, 0);
        }
        constraintLayout.setContentDescription(z ? smartspaceAction.getContentDescription() : null);
        if (z) {
            BcSmartspaceTemplateDataUtils.updateVisibility(constraintLayout, 0);
            return true;
        }
        BcSmartspaceTemplateDataUtils.updateVisibility(constraintLayout, 8);
        return true;
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mFirstSubCard = findViewById(R.id.first_sub_card);
        this.mSecondSubCard = findViewById(R.id.second_sub_card);
    }

    @Override
    public void resetUi() {
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mFirstSubCard, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mSecondSubCard, 8);
    }

    @Override
    public boolean setSmartspaceActions(SmartspaceTarget smartspaceTarget, BcSmartspaceDataPlugin.SmartspaceEventNotifier smartspaceEventNotifier, BcSmartspaceCardLoggingInfo bcSmartspaceCardLoggingInfo) {
        List<SmartspaceAction> actionChips = smartspaceTarget.getActionChips();
        if (actionChips == null || actionChips.size() < 1) {
            return false;
        }
        SmartspaceAction smartspaceAction = actionChips.get(0);
        if (smartspaceAction == null) {
            return false;
        }
        boolean fillSubCard = this.mFirstSubCard != null && fillSubCard(this.mFirstSubCard, smartspaceTarget, smartspaceAction, smartspaceEventNotifier, bcSmartspaceCardLoggingInfo);
        boolean z = actionChips.size() > 1 && actionChips.get(1) != null;
        boolean fillSubCard2 = z ? fillSubCard(this.mSecondSubCard, smartspaceTarget, actionChips.get(1), smartspaceEventNotifier, bcSmartspaceCardLoggingInfo) : true;
        if (getLayoutParams() instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getLayoutParams();
            if (z && fillSubCard2) {
                layoutParams.weight = 3.0f;
            } else {
                layoutParams.weight = 1.0f;
            }
            setLayoutParams(layoutParams);
        }
        return fillSubCard && fillSubCard2;
    }

    @Override
    public void setTextColor(int i) {
    }
}
