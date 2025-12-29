.class public final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 2
    check-cast p1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 4
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->smartspaceViews:Ljava/util/Set;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x3

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->smartspaceViews:Ljava/util/Set;

    .line 16
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    move-object v1, p1

    .line 21
    check-cast v1, Landroid/view/View;

    .line 22
    new-instance v4, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;

    .line 24
    invoke-direct {v4, v0, p1, v3}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;Lkotlin/coroutines/Continuation;)V

    .line 26
    invoke-static {v1, v3, v4, v2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;I)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 32
    iget-object p1, p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->smartspaceViews:Ljava/util/Set;

    .line 34
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 36
    move-result p1

    .line 39
    const/4 v0, 0x1

    .line 40
    if-ne p1, v0, :cond_1

    .line 41
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 43
    iget-object v0, p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->nextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    .line 45
    iget-object p1, p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->nextAlarmCallback:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$nextAlarmCallback$1;

    .line 47
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 52
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 54
    new-instance v0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;

    .line 56
    invoke-direct {v0, p0, v3}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lkotlin/coroutines/Continuation;)V

    .line 58
    invoke-static {p1, v3, v3, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 61
    return-void
    .line 64
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 2
    iget-object v0, v0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->smartspaceViews:Ljava/util/Set;

    .line 4
    check-cast p1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 11
    iget-object p1, p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->smartspaceViews:Ljava/util/Set;

    .line 13
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 21
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->nextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    .line 23
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->nextAlarmCallback:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$nextAlarmCallback$1;

    .line 25
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 27
    :cond_0
    return-void
    .line 30
.end method
