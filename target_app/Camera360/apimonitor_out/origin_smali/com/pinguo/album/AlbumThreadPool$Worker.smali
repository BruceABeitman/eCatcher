.class Lcom/pinguo/album/AlbumThreadPool$Worker;
.super Ljava/lang/Object;
.source "AlbumThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/pinguo/album/Future;
.implements Lcom/pinguo/album/AlbumThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/AlbumThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/pinguo/album/Future",
        "<TT;>;",
        "Lcom/pinguo/album/AlbumThreadPool$JobContext;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private mCancelListener:Lcom/pinguo/album/AlbumThreadPool$CancelListener;

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mJob:Lcom/pinguo/album/AlbumThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/album/AlbumThreadPool$Job",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/pinguo/album/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/album/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;

.field final synthetic this$0:Lcom/pinguo/album/AlbumThreadPool;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/AlbumThreadPool;Lcom/pinguo/album/AlbumThreadPool$Job;Lcom/pinguo/album/FutureListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/album/AlbumThreadPool$Job",
            "<TT;>;",
            "Lcom/pinguo/album/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->this$0:Lcom/pinguo/album/AlbumThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mJob:Lcom/pinguo/album/AlbumThreadPool$Job;

    iput-object p3, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mListener:Lcom/pinguo/album/FutureListener;

    return-void
.end method

.method private acquireResource(Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;)Z
    .registers 3

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mWaitOnResource:Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;

    monitor-exit p0

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    iput-object p1, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mWaitOnResource:Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_21

    monitor-enter p1

    :try_start_f
    iget v0, p1, Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_24

    iget v0, p1, Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;->value:I

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_29

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_1c
    iput-object v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mWaitOnResource:Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;

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

.method private modeToCounter(I)Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->this$0:Lcom/pinguo/album/AlbumThreadPool;

    iget-object v0, v0, Lcom/pinguo/album/AlbumThreadPool;->mCpuCounter:Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->this$0:Lcom/pinguo/album/AlbumThreadPool;

    iget-object v0, v0, Lcom/pinguo/album/AlbumThreadPool;->mNetworkCounter:Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private releaseResource(Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;)V
    .registers 3

    monitor-enter p1

    :try_start_1
    iget v0, p1, Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;->value:I

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


# virtual methods
.method public declared-synchronized cancel()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mIsCancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mIsCancelled:Z

    iget-object v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mWaitOnResource:Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mWaitOnResource:Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;

    monitor-enter v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_21

    :try_start_11
    iget-object v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mWaitOnResource:Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_24

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mCancelListener:Lcom/pinguo/album/AlbumThreadPool$CancelListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mCancelListener:Lcom/pinguo/album/AlbumThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/pinguo/album/AlbumThreadPool$CancelListener;->onCancel()V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mIsDone:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mResult:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    monitor-exit p0

    return-object v1

    :cond_9
    :try_start_9
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

    invoke-static {v1, v2, v0}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
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

    iget-boolean v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mIsDone:Z
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

    invoke-virtual {p0, v2}, Lcom/pinguo/album/AlbumThreadPool$Worker;->setMode(I)Z

    move-result v2

    if-eqz v2, :cond_e

    :try_start_8
    iget-object v2, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mJob:Lcom/pinguo/album/AlbumThreadPool$Job;

    invoke-interface {v2, p0}, Lcom/pinguo/album/AlbumThreadPool$Job;->run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_26

    move-result-object v1

    :cond_e
    :goto_e
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {p0, v2}, Lcom/pinguo/album/AlbumThreadPool$Worker;->setMode(I)Z

    iput-object v1, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mResult:Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mIsDone:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_31

    iget-object v2, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mListener:Lcom/pinguo/album/FutureListener;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mListener:Lcom/pinguo/album/FutureListener;

    invoke-interface {v2, p0}, Lcom/pinguo/album/FutureListener;->onFutureDone(Lcom/pinguo/album/Future;)V

    :cond_25
    return-void

    :catch_26
    move-exception v0

    const-string/jumbo v2, "Worker"

    const-string/jumbo v3, "Exception in running a job"

    invoke-static {v2, v3, v0}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public declared-synchronized setCancelListener(Lcom/pinguo/album/AlbumThreadPool$CancelListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mCancelListener:Lcom/pinguo/album/AlbumThreadPool$CancelListener;

    iget-boolean v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mCancelListener:Lcom/pinguo/album/AlbumThreadPool$CancelListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mCancelListener:Lcom/pinguo/album/AlbumThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/pinguo/album/AlbumThreadPool$CancelListener;->onCancel()V
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

    iget v2, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mMode:I

    invoke-direct {p0, v2}, Lcom/pinguo/album/AlbumThreadPool$Worker;->modeToCounter(I)Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v0}, Lcom/pinguo/album/AlbumThreadPool$Worker;->releaseResource(Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;)V

    :cond_c
    iput v1, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mMode:I

    invoke-direct {p0, p1}, Lcom/pinguo/album/AlbumThreadPool$Worker;->modeToCounter(I)Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, v0}, Lcom/pinguo/album/AlbumThreadPool$Worker;->acquireResource(Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;)Z

    move-result v2

    if-nez v2, :cond_1b

    :goto_1a
    return v1

    :cond_1b
    iput p1, p0, Lcom/pinguo/album/AlbumThreadPool$Worker;->mMode:I

    :cond_1d
    const/4 v1, 0x1

    goto :goto_1a
.end method

.method public waitDone()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/album/AlbumThreadPool$Worker;->get()Ljava/lang/Object;

    return-void
.end method
