package com.google.android.systemui.smartspace;

import android.content.Context;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RecordingCanvas;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import com.android.internal.graphics.ColorUtils;
import com.android.systemui.bcsmartspace.R;

public final class DoubleShadowIconDrawable extends Drawable {
    public final int mAmbientShadowRadius;
    public final int mCanvasSize;
    public RenderNode mDoubleShadowNode;
    public InsetDrawable mIconDrawable;
    public final int mIconInsetSize;
    public final int mKeyShadowOffsetX;
    public final int mKeyShadowOffsetY;
    public final int mKeyShadowRadius;
    public boolean mShowShadow;

    public DoubleShadowIconDrawable(Context context) {
        this(context.getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_icon_size), context.getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_icon_inset), context);
    }

    public DoubleShadowIconDrawable(int i, int i2, Context context) {
        this.mShowShadow = true;
        this.mIconInsetSize = i2;
        this.mCanvasSize = (i2 * 2) + i;
        this.mAmbientShadowRadius = context.getResources().getDimensionPixelSize(R.dimen.ambient_text_shadow_radius);
        this.mKeyShadowRadius = context.getResources().getDimensionPixelSize(R.dimen.key_text_shadow_radius);
        this.mKeyShadowOffsetX = context.getResources().getDimensionPixelSize(R.dimen.key_text_shadow_dx);
        this.mKeyShadowOffsetY = context.getResources().getDimensionPixelSize(R.dimen.key_text_shadow_dy);
        setBounds(0, 0, this.mCanvasSize, this.mCanvasSize);
    }

    @Override
    public void draw(Canvas canvas) {
        if (canvas.isHardwareAccelerated() && this.mDoubleShadowNode != null && this.mShowShadow) {
            if (!this.mDoubleShadowNode.hasDisplayList()) {
                RecordingCanvas beginRecording = this.mDoubleShadowNode.beginRecording();
                if (this.mIconDrawable != null) {
                    this.mIconDrawable.draw(beginRecording);
                }
                this.mDoubleShadowNode.endRecording();
            }
            canvas.drawRenderNode(this.mDoubleShadowNode);
        }
        if (this.mIconDrawable != null) {
            this.mIconDrawable.draw(canvas);
        }
    }

    @Override
    public int getIntrinsicHeight() {
        return this.mCanvasSize;
    }

    @Override
    public int getIntrinsicWidth() {
        return this.mCanvasSize;
    }

    @Override
    public int getOpacity() {
        return -2;
    }

    @Override
    public void setAlpha(int i) {
        if (this.mIconDrawable != null) {
            this.mIconDrawable.setAlpha(i);
        }
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.mIconDrawable != null) {
            this.mIconDrawable.setColorFilter(colorFilter);
        }
    }

    public void setIcon(Drawable drawable) {
        RenderNode renderNode = null;
        if (drawable == null) {
            this.mIconDrawable = null;
            return;
        }
        InsetDrawable insetDrawable = new InsetDrawable(drawable, this.mIconInsetSize);
        this.mIconDrawable = insetDrawable;
        insetDrawable.setBounds(0, 0, this.mCanvasSize, this.mCanvasSize);
        if (this.mIconDrawable != null) {
            RenderNode renderNode2 = new RenderNode("DoubleShadowNode");
            renderNode2.setPosition(0, 0, this.mCanvasSize, this.mCanvasSize);
            RenderEffect createColorFilterEffect = RenderEffect.createColorFilterEffect(new PorterDuffColorFilter(Color.argb(48, 0, 0, 0), PorterDuff.Mode.MULTIPLY), RenderEffect.createOffsetEffect(0.0f, 0.0f, RenderEffect.createBlurEffect(this.mAmbientShadowRadius, this.mAmbientShadowRadius, Shader.TileMode.CLAMP)));
            RenderEffect createColorFilterEffect2 = RenderEffect.createColorFilterEffect(new PorterDuffColorFilter(Color.argb(72, 0, 0, 0), PorterDuff.Mode.MULTIPLY), RenderEffect.createOffsetEffect(this.mKeyShadowOffsetX, this.mKeyShadowOffsetY, RenderEffect.createBlurEffect(this.mKeyShadowRadius, this.mKeyShadowRadius, Shader.TileMode.CLAMP)));
            if (createColorFilterEffect != null && createColorFilterEffect2 != null) {
                renderNode = RenderEffect.createBlendModeEffect(createColorFilterEffect, createColorFilterEffect2, BlendMode.DARKEN);
            }
            renderNode2.setRenderEffect(renderNode);
            renderNode = renderNode2;
        }
        this.mDoubleShadowNode = renderNode;
    }

    public void setTint(int i) {
        if (this.mIconDrawable != null) {
            this.mIconDrawable.setTint(i);
        }
        this.mShowShadow = ColorUtils.calculateLuminance(i) > 0.5d;
    }
}
