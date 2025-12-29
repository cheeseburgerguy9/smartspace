.class public Lcom/google/android/systemui/smartspace/uitemplate/CombinedCardsTemplateCard;
.super Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# instance fields
.field public mFirstSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mSecondSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0385    # @id/first_sub_card_container

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/CombinedCardsTemplateCard;->mFirstSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    const v0, 0x7f0a07ba    # @id/second_sub_card_container

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 23
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/CombinedCardsTemplateCard;->mSecondSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    return-void
    .line 27
.end method

.method public final resetUi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/CombinedCardsTemplateCard;->mFirstSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    const/16 v1, 0x8

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 6
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/CombinedCardsTemplateCard;->mSecondSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    invoke-static {p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 11
    return-void
    .line 14
.end method

.method public final setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    .line 2
    move-result-object v1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->reset(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData;

    .line 13
    invoke-static {v1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->containsValidTemplateType(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    .line 15
    move-result v2

    .line 18
    const/4 v6, 0x0

    .line 19
    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData;->getCombinedCardDataList()Ljava/util/List;

    .line 22
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    goto :goto_2

    .line 32
    :cond_0
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData;->getCombinedCardDataList()Ljava/util/List;

    .line 33
    move-result-object v1

    .line 36
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 40
    check-cast v2, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 43
    move-result v3

    .line 46
    const/4 v7, 0x1

    .line 47
    if-le v3, v7, :cond_1

    .line 48
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 53
    check-cast v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 54
    :goto_0
    move-object v8, v1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v1, 0x0

    .line 58
    goto :goto_0

    .line 59
    :goto_1
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/CombinedCardsTemplateCard;->mFirstSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    move-object v0, p0

    .line 62
    move-object v3, p1

    .line 63
    move-object v4, p2

    .line 64
    move-object v5, p3

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/systemui/smartspace/uitemplate/CombinedCardsTemplateCard;->setupSubCard(Landroid/view/ViewGroup;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z

    .line 66
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    if-eqz v8, :cond_2

    .line 72
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/CombinedCardsTemplateCard;->mSecondSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    move-object v0, p0

    .line 76
    move-object v3, p1

    .line 77
    move-object v4, p2

    .line 78
    move-object v5, p3

    .line 79
    move-object v2, v8

    .line 80
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/systemui/smartspace/uitemplate/CombinedCardsTemplateCard;->setupSubCard(Landroid/view/ViewGroup;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z

    .line 81
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    :cond_2
    return v7

    .line 87
    :cond_3
    return v6

    .line 88
    :cond_4
    :goto_2
    const-string v0, "CombinedCardsTemplateCard"

    .line 89
    const-string v1, "TemplateData is null or empty or invalid template type"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v6
    .line 96
.end method

.method public final setTextColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/CombinedCardsTemplateCard;->mFirstSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/CombinedCardsTemplateCard;->mFirstSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->setTextColor(I)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/CombinedCardsTemplateCard;->mSecondSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/CombinedCardsTemplateCard;->mSecondSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object p0

    .line 35
    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->setTextColor(I)V

    .line 38
    :cond_1
    return-void
    .line 41
.end method

.method public final setupSubCard(Landroid/view/ViewGroup;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z
    .locals 5

    .line 1
    const-string v0, "CombinedCardsTemplateCard"

    .line 2
    const/16 v1, 0x8

    .line 4
    const/4 v2, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    invoke-static {p1, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 9
    const-string p0, "Sub-card templateData is null or empty"

    .line 12
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return v2

    .line 17
    :cond_0
    sget-object v3, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->TEMPLATE_TYPE_TO_SECONDARY_CARD_RES:Ljava/util/Map;

    .line 18
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getTemplateType()I

    .line 20
    move-result v4

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v4

    .line 27
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/Integer;

    .line 32
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    invoke-static {p1, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 40
    const-string p0, "Combined sub-card res is null. Cannot set it up"

    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v2

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 53
    move-result-object v0

    .line 56
    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 60
    check-cast v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 61
    new-instance v1, Landroid/app/smartspace/SmartspaceTarget$Builder;

    .line 63
    invoke-virtual {p3}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 68
    invoke-virtual {p3}, Landroid/app/smartspace/SmartspaceTarget;->getComponentName()Landroid/content/ComponentName;

    .line 69
    move-result-object v4

    .line 72
    invoke-virtual {p3}, Landroid/app/smartspace/SmartspaceTarget;->getUserHandle()Landroid/os/UserHandle;

    .line 73
    move-result-object p3

    .line 76
    invoke-direct {v1, v3, v4, p3}, Landroid/app/smartspace/SmartspaceTarget$Builder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 77
    invoke-virtual {v1, p2}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setTemplateData(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Landroid/app/smartspace/SmartspaceTarget$Builder;

    .line 80
    move-result-object p2

    .line 83
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget$Builder;->build()Landroid/app/smartspace/SmartspaceTarget;

    .line 84
    move-result-object p2

    .line 87
    invoke-virtual {v0, p2, p4, p5}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z

    .line 88
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 91
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 94
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object p0

    .line 99
    const p3, 0x7f070374    # @dimen/enhanced_smartspace_card_height '76.0dp'

    .line 100
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 103
    move-result p0

    .line 106
    const/4 p3, -0x2

    .line 107
    invoke-direct {p2, p3, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 108
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 111
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 113
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 115
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 117
    invoke-static {v0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 119
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-static {p1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 125
    const/4 p0, 0x1

    .line 128
    return p0
    .line 129
.end method
