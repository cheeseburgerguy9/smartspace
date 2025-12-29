.class public final Lcom/google/android/systemui/smartspace/IcuDateTextView$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/IcuDateTextView;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$1;->this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$1;->this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 12
    move-result p1

    .line 15
    const-string v1, "doze_always_on"

    .line 16
    const/4 v2, 0x0

    .line 18
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 19
    move-result p1

    .line 22
    const/4 v0, 0x1

    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    move v2, v0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$1;->this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 27
    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIsAodEnabled:Z

    .line 29
    if-ne p1, v2, :cond_1

    .line 31
    return-void

    .line 33
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIsAodEnabled:Z

    .line 34
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->rescheduleTicker()V

    .line 36
    return-void
    .line 39
.end method
