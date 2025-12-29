package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.plugins.BcSmartspaceConfigPlugin;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.android.systemui.res.R;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class BcSmartspaceDataProvider implements BcSmartspaceDataPlugin {
    public final Set<BcSmartspaceDataPlugin.SmartspaceTargetListener> mSmartspaceTargetListeners = new HashSet<>();
    public final List<SmartspaceTarget> mSmartspaceTargets = new ArrayList<>();
    public final Set<View> mViews = new HashSet<>();
    public final Set<View.OnAttachStateChangeListener> mAttachListeners = new HashSet<>();
    public final EventNotifierProxy mEventNotifier = new EventNotifierProxy();
    public BcSmartspaceConfigPlugin mConfigProvider = new DefaultBcSmartspaceConfigProvider();

    private final View.OnAttachStateChangeListener mStateChangeListener = new View.OnAttachStateChangeListener() {
        @Override
        public void onViewAttachedToWindow(View v) {
            mViews.add(v);
            for (View.OnAttachStateChangeListener listener : mAttachListeners) {
                listener.onViewAttachedToWindow(v);
            }
        }

        @Override
        public void onViewDetachedFromWindow(View v) {
            mViews.remove(v);
            for (View.OnAttachStateChangeListener listener : mAttachListeners) {
                listener.onViewDetachedFromWindow(v);
            }
        }
    };

    @Override
    public void addOnAttachStateChangeListener(View.OnAttachStateChangeListener listener) {
        mAttachListeners.add(listener);
        for (View view : mViews) {
            listener.onViewAttachedToWindow(view);
        }
    }

    @Override
    public SmartspaceView getView(ViewGroup parent) {
        // int layoutRes = mConfigProvider.isViewPager2Enabled() ? R.layout.smartspace_enhanced2 : R.layout.smartspace_enhanced;
        // Stubbing config provider check or assuming default
        int layoutRes = R.layout.smartspace_enhanced;
        View view = LayoutInflater.from(parent.getContext()).inflate(layoutRes, parent, false);
        view.addOnAttachStateChangeListener(mStateChangeListener);
        return (SmartspaceView) view;
    }

    @Override
    public void onTargetsAvailable(List<SmartspaceTarget> targets) {
        mSmartspaceTargets.clear();
        for (SmartspaceTarget target : targets) {
            if (target.getFeatureType() != 15) {
                mSmartspaceTargets.add(target);
            }
        }
        for (BcSmartspaceDataPlugin.SmartspaceTargetListener listener : mSmartspaceTargetListeners) {
            listener.onSmartspaceTargetsUpdated(mSmartspaceTargets);
        }
    }

    @Override
    public void registerConfigProvider(BcSmartspaceConfigPlugin configProvider) {
        mConfigProvider = configProvider;
    }

    @Override
    public void registerListener(BcSmartspaceDataPlugin.SmartspaceTargetListener listener) {
        mSmartspaceTargetListeners.add(listener);
        listener.onSmartspaceTargetsUpdated(mSmartspaceTargets);
    }

    @Override
    public void unregisterListener(BcSmartspaceDataPlugin.SmartspaceTargetListener listener) {
        mSmartspaceTargetListeners.remove(listener);
    }

    @Override
    public void notifySmartspaceEvent(android.app.smartspace.SmartspaceTargetEvent event) {
        mEventNotifier.notifySmartspaceEvent(event);
    }

    public BcSmartspaceDataPlugin.SmartspaceEventNotifier getEventNotifier() {
        return mEventNotifier;
    }

    // Missing methods from interface in AOSP might be handled by proxy or not needed if strictly following reference which implements a specific version of plugin interface.
    // The reference has setEventDispatcher, setIntentStarter.

    public void setEventDispatcher(BcSmartspaceDataPlugin.SmartspaceEventDispatcher eventDispatcher) {
        mEventNotifier.eventDispatcher = eventDispatcher;
    }

    public void setIntentStarter(BcSmartspaceDataPlugin.IntentStarter intentStarter) {
        mEventNotifier.intentStarterRef = intentStarter;
    }
}
