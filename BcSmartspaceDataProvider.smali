.class public final Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAttachListeners:Ljava/util/Set;

.field public mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

.field public final mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

.field public final mSmartspaceTargetListeners:Ljava/util/Set;

.field public mSmartspaceTargets:Ljava/util/List;

.field public final mStateChangeListener:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;

.field public final mViews:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "BcSmartspaceDataPlugin"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargetListeners:Ljava/util/Set;

    .line 10
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 12
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargets:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/HashSet;

    .line 16
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mViews:Ljava/util/Set;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    .line 23
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mAttachListeners:Ljava/util/Set;

    .line 28
    new-instance v0, Lcom/google/android/systemui/smartspace/EventNotifierProxy;

    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

    .line 35
    new-instance v0, Lcom/google/android/systemui/smartspace/DefaultBcSmartspaceConfigProvider;

    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 42
    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;

    .line 44
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p0, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;

    .line 49
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 51
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mStateChangeListener:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;

    .line 54
    return-void
    .line 56
.end method


# virtual methods
.method public final addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mAttachListeners:Ljava/util/Set;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mViews:Ljava/util/Set;

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
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getView(Landroid/content/Context;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 2
    invoke-interface {v0}, Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;->isViewPager2Enabled()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const v0, 0x7f0d02fe    # @layout/smartspace_enhanced2 'res/layout/smartspace_enhanced2.xml'

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x7f0d02fd    # @layout/smartspace_enhanced 'res/layout/smartspace_enhanced.xml'

    .line 14
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    move-result-object p1

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 26
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mStateChangeListener:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;

    .line 27
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 29
    check-cast p1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 32
    return-object p1
    .line 34
.end method

.method public final onTargetsAvailable(Ljava/util/List;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->DEBUG:Z

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
    const-string v1, "BcSmartspaceDataPlugin"

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
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 78
    move-result-object p1

    .line 81
    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$$ExternalSyntheticLambda0;

    .line 82
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 87
    move-result-object p1

    .line 90
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 91
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargets:Ljava/util/List;

    .line 95
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargetListeners:Ljava/util/Set;

    .line 97
    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$$ExternalSyntheticLambda1;

    .line 99
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p0, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;

    .line 104
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 106
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 109
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 111
    return-void
    .line 114
.end method

.method public final registerConfigProvider(Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 2
    return-void
    .line 4
.end method

.method public final registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargetListeners:Ljava/util/Set;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargets:Ljava/util/List;

    .line 7
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;->onSmartspaceTargetsUpdated(Ljava/util/List;)V

    .line 9
    return-void
    .line 12
.end method

.method public final setEventDispatcher(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

    .line 2
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/EventNotifierProxy;->eventDispatcher:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;

    .line 4
    return-void
    .line 6
.end method

.method public final setIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mEventNotifier:Lcom/google/android/systemui/smartspace/EventNotifierProxy;

    .line 2
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/EventNotifierProxy;->intentStarterRef:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    .line 4
    return-void
    .line 6
.end method

.method public final unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargetListeners:Ljava/util/Set;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method
