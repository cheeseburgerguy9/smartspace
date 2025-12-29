.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCard;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/google/android/systemui/smartspace/SmartspaceCard;


# instance fields
.field public final mBaseActionIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

.field public mBaseActionIconSubtitleHitRect:Landroid/graphics/Rect;

.field public mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public mDozeAmount:F

.field public mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

.field public final mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

.field public mIconTintColor:I

.field public mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

.field public mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

.field public mSecondaryCardGroup:Landroid/view/ViewGroup;

.field public mSubtitleTextView:Landroid/widget/TextView;

.field public mTarget:Landroid/app/smartspace/SmartspaceTarget;

.field public mTextGroup:Landroid/view/ViewGroup;

.field public mTitleTextView:Landroid/widget/TextView;

.field public mTouchDelegateIsDirty:Z

.field public mUiSurface:Ljava/lang/String;

.field public mUsePageIndicatorUi:Z

.field public mValidSecondaryCard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036    # @android:attr/textColorPrimary

    invoke-static {v1, v0}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconTintColor:I

    .line 5
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTextGroup:Landroid/view/ViewGroup;

    .line 6
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 7
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 8
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSubtitleTextView:Landroid/widget/TextView;

    .line 9
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 10
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleHitRect:Landroid/graphics/Rect;

    .line 11
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mUiSurface:Ljava/lang/String;

    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTouchDelegateIsDirty:Z

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f14038a    # @style/Smartspace

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 14
    new-instance v0, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 15
    new-instance v0, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 16
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setDefaultFocusHighlightEnabled(Z)V

    return-void
.end method

