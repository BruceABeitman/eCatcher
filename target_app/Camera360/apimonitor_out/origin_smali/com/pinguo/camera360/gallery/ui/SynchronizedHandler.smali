.class public Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
.super Landroid/os/Handler;
.source "SynchronizedHandler.java"


# instance fields
.field private final mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-static {p1}, Lcom/pinguo/camera360/gallery/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/GLRoot;

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V

    :try_start_5
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_e
    move-exception v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    invoke-interface {v1}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method
