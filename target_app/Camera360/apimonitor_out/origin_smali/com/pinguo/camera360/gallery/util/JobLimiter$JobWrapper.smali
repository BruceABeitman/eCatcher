.class Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;
.super Ljava/lang/Object;
.source "JobLimiter.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/util/Future;
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/util/JobLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/pinguo/camera360/gallery/util/Future",
        "<TT;>;",
        "Lcom/pinguo/camera360/gallery/util/ThreadPool$Job",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/pinguo/camera360/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/camera360/gallery/util/Future",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mJob:Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/camera360/gallery/util/ThreadPool$Job",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/pinguo/camera360/gallery/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/camera360/gallery/util/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;Lcom/pinguo/camera360/gallery/util/FutureListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/gallery/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/pinguo/camera360/gallery/util/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mState:I

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mJob:Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mListener:Lcom/pinguo/camera360/gallery/util/FutureListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mListener:Lcom/pinguo/camera360/gallery/util/FutureListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mJob:Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mListener:Lcom/pinguo/camera360/gallery/util/FutureListener;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mDelegate:Lcom/pinguo/camera360/gallery/util/Future;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mDelegate:Lcom/pinguo/camera360/gallery/util/Future;

    invoke-interface {v1}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mDelegate:Lcom/pinguo/camera360/gallery/util/Future;

    :cond_1b
    const/4 v1, 0x2

    iput v1, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_2b

    if-eqz v0, :cond_2a

    invoke-interface {v0, p0}, Lcom/pinguo/camera360/gallery/util/FutureListener;->onFutureDone(Lcom/pinguo/camera360/gallery/util/Future;)V

    :cond_2a
    return-void

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :goto_1
    :try_start_1
    iget v0, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mState:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_d

    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/pinguo/camera360/gallery/util/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_1

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCancelled()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDone()Z
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;",
            ")TT;"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_4
    iget v5, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mState:I

    if-ne v5, v8, :cond_b

    monitor-exit p0

    move-object v2, v4

    :cond_a
    :goto_a
    return-object v2

    :cond_b
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mJob:Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1c

    const/4 v2, 0x0

    :try_start_f
    invoke-interface {v0, p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_1f

    move-result-object v2

    :goto_13
    const/4 v1, 0x0

    monitor-enter p0

    :try_start_15
    iget v5, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mState:I

    if-ne v5, v8, :cond_37

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_4e

    move-object v2, v4

    goto :goto_a

    :catchall_1c
    move-exception v4

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v4

    :catch_1f
    move-exception v3

    const-string/jumbo v5, "JobLimiter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "error executing job: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_37
    const/4 v4, 0x1

    :try_start_38
    iput v4, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mState:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mListener:Lcom/pinguo/camera360/gallery/util/FutureListener;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mListener:Lcom/pinguo/camera360/gallery/util/FutureListener;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mJob:Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_4e

    if-eqz v1, :cond_a

    invoke-interface {v1, p0}, Lcom/pinguo/camera360/gallery/util/FutureListener;->onFutureDone(Lcom/pinguo/camera360/gallery/util/Future;)V

    goto :goto_a

    :catchall_4e
    move-exception v4

    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v4
.end method

.method public declared-synchronized setFuture(Lcom/pinguo/camera360/gallery/util/Future;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/gallery/util/Future",
            "<TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->mDelegate:Lcom/pinguo/camera360/gallery/util/Future;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_a

    goto :goto_5

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitDone()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/util/JobLimiter$JobWrapper;->get()Ljava/lang/Object;

    return-void
.end method