.method public static getClickedIndex(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    .line 7
    if-eqz p0, :cond_1

    .line 9
    move v1, v0

    .line 11
    :goto_0
    move-object v2, p0

    .line 12
    check-cast v2, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v3

    .line 18
    if-ge v1, v3, :cond_1

    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;

    .line 25
    if-eqz v2, :cond_0

    .line 27
    iget v2, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mCardTypeId:I

    .line 29
    if-ne v2, p1, :cond_0

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 33
    return v1

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    return v0
    .line 39
.end method


# virtual methods
.method public final bindData(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v5, p3

    .line 6
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 9
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 11
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 13
    const/16 v4, 0x8

    .line 15
    invoke-static {v3, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 17
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 20
    invoke-static {v3, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 22
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 25
    iput-object v2, v3, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 27
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 29
    iput-object v2, v3, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 31
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v2, v2, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 34
    invoke-virtual {v0, v2, v2, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 37
    invoke-virtual {v0, v2, v2, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setBaseActionIconSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateIconTint()V

    .line 43
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v6, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 49
    if-eqz v6, :cond_0

    .line 51
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {v6, v3}, Landroid/view/View;->setClickable(Z)V

    .line 56
    :cond_0
    iget-object v6, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSubtitleTextView:Landroid/widget/TextView;

    .line 59
    if-eqz v6, :cond_1

    .line 61
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {v6, v3}, Landroid/view/View;->setClickable(Z)V

    .line 66
    :cond_1
    iget-object v6, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 69
    if-eqz v6, :cond_2

    .line 71
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {v6, v3}, Landroid/view/View;->setClickable(Z)V

    .line 76
    :cond_2
    iput-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 79
    move-object/from16 v6, p2

    .line 81
    iput-object v6, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 83
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    .line 85
    move-result-object v8

    .line 88
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    .line 89
    move-result-object v6

    .line 92
    iput-object v5, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 93
    move/from16 v7, p4

    .line 95
    iput-boolean v7, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mUsePageIndicatorUi:Z

    .line 97
    iput-boolean v3, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mValidSecondaryCard:Z

    .line 99
    iget-object v7, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTextGroup:Landroid/view/ViewGroup;

    .line 101
    if-eqz v7, :cond_3

    .line 103
    const/4 v9, 0x0

    .line 105
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 106
    :cond_3
    const v7, 0x7f07037b    # @dimen/enhanced_smartspace_icon_size '20.0dp'

    .line 109
    const/4 v9, 0x1

    .line 112
    if-eqz v8, :cond_e

    .line 113
    iget-object v10, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 115
    if-eqz v10, :cond_4

    .line 117
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    .line 119
    move-result-object v11

    .line 122
    invoke-virtual {v10, v11}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->reset(Ljava/lang/String;)V

    .line 123
    iget-object v10, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 126
    iget-object v11, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 128
    invoke-virtual {v10, v1, v11, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z

    .line 130
    move-result v10

    .line 133
    iput-boolean v10, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mValidSecondaryCard:Z

    .line 134
    :cond_4
    iget-object v10, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 136
    const/high16 v11, 0x3f800000    # 1.0f

    .line 138
    if-eqz v10, :cond_5

    .line 140
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 142
    :cond_5
    iget-object v10, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 145
    iget v12, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDozeAmount:F

    .line 147
    cmpl-float v11, v12, v11

    .line 149
    if-eqz v11, :cond_7

    .line 151
    iget-boolean v11, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mValidSecondaryCard:Z

    .line 153
    if-nez v11, :cond_6

    .line 155
    goto :goto_0

    .line 157
    :cond_6
    move v4, v3

    .line 158
    :cond_7
    :goto_0
    invoke-static {v10, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 159
    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 162
    move-result-object v4

    .line 165
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 166
    move-result-object v10

    .line 169
    sget-object v11, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 170
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    move-result-object v11

    .line 175
    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 176
    move-result v11

    .line 179
    invoke-static {v4, v10, v11}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIconDrawableWithCustomSize(Landroid/graphics/drawable/Icon;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 180
    move-result-object v4

    .line 183
    if-eqz v4, :cond_8

    .line 184
    move v10, v9

    .line 186
    goto :goto_1

    .line 187
    :cond_8
    move v10, v3

    .line 188
    :goto_1
    iget-object v11, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 189
    invoke-virtual {v11, v4}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    .line 194
    move-result-object v4

    .line 197
    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getSubtitle()Ljava/lang/CharSequence;

    .line 198
    move-result-object v11

    .line 201
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 202
    move-result v12

    .line 205
    if-eq v12, v9, :cond_a

    .line 206
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 208
    move-result v12

    .line 211
    if-nez v12, :cond_9

    .line 212
    goto :goto_2

    .line 214
    :cond_9
    move v12, v3

    .line 215
    goto :goto_3

    .line 216
    :cond_a
    :goto_2
    move v12, v9

    .line 217
    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 218
    move-result v13

    .line 221
    xor-int/lit8 v14, v13, 0x1

    .line 222
    if-eqz v12, :cond_b

    .line 224
    goto :goto_4

    .line 226
    :cond_b
    move-object v4, v11

    .line 227
    :goto_4
    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 228
    move-result-object v15

    .line 231
    if-eq v12, v14, :cond_c

    .line 232
    if-eqz v10, :cond_c

    .line 234
    move v14, v9

    .line 236
    goto :goto_5

    .line 237
    :cond_c
    move v14, v3

    .line 238
    :goto_5
    invoke-virtual {v0, v4, v15, v14}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 239
    if-eqz v12, :cond_d

    .line 242
    if-nez v13, :cond_d

    .line 244
    goto :goto_6

    .line 246
    :cond_d
    move-object v11, v2

    .line 247
    :goto_6
    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 248
    move-result-object v4

    .line 251
    invoke-virtual {v0, v11, v4, v10}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 252
    :cond_e
    if-eqz v6, :cond_13

    .line 255
    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 257
    move-result-object v4

    .line 260
    const/4 v10, -0x1

    .line 261
    if-eqz v4, :cond_10

    .line 262
    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 264
    move-result-object v4

    .line 267
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    .line 268
    move-result v4

    .line 271
    if-eqz v4, :cond_f

    .line 272
    goto :goto_7

    .line 274
    :cond_f
    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 275
    move-result-object v4

    .line 278
    const-string/jumbo v11, "subcardType"

    .line 279
    invoke-virtual {v4, v11, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 282
    move-result v4

    .line 285
    goto :goto_8

    .line 286
    :cond_10
    :goto_7
    move v4, v10

    .line 287
    :goto_8
    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 288
    move-result-object v11

    .line 291
    if-nez v11, :cond_11

    .line 292
    goto :goto_9

    .line 294
    :cond_11
    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 295
    move-result-object v2

    .line 298
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 299
    move-result-object v11

    .line 302
    sget-object v12, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 303
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 305
    move-result-object v12

    .line 308
    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 309
    move-result v7

    .line 312
    invoke-static {v2, v11, v7}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIconDrawableWithCustomSize(Landroid/graphics/drawable/Icon;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 313
    move-result-object v2

    .line 316
    :goto_9
    iget-object v7, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 317
    invoke-virtual {v7, v2}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 319
    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getSubtitle()Ljava/lang/CharSequence;

    .line 322
    move-result-object v2

    .line 325
    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 326
    move-result-object v7

    .line 329
    iget-object v11, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 330
    invoke-virtual {v0, v2, v7, v11}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setBaseActionIconSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 332
    if-eq v4, v10, :cond_12

    .line 335
    invoke-static {v5, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->getClickedIndex(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)I

    .line 337
    move-result v3

    .line 340
    :goto_a
    move v7, v3

    .line 341
    goto :goto_b

    .line 342
    :cond_12
    invoke-virtual {v5}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->toString()Ljava/lang/String;

    .line 343
    move-result-object v2

    .line 346
    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->toString()Ljava/lang/String;

    .line 347
    move-result-object v4

    .line 350
    new-instance v7, Ljava/lang/StringBuilder;

    .line 351
    const-string v10, "Subcard expected but missing type. loggingInfo="

    .line 353
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v2, ", baseAction="

    .line 361
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    move-result-object v2

    .line 372
    const-string v4, "BcSmartspaceCard"

    .line 373
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    goto :goto_a

    .line 378
    :goto_b
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 379
    iget-object v4, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 381
    const-string v5, "BcSmartspaceCard"

    .line 383
    move-object/from16 v2, p1

    .line 385
    move-object v3, v6

    .line 387
    move-object/from16 v6, p3

    .line 388
    invoke-static/range {v1 .. v7}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 390
    move-object v2, v3

    .line 393
    move-object v5, v6

    .line 394
    goto :goto_c

    .line 395
    :cond_13
    move-object v2, v6

    .line 396
    :goto_c
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateIconTint()V

    .line 397
    if-eqz v8, :cond_14

    .line 400
    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    .line 402
    move-result-object v1

    .line 405
    if-nez v1, :cond_15

    .line 406
    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getPendingIntent()Landroid/app/PendingIntent;

    .line 408
    move-result-object v1

    .line 411
    if-eqz v1, :cond_14

    .line 412
    goto :goto_d

    .line 414
    :cond_14
    move-object v3, v2

    .line 415
    move-object v2, v8

    .line 416
    goto :goto_e

    .line 417
    :cond_15
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 418
    move-result v1

    .line 421
    if-ne v1, v9, :cond_16

    .line 422
    iget v1, v5, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 424
    const/16 v2, 0x27

    .line 426
    if-ne v1, v2, :cond_16

    .line 428
    invoke-static {v5, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->getClickedIndex(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)I

    .line 430
    :cond_16
    if-eqz v8, :cond_19

    .line 433
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 435
    const-string v4, "BcSmartspaceCard"

    .line 437
    const/4 v6, 0x0

    .line 439
    move-object/from16 v1, p1

    .line 440
    move-object v2, v8

    .line 442
    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 443
    goto :goto_f

    .line 446
    :goto_e
    if-eqz v3, :cond_18

    .line 447
    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    .line 449
    move-result-object v1

    .line 452
    if-nez v1, :cond_17

    .line 453
    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceAction;->getPendingIntent()Landroid/app/PendingIntent;

    .line 455
    move-result-object v1

    .line 458
    if-eqz v1, :cond_18

    .line 459
    :cond_17
    if-eqz v3, :cond_19

    .line 461
    move-object v2, v3

    .line 463
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 464
    const-string v4, "BcSmartspaceCard"

    .line 466
    const/4 v6, 0x0

    .line 468
    move-object/from16 v1, p1

    .line 469
    move-object/from16 v5, p3

    .line 471
    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 473
    goto :goto_f

    .line 476
    :cond_18
    if-eqz v2, :cond_19

    .line 477
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 479
    const-string v4, "BcSmartspaceCard"

    .line 481
    const/4 v6, 0x0

    .line 483
    move-object/from16 v1, p1

    .line 484
    move-object/from16 v5, p3

    .line 486
    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 488
    :cond_19
    :goto_f
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 491
    if-nez v1, :cond_1a

    .line 493
    return-void

    .line 495
    :cond_1a
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 496
    move-result-object v1

    .line 499
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 500
    invoke-static/range {p1 .. p1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I

    .line 502
    move-result v2

    .line 505
    const/4 v3, -0x2

    .line 506
    if-ne v2, v3, :cond_1b

    .line 507
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    .line 509
    move-result v2

    .line 512
    mul-int/lit8 v2, v2, 0x3

    .line 513
    div-int/lit8 v2, v2, 0x4

    .line 515
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 517
    goto :goto_10

    .line 519
    :cond_1b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    .line 520
    move-result v2

    .line 523
    div-int/lit8 v2, v2, 0x2

    .line 524
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 526
    :goto_10
    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 528
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    iput-boolean v9, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTouchDelegateIsDirty:Z

    .line 533
    return-void
    .line 535
.end method

.method public final createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, " "

    .line 10
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 12
    return-object p0
    .line 15
.end method

.method public final getLoggingInfo()Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mUiSurface:Ljava/lang/String;

    .line 7
    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDozeAmount:F

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    .line 11
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 15
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_1

    .line 18
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 22
    move-result v1

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    new-instance p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 38
    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    .line 40
    iput v2, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    .line 42
    iput v2, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    .line 44
    iput v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 46
    iput v2, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    .line 48
    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 51
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 54
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 56
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 58
    return-object p0
    .line 61
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object v0

    .line 8
    const v1, 0x7f0709be    # @dimen/non_remoteviews_card_padding_start '16.0dp'

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 16
    move-result v1

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 20
    move-result v2

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 24
    move-result v3

    .line 27
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 28
    const v0, 0x7f0a0908    # @id/text_group

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 37
    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTextGroup:Landroid/view/ViewGroup;

    .line 40
    const v0, 0x7f0a07bd    # @id/secondary_card_group

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Landroid/view/ViewGroup;

    .line 49
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 51
    const v0, 0x7f0a0924    # @id/title_text

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0a0883    # @id/subtitle_text

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/TextView;

    .line 71
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSubtitleTextView:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0a0148    # @id/base_action_icon_subtitle

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v0

    .line 81
    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 82
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 84
    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    .line 88
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleHitRect:Landroid/graphics/Rect;

    .line 93
    :cond_0
    return-void
    .line 95
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 2
    if-nez p1, :cond_0

    .line 5
    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTouchDelegateIsDirty:Z

    .line 7
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTouchDelegateIsDirty:Z

    .line 13
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 16
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 19
    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    .line 23
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 30
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    .line 32
    move-result p1

    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p2

    .line 39
    const p3, 0x7f070c51    # @dimen/subtitle_hit_rect_height '48.0dp'

    .line 40
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    move-result p2

    .line 46
    sub-int/2addr p2, p1

    .line 47
    div-int/lit8 p2, p2, 0x2

    .line 48
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 50
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleHitRect:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 54
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 57
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    .line 59
    move-result-object p1

    .line 62
    check-cast p1, Landroid/view/View;

    .line 63
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleHitRect:Landroid/graphics/Rect;

    .line 65
    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 67
    if-gtz p2, :cond_2

    .line 70
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleHitRect:Landroid/graphics/Rect;

    .line 72
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 74
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 76
    move-result p3

    .line 79
    if-ne p1, p3, :cond_2

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    if-lez p2, :cond_3

    .line 83
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleHitRect:Landroid/graphics/Rect;

    .line 85
    iget p3, p1, Landroid/graphics/Rect;->top:I

    .line 87
    sub-int/2addr p3, p2

    .line 89
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleHitRect:Landroid/graphics/Rect;

    .line 92
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 94
    move-result p2

    .line 97
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 98
    new-instance p1, Landroid/view/TouchDelegate;

    .line 100
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleHitRect:Landroid/graphics/Rect;

    .line 102
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 104
    invoke-direct {p1, p2, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 106
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 109
    :cond_4
    :goto_0
    return-void
    .line 112
.end method

.method public final setBaseActionIconSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 2
    const-string v1, "BcSmartspaceCard"

    .line 4
    if-nez v0, :cond_0

    .line 6
    const-string p0, "No base action icon subtitle view to update"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 20
    const/16 p1, 0x8

    .line 22
    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 24
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 28
    const/4 v2, 0x0

    .line 30
    invoke-static {v0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 31
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 39
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, p3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 45
    invoke-static {v1, p0, p1, p2}, Lcom/google/android/systemui/smartspace/utils/ContentDescriptionUtil;->setFormattedContentDescription(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 47
    return-void
    .line 50
.end method

.method public final setDozeAmount$1(F)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDozeAmount:F

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 16
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 22
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 28
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 34
    move-result-object v0

    .line 37
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 38
    if-eqz v2, :cond_0

    .line 40
    const-string v2, "hide_title_on_aod"

    .line 42
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 44
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 50
    sub-float v3, v1, p1

    .line 52
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSubtitleTextView:Landroid/widget/TextView;

    .line 57
    if-eqz v2, :cond_1

    .line 59
    const-string v2, "hide_subtitle_on_aod"

    .line 61
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 63
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSubtitleTextView:Landroid/widget/TextView;

    .line 69
    sub-float p1, v1, p1

    .line 71
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTextGroup:Landroid/view/ViewGroup;

    .line 76
    if-nez p1, :cond_2

    .line 78
    goto :goto_2

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 81
    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDozeAmount:F

    .line 83
    cmpl-float v0, v0, v1

    .line 85
    const/16 v2, 0x8

    .line 87
    if-eqz v0, :cond_4

    .line 89
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mValidSecondaryCard:Z

    .line 91
    if-nez v0, :cond_3

    .line 93
    goto :goto_0

    .line 95
    :cond_3
    const/4 v0, 0x0

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    :goto_0
    move v0, v2

    .line 98
    :goto_1
    invoke-static {p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 99
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 102
    if-eqz p1, :cond_6

    .line 104
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 106
    move-result p1

    .line 109
    const/16 v0, 0x1e

    .line 110
    if-eq p1, v0, :cond_5

    .line 112
    goto :goto_3

    .line 114
    :cond_5
    :goto_2
    return-void

    .line 115
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 116
    const/4 v0, 0x0

    .line 118
    if-eqz p1, :cond_8

    .line 119
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    .line 121
    move-result p1

    .line 124
    if-eq p1, v2, :cond_8

    .line 125
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTextGroup:Landroid/view/ViewGroup;

    .line 127
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl$1()Z

    .line 129
    move-result v2

    .line 132
    if-eqz v2, :cond_7

    .line 133
    const/4 v2, 0x1

    .line 135
    goto :goto_4

    .line 136
    :cond_7
    const/4 v2, -0x1

    .line 137
    :goto_4
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    .line 140
    move-result v3

    .line 143
    mul-int/2addr v3, v2

    .line 144
    int-to-float v2, v3

    .line 145
    sget-object v3, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 146
    iget v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDozeAmount:F

    .line 148
    check-cast v3, Landroid/view/animation/PathInterpolator;

    .line 150
    invoke-virtual {v3, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 152
    move-result v3

    .line 155
    mul-float/2addr v3, v2

    .line 156
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 157
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 160
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDozeAmount:F

    .line 162
    sub-float p0, v1, p0

    .line 164
    const/high16 v2, 0x41100000    # 9.0f

    .line 166
    mul-float/2addr p0, v2

    .line 168
    const/high16 v2, 0x40c00000    # 6.0f

    .line 169
    sub-float/2addr p0, v2

    .line 171
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    .line 172
    move-result p0

    .line 175
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    .line 176
    move-result p0

    .line 179
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 180
    return-void

    .line 183
    :cond_8
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTextGroup:Landroid/view/ViewGroup;

    .line 184
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 186
    return-void
    .line 189
.end method

.method public final setPrimaryTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSubtitleTextView:Landroid/widget/TextView;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 16
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 23
    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->setTextColor(I)V

    .line 27
    :cond_3
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconTintColor:I

    .line 30
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateIconTint()V

    .line 32
    return-void
    .line 35
.end method

.method public final setScreenOn(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setSecondaryCard(Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 7
    const/16 v1, 0x8

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 11
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    if-eqz p1, :cond_1

    .line 19
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v1

    .line 26
    const v2, 0x7f070374    # @dimen/enhanced_smartspace_card_height '76.0dp'

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    move-result v1

    .line 33
    const/4 v2, -0x2

    .line 34
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v1

    .line 41
    const v2, 0x7f07037f    # @dimen/enhanced_smartspace_secondary_card_start_margin '1.0dp'

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 49
    const/4 v1, 0x0

    .line 52
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 53
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 55
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 57
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    .line 59
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    :cond_1
    :goto_0
    return-void
    .line 64
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSubtitleTextView:Landroid/widget/TextView;

    .line 2
    const-string v1, "BcSmartspaceCard"

    .line 4
    if-nez v0, :cond_0

    .line 6
    const-string p0, "No subtitle view to update"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSubtitleTextView:Landroid/widget/TextView;

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v2, :cond_2

    .line 24
    if-nez p3, :cond_1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 29
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    move-object v2, v3

    .line 32
    :goto_1
    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSubtitleTextView:Landroid/widget/TextView;

    .line 36
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 38
    if-eqz v2, :cond_3

    .line 40
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 42
    move-result v2

    .line 45
    const/4 v4, 0x5

    .line 46
    if-ne v2, v4, :cond_3

    .line 47
    iget-boolean v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mUsePageIndicatorUi:Z

    .line 49
    if-nez v2, :cond_3

    .line 51
    const/4 v2, 0x2

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const/4 v2, 0x1

    .line 55
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 56
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSubtitleTextView:Landroid/widget/TextView;

    .line 59
    invoke-static {v1, v0, p1, p2}, Lcom/google/android/systemui/smartspace/utils/ContentDescriptionUtil;->setFormattedContentDescription(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSubtitleTextView:Landroid/widget/TextView;

    .line 64
    if-eqz p3, :cond_4

    .line 66
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 68
    :cond_4
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl$1()Z

    .line 70
    move-result p0

    .line 73
    invoke-static {p1, v3, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->offsetTextViewForIcon(Landroid/widget/TextView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;Z)V

    .line 74
    return-void
    .line 77
.end method

.method public final setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 2
    const-string v1, "BcSmartspaceCard"

    .line 4
    if-nez v0, :cond_0

    .line 6
    const-string p0, "No title view to update"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 17
    const/4 v2, 0x0

    .line 19
    if-nez v0, :cond_1

    .line 20
    move-object v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    .line 24
    move-result-object v0

    .line 27
    :goto_0
    if-nez v0, :cond_2

    .line 28
    move-object v0, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 32
    move-result-object v0

    .line 35
    :goto_1
    if-eqz v0, :cond_3

    .line 36
    const-string/jumbo v3, "titleEllipsize"

    .line 38
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 41
    move-result v4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 50
    :try_start_0
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 51
    invoke-static {v3}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    .line 53
    move-result-object v5

    .line 56
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_2

    .line 60
    :catch_0
    const-string v4, "Invalid TruncateAt value: "

    .line 61
    invoke-static {v4, v3, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    goto :goto_2

    .line 66
    :cond_3
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 67
    if-eqz v3, :cond_4

    .line 69
    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 71
    move-result v3

    .line 74
    const/4 v4, 0x2

    .line 75
    if-ne v3, v4, :cond_4

    .line 76
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 78
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 83
    iget-object v4, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 90
    move-result-object v4

    .line 93
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 94
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 96
    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v3

    .line 103
    if-eqz v3, :cond_4

    .line 104
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 106
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 108
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 110
    goto :goto_2

    .line 113
    :cond_4
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 114
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 116
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 118
    :goto_2
    const/4 v3, 0x0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    const-string/jumbo v4, "titleMaxLines"

    .line 124
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 127
    move-result v4

    .line 130
    if-eqz v4, :cond_5

    .line 131
    iget-object v5, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 133
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 135
    :cond_5
    const-string v4, "disableTitleIcon"

    .line 138
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 140
    move-result v0

    .line 143
    goto :goto_3

    .line 144
    :cond_6
    move v0, v3

    .line 145
    :goto_3
    if-eqz p3, :cond_7

    .line 146
    if-nez v0, :cond_7

    .line 148
    const/4 v3, 0x1

    .line 150
    :cond_7
    if-eqz v3, :cond_8

    .line 151
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 153
    invoke-static {v1, p3, p1, p2}, Lcom/google/android/systemui/smartspace/utils/ContentDescriptionUtil;->setFormattedContentDescription(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 155
    :cond_8
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 158
    if-eqz v3, :cond_9

    .line 160
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 162
    goto :goto_4

    .line 164
    :cond_9
    move-object p2, v2

    .line 165
    :goto_4
    invoke-virtual {p1, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    .line 169
    if-eqz v3, :cond_a

    .line 171
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 173
    :cond_a
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl$1()Z

    .line 175
    move-result p0

    .line 178
    invoke-static {p1, v2, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->offsetTextViewForIcon(Landroid/widget/TextView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;Z)V

    .line 179
    return-void
    .line 182
.end method

.method public final updateIconTint()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 7
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 9
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v0, v3, :cond_1

    .line 15
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 17
    goto :goto_0

    .line 20
    :cond_1
    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconTintColor:I

    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setTint(I)V

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 26
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 28
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    .line 30
    move-result-object v1

    .line 33
    const/4 v4, -0x1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 37
    move-result-object v5

    .line 40
    if-eqz v5, :cond_3

    .line 41
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 43
    move-result-object v5

    .line 46
    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    .line 47
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 54
    move-result-object v1

    .line 57
    const-string/jumbo v5, "subcardType"

    .line 58
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 61
    move-result v4

    .line 64
    :cond_3
    :goto_1
    if-ne v4, v3, :cond_4

    .line 65
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 67
    return-void

    .line 70
    :cond_4
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconTintColor:I

    .line 71
    invoke-virtual {v0, p0}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setTint(I)V

    .line 73
    return-void
    .line 76
.end method
