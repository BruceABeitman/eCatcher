.class public Lcom/pinguo/album/opengles/TiledTextureUploader;
.super Ljava/lang/Object;
.source "TiledTextureUploader.java"
.implements Lcom/pinguo/album/views/GLController$OnGLIdleListener;
.field private static final INIT_CAPACITY:I = 0x8
.field private static final UPLOAD_TILE_LIMIT:J = 0x4L
.field private final mGLController:Lcom/pinguo/album/views/GLController;
.field private mIsQueued:Z
.field private final mTextures:Ljava/util/ArrayDeque;
.method public constructor <init>(Lcom/pinguo/album/views/GLController;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayDeque;
const/16 v1, 0x8
invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/album/opengles/TiledTextureUploader;->mTextures:Ljava/util/ArrayDeque;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/opengles/TiledTextureUploader;->mIsQueued:Z
iput-object p1, p0, Lcom/pinguo/album/opengles/TiledTextureUploader;->mGLController:Lcom/pinguo/album/views/GLController;
return-void
.end method
.method public declared-synchronized addTexture(Lcom/pinguo/album/opengles/TiledTexture;)V
.registers 3
monitor-enter p0
:try_start_1
invoke-virtual {p1}, Lcom/pinguo/album/opengles/TiledTexture;->isReady()Z
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_1b
move-result v0
if-eqz v0, :cond_9
:goto_7
:cond_7
monitor-exit p0
return-void
:try_start_9
:cond_9
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledTextureUploader;->mTextures:Ljava/util/ArrayDeque;
invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
iget-boolean v0, p0, Lcom/pinguo/album/opengles/TiledTextureUploader;->mIsQueued:Z
if-nez v0, :cond_7
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/opengles/TiledTextureUploader;->mIsQueued:Z
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledTextureUploader;->mGLController:Lcom/pinguo/album/views/GLController;
invoke-interface {v0, p0}, Lcom/pinguo/album/views/GLController;->addOnGLIdleListener(Lcom/pinguo/album/views/GLController$OnGLIdleListener;)V
:try_end_1a
.catchall {:try_start_9 .. :try_end_1a} :catchall_1b
goto :goto_7
:catchall_1b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized clear()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledTextureUploader;->mTextures:Ljava/util/ArrayDeque;
invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public onGLIdle(Lcom/pinguo/album/opengles/GLESCanvas;Z)Z
.registers 11
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledTextureUploader;->mTextures:Ljava/util/ArrayDeque;
monitor-enter p0
:try_start_3
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v3
const-wide/16 v6, 0x4
add-long v1, v3, v6
:goto_b
cmp-long v6, v3, v1
if-gez v6, :cond_15
invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z
move-result v6
if-eqz v6, :cond_24
:cond_15
iget-object v6, p0, Lcom/pinguo/album/opengles/TiledTextureUploader;->mTextures:Ljava/util/ArrayDeque;
invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z
move-result v6
if-eqz v6, :cond_3d
const/4 v6, 0x0
:goto_1e
iput-boolean v6, p0, Lcom/pinguo/album/opengles/TiledTextureUploader;->mIsQueued:Z
iget-boolean v6, p0, Lcom/pinguo/album/opengles/TiledTextureUploader;->mIsQueued:Z
monitor-exit p0
return v6
:cond_24
invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/album/opengles/TiledTexture;
invoke-virtual {v5, p1}, Lcom/pinguo/album/opengles/TiledTexture;->uploadNextTile(Lcom/pinguo/album/opengles/GLESCanvas;)Z
move-result v6
if-eqz v6, :cond_38
invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
iget-object v6, p0, Lcom/pinguo/album/opengles/TiledTextureUploader;->mGLController:Lcom/pinguo/album/views/GLController;
invoke-interface {v6}, Lcom/pinguo/album/views/GLController;->requestRender()V
:cond_38
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v3
goto :goto_b
:cond_3d
const/4 v6, 0x1
goto :goto_1e
:catchall_3f
move-exception v6
monitor-exit p0
:try_end_41
.catchall {:try_start_3 .. :try_end_41} :catchall_3f
throw v6
.end method