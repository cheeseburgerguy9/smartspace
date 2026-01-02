package com.google.android.systemui.smartspace;

import android.content.Context;
import android.util.AttributeSet;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;

public abstract class BcSmartspaceCardSecondary extends BcSmartspaceCard {
    public BcSmartspaceCardSecondary(Context context) {
        super(context);
    }

    public BcSmartspaceCardSecondary(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public abstract boolean setSmartspaceActions(android.app.smartspace.SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier eventNotifier, BcSmartspaceCardLoggingInfo loggingInfo);
}
