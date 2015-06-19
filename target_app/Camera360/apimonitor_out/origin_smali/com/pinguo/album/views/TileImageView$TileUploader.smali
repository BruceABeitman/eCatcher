.class Lcom/pinguo/album/views/TileImageView$TileUploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/pinguo/album/views/GLController$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileUploader"
.end annotation


# instance fields
.field mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/pinguo/album/views/TileImageView;


# direct methods
.method private constructor <init>(Lcom/pinguo/album/views/TileImageView;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/album/views/TileImageView$TileUploader;->this$0:Lcom/pinguo/album/views/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pinguo/album/views/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/views/TileImageView;Lcom/pinguo/album/views/TileImageView$TileUploader;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/TileImageView$TileUploader;-><init>(Lcom/pinguo/album/views/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/pinguo/album/opengles/GLESCanvas;Z)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_5

    :cond_4
    :goto_4
    return v4

    :cond_5
    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_7
    :goto_7
    if-gtz v1, :cond_14

    :cond_9
    if-nez v2, :cond_10

    iget-object v3, p0, Lcom/pinguo/album/views/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_10
    if-nez v2, :cond_4

    move v4, v5

    goto :goto_4

    :cond_14
    iget-object v6, p0, Lcom/pinguo/album/views/TileImageView$TileUploader;->this$0:Lcom/pinguo/album/views/TileImageView;

    monitor-enter v6

    :try_start_17
    iget-object v3, p0, Lcom/pinguo/album/views/TileImageView$TileUploader;->this$0:Lcom/pinguo/album/views/TileImageView;

    #getter for: Lcom/pinguo/album/views/TileImageView;->mUploadQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
    invoke-static {v3}, Lcom/pinguo/album/views/TileImageView;->access$0(Lcom/pinguo/album/views/TileImageView;)Lcom/pinguo/album/views/TileImageView$TileQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/album/views/TileImageView$TileQueue;->pop()Lcom/pinguo/album/views/TileImageView$Tile;

    move-result-object v2

    monitor-exit v6
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_43

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/pinguo/album/views/TileImageView$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/pinguo/album/views/TileImageView$Tile;->isLoaded()Z

    move-result v0

    iget v3, v2, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_46

    move v3, v4

    :goto_35
    invoke-static {v3}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V

    invoke-virtual {v2, p1}, Lcom/pinguo/album/views/TileImageView$Tile;->updateContent(Lcom/pinguo/album/opengles/GLESCanvas;)V

    if-nez v0, :cond_40

    invoke-virtual {v2, p1, v5, v5}, Lcom/pinguo/album/views/TileImageView$Tile;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V

    :cond_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :catchall_43
    move-exception v3

    :try_start_44
    monitor-exit v6
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v3

    :cond_46
    move v3, v5

    goto :goto_35
.end method
