.class public final Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public synthetic this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 2
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mScrollState:I

    .line 4
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 9
    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSwipedCardPosition:Ljava/lang/Integer;

    .line 17
    :cond_0
    if-nez p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 21
    invoke-interface {p1}, Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;->isSwipeEventLoggingEnabled()Z

    .line 23
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSwipedCardPosition:Ljava/lang/Integer;

    .line 29
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result p1

    .line 36
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 37
    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 39
    if-eq p1, v0, :cond_1

    .line 41
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardAdapter;

    .line 43
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSwipedCardPosition:Ljava/lang/Integer;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v0

    .line 50
    invoke-interface {p1, v0}, Lcom/google/android/systemui/smartspace/CardAdapter;->getCardAtPosition(I)Lcom/google/android/systemui/smartspace/SmartspaceCard;

    .line 51
    move-result-object p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    invoke-interface {p1}, Lcom/google/android/systemui/smartspace/SmartspaceCard;->getLoggingInfo()Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 57
    move-result-object p1

    .line 60
    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_SWIPE:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 61
    invoke-static {v0, p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;->log(Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    .line 63
    :cond_1
    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSwipedCardPosition:Ljava/lang/Integer;

    .line 67
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPendingTargets:Ljava/util/List;

    .line 69
    if-eqz p1, :cond_2

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->onSmartspaceTargetsUpdated(Ljava/util/List;)V

    .line 73
    :cond_2
    return-void
    .line 76
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 2
    sget-boolean p3, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->DEBUG:Z

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->setSelectedDot(FI)V

    .line 6
    return-void
    .line 9
.end method

.method public final onPageSelected(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 2
    sget-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->DEBUG:Z

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->setSelectedDot(FI)V

    .line 7
    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->-$$Nest$monViewPagerPageSelected(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)V

    .line 10
    return-void
    .line 13
.end method
