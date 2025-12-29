.class public final synthetic Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    .line 2
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mHasPerformedLongPress:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object p0

    .line 16
    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method
