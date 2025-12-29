.class public final Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

.field public final mSmartspaceTargetListeners:Ljava/util/Set;

.field public final mSmartspaceTargets:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "WeatherSSDataProvider"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mSmartspaceTargetListeners:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mSmartspaceTargets:Ljava/util/List;

    .line 17
    new-instance v0, Lcom/google/android/systemui/smartspace/EventNotifierProxy;

    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public final getEventNotifier()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClockView(Landroid/content/Context;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    const/4 v0, 0x0

    .line 7
    const v1, 0x7f0d03e2    # @layout/weather_large 'res/layout/weather_large.xml'

    .line 8
    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object p0

    .line 14
    const p1, 0x7f0a0a21    # @id/weather_smartspace_view_large

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    .line 18
    check-cast p0, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 21
    return-object p0
    .line 23
.end method

.method public final getView(Landroid/content/Context;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    const/4 v0, 0x0

    .line 7
    const v1, 0x7f0d03e0    # @layout/weather 'res/layout/weather.xml'

    .line 8
    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 15
    return-object p0
    .line 17
.end method

.method public final onTargetsAvailable(Ljava/util/List;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " onTargetsAvailable called. Callers = "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const/4 v1, 0x3

    .line 19
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    const-string v1, "WeatherSSDataProvider"

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "    targets.size() = "

    .line 38
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    move-result v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    const-string v2, "    targets = "

    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mSmartspaceTargets:Ljava/util/List;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    move-result-object p1

    .line 86
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 96
    check-cast v0, Landroid/app/smartspace/SmartspaceTarget;

    .line 97
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 99
    move-result v1

    .line 102
    const/4 v2, 0x1

    .line 103
    if-eq v1, v2, :cond_1

    .line 104
    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mSmartspaceTargets:Ljava/util/List;

    .line 107
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    goto :goto_0

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mSmartspaceTargetListeners:Ljava/util/Set;

    .line 113
    new-instance v0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider$$ExternalSyntheticLambda0;

    .line 115
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p0, v0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;

    .line 120
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 122
    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 125
    return-void
    .line 128
.end method

.method public final registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mSmartspaceTargetListeners:Ljava/util/Set;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mSmartspaceTargets:Ljava/util/List;

    .line 7
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;->onSmartspaceTargetsUpdated(Ljava/util/List;)V

    .line 9
    return-void
    .line 12
.end method

.method public final setEventDispatcher(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

    .line 2
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/EventNotifierProxy;->eventDispatcher:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;

    .line 4
    return-void
    .line 6
.end method

.method public final setIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

    .line 2
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/EventNotifierProxy;->intentStarterRef:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    .line 4
    return-void
    .line 6
.end method

.method public final unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mSmartspaceTargetListeners:Ljava/util/Set;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method
