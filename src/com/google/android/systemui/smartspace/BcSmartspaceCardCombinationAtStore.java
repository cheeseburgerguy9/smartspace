package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.systemui.bcsmartspace.R;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;
import java.util.List;

public class BcSmartspaceCardCombinationAtStore extends BcSmartspaceCardCombination {
    public BcSmartspaceCardCombinationAtStore(Context context) {
        super(context);
    }

    public BcSmartspaceCardCombinationAtStore(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public boolean setSmartspaceActions(SmartspaceTarget smartspaceTarget, BcSmartspaceDataPlugin.SmartspaceEventNotifier smartspaceEventNotifier, BcSmartspaceCardLoggingInfo bcSmartspaceCardLoggingInfo) {
        List<SmartspaceAction> actionChips = smartspaceTarget.getActionChips();
        if (actionChips == null || actionChips.isEmpty()) {
            return false;
        }
        SmartspaceAction smartspaceAction = actionChips.get(0);
        if (smartspaceAction == null) {
            return false;
        }
        ConstraintLayout constraintLayout = this.mFirstSubCard;
        boolean z = false;
        if (constraintLayout instanceof BcSmartspaceCardShoppingList) {
            z = ((BcSmartspaceCardShoppingList) constraintLayout).setSmartspaceActions(smartspaceTarget, smartspaceEventNotifier, bcSmartspaceCardLoggingInfo);
        }
        ConstraintLayout constraintLayout2 = this.mSecondSubCard;
        boolean fillSubCard = (constraintLayout2 == null || !fillSubCard(constraintLayout2, smartspaceTarget, smartspaceAction, smartspaceEventNotifier, bcSmartspaceCardLoggingInfo)) ? false : true;
        if (z) {
            this.mFirstSubCard.setBackgroundResource(R.drawable.bg_smartspace_combination_sub_card);
        }
        return z && fillSubCard;
    }
}
