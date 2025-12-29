package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
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
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;
import java.util.Locale;

public class BcSmartspaceCardWeatherForecast extends BcSmartspaceCardSecondary {

    public BcSmartspaceCardWeatherForecast(Context context) {
        super(context);
    }

    public BcSmartspaceCardWeatherForecast(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        ConstraintLayout[] columns = new ConstraintLayout[4];
        for (int i = 0; i < 4; i++) {
            ConstraintLayout column = (ConstraintLayout) ViewGroup.inflate(getContext(), R.layout.smartspace_card_weather_forecast_column, null);
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
    public boolean setSmartspaceActions(SmartspaceTarget smartspaceTarget, BcSmartspaceDataPlugin.SmartspaceEventNotifier smartspaceEventNotifier, BcSmartspaceCardLoggingInfo bcSmartspaceCardLoggingInfo) {
        SmartspaceAction baseAction = smartspaceTarget.getBaseAction();
        if (baseAction == null) {
            return false;
        }
        Bundle extras = baseAction.getExtras();
        if (extras == null) {
            return false;
        }
        boolean hasContent = false;
        if (extras.containsKey("temperatureValues")) {
            String[] temperatureValues = extras.getStringArray("temperatureValues");
            if (temperatureValues == null) {
                Log.w("BcSmartspaceCardWeatherForecast", "Temperature values array is null.");
            } else {
                updateFields((view, index) -> {
                    TextView textView = (TextView) view;
                    textView.setText(temperatureValues[index]);
                    BcSmartspaceTemplateDataUtils.updateVisibility(textView, 0);
                }, temperatureValues.length, R.id.temperature_value, "temperature value");
                hasContent = true;
            }
        }
        if (extras.containsKey("weatherIcons")) {
            Bitmap[] weatherIcons = (Bitmap[]) extras.get("weatherIcons"); // Assuming it can be cast or retrieved as Bitmap[]
            if (weatherIcons == null) {
                 // Try getting as Parcelable array and casting if needed, but get() returns Object.
                 // Smali check-cast to [Landroid/graphics/Bitmap; so it expects Bitmap array.
                 Log.w("BcSmartspaceCardWeatherForecast", "Weather icons array is null.");
            } else {
                updateFields((view, index) -> {
                    ImageView imageView = (ImageView) view;
                    imageView.setImageBitmap(weatherIcons[index]);
                    BcSmartspaceTemplateDataUtils.updateVisibility(imageView, 0);
                }, weatherIcons.length, R.id.weather_icon, "weather icon");
                hasContent = true;
            }
        }
        if (extras.containsKey("timestamps")) {
            String[] timestamps = extras.getStringArray("timestamps");
            if (timestamps == null) {
                Log.w("BcSmartspaceCardWeatherForecast", "Timestamps array is null.");
            } else {
                updateFields((view, index) -> {
                    TextView textView = (TextView) view;
                    textView.setText(timestamps[index]);
                    BcSmartspaceTemplateDataUtils.updateVisibility(textView, 0);
                }, timestamps.length, R.id.timestamp, "timestamp");
                hasContent = true;
            }
        }
        return hasContent;
    }

    @Override
    public void setTextColor(int i) {
        updateFields((view, index) -> ((TextView) view).setTextColor(i), 4, R.id.temperature_value, "temperature value");
        updateFields((view, index) -> ((TextView) view).setTextColor(i), 4, R.id.timestamp, "timestamp");
    }

    private interface ItemUpdateFunction {
        void update(View view, int index);
    }

    private void updateFields(ItemUpdateFunction updateFunction, int count, int viewId, String fieldName) {
        int childCount = getChildCount();
        if (childCount < 4) {
            Log.w("BcSmartspaceCardWeatherForecast", String.format(Locale.US, "Missing %d %s view(s) to update.", 4 - childCount, fieldName));
            return;
        }
        if (count < 4) {
            Log.w("BcSmartspaceCardWeatherForecast", String.format(Locale.US, "Missing %d %s(s). Hiding incomplete columns.", 4 - count, fieldName));
            if (getChildCount() < 4) {
                 // Already logged
            } else {
                int hideIndex = count; // Logic from smali: rsub-int/lit8 v1, v7, 0x3 -> 3 - (4 - count) = count - 1?
                // Smali logic:
                // v7 = 4 - count
                // v1 = 3 - v7 = 3 - (4 - count) = count - 1
                // Loop 0 to 3. If <= v1 (count - 1), visible (0), else gone (8).
                // Wait, if count is 3. v7=1. v1=2. 0,1,2 visible. 3 gone. Correct.

                // My logic: Loop i from 0 to 3. If i < count, visible (handled by update function calls?), else gone.
                // But wait, the update loop only goes up to min(4, count).
                // The visibility hiding logic is separate in smali (lines 45-143).

                for (int i = 0; i < 4; i++) {
                    View child = getChildAt(i);
                    BcSmartspaceTemplateDataUtils.updateVisibility(child, i < count ? 0 : 8);
                }

                // Chain style logic
                View firstChild = getChildAt(0);
                ConstraintLayout.LayoutParams lp = (ConstraintLayout.LayoutParams) firstChild.getLayoutParams();
                lp.horizontalChainStyle = (4 - count) == 0 ? 1 : 0; // if missing columns (v7 != 0), style is 0 (CHAIN_SPREAD?), else 1 (CHAIN_SPREAD_INSIDE?)
                // Smali: if v7 == 0 (no missing), v6=1. else v6=0.
                // 1 is CHAIN_SPREAD_INSIDE? No, ConstraintLayout.LayoutParams.CHAIN_SPREAD is 0, SPREAD_INSIDE is 1, PACKED is 2.
                // So if complete, SPREAD_INSIDE. If missing, SPREAD.
            }
        }

        int updateCount = Math.min(4, count);
        for (int i = 0; i < updateCount; i++) {
            View column = getChildAt(i);
            View view = column.findViewById(viewId);
            if (view == null) {
                Log.w("BcSmartspaceCardWeatherForecast", String.format(Locale.US, "Missing %s view to update at column: %d.", fieldName, i + 1));
                return;
            }
            updateFunction.update(view, i);
        }
    }
}
