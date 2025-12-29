.class public Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;
.super Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mIconDrawableCache:Ljava/util/Map;

.field public final mImageHeight:I

.field public mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mIconDrawableCache:Ljava/util/Map;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mHandler:Landroid/os/Handler;

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070374    # @dimen/enhanced_smartspace_card_height '76.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageHeight:I

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0421    # @id/image_view

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageView:Landroid/widget/ImageView;

    .line 14
    return-void
    .line 16
.end method

.method public final resetUi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mIconDrawableCache:Ljava/util/Map;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageView:Landroid/widget/ImageView;

    .line 9
    if-nez v0, :cond_1

    .line 11
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v0

    .line 17
    const/4 v1, -0x2

    .line 18
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageView:Landroid/widget/ImageView;

    .line 21
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageView:Landroid/widget/ImageView;

    .line 27
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 29
    return-void
    .line 32
.end method

.method public final setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;

    .line 6
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->containsValidTemplateType(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    .line 8
    move-result v1

    .line 11
    const-string v2, "SubImageTemplateCard"

    .line 12
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_d

    .line 15
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->getSubImages()Ljava/util/List;

    .line 17
    move-result-object v1

    .line 20
    if-eqz v1, :cond_d

    .line 21
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->getSubImages()Ljava/util/List;

    .line 23
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    goto/16 :goto_5

    .line 33
    :cond_0
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->getSubImages()Ljava/util/List;

    .line 35
    move-result-object v1

    .line 38
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->getSubImageAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 39
    move-result-object v6

    .line 42
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageView:Landroid/widget/ImageView;

    .line 43
    if-nez v0, :cond_1

    .line 45
    const-string v0, "No image view can be updated. Skipping background update..."

    .line 47
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    if-eqz v6, :cond_4

    .line 53
    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/TapAction;->getExtras()Landroid/os/Bundle;

    .line 55
    move-result-object v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/TapAction;->getExtras()Landroid/os/Bundle;

    .line 62
    move-result-object v0

    .line 65
    const-string v2, "imageDimensionRatio"

    .line 66
    const-string v4, ""

    .line 68
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 73
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v4

    .line 77
    if-nez v4, :cond_3

    .line 78
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageView:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    move-result-object v4

    .line 85
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 86
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageView:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    move-result-object v4

    .line 93
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 94
    iput-object v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 96
    :cond_3
    const-string/jumbo v2, "shouldShowBackground"

    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 101
    move-result v0

    .line 104
    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 107
    move-result-object v0

    .line 110
    const v2, 0x7f060616    # @color/smartspace_button_background '@android:color/system_accent2_200'

    .line 111
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 114
    move-result v0

    .line 117
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageView:Landroid/widget/ImageView;

    .line 118
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 120
    move-result-object v0

    .line 123
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 124
    :cond_4
    :goto_0
    const/16 v0, 0xc8

    .line 127
    if-eqz v6, :cond_6

    .line 129
    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/TapAction;->getExtras()Landroid/os/Bundle;

    .line 131
    move-result-object v2

    .line 134
    if-nez v2, :cond_5

    .line 135
    goto :goto_1

    .line 137
    :cond_5
    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/TapAction;->getExtras()Landroid/os/Bundle;

    .line 138
    move-result-object v2

    .line 141
    const-string v4, "GifFrameDurationMillis"

    .line 142
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 144
    move-result v0

    .line 147
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 148
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 152
    move-result-object v2

    .line 155
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 156
    move-result-object v2

    .line 159
    new-instance v4, Ljava/util/TreeMap;

    .line 160
    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 162
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 165
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageView:Landroid/widget/ImageView;

    .line 167
    invoke-direct {v5, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 169
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->mPrevSmartspaceTargetId:Ljava/lang/String;

    .line 172
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 174
    move-result v8

    .line 177
    if-ge v3, v8, :cond_b

    .line 178
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    move-result-object v8

    .line 183
    check-cast v8, Landroid/app/smartspace/uitemplatedata/Icon;

    .line 184
    if-eqz v8, :cond_a

    .line 186
    invoke-virtual {v8}, Landroid/app/smartspace/uitemplatedata/Icon;->getIcon()Landroid/graphics/drawable/Icon;

    .line 188
    move-result-object v9

    .line 191
    if-nez v9, :cond_7

    .line 192
    goto/16 :goto_4

    .line 194
    :cond_7
    invoke-virtual {v8}, Landroid/app/smartspace/uitemplatedata/Icon;->getIcon()Landroid/graphics/drawable/Icon;

    .line 196
    move-result-object v8

    .line 199
    sget-object v9, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->TEMPLATE_TYPE_TO_SECONDARY_CARD_RES:Ljava/util/Map;

    .line 200
    new-instance v9, Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v8}, Landroid/graphics/drawable/Icon;->getType()I

    .line 204
    move-result v10

    .line 207
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    invoke-virtual {v8}, Landroid/graphics/drawable/Icon;->getType()I

    .line 211
    move-result v10

    .line 214
    packed-switch v10, :pswitch_data_0

    .line 215
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v9

    .line 221
    goto :goto_3

    .line 222
    :pswitch_0
    invoke-virtual {v8}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    .line 223
    move-result-object v10

    .line 226
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v9

    .line 233
    goto :goto_3

    .line 234
    :pswitch_1
    invoke-virtual {v8}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    .line 235
    move-result-object v10

    .line 238
    invoke-static {v10}, Ljava/util/Arrays;->hashCode([B)I

    .line 239
    move-result v10

    .line 242
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v9

    .line 249
    goto :goto_3

    .line 250
    :pswitch_2
    invoke-virtual {v8}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    .line 251
    move-result-object v10

    .line 254
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v8}, Landroid/graphics/drawable/Icon;->getResId()I

    .line 258
    move-result v10

    .line 261
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    move-result-object v10

    .line 265
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 266
    move-result-object v10

    .line 269
    const-string v11, "0x%08x"

    .line 270
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 272
    move-result-object v10

    .line 275
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object v9

    .line 282
    goto :goto_3

    .line 283
    :pswitch_3
    invoke-virtual {v8}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    .line 284
    move-result-object v10

    .line 287
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    .line 288
    move-result v10

    .line 291
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object v9

    .line 298
    :goto_3
    new-instance v10, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;

    .line 299
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p0, v10, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;

    .line 304
    iput-object v7, v10, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 306
    iput-object v9, v10, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 308
    iput-object v4, v10, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$3:Ljava/util/Map;

    .line 310
    iput v3, v10, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$4:I

    .line 312
    iput-object v1, v10, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$5:Ljava/util/List;

    .line 314
    iput v0, v10, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$6:I

    .line 316
    iput-object v5, v10, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->f$7:Ljava/lang/ref/WeakReference;

    .line 318
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 320
    iget-object v11, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mIconDrawableCache:Ljava/util/Map;

    .line 323
    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 325
    move-result v11

    .line 328
    if-eqz v11, :cond_8

    .line 329
    iget-object v11, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mIconDrawableCache:Ljava/util/Map;

    .line 331
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    move-result-object v11

    .line 336
    if-eqz v11, :cond_8

    .line 337
    iget-object v8, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mIconDrawableCache:Ljava/util/Map;

    .line 339
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    move-result-object v8

    .line 344
    check-cast v8, Landroid/graphics/drawable/Drawable;

    .line 345
    invoke-virtual {v10, v8}, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;->onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V

    .line 347
    goto :goto_4

    .line 350
    :cond_8
    invoke-virtual {v8}, Landroid/graphics/drawable/Icon;->getType()I

    .line 351
    move-result v9

    .line 354
    const/4 v11, 0x4

    .line 355
    if-ne v9, v11, :cond_9

    .line 356
    new-instance v9, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$DrawableWrapper;

    .line 358
    invoke-virtual {v8}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    .line 360
    move-result-object v8

    .line 363
    iget v11, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mImageHeight:I

    .line 364
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object v8, v9, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$DrawableWrapper;->mUri:Landroid/net/Uri;

    .line 369
    iput v11, v9, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$DrawableWrapper;->mHeightInPx:I

    .line 371
    iput-object v2, v9, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$DrawableWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 373
    iput-object v10, v9, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$DrawableWrapper;->mListener:Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda0;

    .line 375
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 377
    new-instance v8, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$LoadUriTask;

    .line 380
    invoke-direct {v8}, Landroid/os/AsyncTask;-><init>()V

    .line 382
    filled-new-array {v9}, [Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$DrawableWrapper;

    .line 385
    move-result-object v9

    .line 388
    invoke-virtual {v8, v9}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 389
    goto :goto_4

    .line 392
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 393
    move-result-object v9

    .line 396
    iget-object v11, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->mHandler:Landroid/os/Handler;

    .line 397
    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 399
    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 402
    goto/16 :goto_2

    .line 404
    :cond_b
    const/4 v0, 0x1

    .line 406
    if-eqz v6, :cond_c

    .line 407
    const-string v8, "SubImageTemplateCard"

    .line 409
    const/4 v10, 0x0

    .line 411
    move-object v4, p0

    .line 412
    move-object v5, p1

    .line 413
    move-object v7, p2

    .line 414
    move-object v9, p3

    .line 415
    invoke-static/range {v4 .. v10}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener$1(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 416
    :cond_c
    return v0

    .line 419
    :cond_d
    :goto_5
    const-string p0, "SubImageTemplateData is null or has no SubImage or invalid template type"

    .line 420
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v3

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
    .line 426
.end method

.method public final setTextColor(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
