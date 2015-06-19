.class public Lcom/pinguo/camera360/gallery/ui/TextureUploader;
.super Ljava/lang/Object;
.source "TextureUploader.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/ui/GLRoot$OnGLIdleListener;


# static fields
.field private static final INIT_CAPACITY:I = 0x40

.field private static final QUOTA_PER_FRAME:I = 0x1


# instance fields
.field private final mBgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/camera360/gallery/surpport/ArrayDeque",
            "<",
            "Lcom/pinguo/camera360/gallery/ui/UploadedTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mFgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/camera360/gallery/surpport/ArrayDeque",
            "<",
            "Lcom/pinguo/camera360/gallery/ui/UploadedTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mGLRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

.field private transient mIsQueued:Z


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
    .registers 4

    const/16 v1, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mFgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    new-instance v0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mBgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mIsQueued:Z

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mGLRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    return-void
.end method

.method private queueSelfIfNeed()V
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mIsQueued:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mIsQueued:Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mGLRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    invoke-interface {v0, p0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->addOnGLIdleListener(Lcom/pinguo/camera360/gallery/ui/GLRoot$OnGLIdleListener;)V

    goto :goto_4
.end method

.method private upload(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;IZ)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/gallery/ui/GLCanvas;",
            "Lcom/pinguo/camera360/gallery/surpport/ArrayDeque",
            "<",
            "Lcom/pinguo/camera360/gallery/ui/UploadedTexture;",
            ">;IZ)I"
        }
    .end annotation

    const/4 v2, 0x0

    :goto_1
    if-gtz p3, :cond_4

    :goto_3
    return p3

    :cond_4
    monitor-enter p0

    :try_start_5
    invoke-virtual {p2}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    monitor-exit p0

    goto :goto_3

    :catchall_d
    move-exception v1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1

    :cond_10
    :try_start_10
    invoke-virtual {p2}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->setIsUploading(Z)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->isContentValid()Z

    move-result v1

    if-eqz v1, :cond_22

    monitor-exit p0

    goto :goto_1

    :cond_22
    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->updateContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_d

    if-eqz p4, :cond_2b

    invoke-virtual {v0, p1, v2, v2}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    :cond_2b
    add-int/lit8 p3, p3, -0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addBgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->isContentValid()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_16

    move-result v0

    if-eqz v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mBgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->setIsUploading(Z)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->queueSelfIfNeed()V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_7

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->isContentValid()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_16

    move-result v0

    if-eqz v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mFgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->setIsUploading(Z)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->queueSelfIfNeed()V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_7

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 3

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mFgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_9
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mBgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_20

    move-result v0

    if-eqz v0, :cond_23

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mFgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->setIsUploading(Z)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_20

    goto :goto_1

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mBgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->setIsUploading(Z)V
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_20

    goto :goto_9
.end method

.method public onGLIdle(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Z)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mFgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->upload(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;IZ)I

    move-result v0

    if-ge v0, v2, :cond_10

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mGLRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    invoke-interface {v3}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->requestRender()V

    :cond_10
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mBgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->upload(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;IZ)I

    monitor-enter p0

    :try_start_16
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mFgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mBgTextures:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    :goto_26
    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mIsQueued:Z

    iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->mIsQueued:Z

    monitor-exit p0

    return v1

    :cond_2c
    move v1, v2

    goto :goto_26

    :catchall_2e
    move-exception v1

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_2e

    throw v1
.end method
