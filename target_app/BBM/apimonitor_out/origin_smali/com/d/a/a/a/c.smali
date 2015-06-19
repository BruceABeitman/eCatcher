.class public abstract Lcom/d/a/a/a/c;
.super Lcom/d/a/a/a/a;
.source "LimitedDiscCache.java"


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/d/a/a/a/b/a;I)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/d/a/a/a/a;-><init>(Ljava/io/File;Lcom/d/a/a/a/b/a;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/a/c;->c:Ljava/util/Map;

    iput p3, p0, Lcom/d/a/a/a/c;->d:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/d/a/a/a/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/d/a/a/a/d;

    invoke-direct {v1, p0}, Lcom/d/a/a/a/d;-><init>(Lcom/d/a/a/a/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a()I
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/d/a/a/a/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, -0x1

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/d/a/a/a/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v4, p0, Lcom/d/a/a/a/c;->c:Ljava/util/Map;

    monitor-enter v4

    :try_start_14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v2

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v2, :cond_36

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v2, v1

    move-object v3, v0

    goto :goto_19

    :cond_36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_74

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :goto_4e
    move-object v2, v0

    move-object v3, v1

    goto :goto_19

    :cond_51
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_14 .. :try_end_52} :catchall_6b

    const/4 v0, 0x0

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-virtual {p0, v2}, Lcom/d/a/a/a/c;->b(Ljava/io/File;)I

    move-result v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/d/a/a/a/c;->c:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :catchall_6b
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_6e
    iget-object v1, p0, Lcom/d/a/a/a/c;->c:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_74
    move-object v0, v2

    move-object v1, v3

    goto :goto_4e
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    invoke-super {p0, p1}, Lcom/d/a/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    iget-object v2, p0, Lcom/d/a/a/a/c;->c:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/io/File;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/d/a/a/a/c;->b(Ljava/io/File;)I

    move-result v1

    iget-object v0, p0, Lcom/d/a/a/a/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_a
    add-int/2addr v0, v1

    iget v2, p0, Lcom/d/a/a/a/c;->d:I

    if-le v0, v2, :cond_1e

    invoke-direct {p0}, Lcom/d/a/a/a/c;->a()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    iget-object v2, p0, Lcom/d/a/a/a/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v0, v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_a

    :cond_1e
    iget-object v0, p0, Lcom/d/a/a/a/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    iget-object v1, p0, Lcom/d/a/a/a/c;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract b(Ljava/io/File;)I
.end method
