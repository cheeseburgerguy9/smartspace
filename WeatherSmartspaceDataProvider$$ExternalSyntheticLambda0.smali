.class public final synthetic Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;

    .line 2
    check-cast p1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;

    .line 4
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mSmartspaceTargets:Ljava/util/List;

    .line 6
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;->onSmartspaceTargetsUpdated(Ljava/util/List;)V

    .line 8
    return-void
    .line 11
.end method
