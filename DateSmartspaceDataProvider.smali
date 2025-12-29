.class public final Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;


# instance fields
.field public mAttachListeners:Ljava/util/Set;

.field public mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

.field public mStateChangeListener:Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider$1;

.field public mViews:Ljava/util/Set;


# virtual methods
.method public final addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider;->mAttachListeners:Ljava/util/Set;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider;->mViews:Ljava/util/Set;

    .line 7
    check-cast p0, Ljava/util/HashSet;

    .line 9
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/View;

    .line 25
    invoke-interface {p1, v0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    return-void
    .line 31
.end method

.method public final getEventNotifier()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider;->mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClockView(Landroid/content/Context;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const v2, 0x7f0d00ab    # @layout/date_plus_extras_large 'res/layout/date_plus_extras_large.xml'

    .line 8
    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 14
    const v0, 0x7f0a0292    # @id/date_smartspace_view_large

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 18
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider;->mStateChangeListener:Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider$1;

    .line 21
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 23
    check-cast p1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 26
    return-object p1
.end method

.method public final getView(Landroid/content/Context;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const v2, 0x7f0d00aa    # @layout/date_plus_extras 'res/layout/date_plus_extras.xml'

    .line 8
    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider;->mStateChangeListener:Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider$1;

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 17
    check-cast p1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 20
    return-object p1
    .line 22
.end method

.method public final setEventDispatcher(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider;->mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

    .line 2
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/EventNotifierProxy;->eventDispatcher:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;

    .line 4
    return-void
    .line 6
.end method

.method public final setIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider;->mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

    .line 2
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/EventNotifierProxy;->intentStarterRef:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    .line 4
    return-void
    .line 6
.end method
