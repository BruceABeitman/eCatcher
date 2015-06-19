.class Lcom/fsck/k9/activity/MessageView$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mFile:Ljava/io/File;

.field final synthetic this$0:Lcom/fsck/k9/activity/MessageView;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/MessageView;Landroid/content/Context;Ljava/io/File;)V
    .registers 5

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$MediaScannerNotifier;->this$0:Lcom/fsck/k9/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/fsck/k9/activity/MessageView$MediaScannerNotifier;->mFile:Ljava/io/File;

    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p2, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageView$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MediaScannerNotifier;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6

    if-eqz p2, :cond_11

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MediaScannerNotifier;->this$0:Lcom/fsck/k9/activity/MessageView;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/MessageView;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_17

    :cond_11
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void

    :catchall_17
    move-exception v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V

    throw v1
.end method
