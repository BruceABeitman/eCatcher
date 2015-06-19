.class  Lcom/pinguo/album/views/GLRenderView$IdleRunner;
.super Ljava/lang/Object;
.source "GLRenderView.java"
.implements Ljava/lang/Runnable;
.field private mActive:Z
.field final synthetic this$0:Lcom/pinguo/album/views/GLRenderView;
.method private constructor <init>(Lcom/pinguo/album/views/GLRenderView;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->mActive:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/views/GLRenderView;Lcom/pinguo/album/views/GLRenderView$IdleRunner;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/views/GLRenderView$IdleRunner;-><init>(Lcom/pinguo/album/views/GLRenderView;)V
return-void
.end method
.method public enable()V
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->mActive:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->mActive:Z
iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
invoke-virtual {v0, p0}, Lcom/pinguo/album/views/GLRenderView;->queueEvent(Ljava/lang/Runnable;)V
goto :goto_4
.end method
.method public run()V
.registers 5
iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
#getter for: Lcom/pinguo/album/views/GLRenderView;->mIdleListeners:Ljava/util/ArrayDeque;
invoke-static {v2}, Lcom/pinguo/album/views/GLRenderView;->access$1(Lcom/pinguo/album/views/GLRenderView;)Ljava/util/ArrayDeque;
move-result-object v3
monitor-enter v3
const/4 v2, 0x0
:try_start_8
iput-boolean v2, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->mActive:Z
iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
#getter for: Lcom/pinguo/album/views/GLRenderView;->mIdleListeners:Ljava/util/ArrayDeque;
invoke-static {v2}, Lcom/pinguo/album/views/GLRenderView;->access$1(Lcom/pinguo/album/views/GLRenderView;)Ljava/util/ArrayDeque;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z
move-result v2
if-eqz v2, :cond_18
monitor-exit v3
:goto_17
return-void
:cond_18
iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
#getter for: Lcom/pinguo/album/views/GLRenderView;->mIdleListeners:Ljava/util/ArrayDeque;
invoke-static {v2}, Lcom/pinguo/album/views/GLRenderView;->access$1(Lcom/pinguo/album/views/GLRenderView;)Ljava/util/ArrayDeque;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/GLController$OnGLIdleListener;
monitor-exit v3
:try_end_25
.catchall {:try_start_8 .. :try_end_25} :catchall_75
iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
#getter for: Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-static {v2}, Lcom/pinguo/album/views/GLRenderView;->access$2(Lcom/pinguo/album/views/GLRenderView;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v2
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_2e
iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
#getter for: Lcom/pinguo/album/views/GLRenderView;->mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;
invoke-static {v2}, Lcom/pinguo/album/views/GLRenderView;->access$3(Lcom/pinguo/album/views/GLRenderView;)Lcom/pinguo/album/opengles/GLESCanvas;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
#getter for: Lcom/pinguo/album/views/GLRenderView;->mRenderRequested:Z
invoke-static {v3}, Lcom/pinguo/album/views/GLRenderView;->access$4(Lcom/pinguo/album/views/GLRenderView;)Z
move-result v3
invoke-interface {v1, v2, v3}, Lcom/pinguo/album/views/GLController$OnGLIdleListener;->onGLIdle(Lcom/pinguo/album/opengles/GLESCanvas;Z)Z
:try_end_3d
.catchall {:try_start_2e .. :try_end_3d} :catchall_78
move-result v0
iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
#getter for: Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-static {v2}, Lcom/pinguo/album/views/GLRenderView;->access$2(Lcom/pinguo/album/views/GLRenderView;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v2
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
#getter for: Lcom/pinguo/album/views/GLRenderView;->mIdleListeners:Ljava/util/ArrayDeque;
invoke-static {v2}, Lcom/pinguo/album/views/GLRenderView;->access$1(Lcom/pinguo/album/views/GLRenderView;)Ljava/util/ArrayDeque;
move-result-object v3
monitor-enter v3
if-eqz v0, :cond_59
:try_start_50
iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
#getter for: Lcom/pinguo/album/views/GLRenderView;->mIdleListeners:Ljava/util/ArrayDeque;
invoke-static {v2}, Lcom/pinguo/album/views/GLRenderView;->access$1(Lcom/pinguo/album/views/GLRenderView;)Ljava/util/ArrayDeque;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
:cond_59
iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
#getter for: Lcom/pinguo/album/views/GLRenderView;->mRenderRequested:Z
invoke-static {v2}, Lcom/pinguo/album/views/GLRenderView;->access$4(Lcom/pinguo/album/views/GLRenderView;)Z
move-result v2
if-nez v2, :cond_70
iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
#getter for: Lcom/pinguo/album/views/GLRenderView;->mIdleListeners:Ljava/util/ArrayDeque;
invoke-static {v2}, Lcom/pinguo/album/views/GLRenderView;->access$1(Lcom/pinguo/album/views/GLRenderView;)Ljava/util/ArrayDeque;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z
move-result v2
if-nez v2, :cond_70
invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->enable()V
:cond_70
monitor-exit v3
goto :goto_17
:catchall_72
move-exception v2
monitor-exit v3
:try_end_74
.catchall {:try_start_50 .. :try_end_74} :catchall_72
throw v2
:catchall_75
move-exception v2
:try_start_76
monitor-exit v3
:try_end_77
.catchall {:try_start_76 .. :try_end_77} :catchall_75
throw v2
:catchall_78
move-exception v2
iget-object v3, p0, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->this$0:Lcom/pinguo/album/views/GLRenderView;
#getter for: Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-static {v3}, Lcom/pinguo/album/views/GLRenderView;->access$2(Lcom/pinguo/album/views/GLRenderView;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v3
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v2
.end method