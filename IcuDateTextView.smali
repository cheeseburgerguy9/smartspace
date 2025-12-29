.class public Lcom/google/android/systemui/smartspace/IcuDateTextView;
.super Lcom/google/android/systemui/smartspace/DoubleShadowTextView;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAodSettingsObserver:Lcom/google/android/systemui/smartspace/IcuDateTextView$1;

.field public mBgHandler:Landroid/os/Handler;

.field public mFormatter:Landroid/icu/text/DateFormat;

.field public mHandler:Landroid/os/Handler;

.field public final mIntentReceiver:Lcom/google/android/systemui/smartspace/IcuDateTextView$2;

.field public mIsAodEnabled:Z

.field public mIsInteractive:Ljava/lang/Boolean;

.field public mText:Ljava/lang/String;

.field public final mTimeChangedCallback:Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

.field public mTimeChangedDelegate:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;

.field public mUpdatesOnAod:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lcom/google/android/systemui/smartspace/IcuDateTextView$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/smartspace/IcuDateTextView$1;-><init>(Lcom/google/android/systemui/smartspace/IcuDateTextView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/IcuDateTextView$1;

    .line 4
    new-instance p1, Lcom/google/android/systemui/smartspace/IcuDateTextView$2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView$2;-><init>(Lcom/google/android/systemui/smartspace/IcuDateTextView;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIntentReceiver:Lcom/google/android/systemui/smartspace/IcuDateTextView$2;

    .line 5
    new-instance p1, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, p1, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mTimeChangedCallback:Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 8

    .line 1
    const-string v0, "doze_always_on"

    .line 2
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 4
    iget-boolean v1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mUpdatesOnAod:Z

    .line 7
    const/4 v2, 0x1

    .line 9
    const-string v3, "IcuDateTextView"

    .line 10
    if-eqz v1, :cond_2

    .line 12
    const/4 v1, 0x0

    .line 14
    :try_start_0
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mBgHandler:Landroid/os/Handler;

    .line 15
    if-nez v4, :cond_0

    .line 17
    const-string v4, "Must set background handler when mUpdatesOnAod is set to avoid making binder calls on main thread"

    .line 19
    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object v4

    .line 31
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    move-result-object v5

    .line 35
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/IcuDateTextView$1;

    .line 36
    const/4 v7, -0x1

    .line 38
    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 39
    goto :goto_1

    .line 42
    :catch_0
    move-exception v4

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v5, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

    .line 45
    const/4 v6, 0x3

    .line 47
    invoke-direct {v5, v6}, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;-><init>(I)V

    .line 48
    iput-object p0, v5, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 51
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 53
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_1

    .line 59
    :goto_0
    const-string v5, "Unable to register DOZE_ALWAYS_ON content observer: "

    .line 60
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    move-result-object v5

    .line 72
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    .line 73
    move-result v4

    .line 76
    invoke-static {v5, v0, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 77
    move-result v0

    .line 80
    if-ne v0, v2, :cond_1

    .line 81
    move v1, v2

    .line 83
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIsAodEnabled:Z

    .line 84
    :cond_2
    new-instance v0, Landroid/os/Handler;

    .line 86
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    .line 93
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    const-string v1, "android.intent.action.TIME_SET"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mBgHandler:Landroid/os/Handler;

    .line 108
    if-nez v1, :cond_3

    .line 110
    const-string v1, "mBgHandler is not set! Fallback to make binder calls on main thread."

    .line 112
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 117
    move-result-object v1

    .line 120
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIntentReceiver:Lcom/google/android/systemui/smartspace/IcuDateTextView$2;

    .line 121
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    goto :goto_2

    .line 126
    :cond_3
    new-instance v3, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda4;

    .line 127
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p0, v3, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 132
    iput-object v0, v3, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda4;->f$1:Landroid/content/IntentFilter;

    .line 134
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 136
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    :goto_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mTimeChangedDelegate:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;

    .line 142
    if-nez v0, :cond_4

    .line 144
    new-instance v0, Lcom/google/android/systemui/smartspace/IcuDateTextView$DefaultTimeChangedDelegate;

    .line 146
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mHandler:Landroid/os/Handler;

    .line 148
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object v1, v0, Lcom/google/android/systemui/smartspace/IcuDateTextView$DefaultTimeChangedDelegate;->mHandler:Landroid/os/Handler;

    .line 153
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mTimeChangedDelegate:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;

    .line 155
    :cond_4
    invoke-virtual {p0, v2}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->onTimeChanged(Z)V

    .line 157
    return-void
    .line 160
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mHandler:Landroid/os/Handler;

    .line 5
    const-string v1, "IcuDateTextView"

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mBgHandler:Landroid/os/Handler;

    .line 11
    if-nez v0, :cond_0

    .line 13
    const-string v0, "mBgHandler is not set! Fallback to make binder calls on main thread."

    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 23
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIntentReceiver:Lcom/google/android/systemui/smartspace/IcuDateTextView$2;

    .line 24
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    new-instance v2, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

    .line 30
    const/4 v3, 0x0

    .line 32
    invoke-direct {v2, v3}, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;-><init>(I)V

    .line 33
    iput-object p0, v2, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 36
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 38
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mTimeChangedDelegate:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;

    .line 44
    invoke-interface {v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;->unregister()V

    .line 46
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mHandler:Landroid/os/Handler;

    .line 50
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mUpdatesOnAod:Z

    .line 52
    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mBgHandler:Landroid/os/Handler;

    .line 56
    if-nez v0, :cond_2

    .line 58
    const-string v0, "Must set background handler when mUpdatesOnAod is set to avoid making binder calls on main thread"

    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    move-result-object v0

    .line 72
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/IcuDateTextView$1;

    .line 73
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 75
    return-void

    .line 78
    :cond_2
    new-instance v1, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

    .line 79
    const/4 v2, 0x1

    .line 81
    invoke-direct {v1, v2}, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;-><init>(I)V

    .line 82
    iput-object p0, v1, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 85
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    :cond_3
    return-void
    .line 93
.end method

.method public final onTimeChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mFormatter:Landroid/icu/text/DateFormat;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    if-eqz p1, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 11
    const v0, 0x7f130bfb    # @string/smartspace_icu_date_pattern 'EEEMMMd'

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 23
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mFormatter:Landroid/icu/text/DateFormat;

    .line 27
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .line 29
    invoke-virtual {p1, v0}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mFormatter:Landroid/icu/text/DateFormat;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    move-result-wide v0

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mText:Ljava/lang/String;

    .line 48
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mText:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    :cond_2
    return-void
    .line 64
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->rescheduleTicker()V

    .line 5
    return-void
    .line 8
.end method

.method public final rescheduleTicker()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mHandler:Landroid/os/Handler;

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mTimeChangedDelegate:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;

    .line 7
    invoke-interface {v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;->unregister()V

    .line 9
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mUpdatesOnAod:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIsAodEnabled:Z

    .line 16
    if-eqz v0, :cond_1

    .line 18
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIsInteractive:Ljava/lang/Boolean;

    .line 23
    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    if-nez v0, :cond_2

    .line 33
    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isAggregatedVisible()Z

    .line 36
    move-result v0

    .line 39
    if-nez v0, :cond_3

    .line 40
    :goto_1
    return-void

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mTimeChangedDelegate:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;

    .line 43
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mTimeChangedCallback:Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

    .line 45
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;->register(Ljava/lang/Runnable;)V

    .line 47
    return-void
    .line 50
.end method
