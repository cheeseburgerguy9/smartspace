package com.google.android.systemui.smartspace;

import android.app.PendingIntent;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.SmartspaceTargetEvent;
import android.app.smartspace.uitemplatedata.TapAction;
import android.content.ActivityNotFoundException;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Bundle;
import android.provider.CalendarContract;
import android.util.Log;
import android.view.View;
import android.widget.RemoteViews;

import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.res.R;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLogger;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;
import com.google.android.systemui.smartspace.logging.BcSmartspaceSubcardLoggingInfo;

import java.util.List;
import java.util.Map;

public abstract class BcSmartSpaceUtil {
    public static final Map<Integer, Integer> FEATURE_TYPE_TO_SECONDARY_CARD_RESOURCE_MAP = Map.ofEntries(
            Map.entry(-1, R.layout.smartspace_card_combination),
            Map.entry(-2, R.layout.smartspace_card_combination_at_store),
            Map.entry(3, R.layout.smartspace_card_generic_landscape_image),
            Map.entry(18, R.layout.smartspace_card_generic_landscape_image),
            Map.entry(4, R.layout.smartspace_card_flight),
            Map.entry(14, R.layout.smartspace_card_loyalty),
            Map.entry(13, R.layout.smartspace_card_shopping_list),
            Map.entry(9, R.layout.smartspace_card_sports),
            Map.entry(10, R.layout.smartspace_card_weather_forecast),
            Map.entry(30, R.layout.smartspace_card_doorbell),
            Map.entry(20, R.layout.smartspace_card_doorbell)
    );
    public static FalsingManager sFalsingManager;

    public static String getDimensionRatio(Bundle bundle) {
        if (bundle.containsKey("imageRatioWidth") && bundle.containsKey("imageRatioHeight")) {
            int width = bundle.getInt("imageRatioWidth");
            int height = bundle.getInt("imageRatioHeight");
            if (width > 0 && height > 0) {
                return width + ":" + height;
            }
        }
        return null;
    }

    public static int getFeatureType(SmartspaceTarget smartspaceTarget) {
        List<SmartspaceAction> actionChips = smartspaceTarget.getActionChips();
        int featureType = smartspaceTarget.getFeatureType();
        if (actionChips != null && !actionChips.isEmpty()) {
            if (featureType == 13 && actionChips.size() == 1) {
                return -2;
            }
            return -1;
        }
        return featureType;
    }

