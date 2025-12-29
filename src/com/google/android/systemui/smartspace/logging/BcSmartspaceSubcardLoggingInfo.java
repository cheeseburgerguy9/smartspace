package com.google.android.systemui.smartspace.logging;

import java.util.List;
import java.util.Objects;

public final class BcSmartspaceSubcardLoggingInfo {
    public int mClickedSubcardIndex;
    public List<BcSmartspaceCardMetadataLoggingInfo> mSubcards;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BcSmartspaceSubcardLoggingInfo)) {
            return false;
        }
        BcSmartspaceSubcardLoggingInfo bcSmartspaceSubcardLoggingInfo = (BcSmartspaceSubcardLoggingInfo) obj;
        return this.mClickedSubcardIndex == bcSmartspaceSubcardLoggingInfo.mClickedSubcardIndex && Objects.equals(this.mSubcards, bcSmartspaceSubcardLoggingInfo.mSubcards);
    }

    public int hashCode() {
        return Objects.hash(this.mSubcards, Integer.valueOf(this.mClickedSubcardIndex));
    }

    public String toString() {
        return "BcSmartspaceSubcardLoggingInfo{mSubcards=" + this.mSubcards + ", mClickedSubcardIndex=" + this.mClickedSubcardIndex + "}";
    }
}
