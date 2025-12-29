package com.google.android.systemui.smartspace.uitemplate;

import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.uitemplatedata.HeadToHeadTemplateData;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.bcsmartspace.R;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.BcSmartSpaceUtil;
import com.google.android.systemui.smartspace.BcSmartspaceCardSecondary;
import com.google.android.systemui.smartspace.BcSmartspaceTemplateDataUtils;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggerUtil;

public class HeadToHeadTemplateCard extends BcSmartspaceCardSecondary {
    public ImageView mFirstCompetitorIcon;
    public TextView mFirstCompetitorText;
    public TextView mHeadToHeadTitle;
    public ImageView mSecondCompetitorIcon;
    public TextView mSecondCompetitorText;

    public HeadToHeadTemplateCard(Context context) {
        super(context);
    }

    public HeadToHeadTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mHeadToHeadTitle = findViewById(R.id.head_to_head_title);
        this.mFirstCompetitorText = findViewById(R.id.first_competitor_text);
        this.mSecondCompetitorText = findViewById(R.id.second_competitor_text);
        this.mFirstCompetitorIcon = findViewById(R.id.first_competitor_icon);
        this.mSecondCompetitorIcon = findViewById(R.id.second_competitor_icon);
    }

    @Override
    public void resetUi() {
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mHeadToHeadTitle, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mFirstCompetitorText, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mSecondCompetitorText, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mFirstCompetitorIcon, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mSecondCompetitorIcon, 8);
    }

    @Override
    public boolean setSmartspaceActions(SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, BcSmartspaceCardLoggingInfo loggingInfo) {
        HeadToHeadTemplateData templateData = (HeadToHeadTemplateData) target.getTemplateData();
        if (!BcSmartspaceCardLoggerUtil.containsValidTemplateType(templateData)) {
            Log.w("HeadToHeadTemplateCard", "HeadToHeadTemplateData is null or invalid template type");
            return false;
        }

        boolean hasContent = false;

        if (templateData.getHeadToHeadTitle() != null) {
            if (mHeadToHeadTitle == null) {
                 Log.w("HeadToHeadTemplateCard", "No head-to-head title view to update");
            } else {
                 BcSmartspaceTemplateDataUtils.setText(mHeadToHeadTitle, templateData.getHeadToHeadTitle());
                 BcSmartspaceTemplateDataUtils.updateVisibility(mHeadToHeadTitle, 0);
                 hasContent = true;
            }
        }

        if (templateData.getHeadToHeadFirstCompetitorText() != null) {
             if (mFirstCompetitorText == null) {
                 Log.w("HeadToHeadTemplateCard", "No first competitor text view to update");
             } else {
                 BcSmartspaceTemplateDataUtils.setText(mFirstCompetitorText, templateData.getHeadToHeadFirstCompetitorText());
                 BcSmartspaceTemplateDataUtils.updateVisibility(mFirstCompetitorText, 0);
                 hasContent = true;
             }
        }

        if (templateData.getHeadToHeadSecondCompetitorText() != null) {
             if (mSecondCompetitorText == null) {
                 Log.w("HeadToHeadTemplateCard", "No second competitor text view to update");
             } else {
                 BcSmartspaceTemplateDataUtils.setText(mSecondCompetitorText, templateData.getHeadToHeadSecondCompetitorText());
                 BcSmartspaceTemplateDataUtils.updateVisibility(mSecondCompetitorText, 0);
                 hasContent = true;
             }
        }

        if (templateData.getHeadToHeadFirstCompetitorIcon() != null) {
             if (mFirstCompetitorIcon == null) {
                 Log.w("HeadToHeadTemplateCard", "No first competitor icon view to update");
             } else {
                 BcSmartspaceTemplateDataUtils.setIcon(mFirstCompetitorIcon, templateData.getHeadToHeadFirstCompetitorIcon());
                 BcSmartspaceTemplateDataUtils.updateVisibility(mFirstCompetitorIcon, 0);
                 hasContent = true;
             }
        }

        if (templateData.getHeadToHeadSecondCompetitorIcon() != null) {
             if (mSecondCompetitorIcon == null) {
                 Log.w("HeadToHeadTemplateCard", "No second competitor icon view to update");
             } else {
                 BcSmartspaceTemplateDataUtils.setIcon(mSecondCompetitorIcon, templateData.getHeadToHeadSecondCompetitorIcon());
                 BcSmartspaceTemplateDataUtils.updateVisibility(mSecondCompetitorIcon, 0);
                 hasContent = true;
             }
        }

        if (hasContent && templateData.getHeadToHeadAction() != null) {
             BcSmartSpaceUtil.setOnClickListener(this, target, templateData.getHeadToHeadAction(), notifier, "HeadToHeadTemplateCard", loggingInfo, 0);
        }

        return hasContent;
    }

    @Override
    public void setTextColor(int i) {
        if (this.mFirstCompetitorText != null) {
            this.mFirstCompetitorText.setTextColor(i);
        }
        if (this.mSecondCompetitorText != null) {
            this.mSecondCompetitorText.setTextColor(i);
        }
    }
}
