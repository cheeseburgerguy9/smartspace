package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceUtils;
import android.app.smartspace.uitemplatedata.Icon;
import android.app.smartspace.uitemplatedata.Text;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.Map;

public abstract class BcSmartspaceTemplateDataUtils {
    public static final Map<Integer, Integer> TEMPLATE_TYPE_TO_SECONDARY_CARD_RES;

    static {
        TEMPLATE_TYPE_TO_SECONDARY_CARD_RES = Map.ofEntries(
                Map.entry(2, com.android.systemui.bcsmartspace.R.layout.smartspace_sub_image_template_card),
                Map.entry(3, com.android.systemui.bcsmartspace.R.layout.smartspace_sub_list_template_card),
                Map.entry(7, com.android.systemui.bcsmartspace.R.layout.smartspace_sub_card_template_card),
                Map.entry(5, com.android.systemui.bcsmartspace.R.layout.smartspace_head_to_head_template_card),
                Map.entry(6, com.android.systemui.bcsmartspace.R.layout.smartspace_combined_cards_template_card),
                Map.entry(4, com.android.systemui.bcsmartspace.R.layout.smartspace_carousel_template_card)
        );
    }

    public static void offsetTextViewForIcon(TextView textView, DoubleShadowIconDrawable icon, boolean isRtl) {
        if (textView == null) {
            return;
        }
        if (icon == null) {
            textView.setTranslationX(0.0f);
            return;
        }
        int multiplier = isRtl ? 1 : -1;
        textView.setTranslationX(multiplier * icon.mIconInsetSize);
    }

    public static void setIcon(ImageView imageView, Icon icon) {
        String tag = "BcSmartspaceTemplateDataUtils";
        if (imageView == null) {
            Log.w(tag, "Cannot set. The image view is null");
            return;
        }
        if (icon == null) {
            Log.w(tag, "Cannot set. The given icon is null");
            updateVisibility(imageView, View.GONE);
            return;
        }
        imageView.setImageIcon(icon.getIcon());
        if (icon.getContentDescription() != null) {
            imageView.setContentDescription(icon.getContentDescription());
        }
    }

    public static void setText(TextView textView, Text text) {
        String tag = "BcSmartspaceTemplateDataUtils";
        if (textView == null) {
             Log.w(tag, "Cannot set. The text view is null");
             return;
        }
        if (SmartspaceUtils.isEmpty(text)) {
            Log.w(tag, "Cannot set. The given text is empty");
            updateVisibility(textView, View.GONE);
            return;
        }
        textView.setText(text.getText());
        textView.setEllipsize(text.getTruncateAtType());
        textView.setMaxLines(text.getMaxLines());
    }

    public static void updateVisibility(View view, int visibility) {
        if (view != null && view.getVisibility() != visibility) {
            view.setVisibility(visibility);
        }
    }
}
