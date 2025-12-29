package com.google.android.systemui.smartspace.logging;

import android.util.Log;
import android.util.StatsLog;
import android.util.StatsEvent;
import com.android.systemui.smartspace.nano.SmartspaceProto;
import com.android.systemui.smartspace.SmartspaceProtoLite;
import com.google.android.systemui.smartspace.BcSmartSpaceUtil;
import com.google.android.systemui.smartspace.BcSmartspaceEvent;
import com.google.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.List;

public class BcSmartspaceCardLogger {
    public static void log(BcSmartspaceEvent event, BcSmartspaceCardLoggingInfo cardInfo) {
        byte[] subcardList = null;
        BcSmartspaceSubcardLoggingInfo subcardInfo = cardInfo.mSubcardInfo;

        if (subcardInfo != null && subcardInfo.mSubcards != null && !subcardInfo.mSubcards.isEmpty()) {
            List<BcSmartspaceCardMetadataLoggingInfo> subcards = subcardInfo.mSubcards;

            SmartspaceProtoLite.SmartSpaceSubcards.Builder subcardsBuilder = SmartspaceProtoLite.SmartSpaceSubcards.newBuilder();
            subcardsBuilder.setClickedSubcardIndex(subcardInfo.mClickedSubcardIndex);

            for (BcSmartspaceCardMetadataLoggingInfo metaDataLoggingList : subcards) {
                SmartspaceProtoLite.SmartSpaceCardMetadata.Builder cardMetadataBuilder = SmartspaceProtoLite.SmartSpaceCardMetadata.newBuilder();
                cardMetadataBuilder.setInstanceId(metaDataLoggingList.mInstanceId);
                cardMetadataBuilder.setCardTypeId(metaDataLoggingList.mCardTypeId);
                subcardsBuilder.addSubcards(cardMetadataBuilder);
            }
            subcardList = subcardsBuilder.build().toByteArray();
        }

        byte[] dimensionalInfo = null;
        if (cardInfo.mDimensionalInfo != null) {
            dimensionalInfo = MessageNano.toByteArray(cardInfo.mDimensionalInfo);
        }

        StatsEvent.Builder builder = StatsEvent.newBuilder();
        builder.setAtomId(352); // SMART_SPACE_CARD_REPORTED
        builder.writeInt(event.getId());
        builder.writeInt(cardInfo.mInstanceId);
        builder.writeInt(0); // ViewType (0 for unspecified/home?) - matching smali passing 0 (or v2 in one call)
        builder.writeInt(cardInfo.mDisplaySurface);
        builder.writeInt(cardInfo.mRank);
        builder.writeInt(cardInfo.mCardinality);
        builder.writeInt(cardInfo.mFeatureType);
        builder.writeInt(cardInfo.mUid);
        builder.addBooleanAnnotation((byte) 1, true); // Is this needed? Smali adds boolean annotation
        builder.writeInt(0); // interactype?
        builder.writeInt(0);
        builder.writeInt(cardInfo.mReceivedLatency);

        if (subcardList == null) {
            subcardList = new byte[0];
        }
        builder.writeByteArray(subcardList);

        if (dimensionalInfo == null) {
             dimensionalInfo = new byte[0];
        }
        builder.writeByteArray(dimensionalInfo);

        builder.usePooledBuffer();
        StatsLog.write(builder.build());
    }
}
