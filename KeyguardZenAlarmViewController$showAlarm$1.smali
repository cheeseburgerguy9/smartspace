.class final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $alarm:Ljava/lang/Long;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->$alarm:Ljava/lang/Long;

    .line 2
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 4
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->$alarm:Ljava/lang/Long;

    .line 4
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 6
    invoke-direct {p1, v0, p0, p2}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;-><init>(Ljava/lang/Long;Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lkotlin/coroutines/Continuation;)V

    .line 8
    return-object p1
    .line 11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->label:I

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    if-ne v1, v3, :cond_0

    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->$alarm:Ljava/lang/Long;

    .line 27
    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 31
    move-result-wide v0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 36
    iput v3, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->label:I

    .line 38
    iget-object v1, p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 40
    new-instance v3, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;

    .line 42
    invoke-direct {v3, p1, v2}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$getNextAlarm$2;-><init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lkotlin/coroutines/Continuation;)V

    .line 44
    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 50
    if-ne p1, v0, :cond_3

    .line 51
    return-object v0

    .line 53
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Number;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 56
    move-result-wide v0

    .line 59
    :goto_1
    const-wide/16 v3, 0x0

    .line 60
    cmp-long p1, v0, v3

    .line 62
    if-lez p1, :cond_5

    .line 64
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    move-result-wide v3

    .line 74
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 75
    const-wide/16 v5, 0xc

    .line 77
    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 79
    move-result-wide v5

    .line 82
    add-long/2addr v5, v3

    .line 83
    cmp-long p1, v0, v5

    .line 84
    if-gtz p1, :cond_5

    .line 86
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 88
    move-result p1

    .line 91
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 92
    iget-object v2, v2, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->context:Landroid/content/Context;

    .line 94
    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    .line 96
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    const-string p1, "HH:mm"

    .line 102
    goto :goto_2

    .line 104
    :cond_4
    const-string p1, "h:mm"

    .line 105
    :goto_2
    invoke-static {p1, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 107
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 114
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 115
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->smartspaceViews:Ljava/util/Set;

    .line 117
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v0

    .line 122
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v1

    .line 126
    if-eqz v1, :cond_6

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v1

    .line 132
    check-cast v1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 133
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->alarmImage:Landroid/graphics/drawable/Drawable;

    .line 135
    invoke-interface {v1, v2, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 137
    goto :goto_3

    .line 140
    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 141
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->smartspaceViews:Ljava/util/Set;

    .line 143
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    move-result-object p0

    .line 148
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    move-result p1

    .line 152
    if-eqz p1, :cond_6

    .line 153
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    move-result-object p1

    .line 158
    check-cast p1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 159
    invoke-interface {p1, v2, v2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 161
    goto :goto_4

    .line 164
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 165
    return-object p0
    .line 167
.end method
