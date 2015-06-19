.class public abstract Lcom/google/b/f/a/c;
.super Ljava/lang/Object;
.source "AbstractListeningExecutorService.java"

# interfaces
.implements Lcom/google/b/f/a/n;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Lcom/google/b/f/a/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/google/b/f/a/l",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/b/f/a/m;->a(Ljava/util/concurrent/Callable;)Lcom/google/b/f/a/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/f/a/c;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_11
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/google/b/f/a/m;->a(Ljava/util/concurrent/Callable;)Lcom/google/b/f/a/m;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/google/b/f/a/c;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_2c

    goto :goto_15

    :catchall_2c
    move-exception v0

    move-object v1, v0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_32

    :cond_43
    :try_start_43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_56
    .catchall {:try_start_43 .. :try_end_56} :catchall_2c

    move-result v3

    if-nez v3, :cond_47

    :try_start_59
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_2c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_59 .. :try_end_5c} :catch_5d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_59 .. :try_end_5c} :catch_60

    goto :goto_47

    :catch_5d
    move-exception v0

    goto :goto_47

    :cond_5f
    throw v1

    :catch_60
    move-exception v0

    goto :goto_47

    :cond_62
    return-object v2
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_7

    if-nez p4, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_d
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_1a
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/google/b/f/a/m;->a(Ljava/util/concurrent/Callable;)Lcom/google/b/f/a/m;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_32

    goto :goto_1e

    :catchall_32
    move-exception v0

    move-object v1, v0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_38

    :cond_48
    :try_start_48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_50
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/b/f/a/c;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_64
    .catchall {:try_start_48 .. :try_end_64} :catchall_32

    move-result-wide v0

    sub-long v2, v0, v2

    sub-long/2addr v4, v2

    cmp-long v2, v4, v9

    if-gtz v2, :cond_82

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_70

    :cond_80
    move-object v0, v6

    :goto_81
    return-object v0

    :cond_82
    move-wide v2, v0

    goto :goto_50

    :cond_84
    :try_start_84
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_88
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_db

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_97
    .catchall {:try_start_84 .. :try_end_97} :catchall_32

    move-result v1

    if-nez v1, :cond_e2

    cmp-long v1, v4, v9

    if-gtz v1, :cond_b4

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_a2

    :cond_b2
    move-object v0, v6

    goto :goto_81

    :cond_b4
    :try_start_b4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_b9
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_32
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b4 .. :try_end_b9} :catch_e0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b4 .. :try_end_b9} :catch_de
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b4 .. :try_end_b9} :catch_c4

    :goto_b9
    :try_start_b9
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_32

    move-result-wide v0

    sub-long v2, v0, v2

    sub-long v2, v4, v2

    :goto_c1
    move-wide v4, v2

    move-wide v2, v0

    goto :goto_88

    :catch_c4
    move-exception v0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_c9

    :cond_d9
    move-object v0, v6

    goto :goto_81

    :cond_db
    move-object v0, v6

    goto :goto_81

    :cond_dd
    throw v1

    :catch_de
    move-exception v0

    goto :goto_b9

    :catch_e0
    move-exception v0

    goto :goto_b9

    :cond_e2
    move-wide v0, v2

    move-wide v2, v4

    goto :goto_c1
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_3
    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/b/f/a/o;->a(Lcom/google/b/f/a/n;Ljava/util/Collection;ZJ)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v0

    return-object v0

    :catch_8
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/b/f/a/o;->a(Lcom/google/b/f/a/n;Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/b/f/a/m;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/b/f/a/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/f/a/c;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 4

    invoke-static {p1, p2}, Lcom/google/b/f/a/m;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/b/f/a/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/f/a/c;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/b/f/a/c;->a(Ljava/util/concurrent/Callable;)Lcom/google/b/f/a/l;

    move-result-object v0

    return-object v0
.end method
