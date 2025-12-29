.class final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $mainActiveMode:Lcom/android/systemui/statusbar/policy/domain/model/ZenModeInfo;

.field final synthetic $view:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/domain/model/ZenModeInfo;Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;->$mainActiveMode:Lcom/android/systemui/statusbar/policy/domain/model/ZenModeInfo;

    .line 2
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 4
    iput-object p3, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;->$view:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 6
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;->$mainActiveMode:Lcom/android/systemui/statusbar/policy/domain/model/ZenModeInfo;

    .line 4
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 6
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;->$view:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 8
    invoke-direct {p1, v0, v1, p0, p2}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;-><init>(Lcom/android/systemui/statusbar/policy/domain/model/ZenModeInfo;Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;Lkotlin/coroutines/Continuation;)V

    .line 10
    return-object p1
    .line 13
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-object p1
    .line 17
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;->label:I

    .line 4
    if-nez v0, :cond_1

    .line 6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;->$mainActiveMode:Lcom/android/systemui/statusbar/policy/domain/model/ZenModeInfo;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/domain/model/ZenModeInfo;->icon:Lcom/android/systemui/common/shared/model/Icon$Loaded;

    .line 15
    iget-object v0, v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;->drawable:Landroid/graphics/drawable/Drawable;

    .line 17
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 19
    iget-object v1, v1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->context:Landroid/content/Context;

    .line 21
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/domain/model/ZenModeInfo;->name:Ljava/lang/String;

    .line 23
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 28
    const v2, 0x7f13014f    # @string/active_mode_content_description '%1$s is on'

    .line 29
    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 35
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;->$view:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 36
    invoke-interface {p0, v0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;->$view:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 42
    const/4 p1, 0x0

    .line 44
    invoke-interface {p0, p1, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 45
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 48
    return-object p0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
    .line 58
.end method
