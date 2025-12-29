.class public final synthetic Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic f$0:Lcom/google/android/systemui/smartspace/DateSmartspaceView;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;->$r8$classId:I

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
    iget v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/DateSmartspaceView;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    sget-boolean v0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->DEBUG:Z

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object v0

    .line 18
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/DateSmartspaceView$1;

    .line 19
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 21
    return-void

    .line 24
    :pswitch_0
    sget-boolean v0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->DEBUG:Z

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v0

    .line 34
    const-string v1, "doze_always_on"

    .line 35
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    move-result-object v1

    .line 40
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/DateSmartspaceView$1;

    .line 41
    const/4 v2, -0x1

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 45
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 50
.end method
