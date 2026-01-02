package com.google.android.systemui.smartspace;

import com.android.systemui.dagger.SysUISingleton;
import com.android.systemui.flags.FeatureFlags;
import javax.inject.Inject;

@SysUISingleton
public class KeyguardSmartspaceController {
    @Inject
    public KeyguardSmartspaceController(
            FeatureFlags featureFlags,
            KeyguardZenAlarmViewController zenController,
            KeyguardMediaViewController mediaController) {
        mediaController.init();
        zenController.init();
    }
}
