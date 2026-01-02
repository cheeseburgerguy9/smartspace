package com.google.android.systemui.smartspace;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.os.Handler;
import android.os.PowerManager;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextView;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import java.util.Locale;
import java.util.Objects;
import com.android.systemui.res.R;

public class IcuDateTextView extends TextView {
    private static final String TAG = "IcuDateTextView";
    private Handler mHandler;
    private Handler mBgHandler;
    private BcSmartspaceDataPlugin.TimeChangedDelegate mTimeChangedDelegate;
    private DateFormat mFormatter;
    private String mText;
    private boolean mUpdatesOnAod;
    private boolean mIsAodEnabled;
    private Boolean mIsInteractive;
    private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            onTimeChanged(true);
        }
    };
    private final ContentObserver mAodSettingsObserver = new ContentObserver(new Handler()) {
        @Override
        public void onChange(boolean selfChange) {
            updateAodSettings();
        }
    };
    private final Runnable mTimeChangedCallback = () -> onTimeChanged(false);

    public IcuDateTextView(Context context) {
        this(context, null);
    }

    public IcuDateTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        IntentFilter filter = new IntentFilter();
        filter.addAction(Intent.ACTION_TIME_TICK);
        filter.addAction(Intent.ACTION_TIME_CHANGED);
        filter.addAction(Intent.ACTION_TIMEZONE_CHANGED);
        getContext().registerReceiver(mIntentReceiver, filter);

        mHandler = new Handler();
        // Assuming DefaultTimeChangedDelegate is instantiated if mTimeChangedDelegate is null or we create it
        if (mTimeChangedDelegate == null) {
            mTimeChangedDelegate = new DefaultTimeChangedDelegate(mHandler);
        }

        onTimeChanged(true);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (mHandler != null) {
            getContext().unregisterReceiver(mIntentReceiver);
            mTimeChangedDelegate.unregister();
            mHandler = null;
        }
        if (mUpdatesOnAod && mBgHandler != null) {
            getContext().getContentResolver().unregisterContentObserver(mAodSettingsObserver);
        }
    }

    @Override
    public void onVisibilityAggregated(boolean isVisible) {
        super.onVisibilityAggregated(isVisible);
        rescheduleTicker();
    }

    public void setUpdatesOnAod(boolean updatesOnAod) {
        mUpdatesOnAod = updatesOnAod;
        if (updatesOnAod) {
            updateAodSettings();
            getContext().getContentResolver().registerContentObserver(
                    Settings.Secure.getUriFor("doze_always_on"), false, mAodSettingsObserver);
        }
    }

    public void setBgHandler(Handler handler) {
        mBgHandler = handler;
    }

    private void updateAodSettings() {
        if (mBgHandler == null) return;
        mBgHandler.post(() -> {
            boolean enabled = Settings.Secure.getInt(getContext().getContentResolver(), "doze_always_on", 0) == 1;
            getHandler().post(() -> {
                mIsAodEnabled = enabled;
                rescheduleTicker();
            });
        });
    }

    private void onTimeChanged(boolean force) {
        if (mFormatter == null || force) {
            String pattern = getContext().getString(R.string.smartspace_icu_date_pattern);
            mFormatter = DateFormat.getInstanceForSkeleton(pattern, Locale.getDefault());
            mFormatter.setContext(DisplayContext.CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE);
        }
        String text = mFormatter.format(System.currentTimeMillis());
        if (!Objects.equals(mText, text)) {
            mText = text;
            setText(text);
            setContentDescription(text);
        }
    }

    private void rescheduleTicker() {
        if (mHandler == null) return;
        mTimeChangedDelegate.unregister();

        boolean isAodMode = mUpdatesOnAod && mIsAodEnabled;
        boolean isInteractive = mIsInteractive != null ? mIsInteractive : isInteractive();

        if (!isInteractive && !isAodMode) return;
        if (!isAggregatedVisible()) return;

        mTimeChangedDelegate.register(mTimeChangedCallback);
    }

    private boolean isInteractive() {
        PowerManager pm = getContext().getSystemService(PowerManager.class);
        return pm != null && pm.isInteractive();
    }

    // Stub for default delegate based on Smali
    private static class DefaultTimeChangedDelegate implements BcSmartspaceDataPlugin.TimeChangedDelegate {
        private final Handler mHandler;
        private Runnable mCallback;
        private final Runnable mTicker = new Runnable() {
             @Override
             public void run() {
                 if (mCallback != null) mCallback.run();
                 // Logic to repost at next minute boundary
                 long now = System.currentTimeMillis();
                 long next = 60000 - (now % 60000);
                 mHandler.postDelayed(this, next);
             }
        };

        DefaultTimeChangedDelegate(Handler handler) {
            mHandler = handler;
        }

        @Override
        public void register(Runnable callback) {
            mCallback = callback;
            mCallback.run();
            // Align to minute
            long now = System.currentTimeMillis();
            long next = 60000 - (now % 60000);
            mHandler.postDelayed(mTicker, next);
        }

        @Override
        public void unregister() {
            mHandler.removeCallbacks(mTicker);
            mCallback = null;
        }
    }
}
