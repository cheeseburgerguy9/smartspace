.class public final synthetic Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$ItemUpdateFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final update(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda2;->f$0:I

    .line 4
    packed-switch p2, :pswitch_data_0

    .line 6
    sget p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->$r8$clinit:I

    .line 9
    check-cast p1, Landroid/widget/TextView;

    .line 11
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    return-void

    .line 16
    :pswitch_0
    sget p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->$r8$clinit:I

    .line 17
    check-cast p1, Landroid/widget/TextView;

    .line 19
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
