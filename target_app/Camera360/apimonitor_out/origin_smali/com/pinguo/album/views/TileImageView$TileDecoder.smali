.class Lcom/pinguo/album/views/TileImageView$TileDecoder;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/pinguo/album/AlbumThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pinguo/album/AlbumThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mNotifier:Lcom/pinguo/album/AlbumThreadPool$CancelListener;

.field final synthetic this$0:Lcom/pinguo/album/views/TileImageView;


# direct methods
.method private constructor <init>(Lcom/pinguo/album/views/TileImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/views/TileImageView$TileDecoder;->this$0:Lcom/pinguo/album/views/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pinguo/album/views/TileImageView$TileDecoder$1;

    invoke-direct {v0, p0}, Lcom/pinguo/album/views/TileImageView$TileDecoder$1;-><init>(Lcom/pinguo/album/views/TileImageView$TileDecoder;)V

    iput-object v0, p0, Lcom/pinguo/album/views/TileImageView$TileDecoder;->mNotifier:Lcom/pinguo/album/AlbumThreadPool$CancelListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/views/TileImageView;Lcom/pinguo/album/views/TileImageView$TileDecoder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/TileImageView$TileDecoder;-><init>(Lcom/pinguo/album/views/TileImageView;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/album/views/TileImageView$TileDecoder;)Lcom/pinguo/album/views/TileImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/TileImageView$TileDecoder;->this$0:Lcom/pinguo/album/views/TileImageView;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/album/views/TileImageView$TileDecoder;->run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Void;
    .registers 5

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->setMode(I)Z

    iget-object v1, p0, Lcom/pinguo/album/views/TileImageView$TileDecoder;->mNotifier:Lcom/pinguo/album/AlbumThreadPool$CancelListener;

    invoke-interface {p1, v1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->setCancelListener(Lcom/pinguo/album/AlbumThreadPool$CancelListener;)V

    :cond_9
    :goto_9
    invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    return-object v1

    :cond_11
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/pinguo/album/views/TileImageView$TileDecoder;->this$0:Lcom/pinguo/album/views/TileImageView;

    monitor-enter v2

    :try_start_15
    iget-object v1, p0, Lcom/pinguo/album/views/TileImageView$TileDecoder;->this$0:Lcom/pinguo/album/views/TileImageView;

    #getter for: Lcom/pinguo/album/views/TileImageView;->mDecodeQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
    invoke-static {v1}, Lcom/pinguo/album/views/TileImageView;->access$5(Lcom/pinguo/album/views/TileImageView;)Lcom/pinguo/album/views/TileImageView$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/album/views/TileImageView$TileQueue;->pop()Lcom/pinguo/album/views/TileImageView$Tile;

    move-result-object v0

    if-nez v0, :cond_2c

    invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/pinguo/album/views/TileImageView$TileDecoder;->this$0:Lcom/pinguo/album/views/TileImageView;

    invoke-static {v1}, Lcom/pinguo/album/utils/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    :cond_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_3d

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/pinguo/album/views/TileImageView$TileDecoder;->this$0:Lcom/pinguo/album/views/TileImageView;

    invoke-virtual {v1, v0}, Lcom/pinguo/album/views/TileImageView;->decodeTile(Lcom/pinguo/album/views/TileImageView$Tile;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pinguo/album/views/TileImageView$TileDecoder;->this$0:Lcom/pinguo/album/views/TileImageView;

    invoke-virtual {v1, v0}, Lcom/pinguo/album/views/TileImageView;->queueForUpload(Lcom/pinguo/album/views/TileImageView$Tile;)V

    goto :goto_9

    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method
