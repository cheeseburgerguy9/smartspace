.class public final synthetic Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public synthetic f$0:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

.field public synthetic f$1:I

.field public synthetic f$2:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

.field public synthetic f$3:Ljava/lang/String;

.field public synthetic f$4:Landroid/app/smartspace/uitemplatedata/TapAction;

.field public synthetic f$5:Z

.field public synthetic f$7:Landroid/app/smartspace/SmartspaceTarget;


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 2
    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 6
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$4:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 10
    iget-boolean v5, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$5:Z

    .line 12
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$7:Landroid/app/smartspace/SmartspaceTarget;

    .line 14
    sget-object v6, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 16
    const/4 v7, 0x1

    .line 18
    if-eqz v6, :cond_0

    .line 19
    invoke-interface {v6, v7}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 21
    move-result v6

    .line 24
    if-eqz v6, :cond_0

    .line 25
    return-void

    .line 27
    :cond_0
    if-eqz v0, :cond_2

    .line 28
    iget-object v6, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 30
    if-eqz v6, :cond_1

    .line 32
    iput v1, v6, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mClickedSubcardIndex:I

    .line 34
    :cond_1
    sget-object v1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_CLICK:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 36
    invoke-static {v1, v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;->log(Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    .line 38
    :cond_2
    invoke-static {v2, v3}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    .line 41
    move-result-object v0

    .line 44
    if-eqz v4, :cond_4

    .line 45
    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/TapAction;->getIntent()Landroid/content/Intent;

    .line 47
    move-result-object v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/TapAction;->getPendingIntent()Landroid/app/PendingIntent;

    .line 53
    move-result-object v1

    .line 56
    if-nez v1, :cond_3

    .line 57
    goto :goto_0

    .line 59
    :cond_3
    invoke-interface {v0, v4, p1, v5}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;->startFromAction(Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/view/View;Z)V

    .line 60
    :cond_4
    :goto_0
    if-nez v2, :cond_5

    .line 63
    const-string p0, "Cannot notify target interaction smartspace event: event notifier null."

    .line 65
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 70
    :cond_5
    new-instance p1, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 71
    invoke-direct {p1, v7}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    .line 73
    invoke-virtual {p1, p0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 76
    move-result-object p0

    .line 79
    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/TapAction;->getId()Ljava/lang/CharSequence;

    .line 80
    move-result-object p1

    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 88
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 92
    move-result-object p0

    .line 95
    invoke-interface {v2, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventDispatcher;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 96
    return-void
    .line 99
.end method
