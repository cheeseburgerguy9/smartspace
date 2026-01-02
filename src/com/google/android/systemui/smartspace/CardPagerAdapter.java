package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceTarget;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import com.android.systemui.plugins.BcSmartspaceConfigPlugin;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.uitemplate.BaseTemplateCard;
import java.util.ArrayList;
import java.util.List;

public class CardPagerAdapter extends PagerAdapter implements CardAdapter {
    private final List<SmartspaceTarget> mTargets = new ArrayList<>();
    private final BcSmartspaceView mRoot;
    private BcSmartspaceConfigPlugin mConfigProvider;
    private BcSmartspaceDataPlugin mDataProvider;
    private float mDozeAmount;
    private int mPrimaryTextColor;
    private String mUiSurface;
    private final List<SmartspaceTarget> mMediaTargets = new ArrayList<>();

    public CardPagerAdapter(BcSmartspaceView root, BcSmartspaceConfigPlugin configProvider) {
        mRoot = root;
        mConfigProvider = configProvider;
    }

    @Override
    public int getCount() {
        return mTargets.size();
    }

    @Override
    public boolean isViewFromObject(View view, Object object) {
        return view == ((ViewHolder) object).view;
    }

    @Override
    public Object instantiateItem(ViewGroup container, int position) {
        SmartspaceTarget target = mTargets.get(position);
        // Simplified inflation logic
        BcSmartspaceCard legacyCard = new BcSmartspaceCard(container.getContext());
        // Bind data
        legacyCard.bindData(target, mDataProvider != null ? mDataProvider.getEventNotifier() : null, null, mTargets.size() > 1);
        legacyCard.setPrimaryTextColor(mPrimaryTextColor);
        legacyCard.setDozeAmount(mDozeAmount);

        container.addView(legacyCard);
        return new ViewHolder(position, legacyCard, target);
    }

    @Override
    public void destroyItem(ViewGroup container, int position, Object object) {
        ViewHolder holder = (ViewHolder) object;
        container.removeView(holder.view);
    }

    @Override
    public SmartspaceCard getCardAtPosition(int position) {
        // Implementation would require tracking holders
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
        // Update holders
    }

    @Override
    public void setPrimaryTextColor(int color) {
        mPrimaryTextColor = color;
        // Update holders
    }

    @Override
    public void setScreenOn(boolean screenOn) { }

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
    public void setBgHandler(Handler handler) { }

    @Override
    public void setTimeChangedDelegate(BcSmartspaceDataPlugin.TimeChangedDelegate delegate) { }

    @Override
    public void setMediaTarget(SmartspaceTarget target) {
        mMediaTargets.clear();
        if (target != null) mMediaTargets.add(target);
        // Update logic
    }

    @Override
    public void setKeyguardBypassEnabled(boolean enabled) { }

    private static class ViewHolder {
        final int position;
        final View view;
        final SmartspaceTarget target;
        ViewHolder(int position, View view, SmartspaceTarget target) {
            this.position = position;
            this.view = view;
            this.target = target;
        }
    }
}
