.class final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field final synthetic $v:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 2
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;->$v:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 4
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 2
    check-cast p2, Landroid/view/View;

    .line 4
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    new-instance p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;

    .line 8
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 10
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;->$v:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 12
    invoke-direct {p1, p2, p0, p3}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;Lkotlin/coroutines/Continuation;)V

    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    invoke-virtual {p1, p0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 22
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 26
    iget-object v1, p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->zenModeInteractor:Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor;

    .line 28
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor;->mainActiveMode:Lkotlinx/coroutines/flow/Flow;

    .line 30
    new-instance v3, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1$1;

    .line 32
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;->$v:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 34
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, v3, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 39
    iput-object v4, v3, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1$1;->$v:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 41
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 43
    iput v2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1;->label:I

    .line 46
    invoke-interface {v1, v3, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 51
    if-ne p0, v0, :cond_2

    .line 52
    return-object v0

    .line 54
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 55
    return-object p0
    .line 57
.end method
