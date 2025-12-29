package com.google.android.systemui.smartspace.logging;

import java.util.Objects;

public final class BcSmartspaceCardMetadataLoggingInfo {
    public int mCardTypeId;
    public int mInstanceId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BcSmartspaceCardMetadataLoggingInfo)) {
            return false;
        }
        BcSmartspaceCardMetadataLoggingInfo bcSmartspaceCardMetadataLoggingInfo = (BcSmartspaceCardMetadataLoggingInfo) obj;
        return this.mInstanceId == bcSmartspaceCardMetadataLoggingInfo.mInstanceId && this.mCardTypeId == bcSmartspaceCardMetadataLoggingInfo.mCardTypeId;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mInstanceId), Integer.valueOf(this.mCardTypeId));
    }

    public String toString() {
        return "BcSmartspaceCardMetadataLoggingInfo{mInstanceId=" + this.mInstanceId + ", mCardTypeId=" + this.mCardTypeId + "}";
    }
}
