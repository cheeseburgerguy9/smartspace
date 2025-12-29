package com.google.android.systemui.smartspace;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import java.util.ArrayList;

public final class TouchDelegateComposite extends TouchDelegate {
    public final ArrayList<TouchDelegate> mDelegates = new ArrayList<>();

    public TouchDelegateComposite(View view) {
        super(new Rect(), view);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        float x = event.getX();
        float y = event.getY();
        for (TouchDelegate delegate : mDelegates) {
            event.setLocation(x, y);
            if (delegate.onTouchEvent(event)) {
                return true;
            }
        }
        return false;
    }
}
