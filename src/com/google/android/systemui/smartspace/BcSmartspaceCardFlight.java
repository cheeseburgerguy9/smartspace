package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.android.systemui.bcsmartspace.R;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.google.android.systemui.smartspace.logging.BcSmartspaceCardLoggingInfo;

public class BcSmartspaceCardFlight extends BcSmartspaceCardSecondary {
    public ImageView mQrCodeView;

    public BcSmartspaceCardFlight(Context context) {
        super(context);
    }

    public BcSmartspaceCardFlight(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mQrCodeView = findViewById(R.id.flight_qr_code);
    }

    @Override
    public void resetUi() {
        BcSmartspaceTemplateDataUtils.updateVisibility(this.mQrCodeView, 8);
    }

    @Override
    public boolean setSmartspaceActions(SmartspaceTarget smartspaceTarget, BcSmartspaceDataPlugin.SmartspaceEventNotifier smartspaceEventNotifier, BcSmartspaceCardLoggingInfo bcSmartspaceCardLoggingInfo) {
        SmartspaceAction baseAction = smartspaceTarget.getBaseAction();
        if (baseAction == null) {
            return false;
        }
        Bundle extras = baseAction.getExtras();
        if (extras != null && extras.containsKey("qrCodeBitmap")) {
            Bitmap bitmap = (Bitmap) extras.get("qrCodeBitmap");
            ImageView imageView = this.mQrCodeView;
            if (imageView == null) {
                Log.w("BcSmartspaceCardFlight", "No flight QR code view to update");
                return false;
            }
            imageView.setImageBitmap(bitmap);
            BcSmartspaceTemplateDataUtils.updateVisibility(this.mQrCodeView, 0);
            return true;
        }
        return false;
    }

    @Override
    public void setTextColor(int i) {
    }
}
