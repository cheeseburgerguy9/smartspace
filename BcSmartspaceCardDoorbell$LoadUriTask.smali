.class public final Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;
.super Landroid/os/AsyncTask;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# instance fields
.field public mInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, [Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    .line 2
    const-string p0, "BcSmartspaceCardBell"

    .line 4
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-lez v0, :cond_2

    .line 8
    const/4 v0, 0x0

    .line 10
    aget-object p1, p1, v0

    .line 11
    :try_start_0
    iget-object v0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mContentResolver:Landroid/content/ContentResolver;

    .line 13
    iget-object v2, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mUri:Landroid/net/Uri;

    .line 15
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 17
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    :try_start_1
    iget v2, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mHeightInPx:I

    .line 21
    sget v3, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->$r8$clinit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-static {v1, v0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;

    .line 25
    move-result-object v3

    .line 28
    new-instance v4, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda0;

    .line 29
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v2, v4, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda0;->f$0:I

    .line 34
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 36
    invoke-static {v3, v4}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    const-string v4, "Unable to decode stream: "

    .line 47
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 58
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    iput-object v1, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    if-eqz v0, :cond_1

    .line 64
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 66
    goto :goto_3

    .line 69
    :catch_1
    move-exception v0

    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception v1

    .line 72
    if-eqz v0, :cond_0

    .line 73
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 75
    goto :goto_1

    .line 78
    :catchall_1
    move-exception v0

    .line 79
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 80
    :cond_0
    :goto_1
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 83
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v2, "open uri:"

    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v2, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mUri:Landroid/net/Uri;

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v2, " got exception:"

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 108
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    :goto_3
    return-object p1

    .line 112
    :cond_2
    return-object v1
    .line 113
.end method

.method public final onCancelled()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;->mInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->cancelInstrument()V

    .line 4
    return-void
    .line 7
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    const/16 v1, 0x8

    .line 9
    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mImageViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/ImageView;

    .line 22
    iget-object v2, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 26
    move-result v2

    .line 29
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v3

    .line 33
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    if-eq v3, v2, :cond_1

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    const-string v4, "imageView requestLayout "

    .line 40
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    iget-object v4, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mUri:Landroid/net/Uri;

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 53
    const-string v4, "BcSmartspaceCardBell"

    .line 54
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    move-result-object v3

    .line 62
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 65
    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;->mInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    .line 68
    iget-object v0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mUri:Landroid/net/Uri;

    .line 70
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mUriSet:Ljava/util/Set;

    .line 72
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 74
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    goto :goto_1

    .line 80
    :cond_2
    if-eqz v0, :cond_5

    .line 81
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mUriSet:Ljava/util/Set;

    .line 83
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 85
    move-result v0

    .line 88
    if-nez v0, :cond_3

    .line 89
    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mUriSet:Ljava/util/Set;

    .line 92
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 94
    move-result v0

    .line 97
    if-nez v0, :cond_4

    .line 98
    goto :goto_1

    .line 100
    :cond_4
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 101
    const/16 v0, 0x16

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 105
    goto :goto_1

    .line 108
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->cancelInstrument()V

    .line 109
    goto :goto_1

    .line 112
    :cond_6
    iget-object v0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mImageViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 113
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 115
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/ImageView;

    .line 119
    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 121
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;->mInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->cancelInstrument()V

    .line 126
    :goto_1
    iget-object p0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mLoadingScreenWeakReference:Ljava/lang/ref/WeakReference;

    .line 129
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 131
    move-result-object p0

    .line 134
    check-cast p0, Landroid/view/View;

    .line 135
    invoke-static {p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 137
    return-void
    .line 140
.end method
