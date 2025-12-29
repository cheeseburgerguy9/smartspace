package com.google.android.systemui.smartspace;

import android.app.AlarmManager;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.format.DateFormat;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.android.systemui.statusbar.policy.NextAlarmController;
import com.android.systemui.statusbar.policy.ZenModeController;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public final class KeyguardZenAlarmViewController {
    public Drawable alarmImage;
    public AlarmManager alarmManager;
    public Context context;
    public BcSmartspaceDataPlugin datePlugin;
    public Handler handler;
    public NextAlarmController.NextAlarmChangeCallback nextAlarmCallback;
    public NextAlarmController nextAlarmController;
    public Set<BcSmartspaceDataPlugin.SmartspaceView> smartspaceViews = new HashSet<>();
    public ZenModeController zenModeController;
    public ZenModeController.Callback zenModeCallback;

    public KeyguardZenAlarmViewController(Context context, BcSmartspaceDataPlugin datePlugin, ZenModeController zenModeController, AlarmManager alarmManager, NextAlarmController nextAlarmController, Handler handler) {
        this.context = context;
        this.datePlugin = datePlugin;
        this.zenModeController = zenModeController;
        this.alarmManager = alarmManager;
        this.nextAlarmController = nextAlarmController;
        this.handler = handler;

        this.nextAlarmCallback = new NextAlarmController.NextAlarmChangeCallback() {
            @Override
            public void onNextAlarmChanged(AlarmManager.AlarmClockInfo nextAlarm) {
                updateNextAlarm();
            }
        };

        this.zenModeCallback = new ZenModeController.Callback() {
            @Override
            public void onZenChanged(int zen) {
                updateZen();
            }
        };
    }

    public void init() {
        nextAlarmController.addCallback(nextAlarmCallback);
        zenModeController.addCallback(zenModeCallback);
        updateNextAlarm();
        updateZen();
    }

    public void updateNextAlarm() {
        AlarmManager.AlarmClockInfo nextAlarm = alarmManager.getNextAlarmClock();
        long triggerTime = nextAlarm != null ? nextAlarm.getTriggerTime() : 0;

        if (triggerTime > 0) {
            long now = System.currentTimeMillis();
            if (triggerTime <= now + TimeUnit.HOURS.toMillis(12)) {
                String description = DateFormat.format(DateFormat.is24HourFormat(context) ? "HH:mm" : "h:mm", triggerTime).toString();

                // Assuming we load alarmImage drawable here or earlier.
                // In original code it might be using an icon from alarm info or a default one.
                // For simplicity, let's assume a default drawable resource if available, or we might need to load it.
                // The smali doesn't show loading logic explicitly in the main class methods shown.
                // But `updateNextAlarm$1` smali might have it.
                // I'll assume standard alarm icon.
                if (alarmImage == null) {
                    alarmImage = context.getDrawable(com.android.systemui.bcsmartspace.R.drawable.ic_access_alarms_big);
                }

                for (BcSmartspaceDataPlugin.SmartspaceView view : smartspaceViews) {
                    if (view instanceof DateSmartspaceView) {
                        ((DateSmartspaceView) view).setNextAlarm(alarmImage, description);
                    }
                }
                return;
            }
        }

        for (BcSmartspaceDataPlugin.SmartspaceView view : smartspaceViews) {
            if (view instanceof DateSmartspaceView) {
                ((DateSmartspaceView) view).setNextAlarm(null, null);
            }
        }
    }

    public void updateZen() {
        int zen = zenModeController.getZen();
        Drawable dndImage = null;
        String description = null;

        if (zen != 0) { // 0 is OFF
             dndImage = context.getDrawable(com.android.systemui.bcsmartspace.R.drawable.stat_sys_dnd);
             description = context.getString(com.android.systemui.bcsmartspace.R.string.accessibility_dnd_on);
        }

        for (BcSmartspaceDataPlugin.SmartspaceView view : smartspaceViews) {
            if (view instanceof DateSmartspaceView) {
                ((DateSmartspaceView) view).setDnd(dndImage, description);
            }
        }
    }
}
