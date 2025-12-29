.class public abstract Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# static fields
.field public static final TEMPLATE_TYPE_TO_SECONDARY_CARD_RES:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v1, v0, [Ljava/util/Map$Entry;

    .line 3
    const/4 v2, 0x2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v3

    .line 9
    const v4, 0x7f0d0302    # @layout/smartspace_sub_image_template_card 'res/layout/smartspace_sub_image_template_card.xml'

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v4

    .line 16
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 17
    move-result-object v3

    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v3, v1, v4

    .line 22
    const/4 v3, 0x3

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v4

    .line 28
    const v5, 0x7f0d0303    # @layout/smartspace_sub_list_template_card 'res/layout/smartspace_sub_list_template_card.xml'

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v5

    .line 35
    invoke-static {v4, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 36
    move-result-object v4

    .line 39
    const/4 v5, 0x1

    .line 40
    aput-object v4, v1, v5

    .line 41
    const/4 v4, 0x7

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v4

    .line 47
    const v5, 0x7f0d0301    # @layout/smartspace_sub_card_template_card 'res/layout/smartspace_sub_card_template_card.xml'

    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v5

    .line 54
    invoke-static {v4, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 55
    move-result-object v4

    .line 58
    aput-object v4, v1, v2

    .line 59
    const/4 v2, 0x5

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v4

    .line 65
    const v5, 0x7f0d0300    # @layout/smartspace_head_to_head_template_card 'res/layout/smartspace_head_to_head_template_card.xml'

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v5

    .line 72
    invoke-static {v4, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 73
    move-result-object v4

    .line 76
    aput-object v4, v1, v3

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v0

    .line 82
    const v3, 0x7f0d02fc    # @layout/smartspace_combined_cards_template_card 'res/layout/smartspace_combined_cards_template_card.xml'

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v3

    .line 89
    invoke-static {v0, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 90
    move-result-object v0

    .line 93
    const/4 v3, 0x4

    .line 94
    aput-object v0, v1, v3

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v0

    .line 100
    const v3, 0x7f0d02fa    # @layout/smartspace_carousel_template_card 'res/layout/smartspace_carousel_template_card.xml'

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v3

    .line 107
    invoke-static {v0, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 108
    move-result-object v0

    .line 111
    aput-object v0, v1, v2

    .line 112
    invoke-static {v1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    .line 114
    move-result-object v0

    .line 117
    sput-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->TEMPLATE_TYPE_TO_SECONDARY_CARD_RES:Ljava/util/Map;

    .line 118
    return-void
    .line 120
.end method

.method public static offsetTextViewForIcon(Landroid/widget/TextView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 5
    return-void

    .line 8
    :cond_0
    if-eqz p2, :cond_1

    .line 9
    const/4 p2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p2, -0x1

    .line 13
    :goto_0
    iget p1, p1, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->mIconInsetSize:I

    .line 14
    mul-int/2addr p2, p1

    .line 16
    int-to-float p1, p2

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 18
    return-void
    .line 21
.end method

.method public static setIcon(Landroid/widget/ImageView;Landroid/app/smartspace/uitemplatedata/Icon;)V
    .locals 2

    .line 1
    const-string v0, "BcSmartspaceTemplateDataUtils"

    .line 2
    if-nez p0, :cond_0

    .line 4
    const-string p0, "Cannot set. The image view is null"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    const-string v1, "Cannot set. The given icon is null"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const/16 v0, 0x8

    .line 19
    invoke-static {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/Icon;->getIcon()Landroid/graphics/drawable/Icon;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 28
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/Icon;->getContentDescription()Ljava/lang/CharSequence;

    .line 31
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/Icon;->getContentDescription()Ljava/lang/CharSequence;

    .line 37
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    :cond_2
    return-void
    .line 44
.end method

.method public static setText(Landroid/widget/TextView;Landroid/app/smartspace/uitemplatedata/Text;)V
    .locals 2

    .line 1
    const-string v0, "BcSmartspaceTemplateDataUtils"

    .line 2
    if-nez p0, :cond_0

    .line 4
    const-string p0, "Cannot set. The text view is null"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void

    .line 11
    :cond_0
    invoke-static {p1}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    const-string p1, "Cannot set. The given text is empty"

    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/16 p1, 0x8

    .line 23
    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 25
    return-void

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/Text;->getText()Ljava/lang/CharSequence;

    .line 29
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/Text;->getTruncateAtType()Landroid/text/TextUtils$TruncateAt;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/Text;->getMaxLines()I

    .line 43
    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 47
    return-void
    .line 50
.end method

.method public static updateVisibility(Landroid/view/View;I)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_1
    :goto_0
    return-void
    .line 14
.end method
