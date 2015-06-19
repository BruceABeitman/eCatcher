.class Lcom/flurry/sdk/ed$1;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ed;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ed;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .registers 15

    iput-object p1, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 6

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {v0, p1}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;Ljava/lang/Runnable;)Lcom/flurry/sdk/fd;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {v1}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_13
    iget-object v2, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {v2}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_2b

    iget-object v1, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {v1, v0}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;Lcom/flurry/sdk/fd;)V

    new-instance v1, Lcom/flurry/sdk/ed$1$2;

    invoke-direct {v1, p0, v0}, Lcom/flurry/sdk/ed$1$2;-><init>(Lcom/flurry/sdk/ed$1;Lcom/flurry/sdk/fd;)V

    invoke-virtual {v1}, Lcom/flurry/sdk/ed$1$2;->run()V

    goto :goto_b

    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 5

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {v0, p2}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;Ljava/lang/Runnable;)Lcom/flurry/sdk/fd;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    new-instance v1, Lcom/flurry/sdk/ed$1$1;

    invoke-direct {v1, p0, v0}, Lcom/flurry/sdk/ed$1$1;-><init>(Lcom/flurry/sdk/ed$1;Lcom/flurry/sdk/fd;)V

    invoke-virtual {v1}, Lcom/flurry/sdk/ed$1$1;->run()V

    goto :goto_b
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 6

    new-instance v0, Lcom/flurry/sdk/ec;

    invoke-direct {v0, p1, p2}, Lcom/flurry/sdk/ec;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {v1}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_c
    iget-object v2, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {v2}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;)Ljava/util/HashMap;

    move-result-object v2

    check-cast p1, Lcom/flurry/sdk/fd;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_19

    throw v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Callable not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
