package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceTarget;
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
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.stream.Collectors;

public class BcSmartspaceDataProvider implements BcSmartspaceDataPlugin {
    private static final String TAG = "BcSmartspaceDataProvider";
    protected final Set<View.OnAttachStateChangeListener> mAttachListeners = new HashSet<>();
    protected final EventNotifierProxy mEventNotifier = new EventNotifierProxy();
    protected final Set<BcSmartspaceDataPlugin.SmartspaceTargetListener> mSmartspaceTargetListeners = new CopyOnWriteArraySet<>();
    protected List<SmartspaceTarget> mSmartspaceTargets = new ArrayList<>();
    protected final Set<View> mViews = new HashSet<>();
    protected BcSmartspaceConfigPlugin mConfigProvider;

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
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.smartspace_enhanced, parent, false);
        view.addOnAttachStateChangeListener(mStateChangeListener);
        return (SmartspaceView) view;
    }

    @Override
    public void notifySmartspaceEvent(android.app.smartspace.SmartspaceTargetEvent event) {
        mEventNotifier.notifySmartspaceEvent(event);
    }

    @Override
    public void onSmartspaceTargetsUpdated(List<SmartspaceTarget> targets) {
        // Filter out feature type 15 (Media) as per smali logic
        List<SmartspaceTarget> filteredTargets = targets.stream()
                .filter(t -> t.getFeatureType() != 15)
                .collect(Collectors.toList());

        mSmartspaceTargets = filteredTargets;
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

    public void setEventDispatcher(BcSmartspaceDataPlugin.SmartspaceEventDispatcher eventDispatcher) {
        mEventNotifier.eventDispatcher = eventDispatcher;
    }

    public void setIntentStarter(BcSmartspaceDataPlugin.IntentStarter intentStarter) {
        mEventNotifier.intentStarterRef = intentStarter;
    }
}
