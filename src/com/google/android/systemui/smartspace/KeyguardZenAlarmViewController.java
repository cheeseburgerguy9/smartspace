package com.google.android.systemui.smartspace;

import android.app.AlarmManager;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.format.DateFormat;
import android.view.View;
import com.android.systemui.dagger.SysUISingleton;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.android.systemui.statusbar.policy.NextAlarmController;
import com.android.systemui.statusbar.policy.ZenModeController;
import com.android.systemui.res.R;

import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;

@SysUISingleton
public final class KeyguardZenAlarmViewController {
    private final Context context;
    private final BcSmartspaceDataPlugin datePlugin;
    private final ZenModeController zenModeController;
    private final AlarmManager alarmManager;
    private final NextAlarmController nextAlarmController;
    private final Handler handler;

    private final Set<BcSmartspaceDataPlugin.SmartspaceView> smartspaceViews = new LinkedHashSet<>();
    private final Drawable dndImage;
    private final Drawable alarmImage;

    private final ZenModeController.Callback zenModeCallback = new ZenModeController.Callback() {
        @Override
        public void onZenChanged(int zen) {
            updateDnd();
        }
    };

    private final NextAlarmController.NextAlarmChangeCallback nextAlarmCallback = new NextAlarmController.NextAlarmChangeCallback() {
        @Override
        public void onNextAlarmChanged(AlarmManager.AlarmClockInfo nextAlarm) {
            updateNextAlarm();
        }
    };

    private final AlarmManager.OnAlarmListener showNextAlarm = new AlarmManager.OnAlarmListener() {
        @Override
        public void onAlarm() {
            showAlarm();
        }
    };

    @Inject
    public KeyguardZenAlarmViewController(
            Context context,
            BcSmartspaceDataPlugin datePlugin,
            ZenModeController zenModeController,
            AlarmManager alarmManager,
            NextAlarmController nextAlarmController,
            Handler handler) {
        this.context = context;
        this.datePlugin = datePlugin;
        this.zenModeController = zenModeController;
        this.alarmManager = alarmManager;
        this.nextAlarmController = nextAlarmController;
        this.handler = handler;
        this.dndImage = context.getResources().getDrawable(R.drawable.stat_sys_dnd, null);
        this.alarmImage = context.getResources().getDrawable(R.drawable.ic_access_alarms_big, null);
    }

    public void init() {
         if (datePlugin instanceof BcSmartspaceDataProvider) {
            ((BcSmartspaceDataProvider) datePlugin).addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
                @Override
                public void onViewAttachedToWindow(View v) {
                    smartspaceViews.add((BcSmartspaceDataPlugin.SmartspaceView) v);
                    if (smartspaceViews.size() == 1) {
                        zenModeController.addCallback(zenModeCallback);
                        nextAlarmController.addCallback(nextAlarmCallback);
                    }
                    refresh();
                }

                @Override
                public void onViewDetachedFromWindow(View v) {
                    smartspaceViews.remove((BcSmartspaceDataPlugin.SmartspaceView) v);
                    if (smartspaceViews.isEmpty()) {
                        zenModeController.removeCallback(zenModeCallback);
                        nextAlarmController.removeCallback(nextAlarmCallback);
                    }
                }
            });
        }
        updateNextAlarm();
    }

    private void refresh() {
        updateDnd();
        updateNextAlarm();
    }

    private void updateDnd() {
        if (zenModeController.getZen() != 0) {
            String description = context.getResources().getString(R.string.accessibility_quick_settings_dnd);
            for (BcSmartspaceDataPlugin.SmartspaceView view : smartspaceViews) {
                view.setDnd(dndImage, description);
            }
        } else {
            for (BcSmartspaceDataPlugin.SmartspaceView view : smartspaceViews) {
                view.setDnd(null, null);
            }
        }
    }

    private void updateNextAlarm() {
        alarmManager.cancel(showNextAlarm);
        long nextAlarm = zenModeController.getNextAlarm();
        if (nextAlarm > 0) {
            long millis = nextAlarm - TimeUnit.HOURS.toMillis(12);
            if (millis > 0) {
                alarmManager.setExact(AlarmManager.RTC_WAKEUP, millis, "lock_screen_next_alarm", showNextAlarm, handler);
            }
        }
        showAlarm();
    }

    private void showAlarm() {
        long nextAlarm = zenModeController.getNextAlarm();
        if (nextAlarm > 0 && withinNHours(nextAlarm, 12)) {
            String format = DateFormat.is24HourFormat(context, android.app.ActivityManager.getCurrentUser()) ? "HH:mm" : "h:mm";
            String nextAlarmString = DateFormat.format(format, nextAlarm).toString();

            for (BcSmartspaceDataPlugin.SmartspaceView view : smartspaceViews) {
                view.setNextAlarm(alarmImage, nextAlarmString);
            }
        } else {
            for (BcSmartspaceDataPlugin.SmartspaceView view : smartspaceViews) {
                view.setNextAlarm(null, null);
            }
        }
    }

    private boolean withinNHours(long alarmTime, long hours) {
        return alarmTime <= System.currentTimeMillis() + TimeUnit.HOURS.toMillis(hours);
    }
}
