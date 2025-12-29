.class public abstract Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# direct methods
.method public static containsValidTemplateType(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getTemplateType()I

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getTemplateType()I

    .line 10
    move-result p0

    .line 13
    const/16 v0, 0x8

    .line 14
    if-ne p0, v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 21
    return p0
    .line 22
.end method

.method public static createDimensionalLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 5
    move-result-object v1

    .line 8
    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 15
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    goto/16 :goto_2

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 27
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/TapAction;->getExtras()Landroid/os/Bundle;

    .line 31
    move-result-object p0

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    if-eqz p0, :cond_3

    .line 40
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    .line 42
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    goto :goto_1

    .line 48
    :cond_1
    const-string/jumbo v2, "ss_card_dimension_ids"

    .line 49
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 52
    move-result-object v2

    .line 55
    const-string/jumbo v3, "ss_card_dimension_values"

    .line 56
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 59
    move-result-object p0

    .line 62
    if-eqz v2, :cond_3

    .line 63
    if-eqz p0, :cond_3

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result v3

    .line 70
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v4

    .line 74
    if-eq v3, v4, :cond_2

    .line 75
    goto :goto_1

    .line 77
    :cond_2
    const/4 v3, 0x0

    .line 78
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result v4

    .line 82
    if-ge v3, v4, :cond_3

    .line 83
    new-instance v4, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;

    .line 85
    invoke-direct {v4}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;-><init>()V

    .line 87
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v5

    .line 93
    check-cast v5, Ljava/lang/Integer;

    .line 94
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 96
    move-result v5

    .line 99
    iput v5, v4, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;->featureDimensionId:I

    .line 100
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v5

    .line 105
    check-cast v5, Ljava/lang/Integer;

    .line 106
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 108
    move-result v5

    .line 111
    iput v5, v4, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;->featureDimensionValue:I

    .line 112
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 117
    goto :goto_0

    .line 119
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 120
    move-result p0

    .line 123
    if-eqz p0, :cond_4

    .line 124
    return-object v0

    .line 126
    :cond_4
    new-instance p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;-><init>()V

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 132
    move-result v0

    .line 135
    new-array v0, v0, [Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;

    .line 136
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    move-result-object v0

    .line 141
    check-cast v0, [Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;

    .line 142
    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;->featureDimensions:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;

    .line 144
    return-object p0

    .line 146
    :cond_5
    :goto_2
    return-object v0
    .line 147
.end method

.method public static createSubcardLoggingInfo(Landroid/app/smartspace/SmartspaceTarget;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "subcardType"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "subcardId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Ljava/lang/String;)I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 8
    new-instance v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;

    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mInstanceId:I

    .line 11
    iput p0, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mCardTypeId:I

    .line 12
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p0, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    const/4 p0, 0x0

    .line 18
    iput p0, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mClickedSubcardIndex:I

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createSubcardLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 19
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getFeatureType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 23
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfoHelper(Ljava/util/List;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)V

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfoHelper(Ljava/util/List;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)V

    .line 27
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleSupplementalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfoHelper(Ljava/util/List;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)V

    .line 29
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object p0

    .line 30
    invoke-static {v1, p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfoHelper(Ljava/util/List;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)V

    .line 31
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    .line 32
    :cond_2
    new-instance p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mClickedSubcardIndex:I

    return-object p0
.end method

.method public static createSubcardLoggingInfoHelper(Ljava/util/List;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getFeatureType()I

    .line 14
    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getInstanceId()I

    .line 18
    move-result p1

    .line 21
    new-instance v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;

    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mInstanceId:I

    .line 27
    iput v0, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mCardTypeId:I

    .line 29
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 31
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
    .line 37
.end method

.method public static tryForcePrimaryFeatureTypeOrUpdateLogInfoFromTemplateData(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 3
    if-eq v1, v0, :cond_2

    .line 5
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 9
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 19
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 29
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getFeatureType()I

    .line 33
    move-result v0

    .line 36
    if-lez v0, :cond_0

    .line 37
    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 41
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 45
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getInstanceId()I

    .line 49
    move-result p1

    .line 52
    if-lez p1, :cond_1

    .line 53
    iput p1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 55
    :cond_1
    return-void

    .line 57
    :cond_2
    const/16 p1, 0x27

    .line 58
    iput p1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 60
    const-string p1, "date_card_794317_92634"

    .line 62
    invoke-static {p1}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Ljava/lang/String;)I

    .line 64
    move-result p1

    .line 67
    iput p1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 68
    return-void
    .line 70
.end method
