package com.google.android.systemui.smartspace.logging;

import java.util.List;
import java.util.Objects;
import com.android.systemui.smartspace.nano.SmartspaceProto;

public final class BcSmartspaceSubcardLoggingInfo {
    public int mClickedSubcardIndex;
    public List<SmartspaceProto.SmartspaceSubcardLoggingInfo> mSubcards;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BcSmartspaceSubcardLoggingInfo that = (BcSmartspaceSubcardLoggingInfo) o;
        return mClickedSubcardIndex == that.mClickedSubcardIndex &&
                Objects.equals(mSubcards, that.mSubcards);
    }

    @Override
    public int hashCode() {
        return Objects.hash(mClickedSubcardIndex, mSubcards);
    }

    @Override
    public String toString() {
        return "BcSmartspaceSubcardLoggingInfo{" +
                "mSubcards=" + mSubcards +
                ", mClickedSubcardIndex=" + mClickedSubcardIndex +
                '}';
    }
}
