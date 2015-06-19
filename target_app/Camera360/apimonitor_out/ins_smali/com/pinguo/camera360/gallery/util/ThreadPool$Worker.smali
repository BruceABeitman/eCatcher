.class  Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"
.implements Ljava/lang/Runnable;
.implements Lcom/pinguo/camera360/gallery/util/Future;
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;
.field private static final TAG:Ljava/lang/String; = "Worker"
.field private mCancelListener:Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;
.field private volatile mIsCancelled:Z
.field private mIsDone:Z
.field private mJob:Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.field private mListener:Lcom/pinguo/camera360/gallery/util/FutureListener;
.field private mMode:I
.field private mResult:Ljava/lang/Object;
.field private mWaitOnResource:Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/util/ThreadPool;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/util/ThreadPool;Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;Lcom/pinguo/camera360/gallery/util/FutureListener;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->this$0:Lcom/pinguo/camera360/gallery/util/ThreadPool;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mJob:Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
iput-object p3, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mListener:Lcom/pinguo/camera360/gallery/util/FutureListener;
return-void
.end method
.method private acquireResource(Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;)Z
.registers 3
:goto_0
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mIsCancelled:Z
if-eqz v0, :cond_b
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mWaitOnResource:Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;
monitor-exit p0
const/4 v0, 0x0
:goto_a
return v0
:cond_b
iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mWaitOnResource:Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;
monitor-exit p0
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_21
monitor-enter p1
:try_start_f
iget v0, p1, Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;->value:I
if-lez v0, :cond_24
iget v0, p1, Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;->value:I
add-int/lit8 v0, v0, -0x1
iput v0, p1, Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;->value:I
monitor-exit p1
:try_end_1a
.catchall {:try_start_f .. :try_end_1a} :catchall_29
monitor-enter p0
const/4 v0, 0x0
:try_start_1c
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mWaitOnResource:Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;
monitor-exit p0
:try_end_1f
.catchall {:try_start_1c .. :try_end_1f} :catchall_2c
const/4 v0, 0x1
goto :goto_a
:catchall_21
move-exception v0
:try_start_22
monitor-exit p0
:try_end_23
.catchall {:try_start_22 .. :try_end_23} :catchall_21
throw v0
:cond_24
:try_start_24
invoke-virtual {p1}, Ljava/lang/Object;->wait()V
:try_end_27
.catchall {:try_start_24 .. :try_end_27} :catchall_29
.catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_2f
:goto_27
:try_start_27
monitor-exit p1
goto :goto_0
:catchall_29
move-exception v0
monitor-exit p1
:try_end_2b
.catchall {:try_start_27 .. :try_end_2b} :catchall_29
throw v0
:catchall_2c
move-exception v0
:try_start_2d
monitor-exit p0
:try_end_2e
.catchall {:try_start_2d .. :try_end_2e} :catchall_2c
throw v0
:catch_2f
move-exception v0
goto :goto_27
.end method
.method private modeToCounter(I)Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;
.registers 3
const/4 v0, 0x1
if-ne p1, v0, :cond_8
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->this$0:Lcom/pinguo/camera360/gallery/util/ThreadPool;
iget-object v0, v0, Lcom/pinguo/camera360/gallery/util/ThreadPool;->mCpuCounter:Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;
:goto_7
return-object v0
:cond_8
const/4 v0, 0x2
if-ne p1, v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->this$0:Lcom/pinguo/camera360/gallery/util/ThreadPool;
iget-object v0, v0, Lcom/pinguo/camera360/gallery/util/ThreadPool;->mNetworkCounter:Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;
goto :goto_7
:cond_10
const/4 v0, 0x0
goto :goto_7
.end method
.method private releaseResource(Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;)V
.registers 3
monitor-enter p1
:try_start_1
iget v0, p1, Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;->value:I
add-int/lit8 v0, v0, 0x1
iput v0, p1, Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;->value:I
invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
monitor-exit p1
return-void
:catchall_c
move-exception v0
monitor-exit p1
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_c
throw v0
.end method
.method public declared-synchronized cancel()V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mIsCancelled:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_21
if-eqz v0, :cond_7
:goto_5
:cond_5
monitor-exit p0
return-void
:cond_7
const/4 v0, 0x1
:try_start_8
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mIsCancelled:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mWaitOnResource:Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;
if-eqz v0, :cond_17
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mWaitOnResource:Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;
monitor-enter v1
:try_start_11
:try_end_11
.catchall {:try_start_8 .. :try_end_11} :catchall_21
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mWaitOnResource:Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
:cond_17
:try_start_17
:try_end_17
.catchall {:try_start_11 .. :try_end_17} :catchall_24
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mCancelListener:Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mCancelListener:Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;->onCancel()V
:try_end_20
.catchall {:try_start_17 .. :try_end_20} :catchall_21
goto :goto_5
:catchall_21
move-exception v0
monitor-exit p0
throw v0
:catchall_24
move-exception v0
:try_start_25
monitor-exit v1
:try_end_26
.catchall {:try_start_25 .. :try_end_26} :catchall_24
:try_start_26
throw v0
:try_end_27
.catchall {:try_start_26 .. :try_end_27} :catchall_21
.end method
.method public declared-synchronized get()Ljava/lang/Object;
.registers 4
monitor-enter p0
:goto_1
:try_start_1
iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mIsDone:Z
if-eqz v1, :cond_9
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_18
monitor-exit p0
return-object v1
:try_start_9
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->wait()V
:try_end_c
.catchall {:try_start_9 .. :try_end_c} :catchall_18
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d
goto :goto_1
:catch_d
move-exception v0
:try_start_e
const-string/jumbo v1, "Worker"
const-string/jumbo v2, "ingore exception"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_17
.catchall {:try_start_e .. :try_end_17} :catchall_18
goto :goto_1
:catchall_18
move-exception v1
monitor-exit p0
throw v1
.end method
.method public isCancelled()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mIsCancelled:Z
return v0
.end method
.method public declared-synchronized isDone()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mIsDone:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public run()V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->setMode(I)Z
move-result v2
if-eqz v2, :cond_e
:try_start_8
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mJob:Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
invoke-interface {v2, p0}, Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
:try_end_d
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_26
move-result-object v1
:cond_e
:goto_e
monitor-enter p0
const/4 v2, 0x0
:try_start_10
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->setMode(I)Z
iput-object v1, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mIsDone:Z
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
monitor-exit p0
:try_end_1c
.catchall {:try_start_10 .. :try_end_1c} :catchall_31
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mListener:Lcom/pinguo/camera360/gallery/util/FutureListener;
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mListener:Lcom/pinguo/camera360/gallery/util/FutureListener;
invoke-interface {v2, p0}, Lcom/pinguo/camera360/gallery/util/FutureListener;->onFutureDone(Lcom/pinguo/camera360/gallery/util/Future;)V
:cond_25
return-void
:catch_26
move-exception v0
const-string/jumbo v2, "Worker"
const-string/jumbo v3, "Exception in running a job"
invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_e
:catchall_31
move-exception v2
:try_start_32
monitor-exit p0
:try_end_33
.catchall {:try_start_32 .. :try_end_33} :catchall_31
throw v2
.end method
.method public declared-synchronized setCancelListener(Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;)V
.registers 3
monitor-enter p0
:try_start_1
iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mCancelListener:Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mIsCancelled:Z
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mCancelListener:Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mCancelListener:Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;->onCancel()V
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
:cond_10
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method public setMode(I)Z
.registers 5
const/4 v1, 0x0
iget v2, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mMode:I
invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->modeToCounter(I)Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;
move-result-object v0
if-eqz v0, :cond_c
invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->releaseResource(Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;)V
:cond_c
iput v1, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mMode:I
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->modeToCounter(I)Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;
move-result-object v0
if-eqz v0, :cond_1d
invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->acquireResource(Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;)Z
move-result v2
if-nez v2, :cond_1b
:goto_1a
return v1
:cond_1b
iput p1, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->mMode:I
:cond_1d
const/4 v1, 0x1
goto :goto_1a
.end method
.method public waitDone()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;->get()Ljava/lang/Object;
return-void
.end method