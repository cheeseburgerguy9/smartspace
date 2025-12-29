.class public final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# instance fields
.field public alarmImage:Landroid/graphics/drawable/Drawable;

.field public alarmManager:Landroid/app/AlarmManager;

.field public applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public context:Landroid/content/Context;

.field public datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public handler:Landroid/os/Handler;

.field public nextAlarmCallback:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$nextAlarmCallback$1;

.field public nextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

.field public showNextAlarm:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showNextAlarm$1;

.field public smartspaceViews:Ljava/util/Set;

.field public zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field public zenModeInteractor:Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor;


# direct methods
.method public static synthetic getSmartspaceViews$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final showAlarm(Ljava/lang/Long;)Lkotlinx/coroutines/Job;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2
    new-instance v1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, p0, v2}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showAlarm$1;-><init>(Ljava/lang/Long;Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lkotlin/coroutines/Continuation;)V

    .line 7
    const/4 p0, 0x3

    .line 10
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method

.method public final updateModeIcon(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;Lcom/android/systemui/statusbar/policy/domain/model/ZenModeInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2
    new-instance v1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p2, p0, p1, v2}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$updateModeIcon$1;-><init>(Lcom/android/systemui/statusbar/policy/domain/model/ZenModeInfo;Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;Lkotlin/coroutines/Continuation;)V

    .line 7
    const/4 p0, 0x3

    .line 10
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 11
    return-void
    .line 14
.end method
