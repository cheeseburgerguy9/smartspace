.class public final synthetic Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public synthetic f$0:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

.field public synthetic f$1:I

.field public synthetic f$2:Z

.field public synthetic f$3:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

.field public synthetic f$4:Landroid/app/smartspace/SmartspaceAction;

.field public synthetic f$5:Z

.field public synthetic f$7:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

.field public synthetic f$8:Ljava/lang/String;

.field public synthetic f$9:Landroid/app/smartspace/SmartspaceTarget;


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 2
    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    iget-boolean v2, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$2:Z

    .line 6
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$3:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    .line 8
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$4:Landroid/app/smartspace/SmartspaceAction;

    .line 10
    iget-boolean v5, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$5:Z

    .line 12
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$7:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 14
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$8:Ljava/lang/String;

    .line 16
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$9:Landroid/app/smartspace/SmartspaceTarget;

    .line 18
    sget-object v8, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 20
    const/4 v9, 0x1

    .line 22
    if-eqz v8, :cond_0

    .line 23
    invoke-interface {v8, v9}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 25
    move-result v8

    .line 28
    if-eqz v8, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    if-eqz v0, :cond_2

    .line 32
    iget-object v8, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 34
    if-eqz v8, :cond_1

    .line 36
    iput v1, v8, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mClickedSubcardIndex:I

    .line 38
    :cond_1
    sget-object v1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_CLICK:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 40
    invoke-static {v1, v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;->log(Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    .line 42
    :cond_2
    if-nez v2, :cond_3

    .line 45
    invoke-interface {v3, v4, p1, v5}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;->startFromAction(Landroid/app/smartspace/SmartspaceAction;Landroid/view/View;Z)V

    .line 47
    :cond_3
    if-nez v6, :cond_4

    .line 50
    const-string p0, "Cannot notify target interaction smartspace event: event notifier null."

    .line 52
    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 57
    :cond_4
    new-instance p1, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 58
    invoke-direct {p1, v9}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    .line 60
    invoke-virtual {p1, p0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 63
    move-result-object p0

    .line 66
    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 71
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 75
    move-result-object p0

    .line 78
    invoke-interface {v6, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 79
    return-void
    .line 82
.end method
