package com.google.android.systemui.smartspace.dagger;

import com.google.android.systemui.smartspace.BcSmartspaceDataProvider;
import com.google.android.systemui.smartspace.WeatherSmartspaceDataProvider;
import dagger.Module;
import dagger.Provides;
import com.android.systemui.dagger.SysUISingleton;

@Module
public abstract class SmartspaceGoogleModule {
    @Provides
    @SysUISingleton
    static BcSmartspaceDataProvider provideDreamBcSmartspaceDataPlugin() {
        return new BcSmartspaceDataProvider();
    }

    @Provides
    @SysUISingleton
    static WeatherSmartspaceDataProvider provideDreamWeatherSmartspaceDataPlugin() {
        return new WeatherSmartspaceDataProvider();
    }
}
