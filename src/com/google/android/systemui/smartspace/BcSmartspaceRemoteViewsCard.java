package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.content.pm.PackageManager;
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
        if ("lockscreen".equals(mUiSurface)) {
            setInteractionHandler(null);
        }
    }

    public void bindData(SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, BcSmartspaceCardLoggingInfo loggingInfo, boolean z) {
        this.mTarget = target;
        this.mLoggingInfo = loggingInfo;
        this.mEventNotifier = notifier;
        updateAppWidget(target.getRemoteViews());
        SmartspaceAction headerAction = target.getHeaderAction();
        if (headerAction == null) {
            setOnClickListener(null);
            setInteractionHandler(null);
            return;
        }
        BcSmartSpaceUtil.setOnClickListener((View) this, target, headerAction, notifier, "BcSmartspaceRemoteViewsCard", loggingInfo, 0);
        if ("lockscreen".equals(this.mUiSurface)) {
            setInteractionHandler(new RemoteViews.InteractionHandler() {
                @Override
                public boolean onInteraction(View view, android.app.PendingIntent pendingIntent, android.widget.RemoteViews.RemoteResponse remoteResponse) {
                    notifier.notifySmartspaceEvent(new android.app.smartspace.SmartspaceTargetEvent.Builder(1).setSmartspaceTarget(target).setSmartspaceActionId(headerAction.getId()).build());
                    return remoteResponse.addSharedElement(view, "smartspace_transition").getLaunchOptions(view) != null;
                }
            });
        }
    }

    public BcSmartspaceCardLoggingInfo getLoggingInfo() {
        if (this.mLoggingInfo != null) {
            return this.mLoggingInfo;
        }
        int loggingDisplaySurface = BcSmartSpaceUtil.getLoggingDisplaySurface(this.mUiSurface, 0.0f);
        int featureType = this.mTarget != null ? this.mTarget.getFeatureType() : 0;
        BcSmartspaceCardLoggingInfo info = new BcSmartspaceCardLoggingInfo();
        info.mInstanceId = 0;
        info.mDisplaySurface = loggingDisplaySurface;
        info.mRank = 0;
        info.mCardinality = 0;
        info.mFeatureType = featureType;
        info.mReceivedLatency = 0;
        info.mUid = -1;
        info.mSubcardInfo = null;
        info.mDimensionalInfo = null;
        return info;
    }

    public View getView() {
        return this;
    }

    public void setDozeAmount(float amount) {
    }

    public void setPrimaryTextColor(int color) {
    }

    public void setScreenOn(boolean screenOn) {
    }

    @Override
    public void setDozeAmount$1(float amount) {
        setDozeAmount(amount);
    }
}
