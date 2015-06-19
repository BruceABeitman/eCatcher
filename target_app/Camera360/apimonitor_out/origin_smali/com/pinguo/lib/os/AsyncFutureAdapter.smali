.class public abstract Lcom/pinguo/lib/os/AsyncFutureAdapter;
.super Ljava/lang/Object;
.source "AsyncFutureAdapter.java"

# interfaces
.implements Lcom/pinguo/lib/os/AsyncFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DST:",
        "Ljava/lang/Object;",
        "SRC:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/pinguo/lib/os/AsyncFuture",
        "<TDST;>;"
    }
.end annotation


# instance fields
.field private mTaskFuture:Lcom/pinguo/lib/os/AsyncFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<TSRC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pinguo/lib/os/AsyncFuture;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<TSRC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter;->mTaskFuture:Lcom/pinguo/lib/os/AsyncFuture;

    return-void
.end method


# virtual methods
.method public abstract adapte(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSRC;)TDST;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public cancel(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter;->mTaskFuture:Lcom/pinguo/lib/os/AsyncFuture;

    invoke-interface {v0, p1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDST;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter;->mTaskFuture:Lcom/pinguo/lib/os/AsyncFuture;

    invoke-interface {v1}, Lcom/pinguo/lib/os/AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pinguo/lib/os/AsyncFutureAdapter;->adapte(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    :catch_b
    move-exception v0

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TDST;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter;->mTaskFuture:Lcom/pinguo/lib/os/AsyncFuture;

    invoke-interface {v1, p1, p2, p3}, Lcom/pinguo/lib/os/AsyncFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pinguo/lib/os/AsyncFutureAdapter;->adapte(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    :catch_b
    move-exception v0

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/lib/os/AsyncResult",
            "<TDST;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter;->mTaskFuture:Lcom/pinguo/lib/os/AsyncFuture;

    new-instance v1, Lcom/pinguo/lib/os/AsyncFutureAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/pinguo/lib/os/AsyncFutureAdapter$1;-><init>(Lcom/pinguo/lib/os/AsyncFutureAdapter;Lcom/pinguo/lib/os/AsyncResult;)V

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method

.method public getSource()Lcom/pinguo/lib/os/AsyncFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<TSRC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter;->mTaskFuture:Lcom/pinguo/lib/os/AsyncFuture;

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter;->mTaskFuture:Lcom/pinguo/lib/os/AsyncFuture;

    invoke-interface {v0}, Lcom/pinguo/lib/os/AsyncFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter;->mTaskFuture:Lcom/pinguo/lib/os/AsyncFuture;

    invoke-interface {v0}, Lcom/pinguo/lib/os/AsyncFuture;->isDone()Z

    move-result v0

    return v0
.end method
