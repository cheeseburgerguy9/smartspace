.class public final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1$1;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public synthetic $v:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

.field public synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/domain/model/ZenModeInfo;

    .line 2
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    .line 4
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$addSmartspaceView$1$1;->$v:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 6
    invoke-virtual {p2, p0, p1}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->updateModeIcon(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;Lcom/android/systemui/statusbar/policy/domain/model/ZenModeInfo;)V

    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    return-object p0
    .line 13
.end method
