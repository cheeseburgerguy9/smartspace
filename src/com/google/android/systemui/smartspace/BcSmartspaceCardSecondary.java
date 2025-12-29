package com.google.android.systemui.smartspace;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import android.app.smartspace.SmartspaceTarget;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;

public abstract class BcSmartspaceCardSecondary extends ConstraintLayout {
    public String mPrevSmartspaceTargetId;

    public BcSmartspaceCardSecondary(Context context) {
        this(context, null);
    }

    public BcSmartspaceCardSecondary(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPrevSmartspaceTargetId = "";
    }

    public final void reset(String smartspaceTargetId) {
        if (this.mPrevSmartspaceTargetId.equals(smartspaceTargetId)) {
            return;
        }
        this.mPrevSmartspaceTargetId = smartspaceTargetId;
        resetUi();
    }

    public void resetUi() {
    }

    public abstract boolean setSmartspaceActions(SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, BcSmartspaceCardLoggingInfo loggingInfo);

    public abstract void setTextColor(int color);
}
