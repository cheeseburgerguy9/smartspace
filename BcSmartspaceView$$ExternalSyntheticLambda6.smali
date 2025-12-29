.class public final synthetic Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

.field public synthetic f$1:I


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 2
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    iget-object v0, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    iget-object v1, v0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    .line 8
    iget-object v1, v1, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    .line 13
    return-void
    .line 16
.end method
