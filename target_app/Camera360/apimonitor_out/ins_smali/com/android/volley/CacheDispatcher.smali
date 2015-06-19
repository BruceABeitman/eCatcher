.class public Lcom/android/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"
.field private static final DEBUG:Z
.field private final mCache:Lcom/android/volley/Cache;
.field private final mCacheQueue:Ljava/util/concurrent/BlockingQueue;
.field private final mDelivery:Lcom/android/volley/ResponseDelivery;
.field private final mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
.field private volatile mQuit:Z
.method static constructor <clinit>()V
.registers 1
sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z
sput-boolean v0, Lcom/android/volley/CacheDispatcher;->DEBUG:Z
return-void
.end method
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->mQuit:Z
iput-object p1, p0, Lcom/android/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;
iput-object p2, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
iput-object p3, p0, Lcom/android/volley/CacheDispatcher;->mCache:Lcom/android/volley/Cache;
iput-object p4, p0, Lcom/android/volley/CacheDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;
return-void
.end method
.method static synthetic access$0(Lcom/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
.registers 2
iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
return-object v0
.end method
.method private deal(Lcom/android/volley/Request;)V
.registers 8
:try_start_0
const-string/jumbo v3, "cache-queue-take"
invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/android/volley/Request;->isCanceled()Z
move-result v3
if-eqz v3, :cond_13
const-string/jumbo v3, "cache-discard-canceled"
invoke-virtual {p1, v3}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
:cond_12
:goto_12
return-void
:cond_13
iget-object v3, p0, Lcom/android/volley/CacheDispatcher;->mCache:Lcom/android/volley/Cache;
invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
move-result-object v1
if-nez v1, :cond_31
const-string/jumbo v3, "cache-miss"
invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V
iget-object v3, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v3, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
:try_end_2a
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2a} :catch_2b
goto :goto_12
:catch_2b
move-exception v0
iget-boolean v3, p0, Lcom/android/volley/CacheDispatcher;->mQuit:Z
if-eqz v3, :cond_12
throw v0
:cond_31
:try_start_31
invoke-virtual {v1}, Lcom/android/volley/Cache$Entry;->isExpired()Z
move-result v3
if-eqz v3, :cond_46
const-string/jumbo v3, "cache-hit-expired"
invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V
invoke-virtual {p1, v1}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;
iget-object v3, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v3, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
goto :goto_12
:cond_46
const-string/jumbo v3, "cache-hit"
invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V
new-instance v3, Lcom/android/volley/NetworkResponse;
iget-object v4, v1, Lcom/android/volley/Cache$Entry;->data:[B
iget-object v5, v1, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;
invoke-direct {v3, v4, v5}, Lcom/android/volley/NetworkResponse;-><init>([BLjava/util/Map;)V
invoke-virtual {p1, v3}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
move-result-object v2
const-string/jumbo v3, "cache-hit-parsed"
invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/android/volley/Cache$Entry;->refreshNeeded()Z
move-result v3
if-nez v3, :cond_6b
iget-object v3, p0, Lcom/android/volley/CacheDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;
invoke-interface {v3, p1, v2}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
goto :goto_12
:cond_6b
const-string/jumbo v3, "cache-hit-refresh-needed"
invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V
invoke-virtual {p1, v1}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;
const/4 v3, 0x1
iput-boolean v3, v2, Lcom/android/volley/Response;->intermediate:Z
iget-object v3, p0, Lcom/android/volley/CacheDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;
new-instance v4, Lcom/android/volley/CacheDispatcher$1;
invoke-direct {v4, p0, p1}, Lcom/android/volley/CacheDispatcher$1;-><init>(Lcom/android/volley/CacheDispatcher;Lcom/android/volley/Request;)V
invoke-interface {v3, p1, v2, v4}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
:try_end_81
.catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_81} :catch_2b
goto :goto_12
.end method
.method public quit()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->mQuit:Z
invoke-virtual {p0}, Lcom/android/volley/CacheDispatcher;->interrupt()V
return-void
.end method
.method public run()V
.registers 4
sget-boolean v1, Lcom/android/volley/CacheDispatcher;->DEBUG:Z
if-eqz v1, :cond_d
const-string/jumbo v1, "start new dispatcher"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_d
const/16 v1, 0xa
invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
iget-object v1, p0, Lcom/android/volley/CacheDispatcher;->mCache:Lcom/android/volley/Cache;
invoke-interface {v1}, Lcom/android/volley/Cache;->initialize()V
:cond_17
:try_start_17
:goto_17
iget-object v1, p0, Lcom/android/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/android/volley/Request;
invoke-direct {p0, v1}, Lcom/android/volley/CacheDispatcher;->deal(Lcom/android/volley/Request;)V
:try_end_22
.catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_22} :catch_23
goto :goto_17
:catch_23
move-exception v0
iget-boolean v1, p0, Lcom/android/volley/CacheDispatcher;->mQuit:Z
if-eqz v1, :cond_17
return-void
.end method