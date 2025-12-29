package com.google.android.systemui.smartspace;

import android.graphics.drawable.Drawable;

public class BcNextAlarmData {
    public static final android.app.smartspace.SmartspaceAction SHOW_ALARMS_ACTION = new android.app.smartspace.SmartspaceAction.Builder("nextAlarmId", "Next Alarm").setIntent(new android.content.Intent("android.intent.action.SHOW_ALARMS")).build();
    public String mDescription;
    public Drawable mImage;
}
