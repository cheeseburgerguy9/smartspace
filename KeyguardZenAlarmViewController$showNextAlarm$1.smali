.class public final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showNextAlarm$1;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# virtual methods
.method public final onAlarm()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showNextAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->showAlarm(Ljava/lang/Long;)Lkotlinx/coroutines/Job;

    .line 5
    return-void
    .line 8
.end method
