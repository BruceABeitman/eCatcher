.class public final Lcom/d/a/b/a;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"


# direct methods
.method public static a(IILcom/d/a/b/a/j;)Ljava/util/concurrent/Executor;
    .registers 11

    sget-object v0, Lcom/d/a/b/a/j;->b:Lcom/d/a/b/a/j;

    if-ne p2, v0, :cond_1f

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_21

    new-instance v6, Lcom/d/a/b/a/a/c;

    invoke-direct {v6}, Lcom/d/a/b/a/a/c;-><init>()V

    :goto_c
    check-cast v6, Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/d/a/b/b;

    invoke-direct {v7, p1}, Lcom/d/a/b/b;-><init>(I)V

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_5

    :cond_21
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto :goto_c
.end method
