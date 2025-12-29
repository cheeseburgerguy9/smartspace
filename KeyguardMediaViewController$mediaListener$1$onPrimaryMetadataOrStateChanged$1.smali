.class public final Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic $metadata:Landroid/media/MediaMetadata;

.field public synthetic $state:I

.field public synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    .line 2
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;->$metadata:Landroid/media/MediaMetadata;

    .line 4
    iget p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;->$state:I

    .line 6
    invoke-static {p0}, Lcom/android/systemui/media/NotificationMediaManager;->isPlayingState(I)Z

    .line 8
    move-result p0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez p0, :cond_0

    .line 13
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->title:Ljava/lang/CharSequence;

    .line 15
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    .line 17
    iget-object p0, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->smartspaceView:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 19
    if-eqz p0, :cond_8

    .line 21
    invoke-interface {p0, v2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V

    .line 23
    return-void

    .line 26
    :cond_0
    if-eqz v1, :cond_2

    .line 27
    const-string p0, "android.media.metadata.DISPLAY_TITLE"

    .line 29
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 31
    move-result-object p0

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    const-string p0, "android.media.metadata.TITLE"

    .line 41
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 43
    move-result-object p0

    .line 46
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    iget-object p0, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->context:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object p0

    .line 58
    const v3, 0x7f13086a    # @string/music_controls_no_title 'No title'

    .line 59
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move-object p0, v2

    .line 67
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 68
    const-string v3, "android.media.metadata.ARTIST"

    .line 70
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 72
    move-result-object v1

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    move-object v1, v2

    .line 77
    :goto_1
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->title:Ljava/lang/CharSequence;

    .line 78
    check-cast p0, Ljava/lang/CharSequence;

    .line 80
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 82
    move-result v3

    .line 85
    if-eqz v3, :cond_5

    .line 86
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    .line 88
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 90
    move-result v3

    .line 93
    if-eqz v3, :cond_5

    .line 94
    goto :goto_3

    .line 96
    :cond_5
    iput-object p0, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->title:Ljava/lang/CharSequence;

    .line 97
    iput-object v1, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    .line 99
    if-eqz p0, :cond_7

    .line 101
    new-instance v1, Landroid/app/smartspace/SmartspaceAction$Builder;

    .line 103
    const-string v3, "deviceMediaTitle"

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 110
    invoke-direct {v1, v3, p0}, Landroid/app/smartspace/SmartspaceAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p0, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    .line 114
    invoke-virtual {v1, p0}, Landroid/app/smartspace/SmartspaceAction$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/app/smartspace/SmartspaceAction$Builder;

    .line 116
    move-result-object p0

    .line 119
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaManager:Lcom/android/systemui/media/NotificationMediaManager;

    .line 120
    invoke-virtual {v1}, Lcom/android/systemui/media/NotificationMediaManager;->getMediaIcon()Landroid/graphics/drawable/Icon;

    .line 122
    move-result-object v1

    .line 125
    invoke-virtual {p0, v1}, Landroid/app/smartspace/SmartspaceAction$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/smartspace/SmartspaceAction$Builder;

    .line 126
    move-result-object p0

    .line 129
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction$Builder;->build()Landroid/app/smartspace/SmartspaceAction;

    .line 130
    move-result-object p0

    .line 133
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 134
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 136
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 138
    move-result v1

    .line 141
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 142
    move-result-object v1

    .line 145
    new-instance v3, Landroid/app/smartspace/SmartspaceTarget$Builder;

    .line 146
    const-string v4, "deviceMedia"

    .line 148
    iget-object v5, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaComponent:Landroid/content/ComponentName;

    .line 150
    invoke-direct {v3, v4, v5, v1}, Landroid/app/smartspace/SmartspaceTarget$Builder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 152
    const/16 v1, 0x29

    .line 155
    invoke-virtual {v3, v1}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;

    .line 157
    move-result-object v1

    .line 160
    invoke-virtual {v1, p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setHeaderAction(Landroid/app/smartspace/SmartspaceAction;)Landroid/app/smartspace/SmartspaceTarget$Builder;

    .line 161
    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->build()Landroid/app/smartspace/SmartspaceTarget;

    .line 165
    move-result-object p0

    .line 168
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->smartspaceView:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 169
    if-eqz v1, :cond_6

    .line 171
    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V

    .line 173
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 176
    goto :goto_2

    .line 178
    :cond_6
    move-object p0, v2

    .line 179
    :goto_2
    if-nez p0, :cond_8

    .line 180
    :cond_7
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->title:Ljava/lang/CharSequence;

    .line 182
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    .line 184
    iget-object p0, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->smartspaceView:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 186
    if-eqz p0, :cond_8

    .line 188
    invoke-interface {p0, v2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V

    .line 190
    :cond_8
    :goto_3
    return-void
    .line 193
.end method
