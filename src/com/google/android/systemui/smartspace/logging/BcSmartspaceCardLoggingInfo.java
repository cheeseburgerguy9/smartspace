package com.google.android.systemui.smartspace.logging;

import com.android.systemui.smartspace.nano.SmartspaceProto;
import java.util.Objects;

public final class BcSmartspaceCardLoggingInfo {
    public int mCardinality;
    public SmartspaceProto.SmartspaceCardDimensionalInfo mDimensionalInfo;
    public int mDisplaySurface;
    public int mFeatureType;
    public int mInstanceId;
    public int mRank;
    public int mReceivedLatency;
    public BcSmartspaceSubcardLoggingInfo mSubcardInfo;
    public int mUid;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BcSmartspaceCardLoggingInfo)) {
            return false;
        }
        BcSmartspaceCardLoggingInfo bcSmartspaceCardLoggingInfo = (BcSmartspaceCardLoggingInfo) obj;
        return this.mInstanceId == bcSmartspaceCardLoggingInfo.mInstanceId && this.mDisplaySurface == bcSmartspaceCardLoggingInfo.mDisplaySurface && this.mRank == bcSmartspaceCardLoggingInfo.mRank && this.mCardinality == bcSmartspaceCardLoggingInfo.mCardinality && this.mFeatureType == bcSmartspaceCardLoggingInfo.mFeatureType && this.mReceivedLatency == bcSmartspaceCardLoggingInfo.mReceivedLatency && this.mUid == bcSmartspaceCardLoggingInfo.mUid && Objects.equals(this.mSubcardInfo, bcSmartspaceCardLoggingInfo.mSubcardInfo) && Objects.equals(this.mDimensionalInfo, bcSmartspaceCardLoggingInfo.mDimensionalInfo);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mInstanceId), Integer.valueOf(this.mDisplaySurface), Integer.valueOf(this.mRank), Integer.valueOf(this.mCardinality), Integer.valueOf(this.mFeatureType), Integer.valueOf(this.mReceivedLatency), Integer.valueOf(this.mUid), this.mSubcardInfo, this.mDimensionalInfo);
    }

    public String toString() {
        return "instance_id = " + this.mInstanceId + ", feature type = " + this.mFeatureType + ", display surface = " + this.mDisplaySurface + ", rank = " + this.mRank + ", cardinality = " + this.mCardinality + ", receivedLatencyMillis = " + this.mReceivedLatency + ", uid = " + this.mUid + ", subcardInfo = " + this.mSubcardInfo + ", dimensionalInfo = " + this.mDimensionalInfo;
    }
}
