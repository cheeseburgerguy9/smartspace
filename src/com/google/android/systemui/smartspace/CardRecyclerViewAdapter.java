package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceTarget;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.plugins.BcSmartspaceConfigPlugin;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;
import com.google.android.systemui.smartspace.uitemplate.BaseTemplateCard;
import com.android.systemui.res.R;
import java.util.ArrayList;
import java.util.List;

public class CardRecyclerViewAdapter extends RecyclerView.Adapter<CardRecyclerViewAdapter.ViewHolder> implements CardAdapter {
    private final List<SmartspaceTarget> mTargets = new ArrayList<>();
    private final BcSmartspaceView mRoot;
    private BcSmartspaceConfigPlugin mConfigProvider;
    private BcSmartspaceDataPlugin mDataProvider;
    private float mDozeAmount;
    private int mPrimaryTextColor;
    private String mUiSurface;
    private Handler mBgHandler;
    private final List<SmartspaceTarget> mMediaTargets = new ArrayList<>();

    public CardRecyclerViewAdapter(BcSmartspaceView root, BcSmartspaceConfigPlugin configProvider) {
        mRoot = root;
        mConfigProvider = configProvider;
    }

    @Override
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        SmartspaceCard card;
        if (viewType == R.layout.smartspace_card) {
            BcSmartspaceCard legacyCard = (BcSmartspaceCard) LayoutInflater.from(parent.getContext()).inflate(viewType, parent, false);
            legacyCard.mUiSurface = mUiSurface;
            card = legacyCard;
        } else if (viewType == R.layout.smartspace_base_template_card) {
            BaseTemplateCard templateCard = (BaseTemplateCard) LayoutInflater.from(parent.getContext()).inflate(viewType, parent, false);
            templateCard.mUiSurface = mUiSurface;
            // Set handlers if needed
            card = templateCard;
        } else {
            // Default or RemoteViews
            BcSmartspaceRemoteViewsCard remoteCard = new BcSmartspaceRemoteViewsCard(parent.getContext());
            remoteCard.mUiSurface = mUiSurface;
            card = remoteCard;
        }
        return new ViewHolder(card);
    }

    @Override
    public void onBindViewHolder(ViewHolder holder, int position) {
        SmartspaceTarget target = mTargets.get(position);
        SmartspaceCard card = holder.card;

        // Logging info creation logic simplified
        BcSmartspaceCardLoggingInfo.Builder builder = new BcSmartspaceCardLoggingInfo.Builder();
        builder.setFeatureType(target.getFeatureType());
        // ... more logging fields
        BcSmartspaceCardLoggingInfo info = builder.build();

        BcSmartspaceDataPlugin.SmartspaceEventNotifier notifier = mDataProvider != null ? mDataProvider.getEventNotifier() : null;

        if (card instanceof BcSmartspaceRemoteViewsCard) {
            ((BcSmartspaceRemoteViewsCard) card).bindData(target, notifier, info, mTargets.size() > 1);
        } else if (card instanceof BaseTemplateCard) {
             // Template binding
             ((BaseTemplateCard) card).setSmartspaceActions(target, notifier, info);
             ((BaseTemplateCard) card).setPrimaryTextColor(mPrimaryTextColor);
             ((BaseTemplateCard) card).setDozeAmount(mDozeAmount);
        } else if (card instanceof BcSmartspaceCard) {
             ((BcSmartspaceCard) card).bindData(target, notifier, info, mTargets.size() > 1);
             ((BcSmartspaceCard) card).setPrimaryTextColor(mPrimaryTextColor);
             ((BcSmartspaceCard) card).setDozeAmount(mDozeAmount);
        }
    }

    @Override
    public int getItemCount() {
        return mTargets.size();
    }

    @Override
    public int getItemViewType(int position) {
        SmartspaceTarget target = mTargets.get(position);
        if (target.getRemoteViews() != null) {
            return -1; // Special type for RemoteViews
        }
        // Check for template vs legacy
        return R.layout.smartspace_card;
    }

    @Override
    public int getCount() {
        return getItemCount();
    }

    @Override
    public SmartspaceCard getCardAtPosition(int position) {
        // Stub: difficult to implement in RecyclerView without tracking holders manually or query layout manager
        return null;
    }

    @Override
    public SmartspaceTarget getTargetAtPosition(int position) {
        if (position >= 0 && position < mTargets.size()) return mTargets.get(position);
        return null;
    }

    @Override
    public List<SmartspaceTarget> getSmartspaceTargets() {
        return mTargets;
    }

    @Override
    public void setTargets(List<SmartspaceTarget> targets) {
        mTargets.clear();
        mTargets.addAll(targets);
        notifyDataSetChanged();
    }

    @Override
    public void setConfigProvider(BcSmartspaceConfigPlugin configProvider) {
        mConfigProvider = configProvider;
    }

    @Override
    public void setDataProvider(BcSmartspaceDataPlugin dataProvider) {
        mDataProvider = dataProvider;
    }

    @Override
    public void setDozeAmount(float amount) {
        mDozeAmount = amount;
        notifyDataSetChanged(); // inefficient but works
    }

    @Override
    public void setPrimaryTextColor(int color) {
        mPrimaryTextColor = color;
        notifyDataSetChanged();
    }

    @Override
    public void setScreenOn(boolean screenOn) {
        // iterate visible holders
    }

    @Override
    public void setUiSurface(String uiSurface) {
        mUiSurface = uiSurface;
    }

    @Override
    public String getUiSurface() {
        return mUiSurface;
    }

    @Override
    public float getDozeAmount() {
        return mDozeAmount;
    }

    @Override
    public void setBgHandler(Handler handler) {
        mBgHandler = handler;
    }

    @Override
    public void setTimeChangedDelegate(BcSmartspaceDataPlugin.TimeChangedDelegate delegate) { }

    @Override
    public void setMediaTarget(SmartspaceTarget target) {
        mMediaTargets.clear();
        if (target != null) mMediaTargets.add(target);
    }

    @Override
    public void setKeyguardBypassEnabled(boolean enabled) { }

    @Override
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        final SmartspaceCard card;
        public ViewHolder(SmartspaceCard card) {
            super(card.getView());
            this.card = card;
        }
    }
}
