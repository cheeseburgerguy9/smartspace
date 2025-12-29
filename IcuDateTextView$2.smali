.class public final Lcom/google/android/systemui/smartspace/IcuDateTextView$2;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/IcuDateTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$2;->this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "android.intent.action.TIMEZONE_CHANGED"

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    const-string p1, "android.intent.action.TIME_SET"

    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 29
    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$2;->this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 30
    sget p2, Lcom/google/android/systemui/smartspace/IcuDateTextView;->$r8$clinit:I

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->onTimeChanged(Z)V

    .line 34
    return-void
    .line 37
.end method
