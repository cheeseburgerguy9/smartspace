package com.google.android.systemui.smartspace;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Locale;

public class BcSmartspaceCardWeatherForecast extends BcSmartspaceCard {
    private static final String TAG = "BcSmartspaceCardWeatherForecast";

    public BcSmartspaceCardWeatherForecast(Context context) {
        super(context);
    }

    public BcSmartspaceCardWeatherForecast(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void setTextColor(int color) {
        updateFields((view, index) -> {
            if (view instanceof android.widget.TextView) {
                ((android.widget.TextView) view).setTextColor(color);
            }
        }, 4, R.id.temperature_value, "temperature value");

        updateFields((view, index) -> {
             if (view instanceof android.widget.TextView) {
                ((android.widget.TextView) view).setTextColor(color);
            }
        }, 4, R.id.timestamp, "timestamp");
    }

    interface ItemUpdateFunction {
        void update(View view, int index);
    }

    void updateFields(ItemUpdateFunction updateFunction, int count, int resId, String name) {
        if (getChildCount() < 4) {
             Log.w(TAG, String.format(Locale.US, "Missing %d %s view(s) to update.", 4 - getChildCount(), name));
             return;
        }

        if (count < 4) {
            Log.w(TAG, String.format(Locale.US, "Missing %d %s(s). Hiding incomplete columns.", 4 - count, name));
            if (getChildCount() < 4) {
                 Log.w(TAG, "Missing " + (4 - getChildCount()) + " columns to update.");
                 // This logic seems duplicative in smali or I misread flow, but essentially handling missing children
            }

            // Logic to hide/show columns
             for (int i = 0; i < 4; i++) {
                View child = getChildAt(i);
                int visibility = (i <= 4 - count) ? View.GONE : View.VISIBLE; // Simplified logic, need to check smali carefully
                // Smali: if (i <= (4 - count) - 1?)
                // Actually the smali loop:
                // rsub-int/lit8 v1, v7, 0x3  (3 - (4-count) = count - 1)
                // if (i <= count - 1) -> VISIBLE else GONE?
                // Wait, logic:
                // v7 = 4 - count
                // v1 = 3 - v7 = count - 1
                // loop i from 0 to 3
                // if i <= v1 (i.e. i < count) -> v9 = 0 (VISIBLE)
                // else v9 = 8 (GONE)

                int effectiveVisibility = (i < count) ? View.VISIBLE : View.GONE;
                BcSmartspaceTemplateDataUtils.updateVisibility(child, effectiveVisibility);
            }

            View firstChild = getChildAt(0);
            if (firstChild instanceof ConstraintLayout) {
                ConstraintLayout.LayoutParams lp = (ConstraintLayout.LayoutParams) firstChild.getLayoutParams();
                lp.horizontalChainStyle = (count == 4) ? ConstraintLayout.LayoutParams.CHAIN_SPREAD : ConstraintLayout.LayoutParams.CHAIN_PACKED; // Simplified
                // Smali logic: if v7 (missing count) == 0 -> v6 = 1 (SPREAD?), else 0 (PACKED?)
            }
        }

        int limit = Math.min(4, count);
        for (int i = 0; i < limit; i++) {
            View child = getChildAt(i);
            View target = child.findViewById(resId);
            if (target == null) {
                Log.w(TAG, String.format(Locale.US, "Missing %d %s view to update at column: %d.", 1, name, i + 1));
                return;
            }
            updateFunction.update(target, i);
        }
    }
}
