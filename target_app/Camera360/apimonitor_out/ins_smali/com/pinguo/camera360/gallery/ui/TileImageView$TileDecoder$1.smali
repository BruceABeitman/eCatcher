.class  Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder$1;
.super Ljava/lang/Object;
.source "TileImageView.java"
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;
.field final synthetic this$1:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder$1;->this$1:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder$1;->this$1:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;
#getter for: Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->access$2(Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;)Lcom/pinguo/camera360/gallery/ui/TileImageView;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder$1;->this$1:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;
#getter for: Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->access$2(Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;)Lcom/pinguo/camera360/gallery/ui/TileImageView;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
return-void
:catchall_12
move-exception v0
monitor-exit v1
:try_end_14
.catchall {:try_start_7 .. :try_end_14} :catchall_12
throw v0
.end method