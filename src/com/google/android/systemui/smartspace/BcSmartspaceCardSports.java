package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.bcsmartspace.R;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;

public class BcSmartspaceCardSports extends BcSmartspaceCardSecondary {
    public ImageView mFirstCompetitorLogo;
    public TextView mFirstCompetitorScore;
    public ImageView mSecondCompetitorLogo;
    public TextView mSecondCompetitorScore;
    public TextView mSummaryView;

    public BcSmartspaceCardSports(Context context) {
        super(context);
    }

    public BcSmartspaceCardSports(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mSummaryView = findViewById(R.id.match_time_summary);
        this.mFirstCompetitorScore = findViewById(R.id.first_competitor_score);
        this.mSecondCompetitorScore = findViewById(R.id.second_competitor_score);
        this.mFirstCompetitorLogo = findViewById(R.id.first_competitor_logo);
        this.mSecondCompetitorLogo = findViewById(R.id.second_competitor_logo);
    }

    @Override
    public void resetUi() {
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mSummaryView, 4);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mFirstCompetitorScore, 4);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mSecondCompetitorScore, 4);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mFirstCompetitorLogo, 4);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mSecondCompetitorLogo, 4);
    }

    @Override
    public boolean setSmartspaceActions(SmartspaceTarget smartspaceTarget, BcSmartspaceDataPlugin.SmartspaceEventNotifier smartspaceEventNotifier, BcSmartspaceCardLoggingInfo bcSmartspaceCardLoggingInfo) {
        SmartspaceAction baseAction = smartspaceTarget.getBaseAction();
        if (baseAction == null) {
            return false;
        }
        Bundle extras = baseAction.getExtras();
        if (extras == null) {
            return false;
        }
        boolean hasContent = false;
        if (extras.containsKey("matchTimeSummary")) {
            String matchTimeSummary = extras.getString("matchTimeSummary");
            if (this.mSummaryView == null) {
                Log.w("BcSmartspaceCardSports", "No match time summary view to update");
            } else {
                BcSmartspaceTemplateDataUtils.updateVisibility(this.mSummaryView, 0);
                this.mSummaryView.setText(matchTimeSummary);
            }
            hasContent = true;
        }
        if (extras.containsKey("firstCompetitorScore")) {
            String firstCompetitorScore = extras.getString("firstCompetitorScore");
            if (this.mFirstCompetitorScore == null) {
                Log.w("BcSmartspaceCardSports", "No first competitor logo view to update");
            } else {
                BcSmartspaceTemplateDataUtils.updateVisibility(this.mFirstCompetitorScore, 0);
                this.mFirstCompetitorScore.setText(firstCompetitorScore);
            }
            hasContent = true;
        }
        if (extras.containsKey("secondCompetitorScore")) {
            String secondCompetitorScore = extras.getString("secondCompetitorScore");
            if (this.mSecondCompetitorScore == null) {
                Log.w("BcSmartspaceCardSports", "No second competitor logo view to update");
            } else {
                BcSmartspaceTemplateDataUtils.updateVisibility(this.mSecondCompetitorScore, 0);
                this.mSecondCompetitorScore.setText(secondCompetitorScore);
            }
            hasContent = true;
        }
        if (extras.containsKey("firstCompetitorLogo")) {
            Bitmap bitmap = (Bitmap) extras.get("firstCompetitorLogo");
            if (this.mFirstCompetitorLogo == null) {
                Log.w("BcSmartspaceCardSports", "No first competitor logo view to update");
            } else {
                BcSmartspaceTemplateDataUtils.updateVisibility(this.mFirstCompetitorLogo, 0);
                this.mFirstCompetitorLogo.setImageBitmap(bitmap);
            }
            hasContent = true;
        }
        if (extras.containsKey("secondCompetitorLogo")) {
            Bitmap bitmap2 = (Bitmap) extras.get("secondCompetitorLogo");
            if (this.mSecondCompetitorLogo == null) {
                Log.w("BcSmartspaceCardSports", "No second competitor logo view to update");
            } else {
                BcSmartspaceTemplateDataUtils.updateVisibility(this.mSecondCompetitorLogo, 0);
                this.mSecondCompetitorLogo.setImageBitmap(bitmap2);
            }
            hasContent = true;
        }
        return hasContent;
    }

    @Override
    public void setTextColor(int i) {
        if (this.mSummaryView != null) {
            this.mSummaryView.setTextColor(i);
        }
        if (this.mFirstCompetitorScore != null) {
            this.mFirstCompetitorScore.setTextColor(i);
        }
        if (this.mSecondCompetitorScore != null) {
            this.mSecondCompetitorScore.setTextColor(i);
        }
    }
}
