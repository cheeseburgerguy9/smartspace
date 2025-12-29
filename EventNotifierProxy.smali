.class public final Lcom/google/android/systemui/smartspace/EventNotifierProxy;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;


# instance fields
.field public eventDispatcher:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;

.field public intentStarterRef:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;


# virtual methods
.method public final getIntentStarter()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/EventNotifierProxy;->intentStarterRef:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    .line 2
    return-object p0
    .line 4
.end method

.method public final notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/EventNotifierProxy;->eventDispatcher:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method
