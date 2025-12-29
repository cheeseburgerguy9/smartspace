package com.google.android.systemui.smartspace.uitemplate;

import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.SmartspaceUtils;
import android.app.smartspace.uitemplatedata.SubCardTemplateData;
import android.app.smartspace.uitemplatedata.TapAction;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.bcsmartspace.R;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.BcSmartSpaceUtil;
import com.google.android.systemui.smartspace.BcSmartspaceCardSecondary;
import com.google.android.systemui.smartspace.BcSmartspaceTemplateDataUtils;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggerUtil;

public class SubCardTemplateCard extends BcSmartspaceCardSecondary {
    public ImageView mImageView;
    public TextView mTextView;

    public SubCardTemplateCard(Context context) {
        super(context);
    }

    public SubCardTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mImageView = findViewById(R.id.image_view);
        this.mTextView = findViewById(R.id.card_prompt);
    }

    @Override
    public void resetUi() {
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mImageView, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mTextView, 8);
    }

    @Override
    public boolean setSmartspaceActions(SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, BcSmartspaceCardLoggingInfo loggingInfo) {
        SubCardTemplateData templateData = (SubCardTemplateData) target.getTemplateData();
        if (!BcSmartspaceCardLoggerUtil.containsValidTemplateType(templateData)) {
            Log.w("SubCardTemplateCard", "SubCardTemplateData is null or invalid template type");
            return false;
        }

        boolean hasContent = false;

        if (templateData.getSubCardIcon() != null) {
            BcSmartspaceTemplateDataUtils.setIcon(mImageView, templateData.getSubCardIcon());
            BcSmartspaceTemplateDataUtils.updateVisibility(mImageView, 0);
            hasContent = true;
        } else {
             BcSmartspaceTemplateDataUtils.updateVisibility(mImageView, 8);
        }

        if (!SmartspaceUtils.isEmpty(templateData.getSubCardText())) {
            BcSmartspaceTemplateDataUtils.setText(mTextView, templateData.getSubCardText());
            BcSmartspaceTemplateDataUtils.updateVisibility(mTextView, 0);
            hasContent = true;
        } else {
             BcSmartspaceTemplateDataUtils.updateVisibility(mTextView, 8);
        }

        if (hasContent && templateData.getSubCardAction() != null) {
            BcSmartSpaceUtil.setOnClickListener(this, target, templateData.getSubCardAction(), notifier, "SubCardTemplateCard", loggingInfo, 0);
        }

        return hasContent;
    }

    @Override
    public void setTextColor(int i) {
        this.mTextView.setTextColor(i);
    }
}
