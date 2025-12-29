package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceTarget;
import android.view.View;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;

public interface SmartspaceCard {
    void bindData(SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, BcSmartspaceCardLoggingInfo loggingInfo, boolean z);
    BcSmartspaceCardLoggingInfo getLoggingInfo();
    View getView();
    void setDozeAmount$1(float amount);
    void setPrimaryTextColor(int color);
    void setScreenOn(boolean screenOn);
}
