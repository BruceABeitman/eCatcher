.class Lcom/pinguo/album/views/TileImageView$TileDecoder$1;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/pinguo/album/AlbumThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/TileImageView$TileDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/album/views/TileImageView$TileDecoder;


# direct methods
.method constructor <init>(Lcom/pinguo/album/views/TileImageView$TileDecoder;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/views/TileImageView$TileDecoder$1;->this$1:Lcom/pinguo/album/views/TileImageView$TileDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/TileImageView$TileDecoder$1;->this$1:Lcom/pinguo/album/views/TileImageView$TileDecoder;

    #getter for: Lcom/pinguo/album/views/TileImageView$TileDecoder;->this$0:Lcom/pinguo/album/views/TileImageView;
    invoke-static {v0}, Lcom/pinguo/album/views/TileImageView$TileDecoder;->access$2(Lcom/pinguo/album/views/TileImageView$TileDecoder;)Lcom/pinguo/album/views/TileImageView;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/pinguo/album/views/TileImageView$TileDecoder$1;->this$1:Lcom/pinguo/album/views/TileImageView$TileDecoder;

    #getter for: Lcom/pinguo/album/views/TileImageView$TileDecoder;->this$0:Lcom/pinguo/album/views/TileImageView;
    invoke-static {v0}, Lcom/pinguo/album/views/TileImageView$TileDecoder;->access$2(Lcom/pinguo/album/views/TileImageView$TileDecoder;)Lcom/pinguo/album/views/TileImageView;

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
