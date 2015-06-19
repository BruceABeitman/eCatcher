.class Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileUploader"
.end annotation


# instance fields
.field mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/ui/TileImageView;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/TileImageView;Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;-><init>(Lcom/pinguo/camera360/gallery/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Z)Z
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    :cond_4
    :goto_4
    return v4

    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_6
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;

    monitor-enter v5

    :try_start_9
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/TileImageView;->mUploadQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->access$0(Lcom/pinguo/camera360/gallery/ui/TileImageView;)Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->pop()Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;

    move-result-object v1

    monitor-exit v5
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_24

    if-eqz v1, :cond_18

    if-gtz v0, :cond_27

    :cond_18
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_3f

    move v2, v3

    :goto_1d
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v1, :cond_4

    move v4, v3

    goto :goto_4

    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v5
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    :cond_27
    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->isContentValid()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, v1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_3d

    move v2, v3

    :goto_34
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->updateContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_3d
    move v2, v4

    goto :goto_34

    :cond_3f
    move v2, v4

    goto :goto_1d
.end method
