.class public Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;
.super Ljava/lang/Object;
.source "BasicHttpCacheStorage.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getMaxCacheEntries()I

    move-result v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;-><init>(I)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeEntry(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;->update(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
