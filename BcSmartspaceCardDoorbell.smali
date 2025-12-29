.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;
.super Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mGifFrameDurationInMs:I

.field public final mLatencyInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

.field public mLoadingIcon:Landroid/widget/ImageView;

.field public mLoadingScreenView:Landroid/view/ViewGroup;

.field public mPreviousTargetId:Ljava/lang/String;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public final mUriToDrawable:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mUriToDrawable:Ljava/util/Map;

    const/16 p2, 0xc8

    .line 4
    iput p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mGifFrameDurationInMs:I

    .line 5
    new-instance p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    .line 6
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mUriSet:Ljava/util/Set;

    .line 8
    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 9
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLatencyInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    return-void
.end method


# virtual methods
.method public final maybeResetImageView(Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mPreviousTargetId:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mPreviousTargetId:Ljava/lang/String;

    .line 16
    if-nez v0, :cond_0

    .line 18
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object p1

    .line 25
    const/4 v0, -0x2

    .line 26
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    .line 29
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mUriToDrawable:Ljava/util/Map;

    .line 35
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 37
    :cond_0
    return-void
    .line 40
.end method

.method public final maybeUpdateLayoutHeight(Landroid/os/Bundle;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    move-result-object p0

    .line 19
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object p2

    .line 25
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 26
    move-result p1

    .line 29
    sget-object p3, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 30
    int-to-float p1, p1

    .line 32
    mul-float/2addr p0, p1

    .line 33
    float-to-int p0, p0

    .line 34
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    :cond_0
    return-void
    .line 37
.end method

.method public final maybeUpdateLayoutWidth(Landroid/os/Bundle;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    move-result-object p0

    .line 19
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object p2

    .line 25
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 26
    move-result p1

    .line 29
    sget-object p3, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 30
    int-to-float p1, p1

    .line 32
    mul-float/2addr p0, p1

    .line 33
    float-to-int p0, p0

    .line 34
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    :cond_0
    return-void
    .line 37
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a04db    # @id/loading_screen

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingScreenView:Landroid/view/ViewGroup;

    .line 14
    const v0, 0x7f0a0429    # @id/indeterminateBar

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ProgressBar;

    .line 23
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mProgressBar:Landroid/widget/ProgressBar;

    .line 25
    const v0, 0x7f0a04dc    # @id/loading_screen_icon

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    .line 36
    return-void
    .line 38
.end method

.method public final resetUi()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->resetUi()V

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    .line 5
    const/16 v1, 0x8

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingScreenView:Landroid/view/ViewGroup;

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 14
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mProgressBar:Landroid/widget/ProgressBar;

    .line 17
    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 19
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    .line 22
    invoke-static {p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 24
    return-void
    .line 27
.end method

.method public final setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 9
    const-string p3, "com.android.systemui"

    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p2

    .line 15
    const/4 p3, 0x0

    .line 16
    if-nez p2, :cond_0

    .line 17
    return p3

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    .line 20
    move-result-object p2

    .line 23
    if-nez p2, :cond_1

    .line 24
    const/4 p2, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 28
    move-result-object p2

    .line 31
    :goto_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    .line 32
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 36
    move-result-object v0

    .line 39
    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda3;

    .line 40
    const/4 v2, 0x1

    .line 42
    invoke-direct {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda3;-><init>(I)V

    .line 43
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 46
    move-result-object v0

    .line 49
    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda5;

    .line 50
    invoke-direct {v1, p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda5;-><init>(I)V

    .line 52
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 55
    move-result-object v0

    .line 58
    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda5;

    .line 59
    invoke-direct {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda5;-><init>(I)V

    .line 61
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 64
    move-result-object v0

    .line 67
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 68
    move-result-object v1

    .line 71
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 75
    check-cast v0, Ljava/util/List;

    .line 76
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 78
    move-result v1

    .line 81
    const-string v3, "BcSmartspaceCardBell"

    .line 82
    const v4, 0x7f07037c    # @dimen/enhanced_smartspace_secondary_card_corner_radius '20.0dp'

    .line 84
    const v5, 0x7f070374    # @dimen/enhanced_smartspace_card_height '76.0dp'

    .line 87
    if-nez v1, :cond_6

    .line 90
    if-eqz p2, :cond_2

    .line 92
    const-string v1, "frameDurationMs"

    .line 94
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 96
    move-result v6

    .line 99
    if-eqz v6, :cond_2

    .line 100
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 102
    move-result p2

    .line 105
    iput p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mGifFrameDurationInMs:I

    .line 106
    :cond_2
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLatencyInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    .line 108
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 110
    move-result-object v1

    .line 113
    new-instance v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda1;

    .line 114
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p0, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

    .line 119
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 121
    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 124
    move-result-object v1

    .line 127
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 128
    move-result-object v6

    .line 131
    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 132
    move-result-object v1

    .line 135
    check-cast v1, Ljava/util/Collection;

    .line 136
    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 143
    move-result v6

    .line 146
    if-nez v6, :cond_3

    .line 147
    iget-object v6, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mUriSet:Ljava/util/Set;

    .line 149
    invoke-interface {v6, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 151
    :cond_3
    iget-object v1, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mUriSet:Ljava/util/Set;

    .line 154
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 156
    move-result v1

    .line 159
    if-eqz v1, :cond_4

    .line 160
    goto :goto_1

    .line 162
    :cond_4
    iget-object p2, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 163
    const/16 v1, 0x16

    .line 165
    invoke-virtual {p2, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 167
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->maybeResetImageView(Landroid/app/smartspace/SmartspaceTarget;)V

    .line 170
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    .line 173
    invoke-static {p1, p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 175
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 178
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 182
    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 186
    move-result-object p1

    .line 189
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 190
    move-result-object p2

    .line 193
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 194
    move-result p2

    .line 197
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 198
    move-result-object v1

    .line 201
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 202
    move-result v1

    .line 205
    new-instance v4, Ljava/lang/ref/WeakReference;

    .line 206
    iget-object v5, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    .line 208
    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 210
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 213
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingScreenView:Landroid/view/ViewGroup;

    .line 215
    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 217
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 220
    move-result-object v0

    .line 223
    new-instance v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;

    .line 224
    invoke-direct {v6, p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;-><init>(I)V

    .line 226
    iput-object p0, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

    .line 229
    iput-object p1, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$1:Landroid/content/ContentResolver;

    .line 231
    iput p2, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$2:I

    .line 233
    iput v1, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$3:F

    .line 235
    iput-object v4, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$4:Ljava/lang/ref/WeakReference;

    .line 237
    iput-object v5, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$5:Ljava/lang/ref/WeakReference;

    .line 239
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 241
    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 244
    move-result-object p1

    .line 247
    new-instance p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda3;

    .line 248
    invoke-direct {p2, p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda3;-><init>(I)V

    .line 250
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 253
    move-result-object p1

    .line 256
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 257
    move-result-object p2

    .line 260
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 261
    move-result-object p1

    .line 264
    check-cast p1, Ljava/util/List;

    .line 265
    new-instance p2, Landroid/graphics/drawable/AnimationDrawable;

    .line 267
    invoke-direct {p2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 269
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 272
    move-result-object p1

    .line 275
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    move-result p3

    .line 279
    if-eqz p3, :cond_5

    .line 280
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    move-result-object p3

    .line 285
    check-cast p3, Landroid/graphics/drawable/Drawable;

    .line 286
    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mGifFrameDurationInMs:I

    .line 288
    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 290
    goto :goto_2

    .line 293
    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    .line 294
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 299
    const-string p0, "imageUri is set"

    .line 302
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return v2

    .line 307
    :cond_6
    if-eqz p2, :cond_9

    .line 308
    const-string v0, "imageBitmap"

    .line 310
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 312
    move-result v1

    .line 315
    if-eqz v1, :cond_9

    .line 316
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    move-result-object p2

    .line 321
    check-cast p2, Landroid/graphics/Bitmap;

    .line 322
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->maybeResetImageView(Landroid/app/smartspace/SmartspaceTarget;)V

    .line 324
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    .line 327
    invoke-static {p1, p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 329
    if-eqz p2, :cond_8

    .line 332
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 334
    move-result p1

    .line 337
    if-eqz p1, :cond_7

    .line 338
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 340
    move-result-object p1

    .line 343
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 344
    move-result p1

    .line 347
    float-to-int p1, p1

    .line 348
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 349
    move-result p3

    .line 352
    int-to-float p3, p3

    .line 353
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 354
    move-result v0

    .line 357
    int-to-float v0, v0

    .line 358
    div-float/2addr p3, v0

    .line 359
    int-to-float v0, p1

    .line 360
    mul-float/2addr v0, p3

    .line 361
    float-to-int p3, v0

    .line 362
    invoke-static {p2, p3, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 363
    move-result-object p2

    .line 366
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 367
    move-result-object p1

    .line 370
    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    .line 371
    move-result-object p1

    .line 374
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 375
    move-result-object p2

    .line 378
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 379
    move-result p2

    .line 382
    invoke-virtual {p1, p2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->setCornerRadius(F)V

    .line 383
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    .line 386
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    const-string p0, "imageBitmap is set"

    .line 391
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_8
    return v2

    .line 396
    :cond_9
    if-eqz p2, :cond_14

    .line 397
    const-string v0, "loadingScreenState"

    .line 399
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 401
    move-result v1

    .line 404
    if-eqz v1, :cond_14

    .line 405
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 407
    move-result v0

    .line 410
    invoke-static {p2}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getDimensionRatio(Landroid/os/Bundle;)Ljava/lang/String;

    .line 411
    move-result-object v1

    .line 414
    if-nez v1, :cond_a

    .line 415
    return p3

    .line 417
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->maybeResetImageView(Landroid/app/smartspace/SmartspaceTarget;)V

    .line 418
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    .line 421
    const/16 v3, 0x8

    .line 423
    invoke-static {p1, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 425
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingScreenView:Landroid/view/ViewGroup;

    .line 428
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 430
    move-result-object p1

    .line 433
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 434
    iput-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 436
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 438
    move-result-object p1

    .line 441
    const v1, 0x7f060616    # @color/smartspace_button_background '@android:color/system_accent2_200'

    .line 442
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    .line 445
    move-result p1

    .line 448
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingScreenView:Landroid/view/ViewGroup;

    .line 449
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 451
    move-result-object p1

    .line 454
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 455
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingScreenView:Landroid/view/ViewGroup;

    .line 458
    invoke-static {p1, p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 460
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mProgressBar:Landroid/widget/ProgressBar;

    .line 463
    const-string/jumbo v1, "progressBarWidth"

    .line 465
    invoke-virtual {p0, p2, p1, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->maybeUpdateLayoutWidth(Landroid/os/Bundle;Landroid/view/View;Ljava/lang/String;)V

    .line 468
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mProgressBar:Landroid/widget/ProgressBar;

    .line 471
    const-string/jumbo v1, "progressBarHeight"

    .line 473
    invoke-virtual {p0, p2, p1, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->maybeUpdateLayoutHeight(Landroid/os/Bundle;Landroid/view/View;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 479
    move-result-object p1

    .line 482
    const v1, 0x7f060617    # @color/smartspace_button_text '@android:color/system_accent2_700'

    .line 483
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    .line 486
    move-result p1

    .line 489
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mProgressBar:Landroid/widget/ProgressBar;

    .line 490
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 492
    move-result-object p1

    .line 495
    invoke-virtual {v4, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 496
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mProgressBar:Landroid/widget/ProgressBar;

    .line 499
    const/4 v4, 0x4

    .line 501
    if-ne v0, v2, :cond_b

    .line 502
    move v5, v2

    .line 504
    goto :goto_3

    .line 505
    :cond_b
    if-ne v0, v4, :cond_c

    .line 506
    const-string/jumbo v5, "progressBarVisible"

    .line 508
    invoke-virtual {p2, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 511
    move-result v5

    .line 514
    goto :goto_3

    .line 515
    :cond_c
    move v5, p3

    .line 516
    :goto_3
    if-eqz v5, :cond_d

    .line 517
    move v5, p3

    .line 519
    goto :goto_4

    .line 520
    :cond_d
    move v5, v3

    .line 521
    :goto_4
    invoke-static {p1, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 522
    const/4 p1, 0x2

    .line 525
    if-ne v0, p1, :cond_f

    .line 526
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    .line 528
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 530
    move-result-object v0

    .line 533
    const v1, 0x7f080d1a    # @drawable/videocam 'res/drawable/videocam.xml'

    .line 534
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 537
    move-result-object v0

    .line 540
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    :cond_e
    :goto_5
    move p1, v2

    .line 544
    goto :goto_7

    .line 545
    :cond_f
    const/4 p1, 0x3

    .line 546
    if-ne v0, p1, :cond_10

    .line 547
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    .line 549
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 551
    move-result-object v0

    .line 554
    const v1, 0x7f080d1b    # @drawable/videocam_off 'res/drawable/videocam_off.xml'

    .line 555
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 558
    move-result-object v0

    .line 561
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    goto :goto_5

    .line 565
    :cond_10
    if-eq v0, v4, :cond_11

    .line 566
    :goto_6
    move p1, p3

    .line 568
    goto :goto_7

    .line 569
    :cond_11
    const-string p1, "loadingScreenIcon"

    .line 570
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 572
    move-result v0

    .line 575
    if-nez v0, :cond_12

    .line 576
    goto :goto_6

    .line 578
    :cond_12
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 579
    move-result-object p1

    .line 582
    check-cast p1, Landroid/graphics/Bitmap;

    .line 583
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    .line 585
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 587
    const-string/jumbo p1, "tintLoadingIcon"

    .line 590
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 593
    move-result p1

    .line 596
    if-eqz p1, :cond_e

    .line 597
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 599
    move-result-object p1

    .line 602
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    .line 603
    move-result p1

    .line 606
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    .line 607
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 609
    goto :goto_5

    .line 612
    :goto_7
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    .line 613
    const-string v1, "loadingIconWidth"

    .line 615
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->maybeUpdateLayoutWidth(Landroid/os/Bundle;Landroid/view/View;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    .line 620
    const-string v1, "loadingIconHeight"

    .line 622
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->maybeUpdateLayoutHeight(Landroid/os/Bundle;Landroid/view/View;Ljava/lang/String;)V

    .line 624
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    .line 627
    if-eqz p1, :cond_13

    .line 629
    goto :goto_8

    .line 631
    :cond_13
    move p3, v3

    .line 632
    :goto_8
    invoke-static {p0, p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 633
    return v2

    .line 636
    :cond_14
    return p3
    .line 637
.end method
