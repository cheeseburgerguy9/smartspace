.class public final Lcom/google/android/systemui/smartspace/IcuDateTextView$DefaultTimeChangedDelegate;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;
.implements Ljava/lang/Runnable;


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mTimeChangedCallback:Ljava/lang/Runnable;


# virtual methods
.method public final register(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$DefaultTimeChangedDelegate;->mTimeChangedCallback:Ljava/lang/Runnable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView$DefaultTimeChangedDelegate;->unregister()V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$DefaultTimeChangedDelegate;->mTimeChangedCallback:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView$DefaultTimeChangedDelegate;->run()V

    .line 11
    return-void
    .line 14
.end method

.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$DefaultTimeChangedDelegate;->mTimeChangedCallback:Ljava/lang/Runnable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$DefaultTimeChangedDelegate;->mHandler:Landroid/os/Handler;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    move-result-wide v0

    .line 16
    const-wide/32 v2, 0xea60

    .line 17
    rem-long v4, v0, v2

    .line 20
    sub-long/2addr v2, v4

    .line 22
    add-long/2addr v2, v0

    .line 23
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$DefaultTimeChangedDelegate;->mHandler:Landroid/os/Handler;

    .line 24
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public final unregister()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$DefaultTimeChangedDelegate;->mHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$DefaultTimeChangedDelegate;->mTimeChangedCallback:Ljava/lang/Runnable;

    .line 8
    return-void
    .line 10
.end method
