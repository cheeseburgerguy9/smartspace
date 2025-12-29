.class public Lcom/google/android/systemui/smartspace/BcSmartspaceView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

.field public final mAodObserver:Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;

.field public mBgHandler:Landroid/os/Handler;

.field public mCardPosition:I

.field public mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

.field public mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public mHasPerformedLongPress:Z

.field public mHasPostedLongPress:Z

.field public mIsAodEnabled:Z

.field public final mLastReceivedTargets:Landroid/util/ArraySet;

.field public final mLongPressCallback:Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;

.field public mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

.field public mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

.field public mPendingTargets:Ljava/util/List;

.field public mPreInflatedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public mPreviousDozeAmount:F

.field public final mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field public mScrollState:I

.field public mSplitShadeEnabled:Z

.field public mSwipedCardPosition:Ljava/lang/Integer;

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;

.field public mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

.field public final mViewPager2OnPageChangeCallback:Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;

.field public final mViewPagerOnPageChangeListener:Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;


# direct methods
.method public static -$$Nest$monViewPagerPageSelected(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 2
    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCardPosition:I

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;

    .line 6
    move-result-object v0

    .line 9
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCardPosition:I

    .line 10
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 12
    invoke-interface {v1, p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;

    .line 14
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCardPosition:I

    .line 20
    sget-object v2, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 22
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 27
    const-string v2, "BcSmartspaceView"

    .line 29
    if-nez v1, :cond_1

    .line 31
    const-string p0, "Cannot notify target hidden/shown smartspace events: data provider null"

    .line 33
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 38
    :cond_1
    if-nez v0, :cond_2

    .line 39
    const-string v0, "Cannot notify target hidden smartspace event: previous target is null."

    .line 41
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    new-instance v1, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 47
    const/4 v3, 0x3

    .line 49
    invoke-direct {v1, v3}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    .line 50
    invoke-virtual {v1, v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    .line 56
    move-result-object v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 65
    invoke-virtual {v1, v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 69
    invoke-interface {v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->getEventNotifier()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 71
    move-result-object v0

    .line 74
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 75
    move-result-object v1

    .line 78
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 79
    :goto_0
    if-nez p1, :cond_4

    .line 82
    const-string p0, "Cannot notify target shown smartspace event: shown card smartspace target null."

    .line 84
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 89
    :cond_4
    new-instance v0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 90
    const/4 v1, 0x2

    .line 92
    invoke-direct {v0, v1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    .line 93
    invoke-virtual {v0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 96
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    .line 99
    move-result-object p1

    .line 102
    if-eqz p1, :cond_5

    .line 103
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 109
    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 112
    invoke-interface {p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->getEventNotifier()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 114
    move-result-object p0

    .line 117
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 118
    move-result-object p1

    .line 121
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 122
    return-void
    .line 125
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "BcSmartspaceView"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/google/android/systemui/smartspace/DefaultBcSmartspaceConfigProvider;

    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 10
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 12
    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 17
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPreInflatedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 20
    new-instance p1, Landroid/util/ArraySet;

    .line 22
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLastReceivedTargets:Landroid/util/ArraySet;

    .line 27
    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mIsAodEnabled:Z

    .line 30
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCardPosition:I

    .line 32
    const/4 p2, 0x0

    .line 34
    iput p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPreviousDozeAmount:F

    .line 35
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mScrollState:I

    .line 37
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSplitShadeEnabled:Z

    .line 39
    new-instance p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;

    .line 41
    new-instance v0, Landroid/os/Handler;

    .line 43
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 45
    invoke-direct {p2, p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/os/Handler;)V

    .line 48
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAodObserver:Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;

    .line 51
    new-instance p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;

    .line 53
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p0, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 58
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 60
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2OnPageChangeCallback:Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;

    .line 63
    new-instance p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;

    .line 65
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p0, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 70
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 72
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPagerOnPageChangeListener:Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;

    .line 75
    new-instance p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;

    .line 77
    const/4 v0, 0x2

    .line 79
    invoke-direct {p2, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;-><init>(I)V

    .line 80
    iput-object p0, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 83
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 85
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLongPressCallback:Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;

    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 90
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 94
    move-result-object p0

    .line 97
    const p2, 0x7f140197    # @style/DefaultSmartspaceView

    .line 98
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 101
    return-void
    .line 104
.end method


# virtual methods
.method public final cancelScheduledLongPress()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mHasPostedLongPress:Z

    .line 7
    if-eqz v1, :cond_1

    .line 9
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mHasPostedLongPress:Z

    .line 12
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLongPressCallback:Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;

    .line 14
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    :cond_1
    :goto_0
    return-void
    .line 19
.end method

.method public final getCurrentCardTopPadding()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->getSelectedPage()I

    .line 4
    move-result v1

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getLegacyCardAtPosition(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->getSelectedPage()I

    .line 16
    move-result p0

    .line 19
    invoke-interface {v0, p0}, Lcom/google/android/systemui/smartspace/CardAdapter;->getLegacyCardAtPosition(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 29
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->getSelectedPage()I

    .line 31
    move-result v1

    .line 34
    invoke-interface {v0, v1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getTemplateCardAtPosition(I)Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    .line 35
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 41
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->getSelectedPage()I

    .line 43
    move-result p0

    .line 46
    invoke-interface {v0, p0}, Lcom/google/android/systemui/smartspace/CardAdapter;->getTemplateCardAtPosition(I)Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    .line 47
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 51
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->getSelectedPage()I

    .line 58
    move-result v1

    .line 61
    invoke-interface {v0, v1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getRemoteViewsCardAtPosition(I)Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;

    .line 62
    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 68
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->getSelectedPage()I

    .line 70
    move-result p0

    .line 73
    invoke-interface {v0, p0}, Lcom/google/android/systemui/smartspace/CardAdapter;->getRemoteViewsCardAtPosition(I)Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;

    .line 74
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    .line 78
    move-result p0

    .line 81
    return p0

    .line 82
    :cond_2
    const/4 p0, 0x0

    .line 83
    return p0
    .line 84
.end method

.method public final getSelectedPage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    if-eqz p0, :cond_1

    .line 12
    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 14
    return p0

    .line 16
    :cond_1
    return v0
    .line 17
.end method

.method public final handleTouchOverride(Landroid/view/MotionEvent;Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    if-eq v0, v2, :cond_1

    .line 15
    const/4 v3, 0x3

    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->cancelScheduledLongPress()V

    .line 21
    goto :goto_0

    .line 24
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mHasPerformedLongPress:Z

    .line 25
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 27
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLongClickable()Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->cancelScheduledLongPress()V

    .line 35
    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mHasPostedLongPress:Z

    .line 38
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 40
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLongPressCallback:Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;

    .line 42
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 44
    move-result v4

    .line 47
    int-to-long v4, v4

    .line 48
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mHasPerformedLongPress:Z

    .line 52
    if-eqz v0, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->cancelScheduledLongPress()V

    .line 56
    return v2

    .line 59
    :cond_4
    iget v0, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 60
    iget-object p2, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;->f$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 62
    packed-switch v0, :pswitch_data_0

    .line 64
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    move-result p1

    .line 70
    goto :goto_1

    .line 71
    :pswitch_0
    invoke-virtual {p2, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    move-result p1

    .line 75
    :goto_1
    if-eqz p1, :cond_5

    .line 76
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->cancelScheduledLongPress()V

    .line 78
    return v2

    .line 81
    :cond_5
    :goto_2
    return v1

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 84
.end method

.method public final logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_RECEIVED:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 2
    const/4 v1, -0x1

    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getCreationTimeMillis()J

    .line 11
    move-result-wide v2

    .line 14
    invoke-virtual {v0, v2, v3}, Ljava/time/Instant;->minusMillis(J)Ljava/time/Instant;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    .line 19
    move-result-wide v2
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    long-to-int v0, v2

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const-string v2, "BcSmartspaceView"

    .line 26
    const-string/jumbo v3, "received_latency_millis will be -1 due to exception "

    .line 28
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    move v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 37
    move-result-object v2

    .line 40
    invoke-static {v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->containsValidTemplateType(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    .line 41
    move-result v2

    .line 44
    invoke-static {p1}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)I

    .line 45
    move-result v3

    .line 48
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 49
    move-result v4

    .line 52
    iget-object v5, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 53
    invoke-interface {v5}, Lcom/google/android/systemui/smartspace/CardAdapter;->getUiSurface()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 58
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 59
    invoke-interface {v6}, Lcom/google/android/systemui/smartspace/CardAdapter;->getDozeAmount()F

    .line 61
    move-result v6

    .line 64
    invoke-static {v5, v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    .line 65
    move-result v5

    .line 68
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 69
    invoke-interface {v6}, Lcom/google/android/systemui/smartspace/CardAdapter;->getCount()I

    .line 71
    move-result v6

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 75
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 79
    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 84
    move-result-object p0

    .line 87
    invoke-static {p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 88
    move-result-object p0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-static {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfo(Landroid/app/smartspace/SmartspaceTarget;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 93
    move-result-object p0

    .line 96
    :goto_1
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 97
    move-result-object v7

    .line 100
    invoke-static {v7}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createDimensionalLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 101
    move-result-object v7

    .line 104
    new-instance v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 105
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 107
    iput v3, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 110
    iput v5, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    .line 112
    iput p2, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    .line 114
    iput v6, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    .line 116
    iput v4, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 118
    iput v0, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    .line 120
    iput v1, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 122
    iput-object p0, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 124
    iput-object v7, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 126
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 128
    if-eqz v2, :cond_2

    .line 131
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 133
    move-result-object p0

    .line 136
    invoke-static {v8, p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->tryForcePrimaryFeatureTypeOrUpdateLogInfoFromTemplateData(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)V

    .line 137
    :cond_2
    invoke-static {p3, v8}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;->log(Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    .line 140
    return-void
    .line 143
.end method

.method public final onAttachedToWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 5
    const-string v1, "BcSmartspaceView"

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 11
    instance-of v3, v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    .line 13
    if-eqz v3, :cond_1

    .line 15
    check-cast v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    .line 17
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 22
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPagerOnPageChangeListener:Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;

    .line 24
    iget-object v3, v0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 26
    if-nez v3, :cond_0

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object v3, v0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 35
    :cond_0
    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 37
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 43
    if-eqz v0, :cond_2

    .line 45
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 47
    instance-of v3, v2, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;

    .line 49
    if-eqz v3, :cond_2

    .line 51
    check-cast v2, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;

    .line 53
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 58
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2OnPageChangeCallback:Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;

    .line 60
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 62
    iget-object v0, v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    goto :goto_0

    .line 69
    :cond_2
    const-string v0, "Unable to attach the view pager adapter"

    .line 70
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 75
    if-eqz v0, :cond_3

    .line 77
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 79
    invoke-interface {v2}, Lcom/google/android/systemui/smartspace/CardAdapter;->getCount()I

    .line 81
    move-result v2

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 85
    move-result v3

    .line 88
    invoke-virtual {v0, v2, v3}, Lcom/google/android/systemui/smartspace/PagerDots;->setNumPages(IZ)V

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 92
    invoke-interface {v0}, Lcom/google/android/systemui/smartspace/CardAdapter;->getUiSurface()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 97
    const-string v2, "lockscreen"

    .line 98
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 100
    move-result v0

    .line 103
    if-eqz v0, :cond_6

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mBgHandler:Landroid/os/Handler;

    .line 106
    if-eqz v0, :cond_5

    .line 108
    new-instance v2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;

    .line 110
    const/4 v3, 0x1

    .line 112
    invoke-direct {v2, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;-><init>(I)V

    .line 113
    iput-object p0, v2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 116
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 118
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 124
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 128
    move-result-object v2

    .line 131
    const-string v4, "doze_always_on"

    .line 132
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 134
    move-result v0

    .line 137
    const/4 v5, 0x0

    .line 138
    invoke-static {v2, v4, v5, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 139
    move-result v0

    .line 142
    if-ne v0, v3, :cond_4

    .line 143
    goto :goto_1

    .line 145
    :cond_4
    move v3, v5

    .line 146
    :goto_1
    iput-boolean v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mIsAodEnabled:Z

    .line 147
    goto :goto_3

    .line 149
    :catch_0
    move-exception v0

    .line 150
    goto :goto_2

    .line 151
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 152
    const-string v2, "Must set background handler to avoid making binder calls on main thread"

    .line 154
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_2
    const-string v2, "Unable to register Doze Always on content observer."

    .line 160
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 165
    if-eqz v0, :cond_7

    .line 167
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->registerDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V

    .line 169
    :cond_7
    return-void
    .line 172
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mBgHandler:Landroid/os/Handler;

    .line 5
    if-eqz v0, :cond_3

    .line 7
    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;-><init>(I)V

    .line 12
    iput-object p0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 15
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPagerOnPageChangeListener:Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;

    .line 27
    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 37
    if-eqz v0, :cond_1

    .line 39
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2OnPageChangeCallback:Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;

    .line 41
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 43
    iget-object v0, v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 50
    if-eqz v0, :cond_2

    .line 52
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    .line 54
    :cond_2
    return-void

    .line 57
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 58
    const-string v0, "Must set background handler to avoid making binder calls on main thread"

    .line 60
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0
    .line 65
.end method

.method public final onFinishInflate()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a082c    # @id/smartspace_card_pager

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 16
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 18
    new-instance v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    .line 20
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 22
    invoke-direct {v0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 24
    iput-object p0, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->root:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 27
    new-instance v2, Landroid/util/SparseArray;

    .line 29
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 31
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->viewHolders:Landroid/util/SparseArray;

    .line 34
    new-instance v2, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

    .line 36
    const-string v3, "enable_card_recycling"

    .line 38
    invoke-direct {v2, v3}, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->enableCardRecycling:Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

    .line 43
    new-instance v2, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

    .line 45
    const-string v3, "enable_reduced_card_recycling"

    .line 47
    invoke-direct {v2, v3}, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->enableReducedCardRecycling:Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

    .line 52
    new-instance v2, Landroid/util/SparseArray;

    .line 54
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 56
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->recycledCards:Landroid/util/SparseArray;

    .line 59
    new-instance v2, Landroid/util/SparseArray;

    .line 61
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 63
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->recycledLegacyCards:Landroid/util/SparseArray;

    .line 66
    new-instance v2, Landroid/util/SparseArray;

    .line 68
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 70
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->recycledRemoteViewsCards:Landroid/util/SparseArray;

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    .line 75
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    .line 82
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->_aodTargets:Ljava/util/List;

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    .line 89
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->_lockscreenTargets:Ljava/util/List;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    .line 96
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mediaTargets:Ljava/util/List;

    .line 101
    const/4 v2, -0x1

    .line 103
    iput v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeColor:I

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v2

    .line 109
    const v3, 0x1010036    # @android:attr/textColorPrimary

    .line 110
    invoke-static {v3, v2}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    .line 113
    move-result v2

    .line 116
    iput v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->primaryTextColor:I

    .line 117
    iput v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->currentTextColor:I

    .line 119
    iput-object v1, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->configProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 121
    sget-object v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->NOT_IN_TRANSITION:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    .line 123
    iput-object v1, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->transitioningTo:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    .line 125
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 127
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 130
    goto/16 :goto_1

    .line 132
    :cond_0
    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 134
    if-eqz v1, :cond_8

    .line 136
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 138
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 140
    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$4;

    .line 142
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 144
    iget-boolean v2, v0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 147
    const/4 v3, 0x1

    .line 149
    if-nez v2, :cond_1

    .line 150
    iget-object v2, v0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    .line 152
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 154
    iput-boolean v3, v0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 156
    :cond_1
    iget-object v2, v0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    .line 158
    const/4 v4, 0x0

    .line 160
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/DefaultItemAnimator;)V

    .line 161
    iget-object v2, v0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    .line 164
    iget-object v5, v2, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Lcom/google/android/systemui/smartspace/BcSmartspaceView$4;

    .line 166
    if-ne v1, v5, :cond_2

    .line 168
    goto :goto_0

    .line 170
    :cond_2
    iput-object v1, v2, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Lcom/google/android/systemui/smartspace/BcSmartspaceView$4;

    .line 171
    iget-object v1, v0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 173
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    .line 175
    iget-object v1, v1, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 178
    iget v2, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 180
    int-to-double v5, v2

    .line 182
    iget v1, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    .line 183
    float-to-double v1, v1

    .line 185
    add-double/2addr v5, v1

    .line 186
    double-to-int v1, v5

    .line 187
    int-to-double v7, v1

    .line 188
    sub-double/2addr v5, v7

    .line 189
    double-to-float v2, v5

    .line 190
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getPageSize()I

    .line 191
    move-result v5

    .line 194
    int-to-float v5, v5

    .line 195
    mul-float/2addr v5, v2

    .line 196
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 197
    move-result v5

    .line 200
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    .line 201
    invoke-virtual {v0, v1, v2, v5}, Landroidx/viewpager2/widget/PageTransformerAdapter;->onPageScrolled(IFI)V

    .line 203
    :goto_0
    new-instance v0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;

    .line 206
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 208
    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)V

    .line 210
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 213
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 215
    if-eqz v0, :cond_5

    .line 217
    new-instance v0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;

    .line 219
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 221
    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)V

    .line 223
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 226
    invoke-virtual {v0, v1, v4}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->setTargets(Ljava/util/List;Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda1;)V

    .line 228
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->smartspaceTargets:Ljava/util/List;

    .line 231
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 233
    move-result v1

    .line 236
    if-lez v1, :cond_5

    .line 237
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 239
    const/4 v2, 0x0

    .line 241
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 242
    move-result-object v1

    .line 245
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 246
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 248
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 250
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 252
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 254
    invoke-virtual {v5, v7, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->poolingContainerDetach(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 256
    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 259
    if-eqz v7, :cond_3

    .line 261
    iget v8, v7, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    .line 263
    sub-int/2addr v8, v3

    .line 265
    iput v8, v7, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    .line 266
    :cond_3
    iput-object v4, v5, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 268
    if-eqz v4, :cond_4

    .line 270
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 272
    if-eqz v6, :cond_4

    .line 274
    iget v6, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    .line 276
    add-int/2addr v6, v3

    .line 278
    iput v6, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    .line 279
    :cond_4
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->maybeSendPoolingContainerAttach()V

    .line 281
    invoke-virtual {v0, v2}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->getItemViewType(I)I

    .line 284
    move-result v2

    .line 287
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 288
    move-result-object v0

    .line 291
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPreInflatedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 292
    :cond_5
    :goto_1
    const v0, 0x7f0a082f    # @id/smartspace_page_indicator

    .line 294
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 297
    move-result-object v0

    .line 300
    instance-of v1, v0, Lcom/google/android/systemui/smartspace/PagerDots;

    .line 301
    if-eqz v1, :cond_6

    .line 303
    check-cast v0, Lcom/google/android/systemui/smartspace/PagerDots;

    .line 305
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 307
    :cond_6
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 309
    if-eqz v0, :cond_7

    .line 311
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 313
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 315
    move-result-object v1

    .line 318
    const v2, 0x7f0709be    # @dimen/non_remoteviews_card_padding_start '16.0dp'

    .line 319
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 322
    move-result v1

    .line 325
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 326
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 328
    move-result v2

    .line 331
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 332
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    .line 334
    move-result v3

    .line 337
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 338
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 340
    move-result p0

    .line 343
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 344
    :cond_7
    return-void

    .line 347
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 348
    const-string/jumbo v0, "smartspace_card_pager is an invalid view type"

    .line 350
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 353
    throw p0
    .line 356
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;

    .line 6
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    iput-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;->f$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 12
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->handleTouchOverride(Landroid/view/MotionEvent;Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;)Z

    .line 17
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    iget-boolean p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mHasPerformedLongPress:Z

    .line 26
    if-eqz p0, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    return v2

    .line 33
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    move-result p0

    .line 37
    return p0
    .line 38
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPreInflatedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 6
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPreInflatedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 14
    return-void
    .line 17
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 13
    sget v2, Lcom/android/systemui/customization/clocks/R$dimen;->enhanced_smartspace_height:I

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result v1

    .line 19
    if-lez v0, :cond_0

    .line 20
    if-ge v0, v1, :cond_0

    .line 22
    int-to-float p2, v0

    .line 24
    int-to-float v0, v1

    .line 25
    div-float/2addr p2, v0

    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 27
    move-result p1

    .line 30
    int-to-float p1, p1

    .line 31
    div-float/2addr p1, p2

    .line 32
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 33
    move-result p1

    .line 36
    const/high16 v2, 0x40000000    # 2.0f

    .line 37
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 39
    move-result p1

    .line 42
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 43
    move-result v1

    .line 46
    invoke-super {p0, p1, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 47
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 50
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 53
    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 57
    const/high16 p1, 0x40000000    # 2.0f

    .line 60
    div-float/2addr v0, p1

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 63
    return-void

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 67
    const/high16 p1, 0x3f800000    # 1.0f

    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->resetPivot()V

    .line 78
    return-void
    .line 81
.end method

.method public final onSmartspaceTargetsUpdated(Ljava/util/List;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "@"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 13
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", onTargetsAvailable called. Callers = "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const/4 v1, 0x5

    .line 29
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    const-string v1, "BcSmartspaceView"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string v2, "    targets.size() = "

    .line 48
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 53
    move-result v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    const-string v2, "    targets = "

    .line 69
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-interface {p1}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 84
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 88
    if-eqz v0, :cond_1

    .line 90
    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mScrollState:I

    .line 92
    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 96
    invoke-interface {v0}, Lcom/google/android/systemui/smartspace/CardAdapter;->getCount()I

    .line 98
    move-result v0

    .line 101
    const/4 v1, 0x1

    .line 102
    if-le v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 105
    if-eqz v0, :cond_1

    .line 107
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPendingTargets:Ljava/util/List;

    .line 109
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPendingTargets:Ljava/util/List;

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 115
    move-result v0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->getSelectedPage()I

    .line 119
    move-result v1

    .line 122
    if-eqz v0, :cond_2

    .line 123
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 125
    instance-of v2, v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    .line 127
    if-eqz v2, :cond_2

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    .line 131
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 136
    move-object p1, v2

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 140
    invoke-interface {v2, v1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getTemplateCardAtPosition(I)Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    .line 142
    move-result-object v2

    .line 145
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 146
    invoke-interface {v3, v1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getLegacyCardAtPosition(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 148
    move-result-object v3

    .line 151
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 152
    invoke-interface {v4, v1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getRemoteViewsCardAtPosition(I)Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;

    .line 154
    move-result-object v4

    .line 157
    if-eqz v2, :cond_3

    .line 158
    goto :goto_0

    .line 160
    :cond_3
    if-eqz v3, :cond_4

    .line 161
    move-object v2, v3

    .line 163
    goto :goto_0

    .line 164
    :cond_4
    move-object v2, v4

    .line 165
    :goto_0
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 166
    invoke-interface {v3}, Lcom/google/android/systemui/smartspace/CardAdapter;->getCount()I

    .line 168
    move-result v3

    .line 171
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 172
    instance-of v5, v4, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;

    .line 174
    if-eqz v5, :cond_5

    .line 176
    check-cast v4, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;

    .line 178
    new-instance v5, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda1;

    .line 180
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p0, v5, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 185
    iput-boolean v0, v5, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda1;->f$1:Z

    .line 187
    iput v1, v5, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda1;->f$2:I

    .line 189
    iput-object v2, v5, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    .line 191
    iput v3, v5, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda1;->f$4:I

    .line 193
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 195
    invoke-virtual {v4, p1, v5}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->setTargets(Ljava/util/List;Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda1;)V

    .line 198
    return-void

    .line 201
    :cond_5
    invoke-interface {v4, p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->setTargets(Ljava/util/List;)V

    .line 202
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->setTargets(ZILandroid/view/View;I)V

    .line 205
    return-void
    .line 208
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;-><init>(I)V

    .line 12
    iput-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;->f$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 15
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 17
    invoke-virtual {p0, p1, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->handleTouchOverride(Landroid/view/MotionEvent;Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;)Z

    .line 20
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    move-result p0

    .line 28
    return p0
    .line 29
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->getEventNotifier()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 9
    move-result-object v0

    .line 12
    new-instance v1, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 13
    if-eqz p1, :cond_0

    .line 15
    const/4 p1, 0x6

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x7

    .line 19
    :goto_0
    invoke-direct {v1, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    .line 20
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 23
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 30
    if-eqz p1, :cond_2

    .line 32
    iget p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mScrollState:I

    .line 34
    if-eqz p1, :cond_2

    .line 36
    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mScrollState:I

    .line 39
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPendingTargets:Ljava/util/List;

    .line 41
    if-eqz p1, :cond_2

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->onSmartspaceTargetsUpdated(Ljava/util/List;)V

    .line 45
    :cond_2
    return-void
    .line 48
.end method

.method public final registerConfigProvider(Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 2
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->setConfigProvider(Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)V

    .line 6
    return-void
    .line 9
.end method

.method public final registerDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 9
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    .line 11
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 14
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 16
    invoke-interface {p1, p0}, Lcom/google/android/systemui/smartspace/CardAdapter;->setDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V

    .line 18
    return-void
    .line 21
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->cancelScheduledLongPress()V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    return-void
    .line 10
.end method

.method public final setBgHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mBgHandler:Landroid/os/Handler;

    .line 2
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->setBgHandler(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method

.method public final setDozeAmount(F)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 2
    invoke-interface {v0}, Lcom/google/android/systemui/smartspace/CardAdapter;->getSmartspaceTargets()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 8
    invoke-interface {v1, p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->setDozeAmount(F)V

    .line 10
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 13
    invoke-interface {v1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getSmartspaceTargets()Ljava/util/List;

    .line 15
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_0

    .line 24
    invoke-static {p0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 29
    invoke-interface {v1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getHasAodLockscreenTransition()Z

    .line 31
    move-result v1

    .line 34
    const/high16 v3, 0x3f800000    # 1.0f

    .line 35
    if-eqz v1, :cond_4

    .line 37
    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPreviousDozeAmount:F

    .line 39
    cmpl-float v4, p1, v1

    .line 41
    if-nez v4, :cond_1

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 45
    move-result v1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    cmpl-float v1, v1, p1

    .line 50
    if-lez v1, :cond_2

    .line 52
    sub-float v1, v3, p1

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    move v1, p1

    .line 57
    :goto_0
    const v4, 0x3eb851ec    # 0.36f

    .line 58
    cmpg-float v5, v1, v4

    .line 61
    if-gez v5, :cond_3

    .line 63
    sub-float v1, v4, v1

    .line 65
    :goto_1
    div-float/2addr v1, v4

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    sub-float/2addr v1, v4

    .line 69
    const v4, 0x3f23d70a    # 0.64f

    .line 70
    goto :goto_1

    .line 73
    :cond_4
    move v1, v3

    .line 74
    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 75
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 78
    if-eqz v4, :cond_6

    .line 80
    iget-object v5, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 82
    invoke-interface {v5}, Lcom/google/android/systemui/smartspace/CardAdapter;->getCount()I

    .line 84
    move-result v5

    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 88
    move-result v6

    .line 91
    invoke-virtual {v4, v5, v6}, Lcom/google/android/systemui/smartspace/PagerDots;->setNumPages(IZ)V

    .line 92
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 95
    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    .line 97
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 102
    move-result v1

    .line 105
    const/16 v4, 0x8

    .line 106
    if-eq v1, v4, :cond_6

    .line 108
    cmpl-float v1, p1, v3

    .line 110
    if-nez v1, :cond_5

    .line 112
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 114
    const/4 v3, 0x4

    .line 116
    invoke-static {v1, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 117
    goto :goto_3

    .line 120
    :cond_5
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 121
    invoke-static {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 123
    :cond_6
    :goto_3
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPreviousDozeAmount:F

    .line 126
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 128
    invoke-interface {p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getHasDifferentTargets()Z

    .line 130
    move-result p1

    .line 133
    if-eqz p1, :cond_9

    .line 134
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 136
    invoke-interface {p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getSmartspaceTargets()Ljava/util/List;

    .line 138
    move-result-object p1

    .line 141
    if-eq p1, v0, :cond_9

    .line 142
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 144
    invoke-interface {p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getCount()I

    .line 146
    move-result p1

    .line 149
    if-lez p1, :cond_9

    .line 150
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 152
    instance-of p1, p1, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;

    .line 154
    if-eqz p1, :cond_7

    .line 156
    invoke-virtual {p0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->setSelectedPage(I)V

    .line 158
    goto :goto_4

    .line 161
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 162
    move-result p1

    .line 165
    if-eqz p1, :cond_8

    .line 166
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 168
    invoke-interface {p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getCount()I

    .line 170
    move-result p1

    .line 173
    add-int/lit8 v2, p1, -0x1

    .line 174
    :cond_8
    invoke-virtual {p0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->setSelectedPage(I)V

    .line 176
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 179
    invoke-interface {p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getUiSurface()Ljava/lang/String;

    .line 181
    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 185
    invoke-interface {v0}, Lcom/google/android/systemui/smartspace/CardAdapter;->getDozeAmount()F

    .line 187
    move-result v0

    .line 190
    invoke-static {p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    .line 191
    move-result p1

    .line 194
    const/4 v0, -0x1

    .line 195
    if-ne p1, v0, :cond_a

    .line 196
    goto :goto_5

    .line 198
    :cond_a
    const/4 v0, 0x3

    .line 199
    if-ne p1, v0, :cond_b

    .line 200
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mIsAodEnabled:Z

    .line 202
    if-nez v0, :cond_b

    .line 204
    :goto_5
    return-void

    .line 206
    :cond_b
    sget-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->DEBUG:Z

    .line 207
    const-string v1, "BcSmartspaceView"

    .line 209
    if-eqz v0, :cond_c

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    const-string v2, "@"

    .line 215
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 220
    move-result v2

    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 224
    move-result-object v2

    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v2, ", setDozeAmount: Logging SMARTSPACE_CARD_SEEN, currentSurface = "

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object p1

    .line 242
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_c
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 246
    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCardPosition:I

    .line 248
    invoke-interface {p1, v0}, Lcom/google/android/systemui/smartspace/CardAdapter;->getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;

    .line 250
    move-result-object p1

    .line 253
    if-nez p1, :cond_d

    .line 254
    const-string p0, "Current card is not present in the Adapter; cannot log."

    .line 256
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void

    .line 261
    :cond_d
    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCardPosition:I

    .line 262
    sget-object v1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 264
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    .line 266
    return-void
    .line 269
.end method

.method public final setDozing(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSplitShadeEnabled:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 8
    invoke-interface {p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getHasAodLockscreenTransition()Z

    .line 10
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 16
    invoke-interface {p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->getLockscreenTargets()Ljava/util/List;

    .line 18
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 22
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    const/16 p1, 0x8

    .line 28
    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 30
    :cond_0
    return-void
    .line 33
.end method

.method public final setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 2
    return-void
    .line 4
.end method

.method public final setHorizontalPaddings(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 12
    move-result v2

    .line 15
    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p1

    .line 24
    invoke-interface {p0, p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->setNonRemoteViewsHorizontalPadding(Ljava/lang/Integer;)V

    .line 25
    return-void
.end method

.method public final setKeyguardBypassEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->setKeyguardBypassEnabled(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public final setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 2
    instance-of v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    check-cast p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;

    .line 8
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mediaTargets:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->mediaTargets:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;->updateTargetVisibility(Ljava/lang/Runnable;Z)V

    .line 24
    return-void

    .line 27
    :cond_1
    invoke-interface {p0, p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V

    .line 28
    return-void
    .line 31
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 6
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 14
    :cond_1
    return-void
    .line 17
.end method

.method public final setPrimaryTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->setPrimaryTextColor(I)V

    .line 4
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    iput p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->primaryColor:I

    .line 11
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/PagerDots;->paint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final setScreenOn(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mScrollState:I

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mScrollState:I

    .line 11
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPendingTargets:Ljava/util/List;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->onSmartspaceTargetsUpdated(Ljava/util/List;)V

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 20
    invoke-interface {p0, p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->setScreenOn(Z)V

    .line 22
    return-void
    .line 25
.end method

.method public final setSelectedDot(FI)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 2
    if-eqz p0, :cond_3

    .line 4
    if-ltz p2, :cond_2

    .line 6
    iget v0, p0, Lcom/google/android/systemui/smartspace/PagerDots;->numPages:I

    .line 8
    if-lt p2, v0, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    iput p2, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPositionIndex:I

    .line 13
    iput p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPositionOffset:F

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    float-to-double v0, p1

    .line 20
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 21
    cmpg-double p1, v0, v2

    .line 23
    if-gez p1, :cond_1

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 28
    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/android/systemui/smartspace/PagerDots;->updateCurrentPageIndex(I)V

    .line 30
    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    :cond_3
    :goto_1
    return-void
    .line 37
.end method

.method public final setSelectedPage(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 7
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda6;

    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 20
    iput p1, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda6;->f$1:I

    .line 22
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->setSelectedDot(FI)V

    .line 31
    return-void
    .line 34
.end method

.method public final setSplitShadeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSplitShadeEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setTargets(ZILandroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 2
    invoke-interface {p3}, Lcom/google/android/systemui/smartspace/CardAdapter;->getCount()I

    .line 4
    move-result p3

    .line 7
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPagerDots:Lcom/google/android/systemui/smartspace/PagerDots;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p3, p1}, Lcom/google/android/systemui/smartspace/PagerDots;->setNumPages(IZ)V

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 18
    instance-of p1, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    .line 20
    if-eqz p1, :cond_1

    .line 22
    sub-int/2addr p4, p2

    .line 24
    add-int/lit8 p1, p3, -0x1

    .line 25
    sub-int p2, p3, p4

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 29
    move-result p1

    .line 32
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 33
    move-result p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->setSelectedPage(I)V

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 41
    instance-of p1, p1, Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter;

    .line 43
    if-eqz p1, :cond_2

    .line 45
    add-int/lit8 p1, p3, -0x1

    .line 47
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 49
    move-result p1

    .line 52
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 53
    move-result p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->setSelectedPage(I)V

    .line 57
    :cond_2
    :goto_0
    if-ge v0, p3, :cond_5

    .line 60
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 62
    invoke-interface {p1, v0}, Lcom/google/android/systemui/smartspace/CardAdapter;->getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;

    .line 64
    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLastReceivedTargets:Landroid/util/ArraySet;

    .line 68
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    .line 70
    move-result-object p4

    .line 73
    invoke-virtual {p2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 74
    move-result p2

    .line 77
    if-nez p2, :cond_4

    .line 78
    sget-object p2, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_RECEIVED:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 80
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    .line 82
    new-instance p2, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 85
    const/16 p4, 0x8

    .line 87
    invoke-direct {p2, p4}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    .line 89
    invoke-virtual {p2, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 92
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    .line 95
    move-result-object p1

    .line 98
    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 104
    invoke-virtual {p2, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 105
    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 108
    invoke-interface {p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->getEventNotifier()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 110
    move-result-object p1

    .line 113
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 114
    move-result-object p2

    .line 117
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 118
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 121
    goto :goto_0

    .line 123
    :cond_5
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLastReceivedTargets:Landroid/util/ArraySet;

    .line 124
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 126
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLastReceivedTargets:Landroid/util/ArraySet;

    .line 129
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 131
    invoke-interface {p0}, Lcom/google/android/systemui/smartspace/CardAdapter;->getSmartspaceTargets()Ljava/util/List;

    .line 133
    move-result-object p0

    .line 136
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 137
    move-result-object p0

    .line 140
    new-instance p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda7;

    .line 141
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 146
    move-result-object p0

    .line 149
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 150
    move-result-object p2

    .line 153
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 154
    move-result-object p0

    .line 157
    check-cast p0, Ljava/util/Collection;

    .line 158
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 160
    return-void
    .line 163
.end method

.method public final setTimeChangedDelegate(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->setTimeChangedDelegate(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;)V

    .line 4
    return-void
    .line 7
.end method

.method public final setUiSurface(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    const-string v0, "home"

    .line 8
    if-ne p1, v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 16
    move-result-object v0

    .line 19
    const v1, 0x7f1401f4    # @style/LauncherSmartspaceView

    .line 20
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 27
    invoke-interface {p0, p1}, Lcom/google/android/systemui/smartspace/CardAdapter;->setUiSurface(Ljava/lang/String;)V

    .line 29
    return-void

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 33
    const-string p1, "Must call before attaching view to window."

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
    .line 40
.end method
