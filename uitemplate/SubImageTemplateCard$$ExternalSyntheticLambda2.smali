.class public final synthetic Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Landroid/graphics/drawable/AnimationDrawable;

.field public synthetic f$1:I


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/drawable/AnimationDrawable;

    .line 2
    iget p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 6
    sget v1, Lcom/google/android/systemui/smartspace/uitemplate/SubImageTemplateCard;->$r8$clinit:I

    .line 8
    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10
    return-void
    .line 13
.end method
