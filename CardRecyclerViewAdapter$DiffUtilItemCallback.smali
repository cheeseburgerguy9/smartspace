.class public final Lcom/google/android/systemui/smartspace/CardRecyclerViewAdapter$DiffUtilItemCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# virtual methods
.method public final bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/app/smartspace/SmartspaceTarget;

    .line 2
    check-cast p2, Landroid/app/smartspace/SmartspaceTarget;

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0
    .line 7
.end method

.method public final areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/app/smartspace/SmartspaceTarget;

    .line 2
    check-cast p2, Landroid/app/smartspace/SmartspaceTarget;

    .line 4
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method
