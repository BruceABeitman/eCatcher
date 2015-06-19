.class  Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;
.super Ljava/lang/Object;
.source "TileImageView.java"
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.field private mNotifier:Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
.method private constructor <init>(Lcom/pinguo/camera360/gallery/ui/TileImageView;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder$1;-><init>(Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->mNotifier:Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/TileImageView;Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;-><init>(Lcom/pinguo/camera360/gallery/ui/TileImageView;)V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;)Lcom/pinguo/camera360/gallery/ui/TileImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
return-object v0
.end method
.method public bridge synthetic run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method public run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
.registers 5
const/4 v1, 0x0
invoke-interface {p1, v1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->setMode(I)Z
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->mNotifier:Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;
invoke-interface {p1, v1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;)V
:goto_9
:cond_9
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
move-result v1
if-eqz v1, :cond_11
const/4 v1, 0x0
return-object v1
:cond_11
const/4 v0, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
monitor-enter v2
:try_start_15
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
#getter for: Lcom/pinguo/camera360/gallery/ui/TileImageView;->mDecodeQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->access$5(Lcom/pinguo/camera360/gallery/ui/TileImageView;)Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->pop()Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
move-result-object v0
if-nez v0, :cond_2c
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
move-result v1
if-nez v1, :cond_2c
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V
:cond_2c
monitor-exit v2
:try_end_2d
.catchall {:try_start_15 .. :try_end_2d} :catchall_3d
if-eqz v0, :cond_9
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->decodeTile(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)Z
move-result v1
if-eqz v1, :cond_9
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->queueForUpload(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)V
goto :goto_9
:catchall_3d
move-exception v1
:try_start_3e
monitor-exit v2
:try_end_3f
.catchall {:try_start_3e .. :try_end_3f} :catchall_3d
throw v1
.end method