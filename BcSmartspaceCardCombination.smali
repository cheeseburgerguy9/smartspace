.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;
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
.method public final fillSubCard(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z
    .locals 10

    .line 1
    const v1, 0x7f0a087d    # @id/sub_card_text

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v1

    .line 8
    move-object v7, v1

    .line 9
    check-cast v7, Landroid/widget/TextView;

    .line 10
    const v1, 0x7f0a087c    # @id/sub_card_icon

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 18
    move-object v8, v1

    .line 19
    check-cast v8, Landroid/widget/ImageView;

    .line 20
    const-string v1, "BcSmartspaceCardCombination"

    .line 22
    const/4 v9, 0x0

    .line 24
    if-nez v7, :cond_0

    .line 25
    const-string v0, "No sub-card text field to update"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return v9

    .line 32
    :cond_0
    if-nez v8, :cond_1

    .line 33
    const-string v0, "No sub-card image field to update"

    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return v9

    .line 40
    :cond_1
    const-string v4, "BcSmartspaceCardCombination"

    .line 41
    const/4 v6, 0x0

    .line 43
    move-object v0, p1

    .line 44
    move-object v1, p2

    .line 45
    move-object v2, p3

    .line 46
    move-object v3, p4

    .line 47
    move-object v5, p5

    .line 48
    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    .line 49
    invoke-virtual {p3}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 52
    move-result-object v1

    .line 55
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v3

    .line 63
    const v4, 0x7f07037b    # @dimen/enhanced_smartspace_icon_size '20.0dp'

    .line 64
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    move-result v3

    .line 70
    invoke-static {v1, v2, v3}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIconDrawableWithCustomSize(Landroid/graphics/drawable/Icon;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 71
    move-result-object v1

    .line 74
    const/4 v2, 0x1

    .line 75
    const/16 v3, 0x8

    .line 76
    if-nez v1, :cond_2

    .line 78
    invoke-static {v8, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 80
    move v1, v9

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-static {v8, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 88
    move v1, v2

    .line 91
    :goto_0
    invoke-virtual {p3}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    .line 92
    move-result-object v4

    .line 95
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    move-result v5

    .line 99
    if-eqz v5, :cond_3

    .line 100
    invoke-static {v7, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 102
    move v2, v1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static {v7, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 110
    :goto_1
    if-eqz v2, :cond_4

    .line 113
    invoke-virtual {p3}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 115
    move-result-object v1

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    const/4 v1, 0x0

    .line 120
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    if-eqz v2, :cond_5

    .line 124
    invoke-static {p1, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 126
    return v2

    .line 129
    :cond_5
    invoke-static {p1, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 130
    return v2
    .line 133
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0384    # @id/first_sub_card

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    const v0, 0x7f0a07b9    # @id/second_sub_card

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 23
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    return-void
    .line 27
.end method

.method public final resetUi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    const/16 v1, 0x8

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 6
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    invoke-static {p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 11
    return-void
    .line 14
.end method

.method public setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getActionChips()Ljava/util/List;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_7

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    goto/16 :goto_4

    .line 16
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    move-object v7, v2

    .line 22
    check-cast v7, Landroid/app/smartspace/SmartspaceAction;

    .line 23
    if-nez v7, :cond_1

    .line 25
    return v1

    .line 27
    :cond_1
    iget-object v5, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    move-object v4, p0

    .line 30
    move-object v6, p1

    .line 31
    move-object v8, p2

    .line 32
    move-object v9, p3

    .line 33
    if-eqz v5, :cond_2

    .line 34
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->fillSubCard(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z

    .line 36
    move-result p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    move p0, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move p0, v1

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 45
    move-result p1

    .line 48
    if-le p1, v3, :cond_3

    .line 49
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    move p1, v3

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move p1, v1

    .line 59
    :goto_1
    if-eqz p1, :cond_4

    .line 60
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object p2

    .line 65
    move-object v7, p2

    .line 66
    check-cast v7, Landroid/app/smartspace/SmartspaceAction;

    .line 67
    iget-object v5, v4, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->fillSubCard(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z

    .line 71
    move-result p2

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move p2, v3

    .line 76
    :goto_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    move-result-object p3

    .line 80
    instance-of p3, p3, Landroid/widget/LinearLayout$LayoutParams;

    .line 81
    if-eqz p3, :cond_6

    .line 83
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    move-result-object p3

    .line 88
    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    if-eqz p1, :cond_5

    .line 91
    if-eqz p2, :cond_5

    .line 93
    const/high16 p1, 0x40400000    # 3.0f

    .line 95
    iput p1, p3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 97
    goto :goto_3

    .line 99
    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 100
    iput p1, p3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 102
    :goto_3
    invoke-virtual {v4, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    :cond_6
    if-eqz p0, :cond_7

    .line 107
    if-eqz p2, :cond_7

    .line 109
    return v3

    .line 111
    :cond_7
    :goto_4
    return v1
    .line 112
.end method

.method public final setTextColor(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
