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
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.provider.CalendarContract;
import android.util.Log;
import android.view.View;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.android.systemui.plugins.FalsingManager;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLogger;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;
import com.google.android.systemui.smartspace.logging.BcSmartspaceSubcardLoggingInfo;
import java.util.Map;
import java.util.List;

public abstract class BcSmartSpaceUtil {

    public static final Map<Integer, Integer> FEATURE_TYPE_TO_SECONDARY_CARD_RESOURCE_MAP;
    public static FalsingManager sFalsingManager;

    static {
        FEATURE_TYPE_TO_SECONDARY_CARD_RESOURCE_MAP = Map.ofEntries(
                Map.entry(-1, com.android.systemui.bcsmartspace.R.layout.smartspace_card_combination),
                Map.entry(-2, com.android.systemui.bcsmartspace.R.layout.smartspace_card_combination_at_store),
                Map.entry(3, com.android.systemui.bcsmartspace.R.layout.smartspace_card_generic_landscape_image),
                Map.entry(18, com.android.systemui.bcsmartspace.R.layout.smartspace_card_generic_landscape_image),
                Map.entry(4, com.android.systemui.bcsmartspace.R.layout.smartspace_card_flight),
                Map.entry(14, com.android.systemui.bcsmartspace.R.layout.smartspace_card_loyalty),
                Map.entry(13, com.android.systemui.bcsmartspace.R.layout.smartspace_card_shopping_list),
                Map.entry(9, com.android.systemui.bcsmartspace.R.layout.smartspace_card_sports),
                Map.entry(10, com.android.systemui.bcsmartspace.R.layout.smartspace_card_weather_forecast),
                Map.entry(30, com.android.systemui.bcsmartspace.R.layout.smartspace_card_doorbell),
                Map.entry(20, com.android.systemui.bcsmartspace.R.layout.smartspace_card_doorbell)
        );
    }

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

    public static int getFeatureType(SmartspaceTarget target) {
        List<SmartspaceAction> actionChips = target.getActionChips();
        int featureType = target.getFeatureType();
        if (actionChips != null) {
            if (actionChips.isEmpty()) {
                return -1;
            }
            if (featureType == 13 && actionChips.size() == 1) {
                return -2;
            }
        }
        return -1;
    }

    public static Drawable getIconDrawableWithCustomSize(Icon icon, Context context, int size) {
        if (icon == null) {
            return null;
        }
        Drawable drawable;
        if (icon.getType() != Icon.TYPE_BITMAP && icon.getType() != Icon.TYPE_ADAPTIVE_BITMAP) {
             drawable = icon.loadDrawable(context);
        } else {
             drawable = new BitmapDrawable(context.getResources(), icon.getBitmap());
        }
        if (drawable != null) {
            drawable.setBounds(0, 0, size, size);
        }
        return drawable;
    }

    public static BcSmartspaceDataPlugin.IntentStarter getIntentStarter(BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, String tag) {
         if (notifier != null) {
             BcSmartspaceDataPlugin.IntentStarter starter = notifier.getIntentStarter();
             if (starter != null) return starter;
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
        if (str == null) return 0;
        int result = -1;
        switch (str) {
            case "lockscreen":
                result = 2;
                break;
            case "dream":
                result = 1;
                break;
            case "home":
                result = 0;
                break;
        }

        switch (result) {
            case 0: // home
                return 1;
            case 1: // dream
                return 5;
            case 2: // lockscreen
                if (f == 1.0f) return 3;
                if (f == 0.0f) return 2;
                return -1;
            default:
                return 0;
        }
    }

    public static Intent getOpenCalendarIntent() {
        return new Intent(Intent.ACTION_VIEW)
                .setData(ContentUris.appendId(CalendarContract.CONTENT_URI.buildUpon().appendPath("time"), System.currentTimeMillis()).build())
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
    }

    public static void setOnClickListener(View view, SmartspaceTarget target, SmartspaceAction action, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, String tag, BcSmartspaceCardLoggingInfo loggingInfo, int subcardIndex) {
        if (view == null) {
            Log.e(tag, "No tap action can be set up");
            return;
        }
        if (action == null) {
             Log.e(tag, "No tap action can be set up");
             return;
        }

        boolean showOnLockscreen = false;
        if (action.getExtras() != null && action.getExtras().getBoolean("show_on_lockscreen")) {
            showOnLockscreen = true;
        }

        boolean isIntentNull = false;
        if (action.getIntent() == null && action.getPendingIntent() == null) {
            isIntentNull = true;
        }

        BcSmartspaceDataPlugin.IntentStarter intentStarter = getIntentStarter(notifier, tag);

        final boolean finalShowOnLockscreen = showOnLockscreen;
        final boolean finalIsIntentNull = isIntentNull;

        view.setOnClickListener(v -> {
            if (sFalsingManager != null && sFalsingManager.isFalseTap(1)) {
                return;
            }
            if (loggingInfo != null) {
                if (loggingInfo.mSubcardInfo != null) {
                    loggingInfo.mSubcardInfo.mClickedSubcardIndex = subcardIndex;
                }
                BcSmartspaceCardLogger.log(BcSmartspaceEvent.SMARTSPACE_CARD_CLICK, loggingInfo);
            }
            if (!finalIsIntentNull) {
                intentStarter.startFromAction(action, v, finalShowOnLockscreen);
            }
            if (notifier == null) {
                Log.w(tag, "Cannot notify target interaction smartspace event: event notifier null.");
            } else {
                notifier.notifySmartspaceEvent(new SmartspaceTargetEvent.Builder(1)
                        .setSmartspaceTarget(target)
                        .setSmartspaceActionId(action.getId())
                        .build());
            }
        });
    }

    public static void setOnClickListener(View view, SmartspaceTarget target, TapAction action, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, String tag, BcSmartspaceCardLoggingInfo loggingInfo, int subcardIndex) {
        if (view == null) {
             Log.e(tag, "No tap action can be set up");
             return;
        }
        if (action == null) {
             Log.e(tag, "No tap action can be set up");
             return;
        }

        boolean showOnLockscreen = action.shouldShowOnLockscreen();

        view.setOnClickListener(v -> {
            if (sFalsingManager != null && sFalsingManager.isFalseTap(1)) {
                return;
            }
            if (loggingInfo != null) {
                 if (loggingInfo.mSubcardInfo != null) {
                     loggingInfo.mSubcardInfo.mClickedSubcardIndex = subcardIndex;
                 }
                 BcSmartspaceCardLogger.log(BcSmartspaceEvent.SMARTSPACE_CARD_CLICK, loggingInfo);
            }

            BcSmartspaceDataPlugin.IntentStarter intentStarter = getIntentStarter(notifier, tag);

            boolean isIntentNull = false;
             if (action.getIntent() == null && action.getPendingIntent() == null) {
                 isIntentNull = true;
             }

             if (!isIntentNull) {
                 intentStarter.startFromAction(action, v, showOnLockscreen);
             }

             if (notifier == null) {
                 Log.w(tag, "Cannot notify target interaction smartspace event: event notifier null.");
             } else {
                 notifier.notifySmartspaceEvent(new SmartspaceTargetEvent.Builder(1)
                         .setSmartspaceTarget(target)
                         .setSmartspaceActionId(action.getId().toString())
                         .build());
             }
        });
    }
}
