.class public final Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;
.super Landroid/appwidget/AppWidgetHostView;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/google/android/systemui/smartspace/SmartspaceCard;


# instance fields
.field public mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

.field public mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

.field public mTarget:Landroid/app/smartspace/SmartspaceTarget;

.field public mUiSurface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;->mUiSurface:Ljava/lang/String;

    .line 9
    const-string v1, "lockscreen"

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public static synthetic getRemoteViewInteractionHandler$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final bindData(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Z)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 2
    iput-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 4
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 6
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getRemoteViews()Landroid/widget/RemoteViews;

    .line 8
    move-result-object p4

    .line 11
    invoke-virtual {p0, p4}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 12
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    .line 15
    move-result-object v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 25
    return-void

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 29
    const-string v4, "BcSmartspaceRemoteViewsCard"

    .line 31
    const/4 v6, 0x0

    .line 33
    move-object v0, p0

    .line 34
    move-object v1, p1

    .line 35
    move-object v5, p3

    .line 36
    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 37
    iget-object p0, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;->mUiSurface:Ljava/lang/String;

    .line 40
    const-string p1, "lockscreen"

    .line 42
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result p0

    .line 47
    if-eqz p0, :cond_1

    .line 48
    new-instance p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$1;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$1;->val$eventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 55
    iput-object v5, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$1;->val$loggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 57
    iput-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$1;->val$target:Landroid/app/smartspace/SmartspaceTarget;

    .line 59
    iput-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$1;->val$action:Landroid/app/smartspace/SmartspaceAction;

    .line 61
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 63
    invoke-super {v0, p0}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 66
    :cond_1
    return-void
    .line 69
.end method

.method public final getLoggingInfo()Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;->mUiSurface:Ljava/lang/String;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    .line 9
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 13
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 18
    move-result v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v2

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    new-instance p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v2, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 36
    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    .line 38
    iput v2, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    .line 40
    iput v2, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    .line 42
    iput v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 44
    iput v2, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    .line 46
    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 49
    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 52
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 54
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 56
    return-object p0

    .line 59
    :cond_1
    return-object v0
    .line 60
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final setDozeAmount$1(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setPrimaryTextColor(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setScreenOn(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
