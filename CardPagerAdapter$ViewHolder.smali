.class public final Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# instance fields
.field public final card:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

.field public final legacyCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

.field public final position:I

.field public final remoteViewsCard:Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;

.field public target:Landroid/app/smartspace/SmartspaceTarget;


# direct methods
.method public constructor <init>(ILcom/google/android/systemui/smartspace/BcSmartspaceCard;Landroid/app/smartspace/SmartspaceTarget;Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->position:I

    .line 5
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->legacyCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 7
    iput-object p3, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->target:Landroid/app/smartspace/SmartspaceTarget;

    .line 9
    iput-object p4, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    .line 11
    iput-object p5, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->remoteViewsCard:Lcom/google/android/systemui/smartspace/BcSmartspaceRemoteViewsCard;

    .line 13
    return-void
    .line 15
.end method
