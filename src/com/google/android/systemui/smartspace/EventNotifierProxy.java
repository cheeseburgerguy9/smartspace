package com.google.android.systemui.smartspace;

import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import android.app.smartspace.SmartspaceTargetEvent;
import android.content.Intent;
import android.app.PendingIntent;
import android.view.View;

public class EventNotifierProxy implements BcSmartspaceDataPlugin.SmartspaceEventNotifier {
    public BcSmartspaceDataPlugin.SmartspaceEventDispatcher eventDispatcher;
    public BcSmartspaceDataPlugin.IntentStarter intentStarterRef;

    private final BcSmartspaceDataPlugin.IntentStarter intentStarter = new BcSmartspaceDataPlugin.IntentStarter() {
        @Override
        public void startIntent(View view, Intent intent, boolean showOnLockscreen) {
            if (intentStarterRef != null) {
                intentStarterRef.startIntent(view, intent, showOnLockscreen);
            }
        }

        @Override
        public void startPendingIntent(View view, PendingIntent pendingIntent, boolean showOnLockscreen) {
            if (intentStarterRef != null) {
                intentStarterRef.startPendingIntent(view, pendingIntent, showOnLockscreen);
            }
        }
    };

    @Override
    public void notifySmartspaceEvent(SmartspaceTargetEvent event) {
        if (eventDispatcher != null) {
            eventDispatcher.notifySmartspaceEvent(event);
        }
    }

    // NOTE: This interface method might not exist in the interface definition in AOSP,
    // but the smali implies this class acts as a proxy/holder.
    // However, BcSmartSpaceUtil.getIntentStarter calls getIntentStarter on the notifier.
    // Let's check if the interface has getIntentStarter.
    // Smali: invoke-interface {p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;->getIntentStarter()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;
    // So yes, it does.

    public BcSmartspaceDataPlugin.IntentStarter getIntentStarter() {
        return intentStarter;
    }
}
