.class public final synthetic Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic f$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    sget v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->$r8$clinit:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    move-result-object v0

    .line 19
    const-string v2, "doze_always_on"

    .line 20
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    move-result-object v2

    .line 25
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/IcuDateTextView$1;

    .line 26
    const/4 v3, -0x1

    .line 28
    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 29
    return-void

    .line 32
    :pswitch_0
    sget v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->$r8$clinit:I

    .line 33
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->onTimeChanged(Z)V

    .line 35
    return-void

    .line 38
    :pswitch_1
    sget v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->$r8$clinit:I

    .line 39
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    move-result-object v0

    .line 48
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/IcuDateTextView$1;

    .line 49
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 51
    return-void

    .line 54
    :pswitch_2
    sget v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->$r8$clinit:I

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 60
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIntentReceiver:Lcom/google/android/systemui/smartspace/IcuDateTextView$2;

    .line 61
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 68
.end method
