.class  Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;
.super Ljava/lang/Object;
.source "AsyncTask.java"
.implements Ljava/util/concurrent/Executor;
.field  mActive:Ljava/lang/Runnable;
.field final mTasks:Ljava/util/ArrayDeque;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayDeque;
invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V
iput-object v0, p0, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;-><init>()V
return-void
.end method
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;
new-instance v1, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor$1;
invoke-direct {v1, p0, p1}, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor$1;-><init>(Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;
if-nez v0, :cond_12
invoke-virtual {p0}, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;->scheduleNext()V
:cond_12
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_14
monitor-exit p0
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected declared-synchronized scheduleNext()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;
invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
iput-object v0, p0, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;
if-eqz v0, :cond_14
sget-object v0, Lcom/pinguo/lib/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
iget-object v1, p0, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
:try_end_14
.catchall {:try_start_1 .. :try_end_14} :catchall_16
:cond_14
monitor-exit p0
return-void
:catchall_16
move-exception v0
monitor-exit p0
throw v0
.end method