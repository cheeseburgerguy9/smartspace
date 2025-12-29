package com.google.android.systemui.smartspace.utils;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import java.util.Arrays;

public final class ContentDescriptionUtil {
    public static final void setFormattedContentDescription(String tag, View view, CharSequence text, CharSequence iconDescription) {
        CharSequence contentDescription;
        if (TextUtils.isEmpty(text)) {
            contentDescription = iconDescription;
        } else if (TextUtils.isEmpty(iconDescription)) {
            contentDescription = text;
        } else {
            contentDescription = view.getContext().getString(com.android.systemui.bcsmartspace.R.string.generic_smartspace_concatenated_desc, iconDescription, text);
        }

        String logMessage = String.format("setFormattedContentDescription: text=%s, iconDescription=%s, contentDescription=%s",
            Arrays.copyOf(new Object[]{text, iconDescription, contentDescription}, 3));
        Log.i(tag, logMessage);

        view.setContentDescription(contentDescription);
    }
}
