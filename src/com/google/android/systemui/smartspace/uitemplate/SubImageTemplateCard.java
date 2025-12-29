package com.google.android.systemui.smartspace.uitemplate;

import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.uitemplatedata.Icon;
import android.app.smartspace.uitemplatedata.SubImageTemplateData;
import android.app.smartspace.uitemplatedata.TapAction;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.systemui.bcsmartspace.R;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.BcSmartSpaceUtil;
import com.google.android.systemui.smartspace.BcSmartspaceCardSecondary;
import com.google.android.systemui.smartspace.BcSmartspaceTemplateDataUtils;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggerUtil;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SubImageTemplateCard extends BcSmartspaceCardSecondary {
    public final Handler mHandler;
    public final Map<String, Drawable> mIconDrawableCache;
    public final int mImageHeight;
    public ImageView mImageView;

    public SubImageTemplateCard(Context context) {
        this(context, null);
    }

    public SubImageTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIconDrawableCache = new HashMap<>();
        this.mHandler = new Handler();
        this.mImageHeight = getResources().getDimensionPixelOffset(R.dimen.enhanced_smartspace_card_height);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mImageView = findViewById(R.id.image_view);
    }

    @Override
    public void resetUi() {
        if (mIconDrawableCache != null) {
            mIconDrawableCache.clear();
        }
        if (mImageView != null) {
            mImageView.getLayoutParams().width = -2;
            mImageView.setImageDrawable(null);
            mImageView.setBackgroundTintList(null);
        }
    }

    @Override
    public boolean setSmartspaceActions(SmartspaceTarget target, BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier, BcSmartspaceCardLoggingInfo loggingInfo) {
        SubImageTemplateData templateData = (SubImageTemplateData) target.getTemplateData();
        if (!BcSmartspaceCardLoggerUtil.containsValidTemplateType(templateData)) {
            Log.w("SubImageTemplateCard", "SubImageTemplateData is null or has no SubImage or invalid template type");
            return false;
        }

        List<Icon> subImages = templateData.getSubImages();
        if (subImages == null || subImages.isEmpty()) {
            Log.w("SubImageTemplateCard", "SubImageTemplateData is null or has no SubImage or invalid template type");
            return false;
        }

        TapAction action = templateData.getSubImageAction();
        if (mImageView == null) {
             Log.w("SubImageTemplateCard", "No image view can be updated. Skipping background update...");
        } else if (action != null && action.getExtras() != null) {
            Bundle extras = action.getExtras();
            String ratio = extras.getString("imageDimensionRatio", "");
            if (!TextUtils.isEmpty(ratio)) {
                 mImageView.getLayoutParams().width = 0;
                 ((ConstraintLayout.LayoutParams) mImageView.getLayoutParams()).dimensionRatio = ratio;
            }
            if (extras.getBoolean("shouldShowBackground", false)) {
                 mImageView.setBackgroundTintList(ColorStateList.valueOf(getContext().getColor(R.color.smartspace_button_background)));
            }
        }

        int frameDuration = 200;
        if (action != null && action.getExtras() != null) {
             frameDuration = action.getExtras().getInt("GifFrameDurationMillis", 200);
        }

        final ContentResolver contentResolver = getContext().getApplicationContext().getContentResolver();
        final WeakReference<ImageView> imageViewRef = new WeakReference<>(mImageView);
        final String prevTargetId = mPrevSmartspaceTargetId;
        final int finalFrameDuration = frameDuration;
        final List<Icon> finalSubImages = subImages;
        final int imageCount = subImages.size();

        // This logic mimics the smali which seems to accumulate drawables and then set AnimationDrawable or single Drawable
        // Since asynchronous loading is involved, we need a way to collect results.
        // The smali uses a map and callbacks.

        // Simplified Logic:
        // We will load images. If multiple, create AnimationDrawable.
        // I will use a simple list of drawables and populate it.

        final List<Drawable> loadedDrawables = new ArrayList<>();
        // Pre-fill with nulls
        for(int i=0; i<imageCount; i++) loadedDrawables.add(null);

        for (int i = 0; i < imageCount; i++) {
            Icon icon = subImages.get(i);
            if (icon == null || icon.getIcon() == null) continue;

            android.graphics.drawable.Icon androidIcon = icon.getIcon();
            String key = getIconKey(androidIcon);

            final int index = i;
            android.graphics.drawable.Icon.OnDrawableLoadedListener listener = new android.graphics.drawable.Icon.OnDrawableLoadedListener() {
                @Override
                public void onDrawableLoaded(Drawable d) {
                     if (!prevTargetId.equals(mPrevSmartspaceTargetId)) return;
                     if (d != null) {
                         mIconDrawableCache.put(key, d);
                         loadedDrawables.set(index, d);

                         // Check if all needed are loaded or at least update the view?
                         // If only one image, set it directly.
                         // If multiple, wait for all? Or update animation frame by frame?
                         // Smali logic is complex with lambdas.
                         // It seems to collect and check if enough drawables are loaded.

                         // If we have single image and it's loaded
                         if (imageCount == 1) {
                             ImageView iv = imageViewRef.get();
                             if (iv != null) {
                                 iv.setImageDrawable(d);
                             }
                         } else {
                             // Check if we have all?
                             boolean allLoaded = true;
                             for(Drawable ld : loadedDrawables) if(ld == null) allLoaded = false;

                             if (allLoaded) {
                                 AnimationDrawable animation = new AnimationDrawable();
                                 for(Drawable ld : loadedDrawables) {
                                     animation.addFrame(ld, finalFrameDuration);
                                 }
                                 ImageView iv = imageViewRef.get();
                                 if (iv != null) {
                                     iv.setImageDrawable(animation);
                                     animation.start();
                                 }
                             }
                         }
                     }
                }
            };

            if (mIconDrawableCache.containsKey(key)) {
                listener.onDrawableLoaded(mIconDrawableCache.get(key));
            } else if (androidIcon.getType() == android.graphics.drawable.Icon.TYPE_URI) {
                new LoadUriTask(contentResolver, mImageHeight, listener).execute(androidIcon.getUri());
            } else {
                androidIcon.loadDrawableAsync(getContext(), listener, mHandler);
            }
        }

        if (action != null) {
            BcSmartSpaceUtil.setOnClickListener(this, target, action, notifier, "SubImageTemplateCard", loggingInfo, 0);
        }

        return true;
    }

    private String getIconKey(android.graphics.drawable.Icon icon) {
        StringBuilder sb = new StringBuilder(icon.getType());
        switch (icon.getType()) {
            case android.graphics.drawable.Icon.TYPE_URI:
            case android.graphics.drawable.Icon.TYPE_URI_ADAPTIVE_BITMAP:
                sb.append(icon.getUriString());
                break;
            case android.graphics.drawable.Icon.TYPE_RESOURCE:
                sb.append(icon.getResPackage()).append(String.format("0x%08x", icon.getResId()));
                break;
            case android.graphics.drawable.Icon.TYPE_BITMAP:
            case android.graphics.drawable.Icon.TYPE_ADAPTIVE_BITMAP:
                sb.append(icon.getBitmap().hashCode());
                break;
            case android.graphics.drawable.Icon.TYPE_DATA:
                sb.append(Arrays.hashCode(icon.getDataBytes()));
                break;
        }
        return sb.toString();
    }

    @Override
    public void setTextColor(int i) {
    }

    private static class LoadUriTask extends AsyncTask<Uri, Void, Drawable> {
        private final ContentResolver mContentResolver;
        private final int mHeight;
        private final android.graphics.drawable.Icon.OnDrawableLoadedListener mListener;

        LoadUriTask(ContentResolver contentResolver, int height, android.graphics.drawable.Icon.OnDrawableLoadedListener listener) {
            mContentResolver = contentResolver;
            mHeight = height;
            mListener = listener;
        }

        @Override
        protected Drawable doInBackground(Uri... uris) {
            try {
                InputStream is = mContentResolver.openInputStream(uris[0]);
                if (is != null) {
                    Drawable d = BcSmartSpaceUtil.getIconDrawableWithCustomSize(android.graphics.drawable.Icon.createWithAdaptiveBitmap(android.graphics.BitmapFactory.decodeStream(is)), null, mHeight);
                    is.close();
                    return d;
                }
            } catch (Exception e) {
                Log.w("SubImageTemplateCard", "Unable to load image: " + uris[0], e);
            }
            return null;
        }

        @Override
        protected void onPostExecute(Drawable drawable) {
            if (mListener != null) {
                mListener.onDrawableLoaded(drawable);
            }
        }
    }
}
