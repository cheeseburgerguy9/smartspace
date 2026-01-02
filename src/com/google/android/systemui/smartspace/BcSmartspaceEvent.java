package com.google.android.systemui.smartspace;

import com.android.internal.logging.UiEvent;
import com.android.internal.logging.UiEventLogger;

public enum BcSmartspaceEvent implements UiEventLogger.UiEventEnum {
    @UiEvent(doc = "Smartspace card click")
    SMARTSPACE_CARD_CLICK(800);

    private final int mId;

    BcSmartspaceEvent(int id) {
        mId = id;
    }

    @Override
    public int getId() {
        return mId;
    }
}
