.class final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 2
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;

    .line 2
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;-><init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lkotlin/coroutines/Continuation;)V

    .line 6
    return-object p1
    .line 9
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;->label:I

    .line 4
    if-nez v0, :cond_1

    .line 6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 11
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 13
    check-cast p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 17
    iget p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    .line 19
    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    .line 21
    move-result-object p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 27
    move-result-wide p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-wide/16 p0, 0x0

    .line 32
    :goto_0
    new-instance v0, Ljava/lang/Long;

    .line 34
    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    .line 36
    return-object v0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 40
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0
    .line 47
.end method
