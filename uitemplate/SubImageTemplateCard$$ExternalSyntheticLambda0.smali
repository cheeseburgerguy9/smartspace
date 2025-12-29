.class public final synthetic Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field public synthetic f$0:Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;

.field public synthetic f$1:Ljava/lang/String;

.field public synthetic f$2:Ljava/lang/String;

.field public synthetic f$3:Ljava/util/Map;

.field public synthetic f$4:I

.field public synthetic f$5:Ljava/util/List;

.field public synthetic f$6:I

.field public synthetic f$7:Ljava/lang/ref/WeakReference;


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;

    .line 2
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$3:Ljava/util/Map;

    .line 8
    iget v4, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    iget-object v5, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$5:Ljava/util/List;

    .line 12
    iget v6, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$6:I

    .line 14
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$7:Ljava/lang/ref/WeakReference;

    .line 16
    sget v7, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->$r8$clinit:I

    .line 18
    iget-object v7, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->mPrevSmartspaceTargetId:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 25
    const-string v7, "SubImageTemplateCard"

    .line 26
    if-nez v1, :cond_0

    .line 28
    const-string p0, "SmartspaceTarget has changed. Skip the loaded result..."

    .line 30
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void

    .line 35
    :cond_0
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mIconDrawableCache:Ljava/util/Map;

    .line 36
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v1

    .line 44
    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 48
    move-result p1

    .line 51
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 52
    move-result v1

    .line 55
    if-ne p1, v1, :cond_4

    .line 56
    new-instance p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 58
    invoke-direct {p1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 60
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 63
    move-result-object v1

    .line 66
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 67
    move-result-object v1

    .line 70
    new-instance v2, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda1;

    .line 71
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 76
    move-result-object v1

    .line 79
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 80
    move-result-object v2

    .line 83
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 87
    check-cast v1, Ljava/util/List;

    .line 88
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 90
    move-result v2

    .line 93
    if-eqz v2, :cond_2

    .line 94
    const-string p0, "All images are failed to load. Reset imageView"

    .line 96
    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p0, v0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageView:Landroid/widget/ImageView;

    .line 101
    if-nez p0, :cond_1

    .line 103
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    move-result-object p0

    .line 109
    const/4 p1, -0x2

    .line 110
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    iget-object p0, v0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageView:Landroid/widget/ImageView;

    .line 113
    const/4 p1, 0x0

    .line 115
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object p0, v0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageView:Landroid/widget/ImageView;

    .line 119
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 121
    return-void

    .line 124
    :cond_2
    new-instance v0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda2;

    .line 125
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, v0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/drawable/AnimationDrawable;

    .line 130
    iput v6, v0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda2;->f$1:I

    .line 132
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 134
    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 137
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 140
    move-result-object p0

    .line 143
    check-cast p0, Landroid/widget/ImageView;

    .line 144
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicWidth()I

    .line 149
    move-result v0

    .line 152
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 153
    move-result-object v1

    .line 156
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    if-eq v1, v0, :cond_3

    .line 159
    const-string v1, "imageView requestLayout"

    .line 161
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 166
    move-result-object v1

    .line 169
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 172
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 175
    :cond_4
    :goto_0
    return-void
    .line 178
.end method
