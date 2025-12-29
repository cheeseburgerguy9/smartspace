.class public interface abstract Lcom/google/android/systemui/smartspace/CardAdapter;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# virtual methods
.method public abstract getCardAtPosition(I)Lcom/google/android/systemui/smartspace/SmartspaceCard;
.end method

.method public abstract getCount()I
.end method

.method public abstract getDozeAmount()F
.end method

.method public abstract getHasAodLockscreenTransition()Z
.end method

.method public abstract getHasDifferentTargets()Z
.end method

.method public abstract getLegacyCardAtPosition(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;
.end method

.method public abstract getLockscreenTargets()Ljava/util/List;
.end method

.method public abstract getRemoteViewsCardAtPosition(I)Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;
.end method

.method public abstract getSmartspaceTargets()Ljava/util/List;
.end method

.method public abstract getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;
.end method

.method public abstract getTemplateCardAtPosition(I)Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;
.end method

.method public abstract getUiSurface()Ljava/lang/String;
.end method

.method public abstract setBgHandler(Landroid/os/Handler;)V
.end method

.method public abstract setConfigProvider(Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)V
.end method

.method public abstract setDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V
.end method

.method public abstract setDozeAmount(F)V
.end method

.method public abstract setKeyguardBypassEnabled(Z)V
.end method

.method public abstract setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V
.end method

.method public abstract setNonRemoteViewsHorizontalPadding(Ljava/lang/Integer;)V
.end method

.method public abstract setPrimaryTextColor(I)V
.end method

.method public abstract setScreenOn(Z)V
.end method

.method public abstract setTargets(Ljava/util/List;)V
.end method

.method public abstract setTimeChangedDelegate(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;)V
.end method

.method public abstract setUiSurface(Ljava/lang/String;)V
.end method
