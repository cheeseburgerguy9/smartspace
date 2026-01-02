package com.google.android.systemui.smartspace.logging;

import com.android.systemui.smartspace.nano.SmartspaceProto;
import java.util.Objects;

public final class BcSmartspaceCardLoggingInfo {
    public int mInstanceId;
    public int mCardTypeId;
    public int mRank;
    public int mCardinality;
    public int mReceivedLatency;
    public int mUid;
    public BcSmartspaceSubcardLoggingInfo mSubcardInfo;
    public SmartspaceProto.SmartspaceCardDimensionalInfo mDimensionalInfo;
    public int mFeatureType;

    public static final class Builder {
        private final BcSmartspaceCardLoggingInfo mInfo = new BcSmartspaceCardLoggingInfo();

        public Builder() {
        }

        public Builder setInstanceId(int i) {
            mInfo.mInstanceId = i;
            return this;
        }

        public Builder setCardTypeId(int i) {
            mInfo.mCardTypeId = i;
            return this;
        }

        public Builder setRank(int i) {
            mInfo.mRank = i;
            return this;
        }

        public Builder setCardinality(int i) {
            mInfo.mCardinality = i;
            return this;
        }

        public Builder setReceivedLatency(int i) {
            mInfo.mReceivedLatency = i;
            return this;
        }

        public Builder setUid(int i) {
            mInfo.mUid = i;
            return this;
        }

        public Builder setSubcardInfo(BcSmartspaceSubcardLoggingInfo info) {
            mInfo.mSubcardInfo = info;
            return this;
        }

        public Builder setDimensionalInfo(SmartspaceProto.SmartspaceCardDimensionalInfo info) {
            mInfo.mDimensionalInfo = info;
            return this;
        }

        public Builder setFeatureType(int i) {
            mInfo.mFeatureType = i;
            return this;
        }

        public BcSmartspaceCardLoggingInfo build() {
            return mInfo;
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BcSmartspaceCardLoggingInfo that = (BcSmartspaceCardLoggingInfo) o;
        return mInstanceId == that.mInstanceId &&
                mCardTypeId == that.mCardTypeId &&
                mRank == that.mRank &&
                mCardinality == that.mCardinality &&
                mReceivedLatency == that.mReceivedLatency &&
                mUid == that.mUid &&
                mFeatureType == that.mFeatureType &&
                Objects.equals(mSubcardInfo, that.mSubcardInfo) &&
                Objects.equals(mDimensionalInfo, that.mDimensionalInfo);
    }

    @Override
    public int hashCode() {
        return Objects.hash(mInstanceId, mCardTypeId, mRank, mCardinality, mReceivedLatency, mUid, mSubcardInfo, mDimensionalInfo, mFeatureType);
    }

    @Override
    public String toString() {
        return "BcSmartspaceCardLoggingInfo{" +
                "mInstanceId=" + mInstanceId +
                ", mCardTypeId=" + mCardTypeId +
                ", mRank=" + mRank +
                ", mCardinality=" + mCardinality +
                ", mReceivedLatency=" + mReceivedLatency +
                ", mUid=" + mUid +
                ", mSubcardInfo=" + mSubcardInfo +
                ", mDimensionalInfo=" + mDimensionalInfo +
                ", mFeatureType=" + mFeatureType +
                '}';
    }
}
