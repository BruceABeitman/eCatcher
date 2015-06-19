.class Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;
.super Ljava/lang/Object;
.source "AsynchronousValidator.java"


# instance fields
.field private final cacheKeyGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

.field private final cachingClient:Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final queued:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .registers 11

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getAsynchronousWorkersCore()I

    move-result v1

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getAsynchronousWorkersMax()I

    move-result v2

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getAsynchronousWorkerIdleLifetimeSecs()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getRevalidationQueueSize()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;Ljava/util/concurrent/ExecutorService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->cachingClient:Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->queued:Ljava/util/Set;

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->cacheKeyGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    return-void
.end method


# virtual methods
.method getExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method getScheduledIdentifiers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->queued:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized markComplete(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->queued:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->cacheKeyGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getVariantURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->queued:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->cachingClient:Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_47

    :try_start_1b
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->queued:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_47
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1b .. :try_end_25} :catch_27

    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    :catch_27
    move-exception v0

    :try_start_28
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Revalidation for ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not scheduled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_47

    goto :goto_25

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method
