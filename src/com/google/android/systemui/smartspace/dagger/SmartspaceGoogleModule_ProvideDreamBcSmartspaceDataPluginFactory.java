package com.google.android.systemui.smartspace.dagger;

import com.google.android.systemui.smartspace.BcSmartspaceDataProvider;
import dagger.internal.Factory;

public final class SmartspaceGoogleModule_ProvideDreamBcSmartspaceDataPluginFactory implements Factory<BcSmartspaceDataProvider> {
    public static BcSmartspaceDataProvider provideDreamBcSmartspaceDataPlugin() {
        return new BcSmartspaceDataProvider();
    }

    @Override
    public BcSmartspaceDataProvider get() {
        return provideDreamBcSmartspaceDataPlugin();
    }
}
