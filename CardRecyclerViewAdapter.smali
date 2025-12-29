.class public final Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/google/android/systemui/smartspace/CardAdapter;


# static fields
.field public static final legacySecondaryCardResourceIdSet:Ljava/util/Set;

.field public static final templateSecondaryCardResourceIdSet:Ljava/util/Set;


# instance fields
.field public final _aodTargets:Ljava/util/List;

.field public _dozeAmount:F

.field public final _lockscreenTargets:Ljava/util/List;

.field public bgHandler:Landroid/os/Handler;

.field public configProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

.field public currentTextColor:I

.field public dataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public final dozeColor:I

.field public hasAodLockscreenTransition:Z

.field public hasDifferentTargets:Z

.field public keyguardBypassEnabled:Z

.field public final mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

.field public final mediaTargets:Ljava/util/List;

.field public nonRemoteViewsHorizontalPadding:Ljava/lang/Integer;

.field public previousDozeAmount:F

.field public primaryTextColor:I

.field public final root:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

.field public smartspaceTargets:Ljava/util/List;

.field public timeChangedDelegate:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;

.field public transitioningTo:Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;

.field public uiSurface:Ljava/lang/String;

.field public final viewHolders:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->FEATURE_TYPE_TO_SECONDARY_CARD_RESOURCE_MAP:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 13
    sput-object v0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->legacySecondaryCardResourceIdSet:Ljava/util/Set;

    .line 14
    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->TEMPLATE_TYPE_TO_SECONDARY_CARD_RES:Ljava/util/Map;

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Iterable;

    .line 22
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 24
    move-result-object v0

    .line 27
    sput-object v0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->templateSecondaryCardResourceIdSet:Ljava/util/Set;

    .line 28
    return-void
    .line 30
.end method

