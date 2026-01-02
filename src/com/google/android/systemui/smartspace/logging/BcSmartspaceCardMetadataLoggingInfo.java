package com.google.android.systemui.smartspace.logging;

import java.util.Objects;

public final class BcSmartspaceCardMetadataLoggingInfo {
    public int mInstanceId;
    public int mCardTypeId;

    public static final class Builder {
        private final BcSmartspaceCardMetadataLoggingInfo mInfo = new BcSmartspaceCardMetadataLoggingInfo();

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

        public BcSmartspaceCardMetadataLoggingInfo build() {
            return mInfo;
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BcSmartspaceCardMetadataLoggingInfo that = (BcSmartspaceCardMetadataLoggingInfo) o;
        return mInstanceId == that.mInstanceId &&
                mCardTypeId == that.mCardTypeId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(mInstanceId, mCardTypeId);
    }

    @Override
    public String toString() {
        return "BcSmartspaceCardMetadataLoggingInfo{" +
                "mInstanceId=" + mInstanceId +
                ", mCardTypeId=" + mCardTypeId +
                '}';
    }
}
