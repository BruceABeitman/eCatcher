.class public Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;
.super Ljava/lang/Object;
.source "ManagedHttpCacheStorage.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

.field private final morque:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final resources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;",
            ">;"
        }
    .end annotation
.end field

.field private volatile shutdown:Z


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getMaxCacheEntries()I

    move-result v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;-><init>(I)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->morque:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->resources:Ljava/util/Set;

    return-void
.end method

.method private ensureValidState()V
    .registers 3

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->shutdown:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cache has been shut down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private keepResourceReference(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .registers 4

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->morque:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;-><init>(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->resources:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method


# virtual methods
.method public cleanResources()V
    .registers 3

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->shutdown:Z

    if-eqz v0, :cond_5

    :cond_4
    return-void

    :cond_5
    :goto_5
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->morque:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;

    if-eqz v0, :cond_4

    monitor-enter p0

    :try_start_10
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->resources:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1e

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/cache/Resource;->dispose()V

    goto :goto_5

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->ensureValidState()V

    monitor-enter p0

    :try_start_e
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cache entry may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->ensureValidState()V

    monitor-enter p0

    :try_start_18
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->keepResourceReference(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeEntry(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->ensureValidState()V

    monitor-enter p0

    :try_start_e
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shutdown()V
    .registers 3

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->shutdown:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->shutdown:Z

    monitor-enter p0

    :try_start_9
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->clear()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->resources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/cache/Resource;->dispose()V
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_28

    goto :goto_14

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->resources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_30
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->morque:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_30

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_28

    goto :goto_4
.end method

.method public updateEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->ensureValidState()V

    monitor-enter p0

    :try_start_18
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;->update(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v2, p1, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v0, v1, :cond_2e

    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/ManagedHttpCacheStorage;->keepResourceReference(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    :cond_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method