    public static Drawable getIconDrawableWithCustomSize(Icon icon, Context context, int i) {
        if (icon == null) {
            return null;
        }
        Drawable drawable;
        if (icon.getType() == 1 || icon.getType() == 5) {
            drawable = new BitmapDrawable(context.getResources(), icon.getBitmap());
        } else {
            drawable = icon.loadDrawable(context);
        }
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i);
        }
        return drawable;
    }

    public static BcSmartspaceDataPlugin.IntentStarter getIntentStarter(BcSmartspaceDataPlugin.SmartspaceEventNotifier smartspaceEventNotifier, final String tag) {
        if (smartspaceEventNotifier != null) {
            BcSmartspaceDataPlugin.IntentStarter intentStarter = smartspaceEventNotifier.getIntentStarter();
            if (intentStarter != null) {
                return intentStarter;
            }
        }
        return new BcSmartspaceDataPlugin.IntentStarter() {
            @Override
            public void startIntent(View view, Intent intent, boolean z) {
                try {
                    view.getContext().startActivity(intent);
                } catch (NullPointerException | ActivityNotFoundException | SecurityException e) {
                    Log.e(tag, "Cannot invoke smartspace intent", e);
                }
            }

            @Override
            public void startPendingIntent(View view, PendingIntent pendingIntent, boolean z) {
                try {
                    pendingIntent.send();
                } catch (PendingIntent.CanceledException e) {
                    Log.e(tag, "Cannot invoke canceled smartspace intent", e);
                }
            }
        };
    }

    public static int getLoggingDisplaySurface(String str, float f) {
        if (str == null) {
            return 0;
        }
        int hashCode = str.hashCode();
        int i = -1;
        if (hashCode != 3208415) {
            if (hashCode != 96634189) {
                if (hashCode == 1792618263 && str.equals("lockscreen")) {
                    i = 2;
                }
            } else if (str.equals("dream")) {
                i = 1;
            }
        } else if (str.equals("home")) {
            i = 0;
        }
        if (i == 0) {
            return f == 1.0f ? 3 : (f == 0.0f ? 2 : -1);
        }
        if (i == 1) {
            return 5;
        }
        if (i == 2) {
            return 1;
        }
        return 0;
    }

    public static Intent getOpenCalendarIntent() {
        return new Intent("android.intent.action.VIEW")
                .setData(ContentUris.appendId(CalendarContract.CONTENT_URI.buildUpon().appendPath("time"), System.currentTimeMillis()).build())
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    }

    public static void setOnClickListener(
            View view,
            SmartspaceTarget smartspaceTarget,
            SmartspaceAction smartspaceAction,
            BcSmartspaceDataPlugin.SmartspaceEventNotifier smartspaceEventNotifier,
            String str,
            BcSmartspaceCardLoggingInfo bcSmartspaceCardLoggingInfo,
            int i) {
        if (view == null) {
            return;
        }
        if (smartspaceAction == null) {
            Log.e(str, "No tap action can be set up");
            return;
        }

        boolean showOnLockscreen = false;
        Bundle extras = smartspaceAction.getExtras();
        if (extras != null && extras.getBoolean("show_on_lockscreen")) {
            showOnLockscreen = true;
        }

        boolean isIntent = smartspaceAction.getIntent() != null || smartspaceAction.getPendingIntent() != null;

        BcSmartspaceDataPlugin.IntentStarter intentStarter = getIntentStarter(smartspaceEventNotifier, str);

        final boolean finalShowOnLockscreen = showOnLockscreen;
        view.setOnClickListener(v -> {
            if (sFalsingManager != null && sFalsingManager.isFalseTap(1)) {
                return;
            }
            if (bcSmartspaceCardLoggingInfo != null) {
                BcSmartspaceSubcardLoggingInfo subcardInfo = bcSmartspaceCardLoggingInfo.mSubcardInfo;
                if (subcardInfo != null) {
                    subcardInfo.mClickedSubcardIndex = i;
                }
                BcSmartspaceCardLogger.log(BcSmartspaceEvent.SMARTSPACE_CARD_CLICK, bcSmartspaceCardLoggingInfo);
            }

            if (!isIntent) {
                intentStarter.startFromAction(smartspaceAction, v, finalShowOnLockscreen);
            }

            if (smartspaceEventNotifier != null) {
                smartspaceEventNotifier.notifySmartspaceEvent(
                        new SmartspaceTargetEvent.Builder(1)
                                .setSmartspaceTarget(smartspaceTarget)
                                .setSmartspaceActionId(smartspaceAction.getId())
                                .build());
            }
        });
    }

    public static void setOnClickListener(
            View view,
            SmartspaceTarget smartspaceTarget,
            TapAction tapAction,
            BcSmartspaceDataPlugin.SmartspaceEventNotifier smartspaceEventNotifier,
            String str,
            BcSmartspaceCardLoggingInfo bcSmartspaceCardLoggingInfo,
            int i) {
        if (view == null) {
            return;
        }
        if (tapAction == null) {
            Log.e(str, "No tap action can be set up");
            return;
        }

        view.setOnClickListener(v -> {
             if (sFalsingManager != null && sFalsingManager.isFalseTap(1)) {
                return;
            }
            if (bcSmartspaceCardLoggingInfo != null) {
                BcSmartspaceSubcardLoggingInfo subcardInfo = bcSmartspaceCardLoggingInfo.mSubcardInfo;
                if (subcardInfo != null) {
                    subcardInfo.mClickedSubcardIndex = i;
                }
                BcSmartspaceCardLogger.log(BcSmartspaceEvent.SMARTSPACE_CARD_CLICK, bcSmartspaceCardLoggingInfo);
            }

            if (smartspaceEventNotifier != null) {
                smartspaceEventNotifier.notifySmartspaceEvent(
                        new SmartspaceTargetEvent.Builder(1)
                                .setSmartspaceTarget(smartspaceTarget)
                                .setSmartspaceActionId(tapAction.getId().toString())
                                .build());
            }
            // TapAction handling might be different or delegated
             BcSmartspaceDataPlugin.IntentStarter intentStarter = getIntentStarter(smartspaceEventNotifier, str);
             intentStarter.startFromAction(tapAction, v, tapAction.shouldShowOnLockscreen());
        });
    }
}
