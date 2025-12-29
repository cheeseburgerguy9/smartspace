package com.google.android.systemui.smartspace;

import android.view.View;
import android.view.ViewGroup;
import android.app.smartspace.SmartspaceTarget;
import java.util.List;
import java.util.ArrayList;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;

public interface CardAdapter {
    SmartspaceCard getCardAtPosition(int position);
    int getCount();
    void setTargets(List<SmartspaceTarget> targets);
    void notifyDataSetChanged();
}
