package com.google.android.systemui.smartspace.uitemplate;

import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.uitemplatedata.CarouselTemplateData;
import android.app.smartspace.uitemplatedata.TapAction;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import com.android.systemui.bcsmartspace.R;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.BcSmartSpaceUtil;
import com.google.android.systemui.smartspace.BcSmartspaceCardSecondary;
import com.google.android.systemui.smartspace.BcSmartspaceTemplateDataUtils;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggerUtil;
import java.util.List;
import java.util.Locale;
import java.util.stream.Collectors;

public class CarouselTemplateCard extends BcSmartspaceCardSecondary {
    public CarouselTemplateCard(Context context) {
        super(context);
    }

    public CarouselTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        ConstraintLayout[] columns = new ConstraintLayout[4];
        for (int i = 0; i < 4; i++) {
            ConstraintLayout column = (ConstraintLayout) ViewGroup.inflate(getContext(), R.layout.smartspace_carousel_column_template_card, null);
            column.setId(View.generateViewId());
            columns[i] = column;
        }

        for (int i = 0; i < 4; i++) {
            ConstraintLayout.LayoutParams layoutParams = new Constraints.LayoutParams(-2, 0);
            ConstraintLayout current = columns[i];
            ConstraintLayout prev = i > 0 ? columns[i - 1] : null;
            ConstraintLayout next = i < 3 ? columns[i + 1] : null;

            if (i == 0) {
                layoutParams.startToStart = 0;
                layoutParams.horizontalChainStyle = 1;
            } else {
                layoutParams.startToEnd = prev.getId();
            }

            if (i == 3) {
                layoutParams.endToEnd = 0;
            } else {
                layoutParams.endToStart = next.getId();
            }

            layoutParams.topToTop = 0;
            layoutParams.bottomToBottom = 0;
            addView(current, layoutParams);
        }
    }

    @Override
    public void resetUi() {
        for (int i = 0; i < getChildCount(); i++) {
            View child = getChildAt(i);
            BcSmartspaceTemplateDataUtils.updateVisibility(child.findViewById(R.id.upper_text), 8);
            BcSmartspaceTemplateDataUtils.updateVisibility(child.findViewById(R.id.icon), 8);
            BcSmartspaceTemplateDataUtils.updateVisibility(child.findViewById(R.id.lower_text), 8);
        }
    }

    @Override
    public boolean setSmartspaceActions(SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, BcSmartspaceCardLoggingInfo loggingInfo) {
        CarouselTemplateData templateData = (CarouselTemplateData) target.getTemplateData();
        if (!BcSmartspaceCardLoggerUtil.containsValidTemplateType(templateData)) {
             Log.w("CarouselTemplateCard", "CarouselTemplateData is null or has no CarouselItem or invalid template type");
             return false;
        }

        List<CarouselTemplateData.CarouselItem> items = templateData.getCarouselItems();
        if (items == null) {
             Log.w("CarouselTemplateCard", "CarouselTemplateData is null or has no CarouselItem or invalid template type");
             return false;
        }

        List<CarouselTemplateData.CarouselItem> validItems = items.stream()
                .filter(item -> item.getImage() != null)
                .collect(Collectors.toList());

        int count = validItems.size();
        if (count < 4) {
            Log.w("CarouselTemplateCard", String.format(Locale.US, "Hiding %d incomplete column(s).", 4 - count));
            // Hiding logic same as WeatherForecast but simpler because we just built the columns
            // Smali logic: rsub-int/lit8 v2, v6, 0x3  -> v6 is count? no v6 is missing count.
            // count = actual valid count.
            // missing = 4 - count.
            // v2 = 3 - missing = 3 - (4 - count) = count - 1.
            // Loop i 0 to 4. if i <= count - 1 (meaning i < count), visible?
            // Actually smali: if i <= v2 (count-1) -> visible. else gone.

            for (int i = 0; i < 4; i++) {
                BcSmartspaceTemplateDataUtils.updateVisibility(getChildAt(i), i < count ? 0 : 8);
            }

            // Chain style
            if (count > 0) {
                 ConstraintLayout.LayoutParams lp = (ConstraintLayout.LayoutParams) getChildAt(0).getLayoutParams();
                 lp.horizontalChainStyle = (4 - count) == 0 ? 1 : 0; // If missing > 0, style is 0 (spread/packed?), else 1 (spread inside?)
                 // 0: CHAIN_SPREAD
                 // 1: CHAIN_SPREAD_INSIDE
            }
        }

        for (int i = 0; i < Math.min(count, 4); i++) {
            View column = getChildAt(i);
            TextView upperText = column.findViewById(R.id.upper_text);
            ImageView icon = column.findViewById(R.id.icon);
            TextView lowerText = column.findViewById(R.id.lower_text);

            CarouselTemplateData.CarouselItem item = validItems.get(i);

            BcSmartspaceTemplateDataUtils.setText(upperText, item.getUpperText());
            BcSmartspaceTemplateDataUtils.updateVisibility(upperText, 0);

            BcSmartspaceTemplateDataUtils.setIcon(icon, item.getImage());
            BcSmartspaceTemplateDataUtils.updateVisibility(icon, 0);

            BcSmartspaceTemplateDataUtils.setText(lowerText, item.getLowerText());
            BcSmartspaceTemplateDataUtils.updateVisibility(lowerText, 0);

            if (item.getTapAction() != null) {
                BcSmartSpaceUtil.setOnClickListener(column, target, item.getTapAction(), notifier, "CarouselTemplateCard", loggingInfo, 0);
            }
        }

        if (templateData.getCarouselAction() != null) {
             BcSmartSpaceUtil.setOnClickListener(this, target, templateData.getCarouselAction(), notifier, "CarouselTemplateCard", loggingInfo, 0);
        }

        return true;
    }

    @Override
    public void setTextColor(int i) {
        for (int j = 0; j < getChildCount(); j++) {
            View child = getChildAt(j);
            ((TextView) child.findViewById(R.id.upper_text)).setTextColor(i);
            ((TextView) child.findViewById(R.id.lower_text)).setTextColor(i);
        }
    }
}
