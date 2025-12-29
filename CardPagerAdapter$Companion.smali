.class public final Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# direct methods
.method public static useRecycledViewForAction(Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->TEMPLATE_TYPE_TO_SECONDARY_CARD_RES:Ljava/util/Map;

    .line 2
    if-nez p0, :cond_0

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_1

    .line 8
    :cond_0
    if-eqz p0, :cond_4

    .line 9
    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 23
    move-result-object v1

    .line 26
    if-nez v0, :cond_1

    .line 27
    if-nez v1, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 36
    move-result-object v1

    .line 39
    if-eqz v0, :cond_4

    .line 40
    if-eqz v1, :cond_4

    .line 42
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 44
    move-result-object p0

    .line 47
    const/4 v0, 0x0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 51
    move-result-object p0

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move-object p0, v0

    .line 56
    :goto_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 57
    move-result-object p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 63
    move-result-object v0

    .line 66
    :cond_3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result p0

    .line 70
    if-eqz p0, :cond_4

    .line 71
    :goto_1
    const/4 p0, 0x1

    .line 73
    return p0

    .line 74
    :cond_4
    const/4 p0, 0x0

    .line 75
    return p0
    .line 76
.end method

.method public static useRecycledViewForActionsList(Ljava/util/List;Ljava/util/List;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->TEMPLATE_TYPE_TO_SECONDARY_CARD_RES:Ljava/util/Map;

    .line 2
    if-nez p0, :cond_0

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 17
    move-result v1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result v2

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 30
    move-result v1

    .line 33
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 34
    move-result-object v1

    .line 37
    new-instance v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion$useRecycledViewForActionsList$1;

    .line 38
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p0, v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion$useRecycledViewForActionsList$1;->$newActionsList:Ljava/util/List;

    .line 43
    iput-object p1, v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion$useRecycledViewForActionsList$1;->$recycledActionsList:Ljava/util/List;

    .line 45
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 47
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    .line 50
    move-result p0

    .line 53
    if-eqz p0, :cond_1

    .line 54
    :goto_0
    const/4 p0, 0x1

    .line 56
    return p0

    .line 57
    :cond_1
    return v0
    .line 58
.end method


# virtual methods
.method public final getBaseLegacyCardRes(I)I
    .locals 1

    .line 1
    const/4 p0, -0x2

    .line 2
    const v0, 0x7f0d02ec    # @layout/smartspace_card 'res/layout/smartspace_card.xml'

    .line 3
    if-eq p1, p0, :cond_1

    .line 6
    const/4 p0, -0x1

    .line 8
    if-eq p1, p0, :cond_1

    .line 9
    const/4 p0, 0x1

    .line 11
    if-eq p1, p0, :cond_0

    .line 12
    const/4 p0, 0x2

    .line 14
    if-eq p1, p0, :cond_1

    .line 15
    const/4 p0, 0x3

    .line 17
    if-eq p1, p0, :cond_1

    .line 18
    const/4 p0, 0x4

    .line 20
    if-eq p1, p0, :cond_1

    .line 21
    const/4 p0, 0x6

    .line 23
    if-eq p1, p0, :cond_1

    .line 24
    const/16 p0, 0x12

    .line 26
    if-eq p1, p0, :cond_1

    .line 28
    const/16 p0, 0x14

    .line 30
    if-eq p1, p0, :cond_1

    .line 32
    const/16 p0, 0x1e

    .line 34
    if-eq p1, p0, :cond_1

    .line 36
    const/16 p0, 0x9

    .line 38
    if-eq p1, p0, :cond_1

    .line 40
    const/16 p0, 0xa

    .line 42
    if-eq p1, p0, :cond_1

    .line 44
    packed-switch p1, :pswitch_data_0

    .line 46
    return v0

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    return p0

    .line 51
    :cond_1
    :pswitch_0
    return v0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 54
.end method

.method public final useRecycledViewForNewTarget(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceTarget;)Z
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    .line 22
    move-result-object v0

    .line 25
    invoke-static {p0, v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->useRecycledViewForAction(Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;)Z

    .line 26
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    .line 32
    move-result-object p0

    .line 35
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    .line 36
    move-result-object v0

    .line 39
    invoke-static {p0, v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->useRecycledViewForAction(Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;)Z

    .line 40
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getActionChips()Ljava/util/List;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getActionChips()Ljava/util/List;

    .line 50
    move-result-object v0

    .line 53
    invoke-static {p0, v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->useRecycledViewForActionsList(Ljava/util/List;Ljava/util/List;)Z

    .line 54
    move-result p0

    .line 57
    if-eqz p0, :cond_1

    .line 58
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    .line 64
    move-result-object v0

    .line 67
    invoke-static {p0, v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->useRecycledViewForActionsList(Ljava/util/List;Ljava/util/List;)Z

    .line 68
    move-result p0

    .line 71
    if-eqz p0, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 74
    move-result-object p0

    .line 77
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 78
    move-result-object p1

    .line 81
    if-nez p0, :cond_0

    .line 82
    if-nez p1, :cond_0

    .line 84
    goto :goto_0

    .line 86
    :cond_0
    if-eqz p0, :cond_1

    .line 87
    if-eqz p1, :cond_1

    .line 89
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    move-result p0

    .line 94
    if-eqz p0, :cond_1

    .line 95
    :goto_0
    const/4 p0, 0x1

    .line 97
    return p0

    .line 98
    :cond_1
    const/4 p0, 0x0

    .line 99
    return p0
    .line 100
.end method
