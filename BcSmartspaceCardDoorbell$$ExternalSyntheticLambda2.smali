.class public final synthetic Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

.field public synthetic f$1:Landroid/content/ContentResolver;

.field public synthetic f$2:I

.field public synthetic f$3:F

.field public synthetic f$4:Ljava/lang/ref/WeakReference;

.field public synthetic f$5:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

    .line 7
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$1:Landroid/content/ContentResolver;

    .line 9
    iget v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$2:I

    .line 11
    iget v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$3:F

    .line 13
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$4:Ljava/lang/ref/WeakReference;

    .line 15
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$5:Ljava/lang/ref/WeakReference;

    .line 17
    check-cast p1, Landroid/net/Uri;

    .line 19
    sget v5, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->$r8$clinit:I

    .line 21
    new-instance v5, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    .line 23
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 25
    const/4 v7, 0x0

    .line 27
    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 28
    invoke-direct {v5, v6}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 31
    new-instance v6, Landroid/graphics/RectF;

    .line 34
    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 36
    iput-object v6, v5, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mTempRect:Landroid/graphics/RectF;

    .line 39
    new-instance v6, Landroid/graphics/Path;

    .line 41
    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 43
    iput-object v6, v5, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mClipPath:Landroid/graphics/Path;

    .line 46
    iput v3, v5, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mScaledCornerRadius:F

    .line 48
    iput-object p1, v5, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mUri:Landroid/net/Uri;

    .line 50
    iput v2, v5, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mHeightInPx:I

    .line 52
    iput-object v1, v5, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mContentResolver:Landroid/content/ContentResolver;

    .line 54
    iput-object v4, v5, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mImageViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 56
    iput-object p0, v5, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mLoadingScreenWeakReference:Ljava/lang/ref/WeakReference;

    .line 58
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 60
    new-instance p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;

    .line 63
    iget-object p1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLatencyInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    .line 65
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;->mInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    .line 70
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 72
    filled-new-array {v5}, [Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    .line 75
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-object v5

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

    .line 83
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$1:Landroid/content/ContentResolver;

    .line 85
    iget v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$2:I

    .line 87
    iget v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$3:F

    .line 89
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$4:Ljava/lang/ref/WeakReference;

    .line 91
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$5:Ljava/lang/ref/WeakReference;

    .line 93
    check-cast p1, Landroid/net/Uri;

    .line 95
    iget-object v5, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mUriToDrawable:Ljava/util/Map;

    .line 97
    new-instance v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;

    .line 99
    const/4 v7, 0x1

    .line 101
    invoke-direct {v6, v7}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;-><init>(I)V

    .line 102
    iput-object v0, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

    .line 105
    iput-object v1, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$1:Landroid/content/ContentResolver;

    .line 107
    iput v2, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$2:I

    .line 109
    iput v3, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$3:F

    .line 111
    iput-object v4, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$4:Ljava/lang/ref/WeakReference;

    .line 113
    iput-object p0, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$5:Ljava/lang/ref/WeakReference;

    .line 115
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 117
    check-cast v5, Ljava/util/HashMap;

    .line 120
    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 122
    move-result-object p0

    .line 125
    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    .line 126
    return-object p0

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 130
.end method
