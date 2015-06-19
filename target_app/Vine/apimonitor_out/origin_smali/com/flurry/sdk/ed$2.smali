.class Lcom/flurry/sdk/ed$2;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ed;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ed;)V
    .registers 2

    iput-object p1, p0, Lcom/flurry/sdk/ed$2;->a:Lcom/flurry/sdk/ed;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 6

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    iget-object v0, p0, Lcom/flurry/sdk/ed$2;->a:Lcom/flurry/sdk/ed;

    invoke-static {v0, p1}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;Ljava/lang/Runnable;)Lcom/flurry/sdk/fd;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/flurry/sdk/ed$2;->a:Lcom/flurry/sdk/ed;

    invoke-static {v1}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_13
    iget-object v2, p0, Lcom/flurry/sdk/ed$2;->a:Lcom/flurry/sdk/ed;

    invoke-static {v2}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_2b

    iget-object v1, p0, Lcom/flurry/sdk/ed$2;->a:Lcom/flurry/sdk/ed;

    invoke-static {v1, v0}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;Lcom/flurry/sdk/fd;)V

    new-instance v1, Lcom/flurry/sdk/ed$2$1;

    invoke-direct {v1, p0, v0}, Lcom/flurry/sdk/ed$2$1;-><init>(Lcom/flurry/sdk/ed$2;Lcom/flurry/sdk/fd;)V

    invoke-virtual {v1}, Lcom/flurry/sdk/ed$2$1;->run()V

    goto :goto_b

    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method
