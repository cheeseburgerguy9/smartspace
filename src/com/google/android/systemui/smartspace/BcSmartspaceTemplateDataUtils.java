package com.google.android.systemui.smartspace;

import android.view.View;

public final class BcSmartspaceTemplateDataUtils {
    public static void updateVisibility(View view, int visibility) {
        if (view != null && view.getVisibility() != visibility) {
            view.setVisibility(visibility);
        }
    }
}
