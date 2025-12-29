package com.google.android.systemui.smartspace.uitemplate;

import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.uitemplatedata.BaseTemplateData;
import android.app.smartspace.uitemplatedata.CombinedCardsTemplateData;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.systemui.bcsmartspace.R;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.BcSmartspaceCardSecondary;
import com.google.android.systemui.smartspace.BcSmartspaceTemplateDataUtils;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggerUtil;
import java.util.List;

public class CombinedCardsTemplateCard extends BcSmartspaceCardSecondary {
    public ConstraintLayout mFirstSubCard;
    public ConstraintLayout mSecondSubCard;

    public CombinedCardsTemplateCard(Context context) {
        super(context);
    }

    public CombinedCardsTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mFirstSubCard = findViewById(R.id.first_sub_card_container);
        this.mSecondSubCard = findViewById(R.id.second_sub_card_container);
    }

    @Override
    public void resetUi() {
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mFirstSubCard, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mSecondSubCard, 8);
    }

    @Override
    public boolean setSmartspaceActions(SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, BcSmartspaceCardLoggingInfo loggingInfo) {
        reset(target.getSmartspaceTargetId());
        CombinedCardsTemplateData templateData = (CombinedCardsTemplateData) target.getTemplateData();
        if (!BcSmartspaceCardLoggerUtil.containsValidTemplateType(templateData)) {
            Log.w("CombinedCardsTemplateCard", "TemplateData is null or empty or invalid template type");
            return false;
        }

        List<BaseTemplateData> combinedCardDataList = templateData.getCombinedCardDataList();
        if (combinedCardDataList == null || combinedCardDataList.isEmpty()) {
            Log.w("CombinedCardsTemplateCard", "TemplateData is null or empty or invalid template type");
            return false;
        }

        BaseTemplateData firstData = combinedCardDataList.get(0);
        BaseTemplateData secondData = combinedCardDataList.size() > 1 ? combinedCardDataList.get(1) : null;

        boolean firstSet = setupSubCard(mFirstSubCard, firstData, target, notifier, loggingInfo);
        boolean secondSet = false;
        if (secondData != null) {
            secondSet = setupSubCard(mSecondSubCard, secondData, target, notifier, loggingInfo);
        }

        return firstSet && (secondData == null || secondSet);
    }

    @Override
    public void setTextColor(int i) {
        updateTextColor(mFirstSubCard, i);
        updateTextColor(mSecondSubCard, i);
    }

    private void updateTextColor(ViewGroup container, int color) {
        if (container != null && container.getChildCount() > 0) {
             View child = container.getChildAt(0);
             if (child instanceof BcSmartspaceCardSecondary) {
                 ((BcSmartspaceCardSecondary) child).setTextColor(color);
             }
        }
    }

    private boolean setupSubCard(ViewGroup container, BaseTemplateData templateData, SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, BcSmartspaceCardLoggingInfo loggingInfo) {
        if (templateData == null) {
            BcSmartspaceTemplateDataUtils.updateVisibility(container, 8);
            Log.w("CombinedCardsTemplateCard", "Sub-card templateData is null or empty");
            return false;
        }

        Integer resId = BcSmartspaceTemplateDataUtils.TEMPLATE_TYPE_TO_SECONDARY_CARD_RES.get(templateData.getTemplateType());
        if (resId == null || resId == 0) {
            BcSmartspaceTemplateDataUtils.updateVisibility(container, 8);
            Log.w("CombinedCardsTemplateCard", "Combined sub-card res is null. Cannot set it up");
            return false;
        }

        BcSmartspaceCardSecondary card = (BcSmartspaceCardSecondary) LayoutInflater.from(container.getContext()).inflate(resId, container, false);

        SmartspaceTarget subTarget = new SmartspaceTarget.Builder(target.getSmartspaceTargetId(), target.getComponentName(), target.getUserHandle())
                .setTemplateData(templateData)
                .build();

        card.setSmartspaceActions(subTarget, notifier, loggingInfo);

        container.removeAllViews();
        ConstraintLayout.LayoutParams params = new ConstraintLayout.LayoutParams(-2, getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_card_height));
        params.startToStart = 0;
        params.endToEnd = 0;
        params.topToTop = 0;
        params.bottomToBottom = 0;

        BcSmartspaceTemplateDataUtils.updateVisibility(card, 0);
        container.addView(card, params);
        BcSmartspaceTemplateDataUtils.updateVisibility(container, 0);

        return true;
    }
}
