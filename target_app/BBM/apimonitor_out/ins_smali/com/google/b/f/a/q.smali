.class final Lcom/google/b/f/a/q;
.super Lcom/google/b/f/a/c;
.source "MoreExecutors.java"
.field private final a:Ljava/util/concurrent/locks/Lock;
.field private final b:Ljava/util/concurrent/locks/Condition;
.field private c:I
.field private d:Z
.method private constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/google/b/f/a/c;-><init>()V
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
iget-object v0, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;
move-result-object v0
iput-object v0, p0, Lcom/google/b/f/a/q;->b:Ljava/util/concurrent/locks/Condition;
iput v1, p0, Lcom/google/b/f/a/q;->c:I
iput-boolean v1, p0, Lcom/google/b/f/a/q;->d:Z
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/google/b/f/a/q;-><init>()V
return-void
.end method
.method private a()V
.registers 3
iget-object v0, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget v0, p0, Lcom/google/b/f/a/q;->c:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/google/b/f/a/q;->c:I
invoke-virtual {p0}, Lcom/google/b/f/a/q;->isTerminated()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/google/b/f/a/q;->b:Ljava/util/concurrent/locks/Condition;
invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
:cond_16
:try_end_16
.catchall {:try_start_5 .. :try_end_16} :catchall_1c
iget-object v0, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_1c
move-exception v0
iget-object v1, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
.registers 8
invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
move-result-wide v0
iget-object v2, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
:goto_9
:try_start_9
invoke-virtual {p0}, Lcom/google/b/f/a/q;->isTerminated()Z
:try_end_c
.catchall {:try_start_9 .. :try_end_c} :catchall_2a
move-result v2
if-eqz v2, :cond_16
iget-object v0, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-gtz v2, :cond_23
iget-object v0, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
const/4 v0, 0x0
goto :goto_15
:cond_23
:try_start_23
iget-object v2, p0, Lcom/google/b/f/a/q;->b:Ljava/util/concurrent/locks/Condition;
invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
:try_end_28
.catchall {:try_start_23 .. :try_end_28} :catchall_2a
move-result-wide v0
goto :goto_9
:catchall_2a
move-exception v0
iget-object v1, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public final execute(Ljava/lang/Runnable;)V
.registers 4
iget-object v0, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
invoke-virtual {p0}, Lcom/google/b/f/a/q;->isShutdown()Z
move-result v0
if-eqz v0, :cond_1a
new-instance v0, Ljava/util/concurrent/RejectedExecutionException;
const-string v1, "Executor already shutdown"
invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_13
.catchall {:try_start_5 .. :try_end_13} :catchall_13
:catchall_13
move-exception v0
iget-object v1, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:try_start_1a
:cond_1a
iget v0, p0, Lcom/google/b/f/a/q;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/b/f/a/q;->c:I
:try_end_20
.catchall {:try_start_1a .. :try_end_20} :catchall_13
iget-object v0, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
:try_start_25
invoke-interface {p1}, Ljava/lang/Runnable;->run()V
:try_end_28
.catchall {:try_start_25 .. :try_end_28} :catchall_2c
invoke-direct {p0}, Lcom/google/b/f/a/q;->a()V
return-void
:catchall_2c
move-exception v0
invoke-direct {p0}, Lcom/google/b/f/a/q;->a()V
throw v0
.end method
.method public final isShutdown()Z
.registers 3
iget-object v0, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget-boolean v0, p0, Lcom/google/b/f/a/q;->d:Z
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_d
iget-object v1, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return v0
:catchall_d
move-exception v0
iget-object v1, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public final isTerminated()Z
.registers 3
iget-object v0, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget-boolean v0, p0, Lcom/google/b/f/a/q;->d:Z
if-eqz v0, :cond_14
iget v0, p0, Lcom/google/b/f/a/q;->c:I
:try_end_b
.catchall {:try_start_5 .. :try_end_b} :catchall_16
if-nez v0, :cond_14
const/4 v0, 0x1
:goto_e
iget-object v1, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return v0
:cond_14
const/4 v0, 0x0
goto :goto_e
:catchall_16
move-exception v0
iget-object v1, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public final shutdown()V
.registers 3
iget-object v0, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
const/4 v0, 0x1
:try_start_6
iput-boolean v0, p0, Lcom/google/b/f/a/q;->d:Z
:try_end_8
.catchall {:try_start_6 .. :try_end_8} :catchall_e
iget-object v0, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_e
move-exception v0
iget-object v1, p0, Lcom/google/b/f/a/q;->a:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public final shutdownNow()Ljava/util/List;
.registers 2
invoke-virtual {p0}, Lcom/google/b/f/a/q;->shutdown()V
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
return-object v0
.end method