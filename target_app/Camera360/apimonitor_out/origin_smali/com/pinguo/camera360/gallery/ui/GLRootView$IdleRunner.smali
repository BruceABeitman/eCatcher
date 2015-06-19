.class Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunner"
.end annotation


# instance fields
.field private mActive:Z

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/ui/GLRootView;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/GLRootView;Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRootView;)V

    return-void
.end method


# virtual methods
.method public enable()V
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->mActive:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->mActive:Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public run()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleListeners:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->access$0(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->mActive:Z

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleListeners:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->access$0(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    monitor-exit v2

    :goto_17
    return-void

    :cond_18
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleListeners:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->access$0(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/GLRoot$OnGLIdleListener;

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_4a

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->access$1(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_2e
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCanvas:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->access$2(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Lcom/pinguo/camera360/gallery/ui/GLCanvas;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderRequested:Z
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->access$3(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLRoot$OnGLIdleListener;->onGLIdle(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Z)Z
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_4d

    move-result v1

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->access$1(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_17

    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1

    :catchall_4d
    move-exception v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->access$1(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_58
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->access$1(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleListeners:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->access$0(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    move-result-object v2

    monitor-enter v2

    :try_start_68
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleListeners:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->access$0(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderRequested:Z
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->access$3(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Z

    move-result v1

    if-nez v1, :cond_7c

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->enable()V

    :cond_7c
    monitor-exit v2

    goto :goto_17

    :catchall_7e
    move-exception v1

    monitor-exit v2
    :try_end_80
    .catchall {:try_start_68 .. :try_end_80} :catchall_7e

    throw v1
.end method
