package com.google.android.systemui.smartspace.uitemplate;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.systemui.smartspace.BcSmartSpaceUtil;
import com.google.android.systemui.smartspace.BcSmartspaceTemplateDataUtils;
import android.app.smartspace.uitemplatedata.SubListTemplateData;
import android.app.smartspace.uitemplatedata.Text;
import android.util.Log;
import android.view.View;
import java.util.List;
import com.android.systemui.res.R;

public class SubListTemplateCard extends BaseTemplateCard {
    private static final String TAG = "SubListTemplateCard";
    private static final int[] LIST_ITEM_TEXT_VIEW_IDS = {R.id.list_item_1, R.id.list_item_2, R.id.list_item_3};
    private ImageView mListIconView;
    private final TextView[] mListItems = new TextView[3];

    public SubListTemplateCard(Context context) {
        super(context);
    }

    public SubListTemplateCard(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        mListIconView = findViewById(R.id.list_icon);
        for (int i = 0; i < 3; i++) {
            mListItems[i] = findViewById(LIST_ITEM_TEXT_VIEW_IDS[i]);
        }
    }

    public void resetUi() {
        if (mListIconView != null) {
            BcSmartspaceTemplateDataUtils.updateVisibility(mListIconView, View.GONE);
        }
        for (TextView item : mListItems) {
            if (item != null) {
                BcSmartspaceTemplateDataUtils.updateVisibility(item, View.GONE);
            }
        }
    }

    @Override
    public boolean setSmartspaceActions(android.app.smartspace.SmartspaceTarget target, com.android.systemui.plugins.BcSmartspaceDataPlugin.SmartspaceEventNotifier eventNotifier, com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo loggingInfo) {
        reset(target.getSmartspaceTargetId());
        android.app.smartspace.uitemplatedata.BaseTemplateData data = target.getTemplateData();
        if (!(data instanceof SubListTemplateData)) {
            Log.w(TAG, "SubListTemplateData is null or contains invalid template type");
            return false;
        }
        SubListTemplateData templateData = (SubListTemplateData) data;

        android.app.smartspace.uitemplatedata.Icon icon = templateData.getSubListIcon();
        if (icon != null) {
            // Helper to set icon would go here. Assuming setImageIcon or similar.
            // BcSmartspaceTemplateDataUtils.setIcon(mListIconView, icon);
             BcSmartspaceTemplateDataUtils.updateVisibility(mListIconView, View.VISIBLE);
        } else {
             BcSmartspaceTemplateDataUtils.updateVisibility(mListIconView, View.GONE);
        }

        List<Text> texts = templateData.getSubListTexts();
        if (texts == null || texts.isEmpty()) {
            return false;
        }

        for (int i = 0; i < 3; i++) {
            TextView textView = mListItems[i];
            if (textView == null) {
                Log.w(TAG, "Missing list item view to update at row: " + (i + 1));
                continue;
            }
            if (i < texts.size()) {
                Text text = texts.get(i);
                textView.setText(text.getText());
                BcSmartspaceTemplateDataUtils.updateVisibility(textView, View.VISIBLE);
            } else {
                textView.setText("");
                BcSmartspaceTemplateDataUtils.updateVisibility(textView, View.GONE);
            }
        }

        if (templateData.getSubListAction() != null) {
            BcSmartSpaceUtil.setOnClickListener(this, target, templateData.getSubListAction(), eventNotifier, TAG, loggingInfo, 0);
        }

        return true;
    }

    public void setTextColor(int color) {
        for (int i = 0; i < 3; i++) {
            TextView textView = mListItems[i];
             if (textView != null) {
                 textView.setTextColor(color);
             }
        }
    }

    // Stub to match superclass method if not present in BaseTemplateCard but used here
    public void reset(String id) {
        // implementation
    }
}
