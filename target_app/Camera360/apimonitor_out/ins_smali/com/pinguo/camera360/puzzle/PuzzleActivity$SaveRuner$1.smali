.class  Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner$1;
.super Ljava/lang/Object;
.source "PuzzleActivity.java"
.implements Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
.field final synthetic this$1:Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;
.method constructor <init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner$1;->this$1:Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
.registers 3
return-void
.end method
.method public onThumbNailSaved(Landroid/graphics/Bitmap;)V
.registers 4
sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;
const-string/jumbo v1, "-----  >> 6.2 insert project finish"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner$1;->this$1:Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;
monitor-enter v1
:try_start_b
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner$1;->this$1:Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
return-void
:catchall_12
move-exception v0
monitor-exit v1
:try_end_14
.catchall {:try_start_b .. :try_end_14} :catchall_12
throw v0
.end method