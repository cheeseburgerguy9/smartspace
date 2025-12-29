package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.bcsmartspace.R;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;

public class BcSmartspaceCardLoyalty extends BcSmartspaceCardGenericImage {
    public TextView mCardPromptView;
    public ImageView mLoyaltyProgramLogoView;
    public TextView mLoyaltyProgramNameView;

    public BcSmartspaceCardLoyalty(Context context) {
        super(context);
    }

    public BcSmartspaceCardLoyalty(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mLoyaltyProgramLogoView = findViewById(R.id.loyalty_program_logo);
        this.mLoyaltyProgramNameView = findViewById(R.id.loyalty_program_name);
        this.mCardPromptView = findViewById(R.id.card_prompt);
    }

    @Override
    public void resetUi() {
        super.resetUi();
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mImageView, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mLoyaltyProgramLogoView, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mLoyaltyProgramNameView, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mCardPromptView, 8);
    }

    @Override
    public void setImageBitmap(android.graphics.Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        this.mLoyaltyProgramLogoView.setImageBitmap(bitmap);
    }

    @Override
    public boolean setSmartspaceActions(SmartspaceTarget smartspaceTarget, BcSmartspaceDataPlugin.SmartspaceEventNotifier smartspaceEventNotifier, BcSmartspaceCardLoggingInfo bcSmartspaceCardLoggingInfo) {
        super.setSmartspaceActions(smartspaceTarget, smartspaceEventNotifier, bcSmartspaceCardLoggingInfo);
        SmartspaceAction baseAction = smartspaceTarget.getBaseAction();
        if (baseAction == null) {
            return false;
        }
        Bundle extras = baseAction.getExtras();
        if (extras != null) {
            boolean hasImageBitmap = extras.containsKey("imageBitmap");
            if (extras.containsKey("cardPrompt")) {
                String cardPrompt = extras.getString("cardPrompt");
                TextView textView = this.mCardPromptView;
                if (textView == null) {
                    Log.w("BcSmartspaceCardLoyalty", "No card prompt view to update");
                } else {
                    textView.setText(cardPrompt);
                }
                BcSmartspaceTemplateDataUtils.updateVisibility(this.mCardPromptView, 0);
                if (hasImageBitmap) {
                    BcSmartspaceTemplateDataUtils.updateVisibility(this.mImageView, 0);
                }
                return true;
            } else if (extras.containsKey("loyaltyProgramName")) {
                String loyaltyProgramName = extras.getString("loyaltyProgramName");
                TextView textView2 = this.mLoyaltyProgramNameView;
                if (textView2 == null) {
                    Log.w("BcSmartspaceCardLoyalty", "No loyalty program name view to update");
                } else {
                    textView2.setText(loyaltyProgramName);
                }
                BcSmartspaceTemplateDataUtils.updateVisibility(this.mLoyaltyProgramNameView, 0);
                if (hasImageBitmap) {
                    BcSmartspaceTemplateDataUtils.updateVisibility(this.mLoyaltyProgramLogoView, 0);
                }
                return true;
            } else {
                if (hasImageBitmap) {
                    BcSmartspaceTemplateDataUtils.updateVisibility(this.mLoyaltyProgramLogoView, 0);
                }
                return hasImageBitmap;
            }
        }
        return false;
    }

    @Override
    public void setTextColor(int i) {
        if (this.mLoyaltyProgramNameView != null) {
            this.mLoyaltyProgramNameView.setTextColor(i);
        }
        if (this.mCardPromptView != null) {
            this.mCardPromptView.setTextColor(i);
        }
    }
}
