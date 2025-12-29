.class public final Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# instance fields
.field public mClipPath:Landroid/graphics/Path;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mHeightInPx:I

.field public mImageViewWeakReference:Ljava/lang/ref/WeakReference;

.field public mLoadingScreenWeakReference:Ljava/lang/ref/WeakReference;

.field public mScaledCornerRadius:F

.field public mTempRect:Landroid/graphics/RectF;

.field public mUri:Landroid/net/Uri;


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mClipPath:Landroid/graphics/Path;

    .line 6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 8
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 14
    return-void
    .line 17
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mTempRect:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mClipPath:Landroid/graphics/Path;

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 13
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mClipPath:Landroid/graphics/Path;

    .line 16
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mTempRect:Landroid/graphics/RectF;

    .line 18
    iget v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mScaledCornerRadius:F

    .line 20
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 22
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 24
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 27
    return-void
    .line 30
.end method
