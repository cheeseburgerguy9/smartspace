package com.google.android.systemui.smartspace.dagger;

import com.google.android.systemui.smartspace.WeatherSmartspaceDataProvider;
import dagger.internal.Factory;

public final class SmartspaceGoogleModule_ProvideDreamWeatherSmartspaceDataPluginFactory implements Factory<WeatherSmartspaceDataProvider> {
    public static WeatherSmartspaceDataProvider provideDreamWeatherSmartspaceDataPlugin() {
        return new WeatherSmartspaceDataProvider();
    }

    @Override
    public WeatherSmartspaceDataProvider get() {
        return provideDreamWeatherSmartspaceDataPlugin();
    }
}
