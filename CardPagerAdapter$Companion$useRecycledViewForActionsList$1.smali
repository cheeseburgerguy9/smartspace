.class public final Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion$useRecycledViewForActionsList$1;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public synthetic $newActionsList:Ljava/util/List;

.field public synthetic $recycledActionsList:Ljava/util/List;


# virtual methods
.method public final test(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion$useRecycledViewForActionsList$1;->$newActionsList:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/smartspace/SmartspaceAction;

    .line 8
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion$useRecycledViewForActionsList$1;->$recycledActionsList:Ljava/util/List;

    .line 10
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Landroid/app/smartspace/SmartspaceAction;

    .line 16
    invoke-static {v0, p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->useRecycledViewForAction(Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;)Z

    .line 18
    move-result p0

    .line 21
    return p0
    .line 22
.end method
