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
import java.util.Locale;

public class BcSmartspaceCardShoppingList extends BcSmartspaceCardSecondary {
    private static final int[] LIST_ITEM_TEXT_VIEW_IDS = {R.id.list_item_1, R.id.list_item_2, R.id.list_item_3};
    public ImageView mCardPromptIconView;
    public TextView mCardPromptView;
    public TextView mEmptyListMessageView;
    public ImageView mListIconView;
    public final TextView[] mListItems;

    public BcSmartspaceCardShoppingList(Context context) {
        super(context);
        this.mListItems = new TextView[3];
    }

    public BcSmartspaceCardShoppingList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mListItems = new TextView[3];
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mCardPromptView = findViewById(R.id.card_prompt);
        this.mEmptyListMessageView = findViewById(R.id.empty_list_message);
        this.mCardPromptIconView = findViewById(R.id.card_prompt_icon);
        this.mListIconView = findViewById(R.id.list_icon);
        for (int i = 0; i < 3; i++) {
            this.mListItems[i] = findViewById(LIST_ITEM_TEXT_VIEW_IDS[i]);
        }
    }

    @Override
    public void resetUi() {
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mEmptyListMessageView, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mListIconView, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mCardPromptIconView, 8);
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mCardPromptView, 8);
        for (int i = 0; i < 3; i++) {
            BcSmartspaceTemplateDataUtils.updateVisibility(this.mListItems[i], 8);
        }
    }

    @Override
    public boolean setSmartspaceActions(SmartspaceTarget smartspaceTarget, BcSmartspaceDataPlugin.SmartspaceEventNotifier smartspaceEventNotifier, BcSmartspaceCardLoggingInfo bcSmartspaceCardLoggingInfo) {
        SmartspaceAction baseAction = smartspaceTarget.getBaseAction();
        Bundle extras = baseAction != null ? baseAction.getExtras() : null;
        Bitmap bitmap = null;
        if (extras != null) {
            if (extras.containsKey("appIcon")) {
                bitmap = (Bitmap) extras.get("appIcon");
            } else if (extras.containsKey("imageBitmap")) {
                bitmap = (Bitmap) extras.get("imageBitmap");
            }
        }
        this.mCardPromptIconView.setImageBitmap(bitmap);
        this.mListIconView.setImageBitmap(bitmap);
        if (extras != null && extras.containsKey("cardPrompt")) {
            String string = extras.getString("cardPrompt");
            TextView textView = this.mCardPromptView;
            if (textView == null) {
                Log.w("BcSmartspaceCardShoppingList", "No card prompt view to update");
            } else {
                textView.setText(string);
            }
            BcSmartspaceTemplateDataUtils.updateVisibility(this.mCardPromptView, 0);
            if (bitmap != null) {
                BcSmartspaceTemplateDataUtils.updateVisibility(this.mCardPromptIconView, 0);
            }
            return true;
        } else if (extras != null && extras.containsKey("emptyListString")) {
            String string2 = extras.getString("emptyListString");
            TextView textView2 = this.mEmptyListMessageView;
            if (textView2 == null) {
                Log.w("BcSmartspaceCardShoppingList", "No empty list message view to update");
            } else {
                textView2.setText(string2);
            }
            BcSmartspaceTemplateDataUtils.updateVisibility(this.mEmptyListMessageView, 0);
            BcSmartspaceTemplateDataUtils.updateVisibility(this.mListIconView, 0);
            return true;
        } else if (extras != null && extras.containsKey("listItems")) {
            String[] stringArray = extras.getStringArray("listItems");
            if (stringArray.length == 0) {
                return false;
            }
            BcSmartspaceTemplateDataUtils.updateVisibility(this.mListIconView, 0);
            for (int i = 0; i < 3; i++) {
                TextView textView3 = this.mListItems[i];
                if (textView3 == null) {
                    Log.w("BcSmartspaceCardShoppingList", "Missing list item view to update at row: " + (i + 1));
                    return true;
                }
                if (i < stringArray.length) {
                    BcSmartspaceTemplateDataUtils.updateVisibility(textView3, 0);
                    textView3.setText(stringArray[i]);
                } else {
                    BcSmartspaceTemplateDataUtils.updateVisibility(textView3, 8);
                    textView3.setText("");
                }
            }
            return true;
        } else {
            return false;
        }
    }

    @Override
    public void setTextColor(int i) {
        this.mCardPromptView.setTextColor(i);
        this.mEmptyListMessageView.setTextColor(i);
        for (int i2 = 0; i2 < 3; i2++) {
            TextView textView = this.mListItems[i2];
            if (textView == null) {
                Log.w("BcSmartspaceCardShoppingList", "Missing list item view to update at row: " + (i2 + 1));
            } else {
                textView.setTextColor(i);
            }
        }
    }
}
