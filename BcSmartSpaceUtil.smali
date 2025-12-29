.class public abstract Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# static fields
.field public static final FEATURE_TYPE_TO_SECONDARY_CARD_RESOURCE_MAP:Ljava/util/Map;

.field public static sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0xb

    .line 2
    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 4
    const/4 v1, -0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 10
    const v2, 0x7f0d02ed    # @layout/smartspace_card_combination 'res/layout/smartspace_card_combination.xml'

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 17
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 18
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v1, v0, v2

    .line 23
    const/4 v1, -0x2

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v1

    .line 29
    const v2, 0x7f0d02ee    # @layout/smartspace_card_combination_at_store 'res/layout/smartspace_card_combination_at_store.xml'

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 37
    move-result-object v1

    .line 40
    const/4 v2, 0x1

    .line 41
    aput-object v1, v0, v2

    .line 42
    const/4 v1, 0x3

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v2

    .line 48
    const v3, 0x7f0d02f2    # @layout/smartspace_card_generic_landscape_image 'res/layout/smartspace_card_generic_landscape_image.xml'

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v3

    .line 55
    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 56
    move-result-object v2

    .line 59
    const/4 v4, 0x2

    .line 60
    aput-object v2, v0, v4

    .line 61
    const/16 v2, 0x12

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v2

    .line 68
    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 69
    move-result-object v2

    .line 72
    aput-object v2, v0, v1

    .line 73
    const/4 v1, 0x4

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v2

    .line 79
    const v3, 0x7f0d02f0    # @layout/smartspace_card_flight 'res/layout/smartspace_card_flight.xml'

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v3

    .line 86
    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 87
    move-result-object v2

    .line 90
    aput-object v2, v0, v1

    .line 91
    const/16 v1, 0xe

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v1

    .line 98
    const v2, 0x7f0d02f4    # @layout/smartspace_card_loyalty 'res/layout/smartspace_card_loyalty.xml'

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v2

    .line 105
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 106
    move-result-object v1

    .line 109
    const/4 v2, 0x5

    .line 110
    aput-object v1, v0, v2

    .line 111
    const/16 v1, 0xd

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v1

    .line 118
    const v2, 0x7f0d02f5    # @layout/smartspace_card_shopping_list 'res/layout/smartspace_card_shopping_list.xml'

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v2

    .line 125
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 126
    move-result-object v1

    .line 129
    const/4 v2, 0x6

    .line 130
    aput-object v1, v0, v2

    .line 131
    const/16 v1, 0x9

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object v2

    .line 138
    const v3, 0x7f0d02f6    # @layout/smartspace_card_sports 'res/layout/smartspace_card_sports.xml'

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v3

    .line 145
    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 146
    move-result-object v2

    .line 149
    const/4 v3, 0x7

    .line 150
    aput-object v2, v0, v3

    .line 151
    const/16 v2, 0xa

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v3

    .line 158
    const v4, 0x7f0d02f7    # @layout/smartspace_card_weather_forecast 'res/layout/smartspace_card_weather_forecast.xml'

    .line 159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v4

    .line 165
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 166
    move-result-object v3

    .line 169
    const/16 v4, 0x8

    .line 170
    aput-object v3, v0, v4

    .line 172
    const/16 v3, 0x1e

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v3

    .line 179
    const v4, 0x7f0d02ef    # @layout/smartspace_card_doorbell 'res/layout/smartspace_card_doorbell.xml'

    .line 180
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    move-result-object v4

    .line 186
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 187
    move-result-object v3

    .line 190
    aput-object v3, v0, v1

    .line 191
    const/16 v1, 0x14

    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object v1

    .line 198
    invoke-static {v1, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 199
    move-result-object v1

    .line 202
    aput-object v1, v0, v2

    .line 203
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    .line 205
    move-result-object v0

    .line 208
    sput-object v0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->FEATURE_TYPE_TO_SECONDARY_CARD_RESOURCE_MAP:Ljava/util/Map;

    .line 209
    return-void
    .line 211
.end method

.method public static getDimensionRatio(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "imageRatioWidth"

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    const-string v1, "imageRatioHeight"

    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 12
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 22
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 23
    move-result p0

    .line 26
    if-lez v0, :cond_2

    .line 27
    if-gtz p0, :cond_1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, ":"

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 53
    return-object p0
    .line 54
.end method

.method public static getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getActionChips()Ljava/util/List;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 6
    move-result p0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0xd

    .line 19
    if-ne p0, v1, :cond_1

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    move-result p0

    .line 26
    const/4 v0, 0x1

    .line 27
    if-ne p0, v0, :cond_1

    .line 28
    const/4 p0, -0x2

    .line 30
    return p0

    .line 31
    :cond_1
    const/4 p0, -0x1

    .line 32
    :cond_2
    :goto_0
    return p0
    .line 33
.end method

.method public static getIconDrawableWithCustomSize(Landroid/graphics/drawable/Icon;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object p0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    .line 32
    move-result-object p0

    .line 35
    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 36
    move-object p0, v0

    .line 39
    :goto_1
    if-eqz p0, :cond_3

    .line 40
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1, p1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 43
    :cond_3
    return-object p0
    .line 46
.end method

.method public static getIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;->getIntentStarter()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    .line 4
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    if-eqz p0, :cond_1

    .line 10
    return-object p0

    .line 12
    :cond_1
    new-instance p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$2;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$2;->val$tag:Ljava/lang/String;

    .line 18
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 20
    return-object p0
    .line 23
.end method

.method public static getLoggingDisplaySurface(Ljava/lang/String;F)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 9
    move-result v1

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, -0x1

    .line 15
    sparse-switch v1, :sswitch_data_0

    .line 16
    :goto_0
    move p0, v4

    .line 19
    goto :goto_1

    .line 20
    :sswitch_0
    const-string v1, "lockscreen"

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    move p0, v2

    .line 30
    goto :goto_1

    .line 31
    :sswitch_1
    const-string v1, "dream"

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    move p0, v3

    .line 41
    goto :goto_1

    .line 42
    :sswitch_2
    const-string v1, "home"

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 48
    if-nez p0, :cond_3

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    move p0, v0

    .line 52
    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 53
    return v0

    .line 56
    :pswitch_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 57
    cmpl-float p0, p1, p0

    .line 59
    if-nez p0, :cond_4

    .line 61
    const/4 p0, 0x3

    .line 63
    return p0

    .line 64
    :cond_4
    const/4 p0, 0x0

    .line 65
    cmpl-float p0, p1, p0

    .line 66
    if-nez p0, :cond_5

    .line 68
    return v2

    .line 70
    :cond_5
    return v4

    .line 71
    :pswitch_1
    const/4 p0, 0x5

    .line 72
    return p0

    .line 73
    :pswitch_2
    return v3

    .line 74
    nop

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x30f4df -> :sswitch_2
        0x5b68803 -> :sswitch_1
        0x6adcb957 -> :sswitch_0
    .end sparse-switch

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 90
.end method

.method public static getOpenCalendarIntent()Landroid/content/Intent;
    .locals 3

    .line 1
    sget-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 4
    move-result-object v0

    .line 7
    const-string/jumbo v1, "time"

    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    move-result-wide v1

    .line 18
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 23
    move-result-object v0

    .line 26
    new-instance v1, Landroid/content/Intent;

    .line 27
    const-string v2, "android.intent.action.VIEW"

    .line 29
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 34
    move-result-object v0

    .line 37
    const/high16 v1, 0x10200000

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    move-result-object v0

    .line 43
    return-object v0
    .line 44
.end method

.method public static setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V
    .locals 4

    .line 1
    if-eqz p0, :cond_3

    .line 2
    if-nez p2, :cond_0

    .line 4
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 7
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 15
    move-result-object v0

    .line 18
    const-string/jumbo v3, "show_on_lockscreen"

    .line 19
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    move v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v0, v1

    .line 30
    :goto_0
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    .line 31
    move-result-object v3

    .line 34
    if-nez v3, :cond_2

    .line 35
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getPendingIntent()Landroid/app/PendingIntent;

    .line 37
    move-result-object v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    move v1, v2

    .line 43
    :cond_2
    invoke-static {p3, p4}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    .line 44
    move-result-object v2

    .line 47
    new-instance v3, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;

    .line 48
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p5, v3, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 53
    iput p6, v3, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$1:I

    .line 55
    iput-boolean v1, v3, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$2:Z

    .line 57
    iput-object v2, v3, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$3:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    .line 59
    iput-object p2, v3, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$4:Landroid/app/smartspace/SmartspaceAction;

    .line 61
    iput-boolean v0, v3, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$5:Z

    .line 63
    iput-object p3, v3, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$7:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 65
    iput-object p4, v3, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$8:Ljava/lang/String;

    .line 67
    iput-object p1, v3, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;->f$9:Landroid/app/smartspace/SmartspaceTarget;

    .line 69
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 71
    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void

    .line 77
    :cond_3
    :goto_1
    const-string p0, "No tap action can be set up"

    .line 78
    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
    .line 83
.end method

.method public static setOnClickListener$1(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    if-nez p2, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/TapAction;->shouldShowOnLockscreen()Z

    .line 7
    move-result v0

    .line 10
    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;

    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p5, v1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    .line 16
    iput p6, v1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$1:I

    .line 18
    iput-object p3, v1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    .line 20
    iput-object p4, v1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 22
    iput-object p2, v1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$4:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 24
    iput-boolean v0, v1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$5:Z

    .line 26
    iput-object p1, v1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;->f$7:Landroid/app/smartspace/SmartspaceTarget;

    .line 28
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 30
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void

    .line 36
    :cond_1
    :goto_0
    const-string p0, "No tap action can be set up"

    .line 37
    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
    .line 42
.end method
