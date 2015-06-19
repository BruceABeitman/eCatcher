.class public Lcom/pinguo/album/SynchronizedHandler;
.super Landroid/os/Handler;
.source "SynchronizedHandler.java"
.field private final mGLController:Lcom/pinguo/album/views/GLController;
.method public constructor <init>(Lcom/pinguo/album/views/GLController;)V
.registers 3
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
invoke-static {p1}, Lcom/pinguo/album/utils/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/GLController;
iput-object v0, p0, Lcom/pinguo/album/SynchronizedHandler;->mGLController:Lcom/pinguo/album/views/GLController;
return-void
.end method
.method public dispatchMessage(Landroid/os/Message;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/SynchronizedHandler;->mGLController:Lcom/pinguo/album/views/GLController;
invoke-interface {v0}, Lcom/pinguo/album/views/GLController;->lockRenderThread()V
:try_start_5
invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
:try_end_8
.catchall {:try_start_5 .. :try_end_8} :catchall_e
iget-object v0, p0, Lcom/pinguo/album/SynchronizedHandler;->mGLController:Lcom/pinguo/album/views/GLController;
invoke-interface {v0}, Lcom/pinguo/album/views/GLController;->unlockRenderThread()V
return-void
:catchall_e
move-exception v0
iget-object v1, p0, Lcom/pinguo/album/SynchronizedHandler;->mGLController:Lcom/pinguo/album/views/GLController;
invoke-interface {v1}, Lcom/pinguo/album/views/GLController;->unlockRenderThread()V
throw v0
.end method