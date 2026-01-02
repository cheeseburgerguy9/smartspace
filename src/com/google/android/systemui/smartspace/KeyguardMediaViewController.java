package com.google.android.systemui.smartspace;

import android.content.Context;
import android.content.ComponentName;
import android.media.MediaMetadata;
import android.os.Handler;
import android.os.UserHandle;
import android.text.TextUtils;
import android.view.View;
import android.util.Log;

import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.dagger.SysUISingleton;
import com.android.systemui.media.NotificationMediaManager;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.util.concurrency.DelayableExecutor;

import javax.inject.Inject;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;

@SysUISingleton
public final class KeyguardMediaViewController {
    private CharSequence artist;
    private final BroadcastDispatcher broadcastDispatcher;
    private final Context context;
    private final ComponentName mediaComponent;
    private final NotificationMediaManager.MediaListener mediaListener =
            new NotificationMediaManager.MediaListener() {
                @Override
                public void onPrimaryMetadataOrStateChanged(
                        final MediaMetadata mediaMetadata, final int i) {
                    DelayableExecutor uiExecutor = getUiExecutor();
                    uiExecutor.execute(
                            new Runnable() {
                                @Override
                                public final void run() {
                                    updateMediaInfo(mediaMetadata, i);
                                }
                            });
                }
            };
    private final NotificationMediaManager mediaManager;
    private final BcSmartspaceDataPlugin plugin;
    private BcSmartspaceDataPlugin.SmartspaceView smartspaceView;
    private CharSequence title;
    private final DelayableExecutor uiExecutor;
    private final UserTracker userTracker;

    @Inject
    public KeyguardMediaViewController(
            Context context,
            BcSmartspaceDataPlugin plugin,
            DelayableExecutor uiExecutor,
            NotificationMediaManager mediaManager,
            BroadcastDispatcher broadcastDispatcher,
            UserTracker userTracker) {
        this.context = context;
        this.plugin = plugin;
        this.uiExecutor = uiExecutor;
        this.mediaManager = mediaManager;
        this.broadcastDispatcher = broadcastDispatcher;
        this.userTracker = userTracker;
        this.mediaComponent = new ComponentName(context, KeyguardMediaViewController.class);
    }

    public DelayableExecutor getUiExecutor() {
        return uiExecutor;
    }

    public void init() {
        // Safe cast check, as AOSP standard plugin interface might not have this method,
        // but Google's implementation (and the Smali we converted) does.
        // We cast to BcSmartspaceDataProvider to access it, assuming that's the implementation.
        // Or if the interface was updated via patch.
        if (plugin instanceof BcSmartspaceDataProvider) {
            ((BcSmartspaceDataProvider) plugin).addOnAttachStateChangeListener(
                new View.OnAttachStateChangeListener() {
                    @Override
                    public void onViewAttachedToWindow(View v) {
                        if (v instanceof BcSmartspaceDataPlugin.SmartspaceView) {
                            smartspaceView = (BcSmartspaceDataPlugin.SmartspaceView) v;
                            mediaManager.addCallback(mediaListener);
                        }
                    }

                    @Override
                    public void onViewDetachedFromWindow(View v) {
                        smartspaceView = null;
                        mediaManager.removeCallback(mediaListener);
                    }
                });
        } else {
             // Fallback or reflection if needed, but for now we assume the implementation matches
             // what we built in this repo.
             // If the interface IS updated in frameworks/base, we can call it directly.
             // But the Java compiler here won't know about framework changes unless we provide stubs.
             // Assuming plugin is the one we wrote.
        }
    }

    public void updateMediaInfo(MediaMetadata mediaMetadata, int i) {
        CharSequence currentTitle;
        if (!NotificationMediaManager.isPlayingState(i)) {
            reset();
            return;
        }

        if (mediaMetadata == null) {
            currentTitle = null;
        } else {
            currentTitle = mediaMetadata.getText(MediaMetadata.METADATA_KEY_TITLE);
            if (TextUtils.isEmpty(currentTitle)) {
                currentTitle = context.getResources().getString(com.android.systemui.res.R.string.music_controls_no_title);
            }
        }

        CharSequence currentArtist = mediaMetadata == null ? null : mediaMetadata.getText(MediaMetadata.METADATA_KEY_ARTIST);

        if (TextUtils.equals(title, currentTitle) && TextUtils.equals(artist, currentArtist)) {
            return;
        }

        title = currentTitle;
        artist = currentArtist;

        if (currentTitle != null) {
            SmartspaceAction action = new SmartspaceAction.Builder("deviceMediaTitle", currentTitle.toString())
                    .setSubtitle(artist)
                    .setIcon(mediaManager.getMediaIcon())
                    .build();

            SmartspaceTarget target = new SmartspaceTarget.Builder(
                    "deviceMedia",
                    mediaComponent,
                    UserHandle.of(userTracker.getUserId()))
                    .setFeatureType(15)
                    .setHeaderAction(action)
                    .build();

            if (smartspaceView != null) {
                smartspaceView.setMediaTarget(target);
            }
            return;
        }

        reset();
    }

    public void reset() {
        title = null;
        artist = null;
        if (smartspaceView != null) {
            smartspaceView.setMediaTarget(null);
        }
    }
}