.method public constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$DiffUtilItemCallback;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v2, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    .line 10
    if-nez v2, :cond_0

    .line 12
    const/4 v2, 0x2

    .line 14
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 15
    move-result-object v2

    .line 18
    sput-object v2, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    .line 19
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    sget-object v1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    .line 25
    new-instance v2, Landroidx/recyclerview/widget/AsyncDifferConfig;

    .line 27
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, v2, Landroidx/recyclerview/widget/AsyncDifferConfig;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    .line 32
    iput-object v0, v2, Landroidx/recyclerview/widget/AsyncDifferConfig;->mDiffCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 34
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    new-instance v0, Landroidx/recyclerview/widget/ListAdapter$1;

    .line 42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p0, v0, Landroidx/recyclerview/widget/ListAdapter$1;->this$0:Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;

    .line 47
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 49
    new-instance v1, Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 52
    new-instance v3, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    .line 54
    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 56
    invoke-direct {v1, v3, v2}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/AdapterListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    .line 59
    iput-object v1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 62
    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mListeners:Ljava/util/List;

    .line 64
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->root:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    .line 73
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    .line 80
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->smartspaceTargets:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    .line 87
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_aodTargets:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    .line 94
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_lockscreenTargets:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    .line 101
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mediaTargets:Ljava/util/List;

    .line 106
    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->dozeColor:I

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    move-result-object p1

    .line 114
    const v0, 0x1010036    # @android:attr/textColorPrimary

    .line 115
    invoke-static {v0, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    .line 118
    move-result p1

    .line 121
    iput p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->primaryTextColor:I

    .line 122
    iput p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->currentTextColor:I

    .line 124
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->configProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 126
    sget-object p1, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;->NOT_IN_TRANSITION:Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;

    .line 128
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->transitioningTo:Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;

    .line 130
    return-void

    .line 132
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw p0
    .line 134
.end method

.method public static synthetic getAodTargets$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getConfigProvider$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getDataProvider$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getDozeAmount$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getHasAodLockscreenTransition$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getHasDifferentTargets$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getKeyguardBypassEnabled$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getLockscreenTargets$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getPrimaryTextColor$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getScreenOn$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getUiSurface$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static isTemplateCard(Landroid/app/smartspace/SmartspaceTarget;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 8
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->containsValidTemplateType(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
    .line 21
.end method


# virtual methods
.method public final addDefaultDateCardIfEmpty$1(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Landroid/app/smartspace/SmartspaceTarget$Builder;

    .line 8
    new-instance v1, Landroid/content/ComponentName;

    .line 10
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->root:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v2

    .line 17
    const-class v3, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;

    .line 18
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 27
    move-result-object p0

    .line 30
    const-string v2, "date_card_794317_92634"

    .line 31
    invoke-direct {v0, v2, v1, p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 33
    const/4 p0, 0x1

    .line 36
    invoke-virtual {v0, p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;

    .line 37
    move-result-object v0

    .line 40
    new-instance v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;

    .line 41
    invoke-direct {v1, p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;-><init>(I)V

    .line 43
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setTemplateData(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Landroid/app/smartspace/SmartspaceTarget$Builder;

    .line 50
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->build()Landroid/app/smartspace/SmartspaceTarget;

    .line 54
    move-result-object p0

    .line 57
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    return-void
    .line 61
.end method

.method public final getCardAtPosition(I)Lcom/google/android/systemui/smartspace/SmartspaceCard;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/SmartspaceCard;

    .line 12
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
    .line 16
.end method

.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->smartspaceTargets:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getDozeAmount()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_dozeAmount:F

    .line 2
    return p0
    .line 4
.end method

.method public final getHasAodLockscreenTransition()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->hasAodLockscreenTransition:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getHasDifferentTargets()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->hasDifferentTargets:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final getItemViewType(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/smartspace/SmartspaceTarget;

    .line 10
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getRemoteViews()Landroid/widget/RemoteViews;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getRemoteViews()Landroid/widget/RemoteViews;

    .line 20
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    .line 29
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->isTemplateCard(Landroid/app/smartspace/SmartspaceTarget;)Z

    .line 34
    move-result p1

    .line 37
    if-eqz p1, :cond_5

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 43
    move-result-object p0

    .line 46
    if-eqz p0, :cond_4

    .line 47
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getText()Landroid/app/smartspace/uitemplatedata/Text;

    .line 49
    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    .line 53
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    .line 59
    move-result-object p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 65
    move-result-object p0

    .line 68
    if-eqz p0, :cond_2

    .line 69
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getFeatureType()I

    .line 71
    move-result p0

    .line 74
    const/4 p1, 0x1

    .line 75
    if-ne p0, p1, :cond_2

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    sget-object p0, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->TEMPLATE_TYPE_TO_SECONDARY_CARD_RES:Ljava/util/Map;

    .line 79
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getTemplateType()I

    .line 81
    move-result p1

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object p1

    .line 88
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object p0

    .line 92
    check-cast p0, Ljava/lang/Integer;

    .line 93
    if-eqz p0, :cond_3

    .line 95
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 97
    move-result p0

    .line 100
    return p0

    .line 101
    :cond_3
    const p0, 0x7f0d02ea    # @layout/smartspace_base_template_card 'res/layout/smartspace_base_template_card.xml'

    .line 102
    return p0

    .line 105
    :cond_4
    :goto_0
    const p0, 0x7f0d02eb    # @layout/smartspace_base_template_card_with_date 'res/layout/smartspace_base_template_card_with_date.xml'

    .line 106
    return p0

    .line 109
    :cond_5
    sget-object p1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->FEATURE_TYPE_TO_SECONDARY_CARD_RESOURCE_MAP:Ljava/util/Map;

    .line 110
    invoke-static {p0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I

    .line 112
    move-result p0

    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object p0

    .line 119
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-result-object p0

    .line 123
    check-cast p0, Ljava/lang/Integer;

    .line 124
    if-eqz p0, :cond_6

    .line 126
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 128
    move-result p0

    .line 131
    return p0

    .line 132
    :cond_6
    const p0, 0x7f0d02ec    # @layout/smartspace_card 'res/layout/smartspace_card.xml'

    .line 133
    return p0
    .line 136
.end method

.method public final getLegacyCardAtPosition(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;

    .line 8
    const/4 p1, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/SmartspaceCard;

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    move-object p0, p1

    .line 16
    :goto_0
    instance-of v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 21
    return-object p0

    .line 23
    :cond_1
    return-object p1
    .line 24
.end method

.method public final getLockscreenTargets()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mediaTargets:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->keyguardBypassEnabled:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mediaTargets:Ljava/util/List;

    .line 14
    return-object p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_lockscreenTargets:Ljava/util/List;

    .line 17
    return-object p0
    .line 19
.end method

.method public final getRemoteViewsCardAtPosition(I)Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;

    .line 8
    const/4 p1, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/SmartspaceCard;

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    move-object p0, p1

    .line 16
    :goto_0
    instance-of v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;

    .line 21
    return-object p0

    .line 23
    :cond_1
    return-object p1
    .line 24
.end method

.method public final getSmartspaceTargets()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->smartspaceTargets:Ljava/util/List;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->getItemCount()I

    .line 4
    move-result v0

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 11
    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 13
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 18
    check-cast p0, Landroid/app/smartspace/SmartspaceTarget;

    .line 19
    return-object p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return-object p0
    .line 23
.end method

.method public final getTemplateCardAtPosition(I)Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;

    .line 8
    const/4 p1, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/SmartspaceCard;

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    move-object p0, p1

    .line 16
    :goto_0
    instance-of v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    check-cast p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    .line 21
    return-object p0

    .line 23
    :cond_1
    return-object p1
    .line 24
.end method

.method public final getUiSurface()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->uiSurface:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 1
    check-cast p1, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 4
    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 6
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/smartspace/SmartspaceTarget;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->isTemplateCard(Landroid/app/smartspace/SmartspaceTarget;)Z

    .line 17
    move-result v1

    .line 20
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)I

    .line 21
    move-result v2

    .line 24
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 25
    move-result v3

    .line 28
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->uiSurface:Ljava/lang/String;

    .line 29
    iget v5, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_dozeAmount:F

    .line 31
    invoke-static {v4, v5}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    .line 33
    move-result v4

    .line 36
    iget-object v5, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->smartspaceTargets:Ljava/util/List;

    .line 37
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 39
    move-result v5

    .line 42
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->root:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 43
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v6

    .line 48
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 49
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 54
    move-result-object v6

    .line 57
    invoke-static {v6}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 58
    move-result-object v6

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfo(Landroid/app/smartspace/SmartspaceTarget;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 63
    move-result-object v6

    .line 66
    :goto_0
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 67
    move-result-object v7

    .line 70
    invoke-static {v7}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createDimensionalLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 71
    move-result-object v7

    .line 74
    new-instance v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 75
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v2, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 80
    iput v4, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    .line 82
    iput p2, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    .line 84
    iput v5, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    .line 86
    iput v3, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 88
    const/4 v2, 0x0

    .line 90
    iput v2, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    .line 91
    const/4 v3, -0x1

    .line 93
    iput v3, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 94
    iput-object v6, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 96
    iput-object v7, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 98
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 100
    iget-object v3, p1, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/SmartspaceCard;

    .line 103
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getRemoteViews()Landroid/widget/RemoteViews;

    .line 105
    move-result-object v4

    .line 108
    const/4 v5, 0x0

    .line 109
    const-string v6, "SsCardRecyclerViewAdapter"

    .line 110
    if-eqz v4, :cond_2

    .line 112
    instance-of v1, v3, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;

    .line 114
    if-nez v1, :cond_1

    .line 116
    const-string p0, "[rmv] No RemoteViews card view can be binded"

    .line 118
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 123
    :cond_1
    const-string v1, "[rmv] Refreshing RemoteViews card"

    .line 124
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    goto :goto_2

    .line 129
    :cond_2
    if-eqz v1, :cond_6

    .line 130
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 132
    move-result-object v1

    .line 135
    if-eqz v1, :cond_5

    .line 136
    invoke-static {v8, v1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->tryForcePrimaryFeatureTypeOrUpdateLogInfoFromTemplateData(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)V

    .line 138
    instance-of v1, v3, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    .line 141
    if-nez v1, :cond_3

    .line 143
    const-string p0, "No ui-template card view can be binded"

    .line 145
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 150
    :cond_3
    move-object v1, v3

    .line 151
    check-cast v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    .line 152
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->bgHandler:Landroid/os/Handler;

    .line 154
    if-eqz v4, :cond_4

    .line 156
    goto :goto_1

    .line 158
    :cond_4
    move-object v4, v5

    .line 159
    :goto_1
    iput-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mBgHandler:Landroid/os/Handler;

    .line 160
    iget-object v1, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 162
    if-eqz v1, :cond_7

    .line 164
    iput-object v4, v1, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mBgHandler:Landroid/os/Handler;

    .line 166
    goto :goto_2

    .line 168
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 169
    const-string p1, "Required value was null."

    .line 171
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 173
    throw p0

    .line 176
    :cond_6
    instance-of v1, v3, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 177
    if-nez v1, :cond_7

    .line 179
    const-string p0, "No legacy card view can be binded"

    .line 181
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 186
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->dataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 187
    if-eqz v1, :cond_8

    .line 189
    invoke-interface {v1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->getEventNotifier()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 191
    move-result-object v5

    .line 194
    :cond_8
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->smartspaceTargets:Ljava/util/List;

    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 197
    move-result v1

    .line 200
    const/4 v4, 0x1

    .line 201
    if-le v1, v4, :cond_9

    .line 202
    move v2, v4

    .line 204
    :cond_9
    invoke-interface {v3, v0, v5, v8, v2}, Lcom/google/android/systemui/smartspace/SmartspaceCard;->bindData(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Z)V

    .line 205
    iget v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->currentTextColor:I

    .line 208
    invoke-interface {v3, v0}, Lcom/google/android/systemui/smartspace/SmartspaceCard;->setPrimaryTextColor(I)V

    .line 210
    iget v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_dozeAmount:F

    .line 213
    invoke-interface {v3, v0}, Lcom/google/android/systemui/smartspace/SmartspaceCard;->setDozeAmount$1(F)V

    .line 215
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 218
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    return-void
    .line 223
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->templateSecondaryCardResourceIdSet:Ljava/util/Set;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const v4, 0x7f0d02ea    # @layout/smartspace_base_template_card 'res/layout/smartspace_base_template_card.xml'

    .line 14
    const/4 v5, -0x1

    .line 17
    if-nez v1, :cond_5

    .line 18
    const v1, 0x7f0d02eb    # @layout/smartspace_base_template_card_with_date 'res/layout/smartspace_base_template_card_with_date.xml'

    .line 20
    if-eq p1, v1, :cond_5

    .line 23
    if-ne p1, v4, :cond_0

    .line 25
    goto/16 :goto_1

    .line 27
    :cond_0
    sget-object v0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->legacySecondaryCardResourceIdSet:Ljava/util/Set;

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v1

    .line 34
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 38
    const v4, 0x7f0d02ec    # @layout/smartspace_card 'res/layout/smartspace_card.xml'

    .line 39
    if-nez v1, :cond_2

    .line 42
    if-ne p1, v4, :cond_1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    new-instance p1, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;

    .line 47
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 49
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;-><init>(Landroid/content/Context;)V

    .line 53
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->uiSurface:Ljava/lang/String;

    .line 56
    iput-object p0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;->mUiSurface:Ljava/lang/String;

    .line 58
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 60
    invoke-direct {p0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 62
    invoke-virtual {p1, p0}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    goto/16 :goto_4

    .line 68
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 74
    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v2

    .line 83
    move p1, v4

    .line 84
    :cond_3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 85
    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 89
    move-result-object v0

    .line 92
    invoke-virtual {v0, p1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    move-result-object p1

    .line 96
    check-cast p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 97
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->uiSurface:Ljava/lang/String;

    .line 99
    iput-object p2, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mUiSurface:Ljava/lang/String;

    .line 101
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->nonRemoteViewsHorizontalPadding:Ljava/lang/Integer;

    .line 103
    if-eqz p0, :cond_4

    .line 105
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 107
    move-result p0

    .line 110
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 111
    move-result p2

    .line 114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 115
    move-result v1

    .line 118
    invoke-virtual {p1, p0, p2, p0, v1}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 119
    :cond_4
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 122
    invoke-direct {p0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 124
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    if-eqz v2, :cond_c

    .line 130
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 132
    move-result p0

    .line 135
    invoke-virtual {v0, p0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 136
    move-result-object p0

    .line 139
    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 140
    invoke-virtual {p1, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setSecondaryCard(Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;)V

    .line 142
    goto/16 :goto_4

    .line 145
    :cond_5
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object v1

    .line 150
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 151
    move-result v0

    .line 154
    if-eqz v0, :cond_6

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v2

    .line 160
    move p1, v4

    .line 161
    :cond_6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 162
    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 166
    move-result-object v0

    .line 169
    invoke-virtual {v0, p1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 170
    move-result-object p1

    .line 173
    check-cast p1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    .line 174
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->uiSurface:Ljava/lang/String;

    .line 176
    iput-object p2, p1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mUiSurface:Ljava/lang/String;

    .line 178
    iget-object v1, p1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 180
    const-string v4, "Must call before attaching view to window."

    .line 182
    if-eqz v1, :cond_8

    .line 184
    const-string v1, "lockscreen"

    .line 186
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 188
    move-result p2

    .line 191
    if-eqz p2, :cond_8

    .line 192
    iget-object p2, p1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 194
    invoke-virtual {p2}, Landroid/widget/TextView;->isAttachedToWindow()Z

    .line 196
    move-result v1

    .line 199
    if-nez v1, :cond_7

    .line 200
    const/4 v1, 0x1

    .line 202
    iput-boolean v1, p2, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mUpdatesOnAod:Z

    .line 203
    goto :goto_2

    .line 205
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 206
    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 208
    throw p0

    .line 211
    :cond_8
    :goto_2
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->nonRemoteViewsHorizontalPadding:Ljava/lang/Integer;

    .line 212
    if-eqz p2, :cond_9

    .line 214
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 216
    move-result p2

    .line 219
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 220
    move-result v1

    .line 223
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 224
    move-result v6

    .line 227
    invoke-virtual {p1, p2, v1, p2, v6}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 228
    :cond_9
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->timeChangedDelegate:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;

    .line 231
    iget-object p2, p1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 233
    if-eqz p2, :cond_b

    .line 235
    invoke-virtual {p2}, Landroid/widget/TextView;->isAttachedToWindow()Z

    .line 237
    move-result v1

    .line 240
    if-nez v1, :cond_a

    .line 241
    iput-object p0, p2, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mTimeChangedDelegate:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;

    .line 243
    goto :goto_3

    .line 245
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 246
    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 248
    throw p0

    .line 251
    :cond_b
    :goto_3
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 252
    invoke-direct {p0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 254
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    if-eqz v2, :cond_c

    .line 260
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 262
    move-result p0

    .line 265
    invoke-virtual {v0, p0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 266
    move-result-object p0

    .line 269
    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 270
    const-string p2, "SsCardRecyclerViewAdapter"

    .line 272
    const-string v0, "Secondary card is found"

    .line 274
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p1, p0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->setSecondaryCard(Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;)V

    .line 279
    :cond_c
    :goto_4
    new-instance p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;

    .line 282
    invoke-interface {p1}, Lcom/google/android/systemui/smartspace/SmartspaceCard;->getView()Landroid/view/View;

    .line 284
    move-result-object p2

    .line 287
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 288
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/SmartspaceCard;

    .line 291
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 293
    return-object p0
    .line 296
.end method

.method public final setBgHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->bgHandler:Landroid/os/Handler;

    .line 2
    return-void
    .line 4
.end method

.method public final setConfigProvider(Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->configProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 2
    return-void
    .line 4
.end method

.method public final setDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->dataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 2
    return-void
    .line 4
.end method

.method public final setDozeAmount(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_dozeAmount:F

    .line 2
    iget v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->previousDozeAmount:F

    .line 4
    cmpl-float v1, v0, p1

    .line 6
    if-lez v1, :cond_0

    .line 8
    sget-object v0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;->TO_LOCKSCREEN:Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    cmpg-float v0, v0, p1

    .line 13
    if-gez v0, :cond_1

    .line 15
    sget-object v0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;->TO_AOD:Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    sget-object v0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;->NOT_IN_TRANSITION:Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;

    .line 20
    :goto_0
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->transitioningTo:Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;

    .line 22
    iput p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->previousDozeAmount:F

    .line 24
    const/4 p1, 0x0

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->updateTargetVisibility(Ljava/lang/Runnable;Z)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->updateCurrentTextColor$1()V

    .line 31
    return-void
    .line 34
.end method

.method public final setKeyguardBypassEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->keyguardBypassEnabled:Z

    .line 2
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->updateTargetVisibility(Ljava/lang/Runnable;Z)V

    .line 6
    return-void
    .line 9
.end method

.method public setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mediaTargets:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mediaTargets:Ljava/util/List;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->updateTargetVisibility(Ljava/lang/Runnable;Z)V

    .line 16
    return-void
    .line 19
.end method

.method public final setNonRemoteViewsHorizontalPadding(Ljava/lang/Integer;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->nonRemoteViewsHorizontalPadding:Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_2

    .line 11
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 15
    move-result v2

    .line 18
    invoke-virtual {p0, v2}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->getLegacyCardAtPosition(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 19
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v4

    .line 28
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 29
    move-result v5

    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result v6

    .line 36
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 37
    move-result v7

    .line 40
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 41
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->getTemplateCardAtPosition(I)Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    .line 44
    move-result-object v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v3

    .line 53
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 54
    move-result v4

    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v5

    .line 61
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 62
    move-result v6

    .line 65
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 66
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    return-void
    .line 72
.end method

.method public final setPrimaryTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->primaryTextColor:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->updateCurrentTextColor$1()V

    .line 4
    return-void
    .line 7
.end method

.method public final setScreenOn(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 13
    move-result v3

    .line 16
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    check-cast v2, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;

    .line 21
    if-nez v2, :cond_0

    .line 23
    goto :goto_1

    .line 25
    :cond_0
    iget-object v2, v2, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/SmartspaceCard;

    .line 26
    invoke-interface {v2, p1}, Lcom/google/android/systemui/smartspace/SmartspaceCard;->setScreenOn(Z)V

    .line 28
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    return-void
    .line 34
.end method

.method public final setTargets(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->setTargets(Ljava/util/List;Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda1;)V

    return-void
.end method

.method public final setTargets(Ljava/util/List;Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda1;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_aodTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_lockscreenTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->hasDifferentTargets:Z

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 6
    check-cast v0, Landroid/app/smartspace/SmartspaceTarget;

    .line 7
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->isTemplateCard(Landroid/app/smartspace/SmartspaceTarget;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 11
    :goto_1
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v0

    const-string v1, "No card can be created for target: "

    .line 12
    const-string v2, "SsCardRecyclerViewAdapter"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/assist/ui/InvocationLightsView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v2

    const/4 v3, 0x3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v4, "SCREEN_EXTRA"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_5

    .line 14
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_aodTargets:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_6

    .line 15
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_lockscreenTargets:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eq v2, v3, :cond_0

    .line 16
    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->hasDifferentTargets:Z

    goto :goto_0

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->configProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 18
    invoke-interface {p1}, Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;->isDefaultDateWeatherDisabled()Z

    move-result p1

    if-nez p1, :cond_8

    .line 19
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_aodTargets:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->addDefaultDateCardIfEmpty$1(Ljava/util/List;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_lockscreenTargets:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->addDefaultDateCardIfEmpty$1(Ljava/util/List;)V

    .line 21
    :cond_8
    invoke-virtual {p0, p2, v1}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->updateTargetVisibility(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final setTimeChangedDelegate(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->timeChangedDelegate:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;

    .line 2
    return-void
    .line 4
.end method

.method public final setUiSurface(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->uiSurface:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public final updateCurrentTextColor$1()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->primaryTextColor:I

    .line 2
    iget v1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->dozeColor:I

    .line 4
    iget v2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_dozeAmount:F

    .line 6
    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    .line 8
    move-result v0

    .line 11
    iput v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->currentTextColor:I

    .line 12
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 16
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_1

    .line 21
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 25
    move-result v3

    .line 28
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;

    .line 33
    if-nez v2, :cond_0

    .line 35
    goto :goto_1

    .line 37
    :cond_0
    iget-object v2, v2, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/SmartspaceCard;

    .line 38
    iget v3, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->currentTextColor:I

    .line 40
    invoke-interface {v2, v3}, Lcom/google/android/systemui/smartspace/SmartspaceCard;->setPrimaryTextColor(I)V

    .line 42
    iget v3, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_dozeAmount:F

    .line 45
    invoke-interface {v2, v3}, Lcom/google/android/systemui/smartspace/SmartspaceCard;->setDozeAmount$1(F)V

    .line 47
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    return-void
    .line 53
.end method

.method public final updateTargetVisibility(Ljava/lang/Runnable;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mediaTargets:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mediaTargets:Ljava/util/List;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->hasDifferentTargets:Z

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_aodTargets:Ljava/util/List;

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->getLockscreenTargets()Ljava/util/List;

    .line 20
    move-result-object v0

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->getLockscreenTargets()Ljava/util/List;

    .line 24
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->smartspaceTargets:Ljava/util/List;

    .line 28
    const v3, 0x3eb851ec    # 0.36f

    .line 30
    const/high16 v4, 0x3f800000    # 1.0f

    .line 33
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    if-eq v2, v0, :cond_3

    .line 37
    iget v7, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_dozeAmount:F

    .line 39
    cmpg-float v8, v7, v4

    .line 41
    if-nez v8, :cond_2

    .line 43
    goto :goto_1

    .line 45
    :cond_2
    cmpl-float v7, v7, v3

    .line 46
    if-ltz v7, :cond_3

    .line 48
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->transitioningTo:Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;

    .line 50
    sget-object v8, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;->TO_AOD:Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;

    .line 52
    if-ne v7, v8, :cond_3

    .line 54
    :goto_1
    move v7, v5

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    move v7, v6

    .line 58
    :goto_2
    if-eq v2, v1, :cond_5

    .line 59
    iget v2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->_dozeAmount:F

    .line 61
    const/4 v8, 0x0

    .line 63
    cmpg-float v8, v2, v8

    .line 64
    if-nez v8, :cond_4

    .line 66
    goto :goto_3

    .line 68
    :cond_4
    sub-float/2addr v4, v2

    .line 69
    cmpl-float v2, v4, v3

    .line 70
    if-ltz v2, :cond_5

    .line 72
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->transitioningTo:Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;

    .line 74
    sget-object v3, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;->TO_LOCKSCREEN:Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$TransitionType;

    .line 76
    if-ne v2, v3, :cond_5

    .line 78
    :goto_3
    move v2, v5

    .line 80
    goto :goto_4

    .line 81
    :cond_5
    move v2, v6

    .line 82
    :goto_4
    const-string v3, "SsCardRecyclerViewAdapter"

    .line 83
    if-eqz v7, :cond_6

    .line 85
    const-string v4, "Updating Smartspace targets to targets for AOD"

    .line 87
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->smartspaceTargets:Ljava/util/List;

    .line 92
    goto :goto_5

    .line 94
    :cond_6
    if-eqz v2, :cond_7

    .line 95
    const-string v4, "Updating Smartspace targets to targets for Lockscreen"

    .line 97
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object v1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->smartspaceTargets:Ljava/util/List;

    .line 102
    :cond_7
    :goto_5
    if-nez p2, :cond_8

    .line 104
    if-nez v7, :cond_8

    .line 106
    if-eqz v2, :cond_9

    .line 108
    :cond_8
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 110
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 112
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->smartspaceTargets:Ljava/util/List;

    .line 115
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 117
    move-result-object p2

    .line 120
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 121
    invoke-virtual {v2, p2, p1}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 123
    :cond_9
    if-eq v0, v1, :cond_a

    .line 126
    goto :goto_6

    .line 128
    :cond_a
    move v5, v6

    .line 129
    :goto_6
    iput-boolean v5, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->hasAodLockscreenTransition:Z

    .line 130
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->configProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 132
    invoke-interface {p1}, Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;->isDefaultDateWeatherDisabled()Z

    .line 134
    move-result p1

    .line 137
    if-eqz p1, :cond_c

    .line 138
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->uiSurface:Ljava/lang/String;

    .line 140
    const-string p2, "home"

    .line 142
    invoke-static {p1, p2, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 144
    move-result p1

    .line 147
    if-nez p1, :cond_c

    .line 148
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->smartspaceTargets:Ljava/util/List;

    .line 150
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 152
    move-result p1

    .line 155
    if-eqz p1, :cond_b

    .line 156
    const/16 v6, 0x8

    .line 158
    :cond_b
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->root:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 160
    invoke-static {p0, v6}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 162
    :cond_c
    return-void
    .line 165
.end method
