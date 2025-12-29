package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceTarget;
import java.util.UUID;

public abstract class InstanceId {
    public static int create(SmartspaceTarget target) {
        if (target == null) {
            return create(UUID.randomUUID().toString());
        }
        String smartspaceTargetId = target.getSmartspaceTargetId();
        if (smartspaceTargetId != null && !smartspaceTargetId.isEmpty()) {
            return SmallHash.hash(smartspaceTargetId);
        }
        return SmallHash.hash(String.valueOf(target.getCreationTimeMillis()));
    }

    public static int create(String str) {
        if (str == null || str.isEmpty()) {
            return create(UUID.randomUUID().toString());
        }
        return SmallHash.hash(str);
    }
}
