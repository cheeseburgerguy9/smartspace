package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceTarget;
import com.android.systemui.plugins.BcSmartspaceConfigPlugin;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import android.os.Handler;
import java.util.List;

public interface CardAdapter {
    SmartspaceCard getCardAtPosition(int position);
    int getCount();
    SmartspaceTarget getTargetAtPosition(int position);
    List<SmartspaceTarget> getSmartspaceTargets();
    void setTargets(List<SmartspaceTarget> targets);
    void setConfigProvider(BcSmartspaceConfigPlugin configProvider);
    void setDataProvider(BcSmartspaceDataPlugin dataProvider);
    void setDozeAmount(float amount);
    void setPrimaryTextColor(int color);
    void setScreenOn(boolean screenOn);
    void setUiSurface(String uiSurface);
    String getUiSurface();
    float getDozeAmount();
    void setBgHandler(Handler handler);
    void setTimeChangedDelegate(BcSmartspaceDataPlugin.TimeChangedDelegate delegate);
    void notifyDataSetChanged();
    void setMediaTarget(SmartspaceTarget target);
    void setKeyguardBypassEnabled(boolean enabled);
}
