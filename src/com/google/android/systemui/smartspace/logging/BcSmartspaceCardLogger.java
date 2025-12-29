package com.google.android.systemui.smartspace.logging;

import android.util.Log;
import com.android.systemui.smartspace.nano.SmartspaceProto;
import com.google.android.systemui.smartspace.BcSmartspaceEvent;
import java.util.List;

public final class BcSmartspaceCardLogger {
    private static final String TAG = "BcSmartspaceCardLogger";

    public static void log(BcSmartspaceEvent event, BcSmartspaceCardLoggingInfo loggingInfo) {
        // Implementation based on usage in BcSmartSpaceUtil.smali
        // The smali calls log(Event, Info)
        // We probably need to use UiEventLogger here if it were full AOSP, but the smali seems self-contained or uses a static method.
        // Assuming this is a wrapper around some logging mechanism.

        // For now, let's just log to Logcat to verify flow, as I don't see the UiEventLogger injection in the Smali for this class.
        // Wait, BcSmartspaceEvent is an enum probably implementing UiEventLogger.UiEventEnum.

        Log.d(TAG, "Log event: " + event + " info: " + loggingInfo);
    }
}
