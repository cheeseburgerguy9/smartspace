package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceTarget;
import android.os.Handler;
import com.android.systemui.plugins.BcSmartspaceConfigPlugin;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.uitemplate.BaseTemplateCard;
import java.util.List;

public interface CardAdapter {
    SmartspaceCard getCardAtPosition(int position);
    int getCount();
    float getDozeAmount();
    boolean getHasAodLockscreenTransition();
    boolean getHasDifferentTargets();
    BcSmartspaceCard getLegacyCardAtPosition(int position);
    List<SmartspaceTarget> getLockscreenTargets();
    BcSmartspaceRemoteViewsCard getRemoteViewsCardAtPosition(int position);
    List<SmartspaceTarget> getSmartspaceTargets();
    SmartspaceTarget getTargetAtPosition(int position);
    BaseTemplateCard getTemplateCardAtPosition(int position);
    String getUiSurface();
    void setBgHandler(Handler handler);
    void setConfigProvider(BcSmartspaceConfigPlugin configProvider);
    void setDataProvider(BcSmartspaceDataPlugin dataProvider);
    void setDozeAmount(float amount);
    void setKeyguardBypassEnabled(boolean enabled);
    void setMediaTarget(SmartspaceTarget target);
    void setNonRemoteViewsHorizontalPadding(Integer padding);
    void setPrimaryTextColor(int color);
    void setScreenOn(boolean screenOn);
    void setTargets(List<SmartspaceTarget> targets);
    void setTimeChangedDelegate(BcSmartspaceDataPlugin.TimeChangedDelegate delegate);
    void setUiSurface(String uiSurface);
}
