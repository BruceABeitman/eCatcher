.class public Lcom/pinguo/album/opengles/MixTextureUploader;
.super Ljava/lang/Object;
.source "MixTextureUploader.java"
.implements Lcom/pinguo/album/views/GLController$OnGLIdleListener;
.field private static final INIT_CAPACITY:I = 0x8
.field private static final UPLOAD_TILE_LIMIT:J = 0x4L
.field private final mBgTextures:Ljava/util/ArrayDeque;
.field private final mFgTextures:Ljava/util/ArrayDeque;
.field private final mGLController:Lcom/pinguo/album/views/GLController;
.field private mIsQueued:Z
.method public constructor <init>(Lcom/pinguo/album/views/GLController;)V
.registers 4
const/16 v1, 0x8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayDeque;
invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mFgTextures:Ljava/util/ArrayDeque;
new-instance v0, Ljava/util/ArrayDeque;
invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mBgTextures:Ljava/util/ArrayDeque;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mIsQueued:Z
iput-object p1, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mGLController:Lcom/pinguo/album/views/GLController;
return-void
.end method
.method private queueSelfIfNeed()V
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mIsQueued:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mIsQueued:Z
iget-object v0, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mGLController:Lcom/pinguo/album/views/GLController;
invoke-interface {v0, p0}, Lcom/pinguo/album/views/GLController;->addOnGLIdleListener(Lcom/pinguo/album/views/GLController$OnGLIdleListener;)V
goto :goto_4
.end method
.method private upload(Lcom/pinguo/album/opengles/GLESCanvas;Ljava/util/ArrayDeque;J)J
.registers 20
const-wide/16 v1, 0x0
monitor-enter p0
:try_start_3
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v6
add-long v3, v6, p3
:goto_9
cmp-long v11, v6, v3
if-gez v11, :cond_13
invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayDeque;->isEmpty()Z
move-result v11
if-eqz v11, :cond_1f
:cond_13
sub-long v11, v3, v6
const-wide/16 v13, 0x0
cmp-long v11, v11, v13
if-lez v11, :cond_57
sub-long v1, v3, v6
:goto_1d
monitor-exit p0
return-wide v1
:cond_1f
invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/album/opengles/Texture;
const/4 v5, 0x0
instance-of v11, v8, Lcom/pinguo/album/opengles/TiledTexture;
if-eqz v11, :cond_3e
move-object v0, v8
check-cast v0, Lcom/pinguo/album/opengles/TiledTexture;
move-object v9, v0
move-object/from16 v0, p1
invoke-virtual {v9, v0}, Lcom/pinguo/album/opengles/TiledTexture;->uploadNextTile(Lcom/pinguo/album/opengles/GLESCanvas;)Z
move-result v5
:goto_34
:cond_34
if-eqz v5, :cond_39
invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
:cond_39
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v6
goto :goto_9
:cond_3e
instance-of v11, v8, Lcom/pinguo/album/opengles/UploadedTexture;
if-eqz v11, :cond_34
move-object v0, v8
check-cast v0, Lcom/pinguo/album/opengles/UploadedTexture;
move-object v10, v0
const/4 v11, 0x0
invoke-virtual {v10, v11}, Lcom/pinguo/album/opengles/UploadedTexture;->setIsUploading(Z)V
invoke-virtual {v10}, Lcom/pinguo/album/opengles/UploadedTexture;->isContentValid()Z
move-result v11
if-nez v11, :cond_55
move-object/from16 v0, p1
invoke-virtual {v10, v0}, Lcom/pinguo/album/opengles/UploadedTexture;->updateContent(Lcom/pinguo/album/opengles/GLESCanvas;)V
:cond_55
const/4 v5, 0x1
goto :goto_34
:cond_57
const-wide/16 v1, 0x0
goto :goto_1d
:catchall_5a
move-exception v11
monitor-exit p0
:try_end_5c
.catchall {:try_start_3 .. :try_end_5c} :catchall_5a
throw v11
.end method
.method public declared-synchronized addBgTexture(Lcom/pinguo/album/opengles/TiledTexture;)V
.registers 3
monitor-enter p0
:try_start_1
invoke-virtual {p1}, Lcom/pinguo/album/opengles/TiledTexture;->isReady()Z
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_12
move-result v0
if-eqz v0, :cond_9
:goto_7
monitor-exit p0
return-void
:try_start_9
:cond_9
iget-object v0, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mBgTextures:Ljava/util/ArrayDeque;
invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/pinguo/album/opengles/MixTextureUploader;->queueSelfIfNeed()V
:try_end_11
.catchall {:try_start_9 .. :try_end_11} :catchall_12
goto :goto_7
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized addBgTexture(Lcom/pinguo/album/opengles/UploadedTexture;)V
.registers 3
monitor-enter p0
:try_start_1
invoke-virtual {p1}, Lcom/pinguo/album/opengles/UploadedTexture;->isContentValid()Z
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_13
move-result v0
if-eqz v0, :cond_9
:goto_7
monitor-exit p0
return-void
:cond_9
const/4 v0, 0x1
:try_start_a
invoke-virtual {p1, v0}, Lcom/pinguo/album/opengles/UploadedTexture;->setIsUploading(Z)V
iget-object v0, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mBgTextures:Ljava/util/ArrayDeque;
invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
:try_end_12
.catchall {:try_start_a .. :try_end_12} :catchall_13
goto :goto_7
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized addFgTexture(Lcom/pinguo/album/opengles/TiledTexture;)V
.registers 3
monitor-enter p0
:try_start_1
invoke-virtual {p1}, Lcom/pinguo/album/opengles/TiledTexture;->isReady()Z
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_12
move-result v0
if-eqz v0, :cond_9
:goto_7
monitor-exit p0
return-void
:try_start_9
:cond_9
iget-object v0, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mFgTextures:Ljava/util/ArrayDeque;
invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/pinguo/album/opengles/MixTextureUploader;->queueSelfIfNeed()V
:try_end_11
.catchall {:try_start_9 .. :try_end_11} :catchall_12
goto :goto_7
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized addFgTexture(Lcom/pinguo/album/opengles/UploadedTexture;)V
.registers 3
monitor-enter p0
:try_start_1
invoke-virtual {p1}, Lcom/pinguo/album/opengles/UploadedTexture;->isContentValid()Z
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_16
move-result v0
if-eqz v0, :cond_9
:goto_7
monitor-exit p0
return-void
:cond_9
const/4 v0, 0x1
:try_start_a
invoke-virtual {p1, v0}, Lcom/pinguo/album/opengles/UploadedTexture;->setIsUploading(Z)V
iget-object v0, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mFgTextures:Ljava/util/ArrayDeque;
invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/pinguo/album/opengles/MixTextureUploader;->queueSelfIfNeed()V
:try_end_15
.catchall {:try_start_a .. :try_end_15} :catchall_16
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
:cond_1
iget-object v1, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mFgTextures:Ljava/util/ArrayDeque;
invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z
move-result v1
if-eqz v1, :cond_13
:goto_9
:cond_9
iget-object v1, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mBgTextures:Ljava/util/ArrayDeque;
invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_26
move-result v1
if-eqz v1, :cond_29
monitor-exit p0
return-void
:cond_13
:try_start_13
iget-object v1, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mFgTextures:Ljava/util/ArrayDeque;
invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/opengles/Texture;
instance-of v1, v0, Lcom/pinguo/album/opengles/UploadedTexture;
if-eqz v1, :cond_1
check-cast v0, Lcom/pinguo/album/opengles/UploadedTexture;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/album/opengles/UploadedTexture;->setIsUploading(Z)V
:try_end_25
.catchall {:try_start_13 .. :try_end_25} :catchall_26
goto :goto_1
:catchall_26
move-exception v1
monitor-exit p0
throw v1
:try_start_29
:cond_29
iget-object v1, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mBgTextures:Ljava/util/ArrayDeque;
invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/opengles/Texture;
instance-of v1, v0, Lcom/pinguo/album/opengles/UploadedTexture;
if-eqz v1, :cond_9
check-cast v0, Lcom/pinguo/album/opengles/UploadedTexture;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/album/opengles/UploadedTexture;->setIsUploading(Z)V
:try_end_3b
.catchall {:try_start_29 .. :try_end_3b} :catchall_26
goto :goto_9
.end method
.method public onGLIdle(Lcom/pinguo/album/opengles/GLESCanvas;Z)Z
.registers 10
const/4 v4, 0x1
const/4 v3, 0x0
if-eqz p1, :cond_42
invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->getGLId()Lcom/pinguo/album/opengles/GLId;
move-result-object v5
if-eqz v5, :cond_42
move v0, v4
:goto_b
if-eqz v0, :cond_44
const-wide/16 v1, 0x4
iget-object v5, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mFgTextures:Ljava/util/ArrayDeque;
invoke-direct {p0, p1, v5, v1, v2}, Lcom/pinguo/album/opengles/MixTextureUploader;->upload(Lcom/pinguo/album/opengles/GLESCanvas;Ljava/util/ArrayDeque;J)J
move-result-wide v1
const-wide/16 v5, 0x4
cmp-long v5, v1, v5
if-gez v5, :cond_20
iget-object v5, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mGLController:Lcom/pinguo/album/views/GLController;
invoke-interface {v5}, Lcom/pinguo/album/views/GLController;->requestRender()V
:cond_20
const-wide/16 v5, 0x0
cmp-long v5, v1, v5
if-lez v5, :cond_2b
iget-object v5, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mBgTextures:Ljava/util/ArrayDeque;
invoke-direct {p0, p1, v5, v1, v2}, Lcom/pinguo/album/opengles/MixTextureUploader;->upload(Lcom/pinguo/album/opengles/GLESCanvas;Ljava/util/ArrayDeque;J)J
:goto_2b
:cond_2b
monitor-enter p0
:try_start_2c
iget-object v5, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mFgTextures:Ljava/util/ArrayDeque;
invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z
move-result v5
if-eqz v5, :cond_48
iget-object v5, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mBgTextures:Ljava/util/ArrayDeque;
invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z
move-result v5
if-eqz v5, :cond_48
:goto_3c
iput-boolean v3, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mIsQueued:Z
iget-boolean v3, p0, Lcom/pinguo/album/opengles/MixTextureUploader;->mIsQueued:Z
monitor-exit p0
:try_end_41
.catchall {:try_start_2c .. :try_end_41} :catchall_4a
return v3
:cond_42
move v0, v3
goto :goto_b
:cond_44
invoke-virtual {p0}, Lcom/pinguo/album/opengles/MixTextureUploader;->clear()V
goto :goto_2b
:cond_48
move v3, v4
goto :goto_3c
:catchall_4a
move-exception v3
:try_start_4b
monitor-exit p0
:try_end_4c
.catchall {:try_start_4b .. :try_end_4c} :catchall_4a
throw v3
.end method