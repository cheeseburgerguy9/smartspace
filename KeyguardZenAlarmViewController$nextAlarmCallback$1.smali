.class public final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$nextAlarmCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;


# instance fields
.field public synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# virtual methods
.method public final onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$nextAlarmCallback$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    new-instance v0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateNextAlarm$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lkotlin/coroutines/Continuation;)V

    .line 9
    const/4 p0, 0x3

    .line 12
    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 13
    return-void
    .line 16
.end method
