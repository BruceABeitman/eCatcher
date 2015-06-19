.class final Lcom/instagram/creation/video/gl/u;
.super Ljava/lang/Object;
.source "GLRootView.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/creation/video/gl/GLRootView;
.field private b:Z
.method private constructor <init>(Lcom/instagram/creation/video/gl/GLRootView;)V
.registers 3
iput-object p1, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/creation/video/gl/u;->b:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/creation/video/gl/GLRootView;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/creation/video/gl/u;-><init>(Lcom/instagram/creation/video/gl/GLRootView;)V
return-void
.end method
.method public final a()V
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/video/gl/u;->b:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/creation/video/gl/u;->b:Z
iget-object v0, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-virtual {v0, p0}, Lcom/instagram/creation/video/gl/GLRootView;->queueEvent(Ljava/lang/Runnable;)V
goto :goto_4
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-static {v0}, Lcom/instagram/creation/video/gl/GLRootView;->b(Lcom/instagram/creation/video/gl/GLRootView;)Ljava/util/ArrayDeque;
move-result-object v1
monitor-enter v1
const/4 v0, 0x0
:try_start_8
iput-boolean v0, p0, Lcom/instagram/creation/video/gl/u;->b:Z
iget-object v0, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-static {v0}, Lcom/instagram/creation/video/gl/GLRootView;->b(Lcom/instagram/creation/video/gl/GLRootView;)Ljava/util/ArrayDeque;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z
move-result v0
if-eqz v0, :cond_18
monitor-exit v1
:goto_17
return-void
:cond_18
iget-object v0, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-static {v0}, Lcom/instagram/creation/video/gl/GLRootView;->b(Lcom/instagram/creation/video/gl/GLRootView;)Ljava/util/ArrayDeque;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/video/gl/r;
monitor-exit v1
:try_end_25
.catchall {:try_start_8 .. :try_end_25} :catchall_73
iget-object v1, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-static {v1}, Lcom/instagram/creation/video/gl/GLRootView;->c(Lcom/instagram/creation/video/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_2e
iget-object v1, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-static {v1}, Lcom/instagram/creation/video/gl/GLRootView;->d(Lcom/instagram/creation/video/gl/GLRootView;)Lcom/instagram/creation/video/gl/c;
iget-object v1, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-static {v1}, Lcom/instagram/creation/video/gl/GLRootView;->e(Lcom/instagram/creation/video/gl/GLRootView;)Z
invoke-interface {v0}, Lcom/instagram/creation/video/gl/r;->a()Z
:try_end_3b
.catchall {:try_start_2e .. :try_end_3b} :catchall_76
move-result v1
iget-object v2, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-static {v2}, Lcom/instagram/creation/video/gl/GLRootView;->c(Lcom/instagram/creation/video/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v2
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
iget-object v2, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-static {v2}, Lcom/instagram/creation/video/gl/GLRootView;->b(Lcom/instagram/creation/video/gl/GLRootView;)Ljava/util/ArrayDeque;
move-result-object v2
monitor-enter v2
if-eqz v1, :cond_57
:try_start_4e
iget-object v1, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-static {v1}, Lcom/instagram/creation/video/gl/GLRootView;->b(Lcom/instagram/creation/video/gl/GLRootView;)Ljava/util/ArrayDeque;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
:cond_57
iget-object v0, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-static {v0}, Lcom/instagram/creation/video/gl/GLRootView;->e(Lcom/instagram/creation/video/gl/GLRootView;)Z
move-result v0
if-nez v0, :cond_6e
iget-object v0, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-static {v0}, Lcom/instagram/creation/video/gl/GLRootView;->b(Lcom/instagram/creation/video/gl/GLRootView;)Ljava/util/ArrayDeque;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z
move-result v0
if-nez v0, :cond_6e
invoke-virtual {p0}, Lcom/instagram/creation/video/gl/u;->a()V
:cond_6e
monitor-exit v2
:try_end_6f
.catchall {:try_start_4e .. :try_end_6f} :catchall_70
goto :goto_17
:catchall_70
move-exception v0
monitor-exit v2
throw v0
:catchall_73
move-exception v0
monitor-exit v1
throw v0
:catchall_76
move-exception v0
iget-object v1, p0, Lcom/instagram/creation/video/gl/u;->a:Lcom/instagram/creation/video/gl/GLRootView;
invoke-static {v1}, Lcom/instagram/creation/video/gl/GLRootView;->c(Lcom/instagram/creation/video/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v0
.end method