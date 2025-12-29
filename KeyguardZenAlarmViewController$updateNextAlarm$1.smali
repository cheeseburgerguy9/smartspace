.class final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;
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
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

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
    new-instance p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;

    .line 2
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;->label:I

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
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 26
    iget-object v1, p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->alarmManager:Landroid/app/AlarmManager;

    .line 28
    iget-object p1, p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->showNextAlarm:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showNextAlarm$1;

    .line 30
    invoke-virtual {v1, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 32
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 35
    iput v2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;->label:I

    .line 37
    iget-object v1, p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 39
    new-instance v2, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;

    .line 41
    const/4 v3, 0x0

    .line 43
    invoke-direct {v2, p1, v3}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;-><init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lkotlin/coroutines/Continuation;)V

    .line 44
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 50
    if-ne p1, v0, :cond_2

    .line 51
    return-object v0

    .line 53
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Number;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 56
    move-result-wide v0

    .line 59
    const-wide/16 v2, 0x0

    .line 60
    cmp-long p1, v0, v2

    .line 62
    if-lez p1, :cond_3

    .line 64
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 66
    const-wide/16 v4, 0xc

    .line 68
    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 70
    move-result-wide v4

    .line 73
    sub-long v8, v0, v4

    .line 74
    cmp-long p1, v8, v2

    .line 76
    if-lez p1, :cond_3

    .line 78
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 80
    iget-object v6, p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->alarmManager:Landroid/app/AlarmManager;

    .line 82
    iget-object v11, p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->showNextAlarm:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showNextAlarm$1;

    .line 84
    iget-object v12, p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->handler:Landroid/os/Handler;

    .line 86
    const/4 v7, 0x1

    .line 88
    const-string v10, "lock_screen_next_alarm"

    .line 89
    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 91
    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 94
    new-instance p1, Ljava/lang/Long;

    .line 96
    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->showAlarm(Ljava/lang/Long;)Lkotlinx/coroutines/Job;

    .line 101
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 104
    return-object p0
    .line 106
.end method
