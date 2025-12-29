package com.google.android.systemui.smartspace;

import android.content.Context;
import android.os.Debug;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.bcsmartspace.R;
import com.android.systemui.plugins.BcSmartspaceConfigPlugin;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.stream.Collectors;

public final class BcSmartspaceDataProvider implements BcSmartspaceDataPlugin {
    public static final boolean DEBUG = Log.isLoggable("BcSmartspaceDataPlugin", 3);
    public final Set<View.OnAttachStateChangeListener> mAttachListeners;
    public BcSmartspaceConfigPlugin mConfigProvider;
    public final EventNotifierProxy mEventNotifier;
    public final Set<BcSmartspaceDataPlugin.SmartspaceTargetListener> mSmartspaceTargetListeners;
    public List<android.app.smartspace.SmartspaceTarget> mSmartspaceTargets;
    public final View.OnAttachStateChangeListener mStateChangeListener;
    public final Set<View> mViews;

    public BcSmartspaceDataProvider() {
        this.mSmartspaceTargetListeners = new CopyOnWriteArraySet();
        this.mSmartspaceTargets = Collections.emptyList();
        this.mViews = new HashSet();
        this.mAttachListeners = new HashSet();
        this.mEventNotifier = new EventNotifierProxy();
        this.mConfigProvider = new DefaultBcSmartspaceConfigProvider();
        this.mStateChangeListener = new View.OnAttachStateChangeListener() {
            @Override
            public void onViewAttachedToWindow(View view) {
                mViews.add(view);
                for (View.OnAttachStateChangeListener listener : mAttachListeners) {
                    listener.onViewAttachedToWindow(view);
                }
            }

            @Override
            public void onViewDetachedFromWindow(View view) {
                mViews.remove(view);
                view.removeOnAttachStateChangeListener(this);
                for (View.OnAttachStateChangeListener listener : mAttachListeners) {
                    listener.onViewDetachedFromWindow(view);
                }
            }
        };
    }

    public final void addOnAttachStateChangeListener(View.OnAttachStateChangeListener onAttachStateChangeListener) {
        this.mAttachListeners.add(onAttachStateChangeListener);
        for (View view : this.mViews) {
            onAttachStateChangeListener.onViewAttachedToWindow(view);
        }
    }

    @Override
    public final BcSmartspaceDataPlugin.SmartspaceEventNotifier getEventNotifier() {
        return this.mEventNotifier;
    }

    @Override
    public final BcSmartspaceDataPlugin.SmartspaceView getView(ViewGroup parent) {
        int layoutId;
        if (this.mConfigProvider.isViewPager2Enabled()) {
            layoutId = R.layout.smartspace_enhanced2;
        } else {
            layoutId = R.layout.smartspace_enhanced;
        }
        View view = LayoutInflater.from(parent.getContext()).inflate(layoutId, parent, false);
        view.addOnAttachStateChangeListener(this.mStateChangeListener);
        return (BcSmartspaceDataPlugin.SmartspaceView) view;
    }

    @Override
    public final void onTargetsAvailable(List<android.app.smartspace.SmartspaceTarget> list) {
        if (DEBUG) {
            Log.d("BcSmartspaceDataPlugin", this + " onTargetsAvailable called. Callers = " + Debug.getCallers(3));
            Log.d("BcSmartspaceDataPlugin", "    targets.size() = " + list.size());
            Log.d("BcSmartspaceDataPlugin", "    targets = " + list.toString());
        }
        List<android.app.smartspace.SmartspaceTarget> filteredTargets = list.stream().filter(target -> target.getFeatureType() != 34).collect(Collectors.toList());
        this.mSmartspaceTargets = filteredTargets;
        for (BcSmartspaceDataPlugin.SmartspaceTargetListener listener : this.mSmartspaceTargetListeners) {
            listener.onSmartspaceTargetsUpdated(filteredTargets);
        }
    }

    @Override
    public final void registerConfigProvider(BcSmartspaceConfigPlugin bcSmartspaceConfigPlugin) {
        this.mConfigProvider = bcSmartspaceConfigPlugin;
    }

    @Override
    public final void registerListener(BcSmartspaceDataPlugin.SmartspaceTargetListener smartspaceTargetListener) {
        this.mSmartspaceTargetListeners.add(smartspaceTargetListener);
        smartspaceTargetListener.onSmartspaceTargetsUpdated(this.mSmartspaceTargets);
    }

    public final void setEventDispatcher(BcSmartspaceDataPlugin.SmartspaceEventDispatcher smartspaceEventDispatcher) {
        this.mEventNotifier.eventDispatcher = smartspaceEventDispatcher;
    }

    public final void setIntentStarter(BcSmartspaceDataPlugin.IntentStarter intentStarter) {
        this.mEventNotifier.intentStarterRef = intentStarter;
    }

    @Override
    public final void unregisterListener(BcSmartspaceDataPlugin.SmartspaceTargetListener smartspaceTargetListener) {
        this.mSmartspaceTargetListeners.remove(smartspaceTargetListener);
    }
}
