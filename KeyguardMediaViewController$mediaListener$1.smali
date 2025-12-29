.class public final Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;
.super Ljava/lang/Object;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"

# interfaces
.implements Lcom/android/systemui/media/NotificationMediaManager$MediaListener;


# instance fields
.field public synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;


# virtual methods
.method public final onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    .line 2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 4
    new-instance v1, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;

    .line 6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p0, v1, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    .line 11
    iput-object p1, v1, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;->$metadata:Landroid/media/MediaMetadata;

    .line 13
    iput p2, v1, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;->$state:I

    .line 15
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 17
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 22
    return-void
    .line 25
.end method
