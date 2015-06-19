.class public Lcom/pinguo/lib/os/AsyncSuccess;
.super Ljava/lang/Object;
.source "AsyncSuccess.java"

# interfaces
.implements Lcom/pinguo/lib/os/AsyncFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/pinguo/lib/os/AsyncFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private v:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/lib/os/AsyncSuccess;->v:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncSuccess;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncSuccess;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/lib/os/AsyncResult",
            "<TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncSuccess;->v:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/pinguo/lib/os/AsyncResult;->onSuccess(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public isCancelled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
