package com.google.android.systemui.smartspace;

import android.view.ViewGroup;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import android.app.smartspace.SmartspaceTarget;
import java.util.List;
import java.util.ArrayList;

public class CardRecyclerViewAdapter extends RecyclerView.Adapter<CardRecyclerViewAdapter.ViewHolder> implements CardAdapter {
    private List<SmartspaceTarget> mTargets = new ArrayList<>();

    @Override
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        // Implementation needed to inflate card based on viewType
        return new ViewHolder(new View(parent.getContext())); // Stub
    }

    @Override
    public void onBindViewHolder(ViewHolder holder, int position) {
        // Bind target
    }

    @Override
    public int getItemCount() {
        return mTargets.size();
    }

    @Override
    public SmartspaceCard getCardAtPosition(int position) {
        // Stub
        return null;
    }

    @Override
    public int getCount() {
        return getItemCount();
    }

    @Override
    public void setTargets(List<SmartspaceTarget> targets) {
        mTargets = targets;
        notifyDataSetChanged();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        SmartspaceCard card;
        public ViewHolder(View itemView) {
            super(itemView);
            if (itemView instanceof SmartspaceCard) {
                card = (SmartspaceCard) itemView;
            }
        }
    }
}
