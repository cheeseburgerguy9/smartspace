.class public Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/google/android/systemui/smartspace/SmartspaceCard;


# instance fields
.field public mBgHandler:Landroid/os/Handler;

.field public mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

.field public mDozeAmount:F

.field public mExtrasGroup:Landroid/view/ViewGroup;

.field public mFeatureType:I

.field public mIconTintColor:I

.field public mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

.field public mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

.field public mSecondaryCardPane:Landroid/view/ViewGroup;

.field public mShouldShowPageIndicator:Z

.field public mSubtitleGroup:Landroid/view/ViewGroup;

.field public mSubtitleHitRect:Landroid/graphics/Rect;

.field public mSubtitleSupplementalHitRect:Landroid/graphics/Rect;

.field public mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public mTarget:Landroid/app/smartspace/SmartspaceTarget;

.field public mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

.field public mTextGroup:Landroid/view/ViewGroup;

.field public mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public final mTouchDelegateComposite:Lcom/google/android/systemui/smartspace/TouchDelegateComposite;

.field public mTouchDelegateIsDirty:Z

.field public mUiSurface:Ljava/lang/String;

.field public mValidSecondaryCard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mFeatureType:I

    .line 5
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010036    # @android:attr/textColorPrimary

    invoke-static {v2, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mIconTintColor:I

    .line 7
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTextGroup:Landroid/view/ViewGroup;

    .line 8
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    .line 9
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 10
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 11
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleGroup:Landroid/view/ViewGroup;

    .line 12
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 13
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 14
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleHitRect:Landroid/graphics/Rect;

    .line 15
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalHitRect:Landroid/graphics/Rect;

    .line 16
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    .line 17
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 18
    new-instance p2, Lcom/google/android/systemui/smartspace/TouchDelegateComposite;

    .line 19
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p2, v1, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Lcom/google/android/systemui/smartspace/TouchDelegateComposite;->mDelegates:Ljava/util/ArrayList;

    .line 21
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTouchDelegateComposite:Lcom/google/android/systemui/smartspace/TouchDelegateComposite;

    .line 22
    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTouchDelegateIsDirty:Z

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p2, 0x7f14038a    # @style/Smartspace

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDefaultFocusHighlightEnabled(Z)V

    return-void
.end method

.method public static shouldTint(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    .line 5
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    :goto_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    .line 13
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/Icon;->shouldTint()Z

    .line 17
    move-result p0

    .line 20
    return p0
    .line 21
.end method


# virtual methods
.method public final bindData(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Z)V
    .locals 12

    .line 1
    move-object v3, p2

    .line 2
    const/4 v7, 0x0

    .line 3
    iput-object v7, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 4
    iput-object v7, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 6
    const/4 v8, 0x0

    .line 8
    iput v8, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mFeatureType:I

    .line 9
    iput-object v7, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 11
    invoke-virtual {p0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p0, v8}, Landroid/view/View;->setClickable(Z)V

    .line 16
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 19
    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-virtual {v1, v8}, Landroid/view/View;->setClickable(Z)V

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 29
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->resetTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    .line 31
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 34
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->resetTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    .line 36
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 39
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->resetTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    .line 41
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 44
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->resetTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    .line 46
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 49
    const/16 v9, 0x8

    .line 51
    invoke-static {v1, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 53
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleGroup:Landroid/view/ViewGroup;

    .line 56
    invoke-static {v1, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 58
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 61
    invoke-static {v1, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 63
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 66
    invoke-static {v1, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 68
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    .line 71
    invoke-static {v1, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 73
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    .line 76
    invoke-static {v1, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 78
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 81
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 83
    move-result-object v1

    .line 86
    iput-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 87
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 89
    move-result v1

    .line 92
    iput v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mFeatureType:I

    .line 93
    move-object v5, p3

    .line 95
    iput-object v5, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 96
    move/from16 v1, p4

    .line 98
    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mShouldShowPageIndicator:Z

    .line 100
    iput-boolean v8, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mValidSecondaryCard:Z

    .line 102
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTextGroup:Landroid/view/ViewGroup;

    .line 104
    if-eqz v1, :cond_1

    .line 106
    const/4 v2, 0x0

    .line 108
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 112
    if-nez v1, :cond_2

    .line 114
    return-void

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->getLoggingInfo()Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 117
    move-result-object v1

    .line 120
    iput-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 121
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 123
    const-string v10, "SsBaseTemplateCard"

    .line 125
    if-eqz v1, :cond_3

    .line 127
    const-string v1, "Secondary card is not null"

    .line 129
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 134
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    .line 136
    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->reset(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 143
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 145
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z

    .line 147
    move-result v1

    .line 150
    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mValidSecondaryCard:Z

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    .line 153
    if-eqz v1, :cond_6

    .line 155
    iget v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    .line 157
    const/high16 v4, 0x3f800000    # 1.0f

    .line 159
    cmpl-float v2, v2, v4

    .line 161
    if-eqz v2, :cond_5

    .line 163
    iget-boolean v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mValidSecondaryCard:Z

    .line 165
    if-nez v2, :cond_4

    .line 167
    goto :goto_0

    .line 169
    :cond_4
    move v2, v8

    .line 170
    goto :goto_1

    .line 171
    :cond_5
    :goto_0
    move v2, v9

    .line 172
    :goto_1
    invoke-static {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 173
    :cond_6
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 176
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 178
    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 182
    if-nez v2, :cond_7

    .line 184
    const-string v1, "No date view can be set up"

    .line 186
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    goto :goto_3

    .line 191
    :cond_7
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 192
    move-result-object v2

    .line 195
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    move-result v2

    .line 199
    if-eqz v2, :cond_8

    .line 200
    const-string v2, "Date view text is empty"

    .line 202
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_8
    if-eqz v1, :cond_9

    .line 207
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 209
    move-result-object v2

    .line 212
    if-eqz v2, :cond_9

    .line 213
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 215
    move-result-object v1

    .line 218
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/TapAction;->getId()Ljava/lang/CharSequence;

    .line 219
    move-result-object v1

    .line 222
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 226
    goto :goto_2

    .line 227
    :cond_9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 228
    move-result-object v1

    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 232
    move-result-object v1

    .line 235
    :goto_2
    new-instance v2, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;

    .line 236
    invoke-direct {v2, v1}, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;-><init>(Ljava/lang/CharSequence;)V

    .line 238
    invoke-static {}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getOpenCalendarIntent()Landroid/content/Intent;

    .line 241
    move-result-object v1

    .line 244
    invoke-virtual {v2, v1}, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/smartspace/uitemplatedata/TapAction$Builder;

    .line 245
    move-result-object v1

    .line 248
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->build()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 249
    move-result-object v2

    .line 252
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 253
    const-string v4, "SsBaseTemplateCard"

    .line 255
    const/4 v6, 0x0

    .line 257
    move-object v0, p0

    .line 258
    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener$1(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 259
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 262
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 264
    const-string v4, "SsBaseTemplateCard"

    .line 266
    move-object v3, p2

    .line 268
    move-object v5, p3

    .line 269
    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener$1(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 270
    :goto_3
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 273
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 275
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 277
    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 281
    const/4 v11, 0x1

    .line 283
    if-nez v2, :cond_a

    .line 284
    move v2, v11

    .line 286
    goto :goto_4

    .line 287
    :cond_a
    move v2, v8

    .line 288
    :goto_4
    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->setUpTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Z)V

    .line 289
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 292
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 294
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 296
    move-result-object v1

    .line 299
    invoke-virtual {p0, v0, v1, p2, v11}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->setUpTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Z)V

    .line 300
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 303
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 305
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleSupplementalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 307
    move-result-object v1

    .line 310
    invoke-virtual {p0, v0, v1, p2, v11}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->setUpTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Z)V

    .line 311
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 314
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 316
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 318
    move-result-object v1

    .line 321
    invoke-virtual {p0, v0, v1, p2, v11}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->setUpTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Z)V

    .line 322
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    .line 325
    if-nez v0, :cond_b

    .line 327
    goto :goto_5

    .line 329
    :cond_b
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 330
    if-eqz v0, :cond_d

    .line 332
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 334
    move-result v0

    .line 337
    if-nez v0, :cond_d

    .line 338
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mShouldShowPageIndicator:Z

    .line 340
    if-eqz v0, :cond_c

    .line 342
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 344
    if-eqz v0, :cond_d

    .line 346
    :cond_c
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    .line 348
    invoke-static {v0, v8}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 350
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateZenColors()V

    .line 353
    goto :goto_5

    .line 356
    :cond_d
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    .line 357
    invoke-static {v0, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 359
    :goto_5
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 362
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 364
    move-result v0

    .line 367
    if-ne v0, v9, :cond_f

    .line 368
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 370
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 372
    move-result v0

    .line 375
    if-eq v0, v9, :cond_e

    .line 376
    goto :goto_6

    .line 378
    :cond_e
    move v0, v8

    .line 379
    goto :goto_7

    .line 380
    :cond_f
    :goto_6
    move v0, v11

    .line 381
    :goto_7
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleGroup:Landroid/view/ViewGroup;

    .line 382
    if-eqz v0, :cond_10

    .line 384
    move v9, v8

    .line 386
    :cond_10
    invoke-static {v1, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 387
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 390
    move-result v0

    .line 393
    if-ne v0, v11, :cond_11

    .line 394
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 396
    if-eqz v0, :cond_11

    .line 398
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 400
    move-result v0

    .line 403
    if-nez v0, :cond_11

    .line 404
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 406
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 408
    :cond_11
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 411
    if-nez v0, :cond_19

    .line 413
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 415
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 417
    move-result-object v0

    .line 420
    if-eqz v0, :cond_19

    .line 421
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 423
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 425
    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 429
    move-result-object v0

    .line 432
    if-eqz v0, :cond_19

    .line 433
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 435
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 437
    move-result-object v0

    .line 440
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 441
    move-result-object v2

    .line 444
    iget-object v5, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 445
    const/4 v6, 0x0

    .line 447
    const-string v4, "SsBaseTemplateCard"

    .line 448
    move-object v0, p0

    .line 450
    move-object v1, p1

    .line 451
    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener$1(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 452
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 455
    if-eqz v1, :cond_12

    .line 457
    goto/16 :goto_8

    .line 459
    :cond_12
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 461
    if-eqz v1, :cond_19

    .line 463
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    .line 465
    move-result v1

    .line 468
    if-eqz v1, :cond_13

    .line 469
    goto/16 :goto_8

    .line 471
    :cond_13
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 473
    if-eqz v1, :cond_19

    .line 475
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    .line 477
    move-result v1

    .line 480
    if-eqz v1, :cond_14

    .line 481
    goto/16 :goto_8

    .line 483
    :cond_14
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 485
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 487
    move-result-object v1

    .line 490
    if-eqz v1, :cond_19

    .line 491
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 493
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 495
    move-result-object v1

    .line 498
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 499
    move-result-object v1

    .line 502
    if-nez v1, :cond_15

    .line 503
    goto/16 :goto_8

    .line 505
    :cond_15
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 507
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 509
    move-result-object v1

    .line 512
    if-eqz v1, :cond_19

    .line 513
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 515
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 517
    move-result-object v1

    .line 520
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 521
    move-result-object v1

    .line 524
    if-nez v1, :cond_16

    .line 525
    goto/16 :goto_8

    .line 527
    :cond_16
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 529
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 531
    move-result-object v1

    .line 534
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 535
    move-result-object v1

    .line 538
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 539
    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 541
    move-result-object v2

    .line 544
    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 545
    move-result-object v2

    .line 548
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/TapAction;->getIntent()Landroid/content/Intent;

    .line 549
    move-result-object v3

    .line 552
    if-eqz v3, :cond_17

    .line 553
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/TapAction;->getIntent()Landroid/content/Intent;

    .line 555
    move-result-object v3

    .line 558
    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/TapAction;->getIntent()Landroid/content/Intent;

    .line 559
    move-result-object v4

    .line 562
    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 563
    move-result v3

    .line 566
    if-nez v3, :cond_17

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    .line 569
    const-string v4, "Primary item tapAction intent = "

    .line 571
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/TapAction;->getIntent()Landroid/content/Intent;

    .line 576
    move-result-object v1

    .line 579
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    move-result-object v1

    .line 586
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    .line 590
    const-string v3, "Subtitle item tapAction intent = "

    .line 592
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/TapAction;->getIntent()Landroid/content/Intent;

    .line 597
    move-result-object v2

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    move-result-object v1

    .line 607
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    goto :goto_8

    .line 611
    :cond_17
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/TapAction;->getPendingIntent()Landroid/app/PendingIntent;

    .line 612
    move-result-object v3

    .line 615
    if-eqz v3, :cond_18

    .line 616
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/TapAction;->getPendingIntent()Landroid/app/PendingIntent;

    .line 618
    move-result-object v3

    .line 621
    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/TapAction;->getPendingIntent()Landroid/app/PendingIntent;

    .line 622
    move-result-object v4

    .line 625
    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    .line 626
    move-result v3

    .line 629
    if-nez v3, :cond_18

    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    .line 632
    const-string v4, "Primary item tapAction pendingIntent = "

    .line 634
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/TapAction;->getPendingIntent()Landroid/app/PendingIntent;

    .line 639
    move-result-object v1

    .line 642
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    move-result-object v1

    .line 649
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    .line 653
    const-string v3, "Subtitle item tapAction pendingIntent = "

    .line 655
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/TapAction;->getPendingIntent()Landroid/app/PendingIntent;

    .line 660
    move-result-object v2

    .line 663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    move-result-object v1

    .line 670
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    goto :goto_8

    .line 674
    :cond_18
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 675
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    invoke-virtual {v1, v8}, Landroid/view/View;->setClickable(Z)V

    .line 680
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 683
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    invoke-virtual {v1, v8}, Landroid/view/View;->setClickable(Z)V

    .line 688
    :cond_19
    :goto_8
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    .line 691
    if-nez v1, :cond_1a

    .line 693
    const-string v0, "Secondary card pane is null"

    .line 695
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-void

    .line 700
    :cond_1a
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 701
    move-result-object v1

    .line 704
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 705
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 707
    move-result v2

    .line 710
    div-int/lit8 v2, v2, 0x2

    .line 711
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 713
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    .line 715
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    iput-boolean v11, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTouchDelegateIsDirty:Z

    .line 720
    return-void
    .line 722
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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mUiSurface:Ljava/lang/String;

    .line 7
    iget v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    .line 11
    move-result v0

    .line 14
    iget v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mFeatureType:I

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 24
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 26
    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createDimensionalLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 30
    move-result-object p0

    .line 33
    new-instance v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 34
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v3, 0x0

    .line 39
    iput v3, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 40
    iput v0, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    .line 42
    iput v3, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    .line 44
    iput v3, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    .line 46
    iput v1, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 48
    iput v3, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    .line 50
    const/4 v0, -0x1

    .line 52
    iput v0, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 53
    const/4 v0, 0x0

    .line 55
    iput-object v0, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 56
    iput-object p0, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 58
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 60
    return-object v2
    .line 63
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
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTextGroup:Landroid/view/ViewGroup;

    .line 40
    const v0, 0x7f0a07bd    # @id/secondary_card_group

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Landroid/view/ViewGroup;

    .line 49
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    .line 51
    const v0, 0x7f0a028f    # @id/date

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 60
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 62
    const v0, 0x7f0a0924    # @id/title_text

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 70
    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 71
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 73
    const v0, 0x7f0a0830    # @id/smartspace_subtitle_group

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v0

    .line 81
    check-cast v0, Landroid/view/ViewGroup;

    .line 82
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleGroup:Landroid/view/ViewGroup;

    .line 84
    const v0, 0x7f0a0883    # @id/subtitle_text

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 92
    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 93
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 95
    const v0, 0x7f0a0148    # @id/base_action_icon_subtitle

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v0

    .line 103
    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 104
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 106
    const v0, 0x7f0a082e    # @id/smartspace_extras_group

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object v0

    .line 114
    check-cast v0, Landroid/view/ViewGroup;

    .line 115
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    .line 117
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 119
    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    .line 123
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 125
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleHitRect:Landroid/graphics/Rect;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 130
    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    .line 134
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 136
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalHitRect:Landroid/graphics/Rect;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 141
    if-nez v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 145
    if-eqz v0, :cond_3

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTouchDelegateComposite:Lcom/google/android/systemui/smartspace/TouchDelegateComposite;

    .line 149
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    .line 154
    if-eqz v0, :cond_4

    .line 156
    const v1, 0x7f0a08ce    # @id/supplemental_line_text

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 161
    move-result-object v0

    .line 164
    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 165
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mBgHandler:Landroid/os/Handler;

    .line 169
    if-eqz v0, :cond_5

    .line 171
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 173
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mBgHandler:Landroid/os/Handler;

    .line 175
    :cond_5
    return-void
    .line 177
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 2
    if-nez p1, :cond_0

    .line 5
    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTouchDelegateIsDirty:Z

    .line 7
    if-nez p1, :cond_0

    .line 9
    goto/16 :goto_3

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTouchDelegateIsDirty:Z

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchDelegate()Landroid/view/TouchDelegate;

    .line 16
    move-result-object p2

    .line 19
    if-nez p2, :cond_1

    .line 20
    goto/16 :goto_3

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchDelegate()Landroid/view/TouchDelegate;

    .line 24
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object p2

    .line 31
    const-class p3, Lcom/google/android/systemui/smartspace/TouchDelegateComposite;

    .line 32
    if-eq p2, p3, :cond_2

    .line 34
    goto/16 :goto_3

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchDelegate()Landroid/view/TouchDelegate;

    .line 38
    move-result-object p2

    .line 41
    check-cast p2, Lcom/google/android/systemui/smartspace/TouchDelegateComposite;

    .line 42
    iget-object p3, p2, Lcom/google/android/systemui/smartspace/TouchDelegateComposite;->mDelegates:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 46
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleGroup:Landroid/view/ViewGroup;

    .line 49
    if-eqz p3, :cond_e

    .line 51
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVisibility()I

    .line 53
    move-result p3

    .line 56
    if-eqz p3, :cond_3

    .line 57
    goto/16 :goto_3

    .line 59
    :cond_3
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 61
    const/4 p4, 0x1

    .line 63
    if-eqz p3, :cond_4

    .line 64
    invoke-virtual {p3}, Landroid/widget/TextView;->getVisibility()I

    .line 66
    move-result p3

    .line 69
    if-nez p3, :cond_4

    .line 70
    move p3, p4

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    move p3, p1

    .line 74
    :goto_0
    iget-object p5, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 75
    if-eqz p5, :cond_5

    .line 77
    invoke-virtual {p5}, Landroid/widget/TextView;->getVisibility()I

    .line 79
    move-result p5

    .line 82
    if-nez p5, :cond_5

    .line 83
    move p5, p4

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    move p5, p1

    .line 87
    :goto_1
    if-nez p3, :cond_6

    .line 88
    if-nez p5, :cond_6

    .line 90
    goto/16 :goto_3

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 94
    if-eqz v0, :cond_7

    .line 96
    invoke-virtual {v0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    .line 98
    move-result v0

    .line 101
    if-eqz v0, :cond_7

    .line 102
    move v0, p4

    .line 104
    goto :goto_2

    .line 105
    :cond_7
    move v0, p1

    .line 106
    :goto_2
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 107
    if-eqz v1, :cond_8

    .line 109
    invoke-virtual {v1}, Landroid/widget/TextView;->hasOnClickListeners()Z

    .line 111
    move-result v1

    .line 114
    if-eqz v1, :cond_8

    .line 115
    move p1, p4

    .line 117
    :cond_8
    if-nez v0, :cond_9

    .line 118
    if-nez p1, :cond_9

    .line 120
    goto/16 :goto_3

    .line 122
    :cond_9
    iget-object p4, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleGroup:Landroid/view/ViewGroup;

    .line 124
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getHeight()I

    .line 126
    move-result p4

    .line 129
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 130
    move-result-object v1

    .line 133
    const v2, 0x7f070c51    # @dimen/subtitle_hit_rect_height '48.0dp'

    .line 134
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 137
    move-result v1

    .line 140
    sub-int/2addr v1, p4

    .line 141
    div-int/lit8 v1, v1, 0x2

    .line 142
    if-gtz v1, :cond_a

    .line 144
    iget-object p4, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleGroup:Landroid/view/ViewGroup;

    .line 146
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getBottom()I

    .line 148
    move-result p4

    .line 151
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 152
    move-result v2

    .line 155
    if-ne p4, v2, :cond_a

    .line 156
    goto :goto_3

    .line 158
    :cond_a
    if-eqz p3, :cond_c

    .line 159
    if-eqz v0, :cond_c

    .line 161
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 163
    iget-object p4, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleHitRect:Landroid/graphics/Rect;

    .line 165
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 167
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleGroup:Landroid/view/ViewGroup;

    .line 170
    iget-object p4, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleHitRect:Landroid/graphics/Rect;

    .line 172
    invoke-virtual {p0, p3, p4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 174
    if-lez v1, :cond_b

    .line 177
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleHitRect:Landroid/graphics/Rect;

    .line 179
    iget p4, p3, Landroid/graphics/Rect;->top:I

    .line 181
    sub-int/2addr p4, v1

    .line 183
    iput p4, p3, Landroid/graphics/Rect;->top:I

    .line 184
    :cond_b
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleHitRect:Landroid/graphics/Rect;

    .line 186
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    .line 188
    move-result p4

    .line 191
    iput p4, p3, Landroid/graphics/Rect;->bottom:I

    .line 192
    new-instance p3, Landroid/view/TouchDelegate;

    .line 194
    iget-object p4, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleHitRect:Landroid/graphics/Rect;

    .line 196
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 198
    invoke-direct {p3, p4, v0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 200
    iget-object p4, p2, Lcom/google/android/systemui/smartspace/TouchDelegateComposite;->mDelegates:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_c
    if-eqz p5, :cond_e

    .line 208
    if-eqz p1, :cond_e

    .line 210
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 212
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalHitRect:Landroid/graphics/Rect;

    .line 214
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 216
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleGroup:Landroid/view/ViewGroup;

    .line 219
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalHitRect:Landroid/graphics/Rect;

    .line 221
    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 223
    if-lez v1, :cond_d

    .line 226
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalHitRect:Landroid/graphics/Rect;

    .line 228
    iget p3, p1, Landroid/graphics/Rect;->top:I

    .line 230
    sub-int/2addr p3, v1

    .line 232
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 233
    :cond_d
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalHitRect:Landroid/graphics/Rect;

    .line 235
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    .line 237
    move-result p3

    .line 240
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 241
    new-instance p1, Landroid/view/TouchDelegate;

    .line 243
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalHitRect:Landroid/graphics/Rect;

    .line 245
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 247
    invoke-direct {p1, p3, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 249
    iget-object p0, p2, Lcom/google/android/systemui/smartspace/TouchDelegateComposite;->mDelegates:Ljava/util/ArrayList;

    .line 252
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_e
    :goto_3
    return-void
    .line 257
.end method

.method public final resetTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl$1()Z

    .line 22
    sget-object p0, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->TEMPLATE_TYPE_TO_SECONDARY_CARD_RES:Ljava/util/Map;

    .line 25
    const/4 p0, 0x0

    .line 27
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 28
    return-void
    .line 31
.end method

.method public final setDozeAmount$1(F)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

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
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

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
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 28
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 34
    move-result-object v0

    .line 37
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

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
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 50
    sub-float v3, v1, p1

    .line 52
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

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
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 69
    sub-float p1, v1, p1

    .line 71
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTextGroup:Landroid/view/ViewGroup;

    .line 76
    if-nez p1, :cond_2

    .line 78
    return-void

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    .line 81
    iget v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    .line 83
    cmpl-float v0, v0, v1

    .line 85
    const/16 v2, 0x8

    .line 87
    if-eqz v0, :cond_4

    .line 89
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mValidSecondaryCard:Z

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
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    .line 102
    const/4 v0, 0x0

    .line 104
    if-eqz p1, :cond_6

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    .line 107
    move-result p1

    .line 110
    if-eq p1, v2, :cond_6

    .line 111
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTextGroup:Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl$1()Z

    .line 115
    move-result v2

    .line 118
    if-eqz v2, :cond_5

    .line 119
    const/4 v2, 0x1

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    const/4 v2, -0x1

    .line 123
    :goto_2
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    .line 124
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    .line 126
    move-result v3

    .line 129
    mul-int/2addr v3, v2

    .line 130
    int-to-float v2, v3

    .line 131
    sget-object v3, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 132
    iget v4, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    .line 134
    check-cast v3, Landroid/view/animation/PathInterpolator;

    .line 136
    invoke-virtual {v3, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 138
    move-result v3

    .line 141
    mul-float/2addr v3, v2

    .line 142
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 143
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    .line 146
    iget p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    .line 148
    sub-float p0, v1, p0

    .line 150
    const/high16 v2, 0x41100000    # 9.0f

    .line 152
    mul-float/2addr p0, v2

    .line 154
    const/high16 v2, 0x40c00000    # 6.0f

    .line 155
    sub-float/2addr p0, v2

    .line 157
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    .line 158
    move-result p0

    .line 161
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    .line 162
    move-result p0

    .line 165
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 166
    return-void

    .line 169
    :cond_6
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTextGroup:Landroid/view/ViewGroup;

    .line 170
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 172
    return-void
    .line 175
.end method

.method public final setPrimaryTextColor(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mIconTintColor:I

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 15
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 17
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->shouldTint(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z

    .line 21
    move-result v0

    .line 24
    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateTextViewIconTint(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 35
    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    .line 39
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 42
    if-eqz v0, :cond_2

    .line 44
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 46
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 48
    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->shouldTint(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z

    .line 52
    move-result v0

    .line 55
    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateTextViewIconTint(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 59
    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    .line 63
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 66
    if-eqz p1, :cond_3

    .line 68
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 70
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleSupplementalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 72
    move-result-object p1

    .line 75
    invoke-static {p1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->shouldTint(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z

    .line 76
    move-result p1

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateTextViewIconTint(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateZenColors()V

    .line 83
    return-void
    .line 86
.end method

.method public final setScreenOn(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIsInteractive:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->rescheduleTicker()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final setSecondaryCard(Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 7
    const/16 v1, 0x8

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 11
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

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
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    .line 59
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    :cond_1
    :goto_0
    return-void
    .line 64
.end method

.method public final setUpTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Z)V
    .locals 8

    .line 1
    const-string v0, "SsBaseTemplateCard"

    .line 2
    if-nez p1, :cond_0

    .line 4
    const-string p0, "No text view can be set up"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->resetTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    .line 12
    if-nez p2, :cond_1

    .line 15
    const-string p0, "Passed-in item info is null"

    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/16 p0, 0x8

    .line 22
    invoke-static {p1, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 24
    return-void

    .line 27
    :cond_1
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getText()Landroid/app/smartspace/uitemplatedata/Text;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getText()Landroid/app/smartspace/uitemplatedata/Text;

    .line 32
    move-result-object v2

    .line 35
    invoke-static {p1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->setText(Landroid/widget/TextView;Landroid/app/smartspace/uitemplatedata/Text;)V

    .line 36
    invoke-static {v1}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    .line 39
    move-result v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    iget v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mIconTintColor:I

    .line 45
    invoke-virtual {p1, v2}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    .line 47
    :cond_2
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    .line 50
    move-result-object v2

    .line 53
    if-eqz v2, :cond_4

    .line 54
    new-instance v3, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v4

    .line 61
    invoke-direct {v3, v4}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/Icon;->getIcon()Landroid/graphics/drawable/Icon;

    .line 65
    move-result-object v4

    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v5

    .line 72
    sget-object v6, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 73
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object v6

    .line 78
    const v7, 0x7f07037b    # @dimen/enhanced_smartspace_icon_size '20.0dp'

    .line 79
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 82
    move-result v6

    .line 85
    invoke-static {v4, v5, v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIconDrawableWithCustomSize(Landroid/graphics/drawable/Icon;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 86
    move-result-object v4

    .line 89
    invoke-virtual {v3, v4}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 90
    const/4 v4, 0x0

    .line 93
    invoke-virtual {p1, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-static {v1}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    .line 97
    move-result v4

    .line 100
    if-eqz v4, :cond_3

    .line 101
    const-string v1, ""

    .line 103
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/Text;->getText()Ljava/lang/CharSequence;

    .line 106
    move-result-object v1

    .line 109
    :goto_0
    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/Icon;->getContentDescription()Ljava/lang/CharSequence;

    .line 110
    move-result-object v4

    .line 113
    invoke-static {v0, p1, v1, v4}, Lcom/google/android/systemui/smartspace/utils/ContentDescriptionUtil;->setFormattedContentDescription(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/Icon;->shouldTint()Z

    .line 117
    move-result v0

    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateTextViewIconTint(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    .line 121
    if-eqz p4, :cond_4

    .line 124
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl$1()Z

    .line 126
    move-result p4

    .line 129
    invoke-static {p1, v3, p4}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->offsetTextViewForIcon(Landroid/widget/TextView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;Z)V

    .line 130
    :cond_4
    const/4 p4, 0x0

    .line 133
    invoke-static {p1, p4}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 134
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 137
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 139
    move-result-object v2

    .line 142
    iget-object v5, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 143
    if-eqz v5, :cond_6

    .line 145
    iget-object v0, v5, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 147
    if-eqz v0, :cond_6

    .line 149
    iget-object v0, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    .line 151
    if-eqz v0, :cond_6

    .line 153
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 155
    move-result v0

    .line 158
    if-nez v0, :cond_6

    .line 159
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 161
    move-result-object v0

    .line 164
    if-eqz v0, :cond_6

    .line 165
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 167
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getFeatureType()I

    .line 171
    move-result v0

    .line 174
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 175
    iget v3, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 177
    if-ne v0, v3, :cond_5

    .line 179
    goto :goto_2

    .line 181
    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 182
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    .line 184
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 186
    move-result-object p2

    .line 189
    move v0, p4

    .line 190
    :goto_1
    move-object v3, p0

    .line 191
    check-cast v3, Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 194
    move-result v4

    .line 197
    if-ge v0, v4, :cond_6

    .line 198
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    move-result-object v3

    .line 203
    check-cast v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;

    .line 204
    iget v4, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mInstanceId:I

    .line 206
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getInstanceId()I

    .line 208
    move-result v6

    .line 211
    if-ne v4, v6, :cond_7

    .line 212
    iget v3, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mCardTypeId:I

    .line 214
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getFeatureType()I

    .line 216
    move-result v4

    .line 219
    if-ne v3, v4, :cond_7

    .line 220
    add-int/lit8 p4, v0, 0x1

    .line 222
    :cond_6
    :goto_2
    move v6, p4

    .line 224
    goto :goto_3

    .line 225
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 226
    goto :goto_1

    .line 228
    :goto_3
    const-string v4, "SsBaseTemplateCard"

    .line 229
    move-object v0, p1

    .line 231
    move-object v3, p3

    .line 232
    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener$1(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 233
    return-void
    .line 236
.end method

.method public final updateTextViewIconTint(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_2

    .line 8
    aget-object v2, p1, v1

    .line 10
    if-nez v2, :cond_0

    .line 12
    goto :goto_1

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    iget v3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mIconTintColor:I

    .line 17
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 19
    goto :goto_1

    .line 22
    :cond_1
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 24
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    return-void
    .line 30
.end method

.method public final updateZenColors()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mIconTintColor:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 11
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->containsValidTemplateType(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 19
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 21
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 23
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->shouldTint(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z

    .line 27
    move-result v1

    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateTextViewIconTint(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    .line 31
    :cond_0
    return-void
    .line 34
.end method
