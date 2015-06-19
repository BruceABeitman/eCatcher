.class Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner$1;
.super Ljava/lang/Object;
.source "PuzzleSpliceActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->maxRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner$1;->this$1:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
    .registers 3

    return-void
.end method

.method public onThumbNailSaved(Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-----  >> 8.2 insert project finish"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner$1;->this$1:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner$1;->this$1:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method
