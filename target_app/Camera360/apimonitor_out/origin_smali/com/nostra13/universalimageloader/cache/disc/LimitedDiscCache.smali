.class public abstract Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
.super Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;
.source "LimitedDiscCache.java"


# static fields
.field private static final INVALID_SIZE:I = -0x1


# instance fields
.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final lastUsageDates:Ljava/util/Map;
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

.field private final sizeLimit:I


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 4

    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    iput p3, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->sizeLimit:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->calculateCacheSizeAndFillUsageMap()V

    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private calculateCacheSizeAndFillUsageMap()V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1;

    invoke-direct {v1, p0}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1;-><init>(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeNext()I
    .registers 15

    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v3, -0x1

    :cond_9
    :goto_9
    return v3

    :cond_a
    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v9, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    monitor-enter v9

    :try_start_15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v6, :cond_38

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/io/File;

    move-object v6, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Long;

    move-object v7, v0

    goto :goto_19

    :cond_38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-gez v8, :cond_19

    move-object v7, v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/io/File;

    move-object v6, v0

    goto :goto_19

    :cond_54
    monitor-exit v9
    :try_end_55
    .catchall {:try_start_15 .. :try_end_55} :catchall_6e

    const/4 v3, 0x0

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_71

    invoke-virtual {p0, v6}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I

    move-result v3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :catchall_6e
    move-exception v8

    :try_start_6f
    monitor-exit v9
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v8

    :cond_71
    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-super {p0}, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method protected abstract getSize(Ljava/io/File;)I
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .registers 9

    invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I

    move-result v3

    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_a
    add-int v4, v0, v3

    iget v5, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->sizeLimit:I

    if-le v4, v5, :cond_17

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->removeNext()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_31

    :cond_17
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v4, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_31
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v5, v2

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_a
.end method
