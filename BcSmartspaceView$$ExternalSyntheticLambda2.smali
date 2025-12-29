.class public final synthetic Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;->$r8$classId:I

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
    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mHasPerformedLongPress:Z

    .line 16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->performLongClick()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 29
    move-result-object p0

    .line 32
    invoke-interface {p0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 33
    :cond_1
    :goto_0
    return-void

    .line 36
    :pswitch_0
    sget-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->DEBUG:Z

    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object v0

    .line 46
    const-string v2, "doze_always_on"

    .line 47
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    move-result-object v2

    .line 52
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAodObserver:Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;

    .line 53
    const/4 v3, -0x1

    .line 55
    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 56
    return-void

    .line 59
    :pswitch_1
    sget-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->DEBUG:Z

    .line 60
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 66
    move-result-object v0

    .line 69
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAodObserver:Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;

    .line 70
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 72
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 76
.end method
