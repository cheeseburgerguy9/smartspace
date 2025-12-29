.class public final synthetic Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic f$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

.field public synthetic f$1:Landroid/content/IntentFilter;


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 2
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda4;->f$1:Landroid/content/IntentFilter;

    .line 4
    sget v1, Lcom/google/android/systemui/smartspace/IcuDateTextView;->$r8$clinit:I

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 11
    iget-object v0, v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIntentReceiver:Lcom/google/android/systemui/smartspace/IcuDateTextView$2;

    .line 12
    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    return-void
    .line 17
.end method
