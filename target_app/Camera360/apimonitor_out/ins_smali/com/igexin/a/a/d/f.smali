.class final Lcom/igexin/a/a/d/f;
.super Ljava/lang/Object;
.field final a:Ljava/util/concurrent/BlockingQueue;
.field final b:Ljava/util/HashMap;
.field final c:Ljava/util/concurrent/locks/ReentrantLock;
.field  d:Ljava/util/concurrent/ThreadFactory;
.field volatile e:J
.field volatile f:I
.field volatile g:I
.field volatile h:I
.field final synthetic i:Lcom/igexin/a/a/d/e;
.method public constructor <init>(Lcom/igexin/a/a/d/e;)V
.registers 5
iput-object p1, p0, Lcom/igexin/a/a/d/f;->i:Lcom/igexin/a/a/d/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lcom/igexin/a/a/d/f;->c:Ljava/util/concurrent/locks/ReentrantLock;
new-instance v0, Ljava/util/concurrent/SynchronousQueue;
invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V
iput-object v0, p0, Lcom/igexin/a/a/d/f;->a:Ljava/util/concurrent/BlockingQueue;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/igexin/a/a/d/f;->b:Ljava/util/HashMap;
sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
const-wide/16 v1, 0x3c
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
move-result-wide v0
iput-wide v0, p0, Lcom/igexin/a/a/d/f;->e:J
const/4 v0, 0x0
iput v0, p0, Lcom/igexin/a/a/d/f;->f:I
new-instance v0, Lcom/igexin/a/a/d/h;
invoke-direct {v0, p0}, Lcom/igexin/a/a/d/h;-><init>(Lcom/igexin/a/a/d/f;)V
iput-object v0, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/concurrent/ThreadFactory;
const v0, 0x7fffffff
iput v0, p0, Lcom/igexin/a/a/d/f;->h:I
return-void
.end method
.method final a()Lcom/igexin/a/a/d/d;
.registers 5
:goto_0
:try_start_0
:cond_0
iget v0, p0, Lcom/igexin/a/a/d/f;->g:I
iget v1, p0, Lcom/igexin/a/a/d/f;->f:I
if-le v0, v1, :cond_15
iget-object v0, p0, Lcom/igexin/a/a/d/f;->a:Ljava/util/concurrent/BlockingQueue;
iget-wide v1, p0, Lcom/igexin/a/a/d/f;->e:J
sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/a/a/d/d;
:goto_12
if-eqz v0, :cond_1e
:goto_14
return-object v0
:cond_15
iget-object v0, p0, Lcom/igexin/a/a/d/f;->a:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/a/a/d/d;
goto :goto_12
:cond_1e
iget-object v0, p0, Lcom/igexin/a/a/d/f;->a:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z
:try_end_23
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_23} :catch_28
move-result v0
if-eqz v0, :cond_0
const/4 v0, 0x0
goto :goto_14
:catch_28
move-exception v0
goto :goto_0
.end method
.method final a(Lcom/igexin/a/a/d/d;)V
.registers 5
if-nez p1, :cond_8
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_8
iget v0, p1, Lcom/igexin/a/a/d/d;->L:I
if-eqz v0, :cond_2d
iget-object v1, p0, Lcom/igexin/a/a/d/f;->c:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_11
iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Ljava/util/HashMap;
iget v2, p1, Lcom/igexin/a/a/d/d;->L:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/a/a/d/g;
if-eqz v0, :cond_2a
iget-object v0, v0, Lcom/igexin/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
:try_end_26
.catchall {:try_start_11 .. :try_end_26} :catchall_31
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
:goto_29
return-void
:cond_2a
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
:cond_2d
invoke-virtual {p0, p1}, Lcom/igexin/a/a/d/f;->b(Lcom/igexin/a/a/d/d;)V
goto :goto_29
:catchall_31
move-exception v0
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v0
.end method
.method final a(Lcom/igexin/a/a/d/g;)Z
.registers 5
iget-object v1, p0, Lcom/igexin/a/a/d/f;->c:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
iget v0, p0, Lcom/igexin/a/a/d/f;->g:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/igexin/a/a/d/f;->g:I
if-nez v0, :cond_2f
iget-object v0, p0, Lcom/igexin/a/a/d/f;->a:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z
move-result v0
if-nez v0, :cond_2f
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/igexin/a/a/d/f;->f(Lcom/igexin/a/a/d/d;)Ljava/lang/Thread;
move-result-object v0
if-eqz v0, :cond_1f
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
:cond_1f
iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Ljava/util/HashMap;
iget v2, p1, Lcom/igexin/a/a/d/g;->d:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_2a
.catchall {:try_start_5 .. :try_end_2a} :catchall_3c
const/4 v0, 0x0
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
:goto_2e
return v0
:try_start_2f
:cond_2f
iget-object v0, p1, Lcom/igexin/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z
:try_end_34
.catchall {:try_start_2f .. :try_end_34} :catchall_3c
move-result v0
if-nez v0, :cond_1f
const/4 v0, 0x1
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_2e
:catchall_3c
move-exception v0
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v0
.end method
.method final b(Lcom/igexin/a/a/d/d;)V
.registers 4
iget v0, p0, Lcom/igexin/a/a/d/f;->g:I
iget v1, p0, Lcom/igexin/a/a/d/f;->f:I
if-ge v0, v1, :cond_c
invoke-virtual {p0, p1}, Lcom/igexin/a/a/d/f;->c(Lcom/igexin/a/a/d/d;)Z
move-result v0
if-nez v0, :cond_1b
:cond_c
iget-object v0, p0, Lcom/igexin/a/a/d/f;->a:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
iget v0, p0, Lcom/igexin/a/a/d/f;->g:I
if-nez v0, :cond_1b
invoke-virtual {p0, p1}, Lcom/igexin/a/a/d/f;->e(Lcom/igexin/a/a/d/d;)V
:cond_1b
:goto_1b
return-void
:cond_1c
invoke-virtual {p0, p1}, Lcom/igexin/a/a/d/f;->d(Lcom/igexin/a/a/d/d;)Z
move-result v0
if-nez v0, :cond_1b
goto :goto_1b
.end method
.method final c(Lcom/igexin/a/a/d/d;)Z
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/igexin/a/a/d/f;->c:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_6
iget v2, p0, Lcom/igexin/a/a/d/f;->g:I
iget v3, p0, Lcom/igexin/a/a/d/f;->f:I
if-ge v2, v3, :cond_10
invoke-virtual {p0, p1}, Lcom/igexin/a/a/d/f;->f(Lcom/igexin/a/a/d/d;)Ljava/lang/Thread;
:try_end_f
.catchall {:try_start_6 .. :try_end_f} :catchall_17
move-result-object v0
:cond_10
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
if-nez v0, :cond_1c
const/4 v0, 0x0
:goto_16
return v0
:catchall_17
move-exception v0
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v0
:cond_1c
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
const/4 v0, 0x1
goto :goto_16
.end method
.method final d(Lcom/igexin/a/a/d/d;)Z
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/igexin/a/a/d/f;->c:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_6
iget v2, p0, Lcom/igexin/a/a/d/f;->g:I
iget v3, p0, Lcom/igexin/a/a/d/f;->h:I
if-ge v2, v3, :cond_10
invoke-virtual {p0, p1}, Lcom/igexin/a/a/d/f;->f(Lcom/igexin/a/a/d/d;)Ljava/lang/Thread;
:try_end_f
.catchall {:try_start_6 .. :try_end_f} :catchall_17
move-result-object v0
:cond_10
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
if-nez v0, :cond_1c
const/4 v0, 0x0
:goto_16
return v0
:catchall_17
move-exception v0
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v0
:cond_1c
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
const/4 v0, 0x1
goto :goto_16
.end method
.method final e(Lcom/igexin/a/a/d/d;)V
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/igexin/a/a/d/f;->c:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_6
iget v2, p0, Lcom/igexin/a/a/d/f;->g:I
iget v3, p0, Lcom/igexin/a/a/d/f;->f:I
const/4 v4, 0x1
invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
move-result v3
if-ge v2, v3, :cond_1e
iget-object v2, p0, Lcom/igexin/a/a/d/f;->a:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z
move-result v2
if-nez v2, :cond_1e
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/igexin/a/a/d/f;->f(Lcom/igexin/a/a/d/d;)Ljava/lang/Thread;
:try_end_1d
.catchall {:try_start_6 .. :try_end_1d} :catchall_27
move-result-object v0
:cond_1e
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
if-eqz v0, :cond_26
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
:cond_26
return-void
:catchall_27
move-exception v0
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v0
.end method
.method final f(Lcom/igexin/a/a/d/d;)Ljava/lang/Thread;
.registers 5
new-instance v0, Lcom/igexin/a/a/d/g;
invoke-direct {v0, p0, p1}, Lcom/igexin/a/a/d/g;-><init>(Lcom/igexin/a/a/d/f;Lcom/igexin/a/a/d/d;)V
if-eqz p1, :cond_16
iget v1, p1, Lcom/igexin/a/a/d/d;->L:I
if-eqz v1, :cond_16
iget-object v1, p0, Lcom/igexin/a/a/d/f;->b:Ljava/util/HashMap;
iget v2, p1, Lcom/igexin/a/a/d/d;->L:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_16
iget-object v1, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/concurrent/ThreadFactory;
invoke-interface {v1, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
move-result-object v0
if-eqz v0, :cond_24
iget v1, p0, Lcom/igexin/a/a/d/f;->g:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/igexin/a/a/d/f;->g:I
:cond_24
return-object v0
.end method