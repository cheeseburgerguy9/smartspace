package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.view.View;
import android.widget.RemoteViews;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;

public final class BcSmartspaceRemoteViewsCard extends AppWidgetHostView implements SmartspaceCard {
    public BcSmartspaceDataPlugin.SmartspaceEventNotifier mEventNotifier;
    public BcSmartspaceCardLoggingInfo mLoggingInfo;
    public SmartspaceTarget mTarget;
    public String mUiSurface;

    public BcSmartspaceRemoteViewsCard(Context context) {
        super(context);
        setOnLongClickListener(null);
    }

    public void bindData(SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier eventNotifier, BcSmartspaceCardLoggingInfo loggingInfo, boolean z) {
        mTarget = target;
        mLoggingInfo = loggingInfo;
        mEventNotifier = eventNotifier;
        updateAppWidget(target.getRemoteViews());

        SmartspaceAction headerAction = target.getHeaderAction();
        if (headerAction == null) {
            setOnClickListener(null);
            setInteractionHandler(null);
            return;
        }

        BcSmartSpaceUtil.setOnClickListener(this, target, headerAction, eventNotifier, "BcSmartspaceRemoteViewsCard", loggingInfo, 0);
        if ("lockscreen".equals(mUiSurface)) {
            // Add interaction handler for lockscreen remote views if needed
            // Smali shows an anonymous inner class for interaction handler that delegates to BcSmartSpaceUtil
            setInteractionHandler((view, pendingIntent, response) -> {
                // Implementation from Smali/Utils
                return new BcSmartSpaceUtil.1(headerAction, eventNotifier, loggingInfo, target).onInteraction(view, pendingIntent, response);
            });
        }
    }

    @Override
    public BcSmartspaceCardLoggingInfo getLoggingInfo() {
        if (mLoggingInfo == null) {
            // Create fallback info if needed, similar to smali
            BcSmartspaceCardLoggingInfo.Builder builder = new BcSmartspaceCardLoggingInfo.Builder();
            // populate basics
            return builder.build();
        }
        return mLoggingInfo;
    }

    @Override
    public View getView() {
        return this;
    }

    public void setDozeAmount(float amount) {
        // no-op
    }

    public void setPrimaryTextColor(int color) {
        // no-op
    }

    public void setScreenOn(boolean screenOn) {
        // no-op
    }
}
