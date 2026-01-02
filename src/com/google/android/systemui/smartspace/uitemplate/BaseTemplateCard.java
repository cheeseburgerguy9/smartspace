package com.google.android.systemui.smartspace.uitemplate;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.systemui.smartspace.BcSmartspaceCardSecondary;

public class BaseTemplateCard extends BcSmartspaceCardSecondary {
    public BaseTemplateCard(Context context) {
        super(context);
    }

    public BaseTemplateCard(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    public boolean setSmartspaceActions(android.app.smartspace.SmartspaceTarget target, com.android.systemui.plugins.BcSmartspaceDataPlugin.SmartspaceEventNotifier eventNotifier, com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo loggingInfo) {
        return false;
    }
}
