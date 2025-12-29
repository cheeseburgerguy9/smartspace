.class public Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAodSettingsObserver:Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;

.field public mBgHandler:Landroid/os/Handler;

.field public mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public mDozeAmount:F

.field public final mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

.field public final mIconSize:I

.field public mIsAodEnabled:Z

.field public mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

.field public mPrimaryTextColor:I

.field public final mRemoveTextDescent:Z

.field public final mTextDescentExtraPadding:I

.field public mUiSurface:Ljava/lang/String;

.field public mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "WeatherSmartspaceView"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-object p3, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDozeAmount:F

    .line 6
    iput-object p3, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 7
    new-instance p3, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p3, p0, v0}, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;-><init>(Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v0, 0x7f14038a    # @style/Smartspace

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v0, Lcom/android/systemui/bcsmartspace/R$styleable;->WeatherSmartspaceView:[I

    invoke-virtual {p3, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07037b    # @dimen/enhanced_smartspace_icon_size '20.0dp'

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070379    # @dimen/enhanced_smartspace_icon_inset '2.0dp'

    .line 13
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 14
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v2, 0x2

    .line 15
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mRemoveTextDescent:Z

    const/4 v2, 0x3

    .line 16
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mTextDescentExtraPadding:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    iput p3, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIconSize:I

    .line 19
    new-instance p2, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-direct {p2, p3, v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;-><init>(IILandroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    return-void

    :catchall_0
    move-exception p0

    .line 20
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    throw p0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 5
    const-string v1, "lockscreen"

    .line 7
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    const/4 v0, 0x0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mBgHandler:Landroid/os/Handler;

    .line 16
    if-eqz v1, :cond_0

    .line 18
    new-instance v2, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$$ExternalSyntheticLambda0;

    .line 20
    invoke-direct {v2, v0}, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$$ExternalSyntheticLambda0;-><init>(I)V

    .line 22
    iput-object p0, v2, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;

    .line 25
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 27
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    goto :goto_1

    .line 33
    :catch_0
    move-exception v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 36
    const-string v2, "Must set background handler to avoid making binder calls on main thread"

    .line 38
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    const-string v2, "WeatherSmartspaceView"

    .line 44
    const-string v3, "Unable to register DOZE_ALWAYS_ON content observer: "

    .line 46
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    move-result-object v2

    .line 58
    const-string v3, "doze_always_on"

    .line 59
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 61
    move-result v1

    .line 64
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 65
    move-result v1

    .line 68
    const/4 v2, 0x1

    .line 69
    if-ne v1, v2, :cond_1

    .line 70
    move v0, v2

    .line 72
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIsAodEnabled:Z

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 75
    if-eqz v0, :cond_3

    .line 77
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    .line 79
    :cond_3
    return-void
    .line 82
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mBgHandler:Landroid/os/Handler;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    new-instance v1, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$$ExternalSyntheticLambda0;

    .line 9
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2}, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$$ExternalSyntheticLambda0;-><init>(I)V

    .line 12
    iput-object p0, v1, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;

    .line 15
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    .line 27
    :cond_0
    return-void

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    const-string v0, "Must set background handler to avoid making binder calls on main thread"

    .line 33
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p0
    .line 38
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0a22    # @id/weather_text_view

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 12
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 14
    return-void
    .line 16
.end method

.method public final onSmartspaceTargetsUpdated(Ljava/util/List;)V
    .locals 11

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    goto/16 :goto_7

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v0

    .line 14
    const-string v2, "dream"

    .line 15
    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 19
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    goto/16 :goto_7

    .line 27
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 35
    const/16 p1, 0x8

    .line 37
    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 39
    return-void

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 43
    const/4 v3, 0x0

    .line 45
    invoke-static {v0, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 46
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 52
    move-object v5, p1

    .line 53
    check-cast v5, Landroid/app/smartspace/SmartspaceTarget;

    .line 54
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 56
    move-result p1

    .line 59
    if-eq p1, v1, :cond_3

    .line 60
    goto/16 :goto_7

    .line 62
    :cond_3
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 64
    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->containsValidTemplateType(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    .line 68
    move-result p1

    .line 71
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    .line 72
    move-result-object v0

    .line 75
    if-nez p1, :cond_4

    .line 76
    if-nez v0, :cond_4

    .line 78
    goto/16 :goto_7

    .line 80
    :cond_4
    invoke-static {v5}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)I

    .line 82
    move-result v0

    .line 85
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 86
    move-result v1

    .line 89
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 90
    iget v6, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDozeAmount:F

    .line 92
    invoke-static {v4, v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    .line 94
    move-result v4

    .line 97
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v6

    .line 101
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 102
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 105
    move-result-object v6

    .line 108
    invoke-static {v6}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createDimensionalLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 109
    move-result-object v6

    .line 112
    new-instance v7, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 113
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v0, v7, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 118
    iput v4, v7, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    .line 120
    iput v3, v7, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    .line 122
    iput v3, v7, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    .line 124
    iput v1, v7, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 126
    iput v3, v7, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    .line 128
    const/4 v0, -0x1

    .line 130
    iput v0, v7, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 131
    const/4 v0, 0x0

    .line 133
    iput-object v0, v7, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 134
    iput-object v6, v7, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 136
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 138
    iput-object v7, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 141
    const-string v1, "WeatherSmartspaceView"

    .line 143
    if-eqz p1, :cond_b

    .line 145
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 147
    move-result-object p1

    .line 150
    if-nez p1, :cond_5

    .line 151
    goto/16 :goto_6

    .line 153
    :cond_5
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 155
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 159
    move-result-object p1

    .line 162
    if-nez p1, :cond_6

    .line 163
    const-string p1, "Passed-in item info is null"

    .line 165
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    goto/16 :goto_6

    .line 170
    :cond_6
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getText()Landroid/app/smartspace/uitemplatedata/Text;

    .line 172
    move-result-object v4

    .line 175
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 176
    invoke-static {v6, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->setText(Landroid/widget/TextView;Landroid/app/smartspace/uitemplatedata/Text;)V

    .line 178
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 181
    invoke-virtual {v6, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 183
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    .line 186
    move-result-object v6

    .line 189
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 190
    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 192
    if-eqz v6, :cond_7

    .line 195
    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/Icon;->getIcon()Landroid/graphics/drawable/Icon;

    .line 197
    move-result-object v7

    .line 200
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 201
    move-result-object v8

    .line 204
    iget v9, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIconSize:I

    .line 205
    invoke-static {v7, v8, v9}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIconDrawableWithCustomSize(Landroid/graphics/drawable/Icon;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 207
    move-result-object v7

    .line 210
    iget-object v8, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 211
    invoke-virtual {v8, v7}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 216
    iget-object v8, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 218
    invoke-virtual {v7, v8, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_7
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 223
    invoke-static {v4}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    .line 225
    move-result v8

    .line 228
    const-string v9, ""

    .line 229
    if-eqz v8, :cond_8

    .line 231
    move-object v4, v9

    .line 233
    goto :goto_0

    .line 234
    :cond_8
    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/Text;->getText()Ljava/lang/CharSequence;

    .line 235
    move-result-object v4

    .line 238
    :goto_0
    if-nez v6, :cond_9

    .line 239
    goto :goto_1

    .line 241
    :cond_9
    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/Icon;->getContentDescription()Ljava/lang/CharSequence;

    .line 242
    move-result-object v9

    .line 245
    :goto_1
    invoke-static {v1, v7, v4, v9}, Lcom/google/android/systemui/smartspace/utils/ContentDescriptionUtil;->setFormattedContentDescription(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 249
    move-result-object v6

    .line 252
    if-eqz v6, :cond_e

    .line 253
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 255
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 257
    move-result p1

    .line 260
    if-nez p1, :cond_e

    .line 261
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 263
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 265
    if-nez p1, :cond_a

    .line 267
    :goto_2
    move-object v7, v0

    .line 269
    goto :goto_3

    .line 270
    :cond_a
    invoke-interface {p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->getEventNotifier()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 271
    move-result-object v0

    .line 274
    goto :goto_2

    .line 275
    :goto_3
    iget-object v9, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 276
    const/4 v10, 0x0

    .line 278
    const-string v8, "WeatherSmartspaceView"

    .line 279
    invoke-static/range {v4 .. v10}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener$1(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 281
    goto :goto_6

    .line 284
    :cond_b
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    .line 285
    move-result-object v6

    .line 288
    if-nez v6, :cond_c

    .line 289
    const-string p1, "Passed-in header action is null"

    .line 291
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    goto :goto_6

    .line 296
    :cond_c
    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    .line 297
    move-result-object p1

    .line 300
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 301
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 303
    move-result-object v7

    .line 306
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 310
    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 312
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 315
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 317
    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 320
    move-result-object v4

    .line 323
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 324
    move-result-object v7

    .line 327
    iget v8, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIconSize:I

    .line 328
    invoke-static {v4, v7, v8}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIconDrawableWithCustomSize(Landroid/graphics/drawable/Icon;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 330
    move-result-object v4

    .line 333
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 334
    invoke-virtual {v7, v4}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 339
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 341
    invoke-virtual {v4, v7, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 346
    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 348
    move-result-object v7

    .line 351
    invoke-static {v1, v4, p1, v7}, Lcom/google/android/systemui/smartspace/utils/ContentDescriptionUtil;->setFormattedContentDescription(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 352
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 355
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 357
    move-result p1

    .line 360
    if-nez p1, :cond_e

    .line 361
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 363
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 365
    if-nez p1, :cond_d

    .line 367
    :goto_4
    move-object v7, v0

    .line 369
    goto :goto_5

    .line 370
    :cond_d
    invoke-interface {p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->getEventNotifier()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 371
    move-result-object v0

    .line 374
    goto :goto_4

    .line 375
    :goto_5
    iget-object v9, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 376
    const/4 v10, 0x0

    .line 378
    const-string v8, "WeatherSmartspaceView"

    .line 379
    invoke-static/range {v4 .. v10}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 381
    :cond_e
    :goto_6
    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mRemoveTextDescent:Z

    .line 384
    if-eqz p1, :cond_f

    .line 386
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 388
    iget p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mTextDescentExtraPadding:I

    .line 390
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 392
    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 396
    move-result-object v0

    .line 399
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 400
    float-to-double v0, v0

    .line 402
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 403
    move-result-wide v0

    .line 406
    double-to-int v0, v0

    .line 407
    sub-int/2addr p0, v0

    .line 408
    invoke-virtual {p1, v3, v3, v3, p0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 409
    :cond_f
    :goto_7
    return-void
    .line 412
.end method

.method public final registerDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 11
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 17
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    .line 19
    :cond_1
    return-void
    .line 22
.end method

.method public final setBgHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mBgHandler:Landroid/os/Handler;

    .line 2
    return-void
    .line 4
.end method

.method public final setDozeAmount(F)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDozeAmount:F

    .line 2
    iget v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mPrimaryTextColor:I

    .line 4
    const/4 v1, -0x1

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    .line 7
    move-result p1

    .line 10
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    .line 13
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 16
    const-string v0, "dream"

    .line 18
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 23
    if-nez p1, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 28
    iget v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDozeAmount:F

    .line 30
    invoke-static {p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    .line 32
    move-result p1

    .line 35
    if-ne p1, v1, :cond_1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x3

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIsAodEnabled:Z

    .line 42
    if-nez v0, :cond_2

    .line 44
    :goto_0
    return-void

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 47
    iget v1, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 49
    iget v2, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 51
    iget v0, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 53
    new-instance v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 55
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v1, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 60
    iput p1, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    .line 62
    const/4 v1, 0x0

    .line 64
    iput v1, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    .line 65
    iput v1, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    .line 67
    iput v2, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 69
    iput v1, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    .line 71
    iput v0, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 73
    const/4 v0, 0x0

    .line 75
    iput-object v0, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 76
    iput-object v0, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 78
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 80
    sget-boolean v0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->DEBUG:Z

    .line 83
    if-eqz v0, :cond_3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "@"

    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 94
    move-result p0

    .line 97
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string p0, ", setDozeAmount: Logging SMARTSPACE_CARD_SEEN, loggingSurface = "

    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 116
    const-string p1, "WeatherSmartspaceView"

    .line 117
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_3
    sget-object p0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 122
    invoke-static {p0, v3}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;->log(Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    .line 124
    return-void
    .line 127
.end method

.method public final setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 2
    return-void
    .line 4
.end method

.method public final setPrimaryTextColor(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mPrimaryTextColor:I

    .line 2
    const/4 v0, -0x1

    .line 4
    iget v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDozeAmount:F

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    .line 7
    move-result p1

    .line 10
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    .line 13
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 16
    const-string p1, "dream"

    .line 18
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    return-void
    .line 23
.end method

.method public final setUiSurface(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 8
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 11
    const-string p1, "Must call before attaching view to window."

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
    .line 18
.end method
