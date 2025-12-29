package com.google.android.systemui.smartspace;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import android.app.smartspace.SmartspaceTarget;
import java.util.List;
import java.util.ArrayList;

public class CardPagerAdapter extends PagerAdapter implements CardAdapter {
    private List<SmartspaceTarget> mTargets = new ArrayList<>();

    @Override
    public int getCount() {
        return mTargets.size();
    }

    @Override
    public boolean isViewFromObject(View view, Object object) {
        return view == object;
    }

    @Override
    public SmartspaceCard getCardAtPosition(int position) {
        // Stub
        return null;
    }

    @Override
    public void setTargets(List<SmartspaceTarget> targets) {
        mTargets = targets;
        notifyDataSetChanged();
    }
}
