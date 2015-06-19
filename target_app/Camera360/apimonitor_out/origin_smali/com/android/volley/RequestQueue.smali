.class public Lcom/android/volley/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/RequestQueue$RequestFilter;
    }
.end annotation


# static fields
.field private static final DEFAULT_NETWORK_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

.field private final mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private mDispatchers:[Lcom/android/volley/NetworkDispatcher;

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWaitingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V
    .registers 7

    new-instance v0, Lcom/android/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object p1, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    iput-object p2, p0, Lcom/android/volley/RequestQueue;->mNetwork:Lcom/android/volley/Network;

    new-array v0, p3, [Lcom/android/volley/NetworkDispatcher;

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    iput-object p4, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request",
            "<TT;>;)",
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->setRequestQueue(Lcom/android/volley/RequestQueue;)Lcom/android/volley/Request;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v3

    :try_start_6
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_25

    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->setSequence(I)Lcom/android/volley/Request;

    const-string/jumbo v2, "add-to-queue"

    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_24
    return-object p1

    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2

    :cond_28
    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v3

    :try_start_2b
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-nez v1, :cond_46

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :cond_46
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v2, :cond_5e

    const-string/jumbo v2, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5e
    :goto_5e
    monitor-exit v3

    goto :goto_24

    :catchall_60
    move-exception v2

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_2b .. :try_end_62} :catchall_60

    throw v2

    :cond_63
    :try_start_63
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_60

    goto :goto_5e
.end method

.method public cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V
    .registers 6

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11

    monitor-exit v2

    return-void

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    invoke-interface {p1, v0}, Lcom/android/volley/RequestQueue$RequestFilter;->apply(Lcom/android/volley/Request;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    goto :goto_9

    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot cancelAll with a null tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lcom/android/volley/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/RequestQueue$1;-><init>(Lcom/android/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    return-void
.end method

.method finish(Lcom/android/volley/Request;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_42

    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v3

    :try_start_12
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_40

    sget-boolean v2, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3b
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    :cond_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_12 .. :try_end_41} :catchall_45

    :cond_41
    return-void

    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v2

    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v2
.end method

.method public getCache()Lcom/android/volley/Cache;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method public getSequenceNumber()I
    .registers 2

    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public start()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->stop()V

    new-instance v2, Lcom/android/volley/CacheDispatcher;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    iget-object v6, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V

    iput-object v2, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {v2}, Lcom/android/volley/CacheDispatcher;->start()V

    const/4 v0, 0x0

    :goto_18
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    array-length v2, v2

    if-lt v0, v2, :cond_1e

    return-void

    :cond_1e
    new-instance v1, Lcom/android/volley/NetworkDispatcher;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mNetwork:Lcom/android/volley/Network;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    aput-object v1, v2, v0

    invoke-virtual {v1}, Lcom/android/volley/NetworkDispatcher;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public stop()V
    .registers 3

    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {v1}, Lcom/android/volley/CacheDispatcher;->quit()V

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    array-length v1, v1

    if-lt v0, v1, :cond_10

    return-void

    :cond_10
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/volley/NetworkDispatcher;->quit()V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method
