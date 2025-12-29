.class public Lcom/google/android/systemui/smartspace/DateSmartspaceView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAodSettingsObserver:Lcom/google/android/systemui/smartspace/DateSmartspaceView$1;

.field public mBgHandler:Landroid/os/Handler;

.field public mCurrentTextColor:I

.field public mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public final mDateAction:Landroid/app/smartspace/SmartspaceAction;

.field public final mDateTarget:Landroid/app/smartspace/SmartspaceTarget;

.field public mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

.field public final mDndIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

.field public mDndImageView:Landroid/widget/ImageView;

.field public mDozeAmount:F

.field public mIsAodEnabled:Z

.field public mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

.field public final mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

.field public final mNextAlarmIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

.field public mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public mPrimaryTextColor:I

.field public mUiSurface:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "DateSmartspaceView"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mUiSurface:Ljava/lang/String;

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDozeAmount:F

    .line 6
    new-instance p2, Landroid/app/smartspace/SmartspaceTarget$Builder;

    new-instance p3, Landroid/content/ComponentName;

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "date_card_794317_92634"

    invoke-direct {p2, v1, p3, v0}, Landroid/app/smartspace/SmartspaceTarget$Builder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/4 p3, 0x1

    .line 8
    invoke-virtual {p2, p3}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget$Builder;->build()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 10
    new-instance p2, Landroid/app/smartspace/SmartspaceAction$Builder;

    const-string p3, "dateId"

    const-string v0, "Date"

    invoke-direct {p2, p3, v0}, Landroid/app/smartspace/SmartspaceAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getOpenCalendarIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/smartspace/SmartspaceAction$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/smartspace/SmartspaceAction$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction$Builder;->build()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateAction:Landroid/app/smartspace/SmartspaceAction;

    .line 12
    new-instance p2, Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    .line 13
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    .line 15
    new-instance p2, Lcom/google/android/systemui/smartspace/DateSmartspaceView$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/google/android/systemui/smartspace/DateSmartspaceView$1;-><init>(Lcom/google/android/systemui/smartspace/DateSmartspaceView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/DateSmartspaceView$1;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const p3, 0x7f14038a    # @style/Smartspace

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 17
    new-instance p2, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 18
    new-instance p2, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 12

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 5
    const-string v1, "lockscreen"

    .line 7
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mBgHandler:Landroid/os/Handler;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    new-instance v2, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;

    .line 20
    invoke-direct {v2, v1}, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;-><init>(I)V

    .line 22
    iput-object p0, v2, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/DateSmartspaceView;

    .line 25
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 27
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    goto :goto_1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    const-string v2, "Must set background handler to avoid making binder calls on main thread"

    .line 38
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    const-string v2, "DateSmartspaceView"

    .line 44
    const-string v3, "Unable to register DOZE_ALWAYS_ON content observer: "

    .line 46
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    move-result-object v2

    .line 58
    const-string v3, "doze_always_on"

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 61
    move-result v0

    .line 64
    invoke-static {v2, v3, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 65
    move-result v0

    .line 68
    const/4 v2, 0x1

    .line 69
    if-ne v0, v2, :cond_1

    .line 70
    goto :goto_2

    .line 72
    :cond_1
    move v2, v1

    .line 73
    :goto_2
    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mIsAodEnabled:Z

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 76
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)I

    .line 78
    move-result v0

    .line 81
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 82
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 84
    move-result v2

    .line 87
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 88
    iget v4, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDozeAmount:F

    .line 90
    invoke-static {v3, v4}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    .line 92
    move-result v3

    .line 95
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 96
    move-result-object v4

    .line 99
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 100
    new-instance v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 103
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v0, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 108
    iput v3, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    .line 110
    iput v1, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    .line 112
    iput v1, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    .line 114
    iput v2, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 116
    iput v1, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    .line 118
    const/4 v0, -0x1

    .line 120
    iput v0, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 121
    const/4 v0, 0x0

    .line 123
    iput-object v0, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 124
    iput-object v0, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 126
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 128
    iput-object v4, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 131
    iget-object v5, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 133
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 135
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateAction:Landroid/app/smartspace/SmartspaceAction;

    .line 137
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 139
    if-nez v1, :cond_3

    .line 141
    :goto_3
    move-object v8, v0

    .line 143
    goto :goto_4

    .line 144
    :cond_3
    invoke-interface {v1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->getEventNotifier()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 145
    move-result-object v0

    .line 148
    goto :goto_3

    .line 149
    :goto_4
    iget-object v10, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 150
    const/4 v11, 0x0

    .line 152
    const-string v9, "DateSmartspaceView"

    .line 153
    invoke-static/range {v5 .. v11}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 155
    return-void
    .line 158
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mBgHandler:Landroid/os/Handler;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;

    .line 9
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2}, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;-><init>(I)V

    .line 12
    iput-object p0, v1, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/DateSmartspaceView;

    .line 15
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 24
    const-string v0, "Must set background handler to avoid making binder calls on main thread"

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0
    .line 31
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a028f    # @id/date

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 12
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 14
    const v0, 0x7f0a00a2    # @id/alarm_text_view

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 23
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 25
    const v0, 0x7f0a02e5    # @id/dnd_icon

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndImageView:Landroid/widget/ImageView;

    .line 36
    return-void
    .line 38
.end method

.method public final registerDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 2
    return-void
    .line 4
.end method

.method public final setBgHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mBgHandler:Landroid/os/Handler;

    .line 2
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 4
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mBgHandler:Landroid/os/Handler;

    .line 6
    return-void
    .line 8
.end method

.method public final setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndImageView:Landroid/widget/ImageView;

    .line 4
    const/16 p2, 0x8

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndImageView:Landroid/widget/ImageView;

    .line 21
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndImageView:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndImageView:Landroid/widget/ImageView;

    .line 33
    const/4 p2, 0x0

    .line 35
    invoke-static {p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->updateColorForExtras()V

    .line 39
    return-void
    .line 42
.end method

.method public final setDozeAmount(F)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDozeAmount:F

    .line 2
    iget v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mPrimaryTextColor:I

    .line 4
    const/4 v1, -0x1

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    .line 7
    move-result p1

    .line 10
    iput p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mCurrentTextColor:I

    .line 11
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->updateColorForExtras()V

    .line 18
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 21
    if-nez p1, :cond_0

    .line 23
    goto/16 :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 27
    iget v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDozeAmount:F

    .line 29
    invoke-static {p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    .line 31
    move-result p1

    .line 34
    if-ne p1, v1, :cond_1

    .line 35
    goto/16 :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x3

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mIsAodEnabled:Z

    .line 42
    if-nez v0, :cond_2

    .line 44
    goto/16 :goto_0

    .line 46
    :cond_2
    sget-boolean v0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->DEBUG:Z

    .line 48
    if-eqz v0, :cond_3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "@"

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 59
    move-result v1

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", setDozeAmount: Logging SMARTSPACE_CARD_SEEN, loggingSurface = "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 81
    const-string v1, "DateSmartspaceView"

    .line 82
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 87
    iget v1, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 89
    iget v2, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 91
    iget v0, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 93
    new-instance v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 95
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v1, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 100
    iput p1, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    .line 102
    const/4 v1, 0x0

    .line 104
    iput v1, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    .line 105
    iput v1, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    .line 107
    iput v2, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 109
    iput v1, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    .line 111
    iput v0, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 113
    const/4 v0, 0x0

    .line 115
    iput-object v0, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 116
    iput-object v0, v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 118
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 120
    sget-object v2, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 123
    invoke-static {v2, v3}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;->log(Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    .line 125
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    .line 128
    iget-object v3, v3, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mImage:Landroid/graphics/drawable/Drawable;

    .line 130
    if-eqz v3, :cond_4

    .line 132
    const-string/jumbo v3, "upcoming_alarm_card_94510_12684"

    .line 134
    invoke-static {v3}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Ljava/lang/String;)I

    .line 137
    move-result v3

    .line 140
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 141
    iget p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 143
    new-instance v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 145
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 147
    iput v3, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 150
    iput p1, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    .line 152
    iput v1, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    .line 154
    iput v1, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    .line 156
    const/16 p1, 0x17

    .line 158
    iput p1, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 160
    iput v1, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    .line 162
    iput p0, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 164
    iput-object v0, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 166
    iput-object v0, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 168
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 170
    invoke-static {v2, v4}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;->log(Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    .line 173
    :cond_4
    :goto_0
    return-void
    .line 176
.end method

.method public final setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 2
    return-void
    .line 4
.end method

.method public final setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    .line 2
    iput-object p1, v0, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mImage:Landroid/graphics/drawable/Drawable;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    :cond_0
    iput-object p2, v0, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mDescription:Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    .line 13
    iget-object p1, p1, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mImage:Landroid/graphics/drawable/Drawable;

    .line 15
    if-nez p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 19
    const/16 p2, 0x8

    .line 21
    invoke-static {p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 23
    goto/16 :goto_2

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 33
    const v1, 0x7f1300e0    # @string/accessibility_next_alarm 'Next alarm at %s'

    .line 34
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 37
    move-result-object p2

    .line 40
    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 48
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    const/4 v0, 0x0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    iget-object p2, p2, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mDescription:Ljava/lang/String;

    .line 67
    const-string v2, " \u00b7 null"

    .line 69
    invoke-static {v1, p2, v2}, Landroidx/compose/foundation/content/MediaType$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p2, p2, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mDescription:Ljava/lang/String;

    .line 76
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 81
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    .line 83
    iget-object p2, p2, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mImage:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v1

    .line 90
    sget-object v2, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 91
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object v1

    .line 96
    const v2, 0x7f07037b    # @dimen/enhanced_smartspace_icon_size '20.0dp'

    .line 97
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 100
    move-result v1

    .line 103
    const/4 v2, 0x0

    .line 104
    invoke-virtual {p2, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    invoke-virtual {p1, p2}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 111
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 113
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 118
    invoke-static {p1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 120
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    .line 123
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 125
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 127
    if-nez p2, :cond_3

    .line 129
    move-object v6, v0

    .line 131
    goto :goto_1

    .line 132
    :cond_3
    invoke-interface {p2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->getEventNotifier()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 133
    move-result-object p2

    .line 136
    move-object v6, p2

    .line 137
    :goto_1
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 138
    iget v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDozeAmount:F

    .line 140
    invoke-static {p2, v1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    .line 142
    move-result p2

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    const-string/jumbo p1, "upcoming_alarm_card_94510_12684"

    .line 149
    invoke-static {p1}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Ljava/lang/String;)I

    .line 152
    move-result p1

    .line 155
    new-instance v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 156
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 161
    iput p2, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    .line 163
    iput v2, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    .line 165
    iput v2, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    .line 167
    const/16 p1, 0x17

    .line 169
    iput p1, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 171
    iput v2, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    .line 173
    iput v2, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 175
    iput-object v0, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 177
    iput-object v0, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 179
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 181
    sget-object v5, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->SHOW_ALARMS_ACTION:Landroid/app/smartspace/SmartspaceAction;

    .line 184
    const-string v7, "BcNextAlarmData"

    .line 186
    const/4 v9, 0x0

    .line 188
    const/4 v4, 0x0

    .line 189
    invoke-static/range {v3 .. v9}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 190
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->updateColorForExtras()V

    .line 193
    return-void
    .line 196
.end method

.method public final setPrimaryTextColor(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mPrimaryTextColor:I

    .line 2
    const/4 v0, -0x1

    .line 4
    iget v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDozeAmount:F

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    .line 7
    move-result p1

    .line 10
    iput p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mCurrentTextColor:I

    .line 11
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->updateColorForExtras()V

    .line 18
    return-void
    .line 21
.end method

.method public final setScreenOn(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

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

.method public final setTimeChangedDelegate(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mTimeChangedDelegate:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;

    .line 12
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    const-string p1, "Must call before attaching view to window."

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 22
    :cond_1
    return-void
    .line 23
.end method

.method public final setUiSurface(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 2
    move-result v0

    .line 5
    const-string v1, "Must call before attaching view to window."

    .line 6
    if-nez v0, :cond_2

    .line 8
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mUiSurface:Ljava/lang/String;

    .line 10
    const-string v0, "lockscreen"

    .line 12
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    .line 22
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mUpdatesOnAod:Z

    .line 29
    return-void

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 32
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0

    .line 37
    :cond_1
    return-void

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 39
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0
    .line 44
.end method

.method public final updateColorForExtras()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mCurrentTextColor:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    .line 11
    iget v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mCurrentTextColor:I

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setTint(I)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndImageView:Landroid/widget/ImageView;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v1

    .line 31
    iget p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mCurrentTextColor:I

    .line 32
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 34
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 37
    :cond_1
    return-void
    .line 40
.end method
