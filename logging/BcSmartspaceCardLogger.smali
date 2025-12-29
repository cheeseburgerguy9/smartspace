.class public abstract Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 2
    return-void
    .line 4
.end method

.method public static log(Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    .line 8
    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v4, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    .line 24
    move v5, v2

    .line 26
    :goto_0
    move-object v6, v4

    .line 27
    check-cast v6, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v7

    .line 33
    if-ge v5, v7, :cond_1

    .line 34
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v6

    .line 39
    check-cast v6, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;

    .line 40
    invoke-static {}, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;->newBuilder()Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata$Builder;

    .line 42
    move-result-object v7

    .line 45
    iget v8, v6, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mInstanceId:I

    .line 46
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 48
    iget-object v9, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 51
    check-cast v9, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;

    .line 53
    invoke-static {v9, v8}, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;->-$$Nest$msetInstanceId(Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;I)V

    .line 55
    iget v6, v6, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mCardTypeId:I

    .line 58
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 60
    iget-object v8, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 63
    check-cast v8, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;

    .line 65
    invoke-static {v8, v6}, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;->-$$Nest$msetCardTypeId(Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;I)V

    .line 67
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 70
    move-result-object v6

    .line 73
    check-cast v6, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;

    .line 74
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v5, v5, 0x1

    .line 79
    goto :goto_0

    .line 81
    :cond_1
    invoke-static {}, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;->newBuilder()Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards$Builder;

    .line 82
    move-result-object v4

    .line 85
    iget v0, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mClickedSubcardIndex:I

    .line 86
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 88
    iget-object v5, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 91
    check-cast v5, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;

    .line 93
    invoke-static {v5, v0}, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;->-$$Nest$msetClickedSubcardIndex(Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;I)V

    .line 95
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 98
    iget-object v0, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 101
    check-cast v0, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;

    .line 103
    invoke-static {v0, v3}, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;->-$$Nest$maddAllSubcards(Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;Ljava/lang/Iterable;)V

    .line 105
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 108
    move-result-object v0

    .line 111
    check-cast v0, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;

    .line 112
    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 114
    move-result-object v0

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    :goto_1
    move-object v0, v1

    .line 119
    :goto_2
    iget-object v3, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    .line 120
    if-eqz v3, :cond_3

    .line 122
    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    .line 124
    move-result-object v1

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->getId()I

    .line 128
    move-result p0

    .line 131
    iget v3, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    .line 132
    iget v4, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    .line 134
    iget v5, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    .line 136
    iget v6, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    .line 138
    iget v7, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    .line 140
    iget v8, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    .line 142
    iget p1, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    .line 144
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 146
    move-result-object v9

    .line 149
    const/16 v10, 0x160

    .line 150
    invoke-virtual {v9, v10}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 152
    invoke-virtual {v9, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 155
    invoke-virtual {v9, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 158
    invoke-virtual {v9, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 161
    invoke-virtual {v9, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 164
    invoke-virtual {v9, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 167
    invoke-virtual {v9, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 170
    invoke-virtual {v9, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 173
    invoke-virtual {v9, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 176
    const/4 p0, 0x1

    .line 179
    invoke-virtual {v9, p0, p0}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 180
    invoke-virtual {v9, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 183
    invoke-virtual {v9, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 186
    invoke-virtual {v9, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 189
    if-nez v0, :cond_4

    .line 192
    new-array v0, v2, [B

    .line 194
    :cond_4
    invoke-virtual {v9, v0}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 196
    if-nez v1, :cond_5

    .line 199
    new-array v1, v2, [B

    .line 201
    :cond_5
    invoke-virtual {v9, v1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 203
    invoke-virtual {v9}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 206
    invoke-virtual {v9}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 209
    move-result-object p0

    .line 212
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 213
    return-void
    .line 216
.end method
