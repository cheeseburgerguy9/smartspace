.class public abstract Lcom/google/android/systemui/smartspace/dagger/SmartspaceGoogleModule_ProvideDreamWeatherSmartspaceDataPluginFactory;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Ldagger/internal/Provider;


# direct methods
.method public static provideDreamWeatherSmartspaceDataPlugin()Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;

    .line 2
    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;-><init>()V

    .line 4
    return-object v0
    .line 7
.end method
