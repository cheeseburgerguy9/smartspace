package com.google.android.systemui.smartspace.uitemplate;

import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.uitemplatedata.SubListTemplateData;
import android.app.smartspace.uitemplatedata.TapAction;
import android.app.smartspace.uitemplatedata.Text;
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
import java.util.List;
import java.util.Locale;

public class SubListTemplateCard extends BcSmartspaceCardSecondary {
    private static final int[] LIST_ITEM_TEXT_VIEW_IDS = {R.id.list_item_1, R.id.list_item_2, R.id.list_item_3};
    public ImageView mListIconView;
    public final TextView[] mListItems;

    public SubListTemplateCard(Context context) {
        super(context);
        this.mListItems = new TextView[3];
    }

    public SubListTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mListItems = new TextView[3];
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mListIconView = findViewById(R.id.list_icon);
        for (int i = 0; i < 3; i++) {
            this.mListItems[i] = findViewById(LIST_ITEM_TEXT_VIEW_IDS[i]);
        }
    }

    @Override
    public void resetUi() {
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mListIconView, 8);
        for (int i = 0; i < 3; i++) {
            BcSmartspaceTemplateDataUtils.updateVisibility(this.mListItems[i], 8);
        }
    }

    @Override
    public boolean setSmartspaceActions(SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, BcSmartspaceCardLoggingInfo loggingInfo) {
        reset(target.getSmartspaceTargetId());
        SubListTemplateData templateData = (SubListTemplateData) target.getTemplateData();
        if (!BcSmartspaceCardLoggerUtil.containsValidTemplateType(templateData)) {
            Log.w("SubListTemplateCard", "SubListTemplateData is null or contains invalid template type");
            return false;
        }

        if (templateData.getSubListIcon() != null) {
            BcSmartspaceTemplateDataUtils.setIcon(mListIconView, templateData.getSubListIcon());
            BcSmartspaceTemplateDataUtils.updateVisibility(mListIconView, 0);
        } else {
            BcSmartspaceTemplateDataUtils.updateVisibility(mListIconView, 8);
        }

        List<Text> subListTexts = templateData.getSubListTexts();
        if (subListTexts == null || subListTexts.isEmpty()) {
            return false;
        }

        for (int i = 0; i < 3; i++) {
            TextView textView = mListItems[i];
            if (textView == null) {
                Log.w("SubListTemplateCard", String.format(Locale.US, "Missing list item view to update at row: %d", i + 1));
                continue;
            }
            if (i < subListTexts.size()) {
                BcSmartspaceTemplateDataUtils.setText(textView, subListTexts.get(i));
                BcSmartspaceTemplateDataUtils.updateVisibility(textView, 0);
            } else {
                textView.setText("");
                BcSmartspaceTemplateDataUtils.updateVisibility(textView, 8);
            }
        }

        if (templateData.getSubListAction() != null) {
            BcSmartSpaceUtil.setOnClickListener(this, target, templateData.getSubListAction(), notifier, "SubListTemplateCard", loggingInfo, 0);
        }

        return true;
    }

    @Override
    public void setTextColor(int i) {
        for (int j = 0; j < 3; j++) {
            TextView textView = mListItems[j];
            if (textView == null) {
                Log.w("SubListTemplateCard", String.format(Locale.US, "Missing list item view to update at row: %d", j + 1));
            } else {
                textView.setTextColor(i);
            }
        }
    }
}
