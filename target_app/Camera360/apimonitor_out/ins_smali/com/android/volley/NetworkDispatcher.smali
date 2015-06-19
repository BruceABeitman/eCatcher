.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"
.field private final mCache:Lcom/android/volley/Cache;
.field private final mDelivery:Lcom/android/volley/ResponseDelivery;
.field private final mNetwork:Lcom/android/volley/Network;
.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
.field private volatile mQuit:Z
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z
iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;
iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;
iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;
iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;
return-void
.end method
.method private addTrafficStatsTag(Lcom/android/volley/Request;)V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_d
invoke-virtual {p1}, Lcom/android/volley/Request;->getTrafficStatsTag()I
move-result v0
invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V
:cond_d
return-void
.end method
.method private deal(Lcom/android/volley/Request;)V
.registers 10
:try_start_0
const-string/jumbo v4, "network-queue-take"
invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/android/volley/Request;->isCanceled()Z
move-result v4
if-eqz v4, :cond_13
const-string/jumbo v4, "network-discard-cancelled"
invoke-virtual {p1, v4}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
:goto_12
return-void
:cond_13
invoke-direct {p0, p1}, Lcom/android/volley/NetworkDispatcher;->addTrafficStatsTag(Lcom/android/volley/Request;)V
iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;
invoke-interface {v4, p1}, Lcom/android/volley/Network;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
move-result-object v1
const-string/jumbo v4, "network-http-complete"
invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V
iget-boolean v4, v1, Lcom/android/volley/NetworkResponse;->notModified:Z
if-eqz v4, :cond_38
invoke-virtual {p1}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z
move-result v4
if-eqz v4, :cond_38
const-string/jumbo v4, "not-modified"
invoke-virtual {p1, v4}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
:try_end_32
.catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_32} :catch_33
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_66
goto :goto_12
:catch_33
move-exception v3
invoke-direct {p0, p1, v3}, Lcom/android/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
goto :goto_12
:cond_38
:try_start_38
invoke-virtual {p1, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
move-result-object v2
const-string/jumbo v4, "network-parse-complete"
invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z
move-result v4
if-eqz v4, :cond_5d
iget-object v4, v2, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;
if-eqz v4, :cond_5d
iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;
invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;
move-result-object v5
iget-object v6, v2, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;
invoke-interface {v4, v5, v6}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
const-string/jumbo v4, "network-cache-written"
invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V
:cond_5d
invoke-virtual {p1}, Lcom/android/volley/Request;->markDelivered()V
iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;
invoke-interface {v4, p1, v2}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
:try_end_65
.catch Lcom/android/volley/VolleyError; {:try_start_38 .. :try_end_65} :catch_33
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_65} :catch_66
goto :goto_12
:catch_66
move-exception v0
const-string/jumbo v4, "Unhandled exception %s"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v0, v4, v5}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;
new-instance v5, Lcom/android/volley/VolleyError;
invoke-direct {v5, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V
invoke-interface {v4, p1, v5}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
goto :goto_12
.end method
.method private parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
.registers 4
invoke-virtual {p1, p2}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
move-result-object p2
iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;
invoke-interface {v0, p1, p2}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
return-void
.end method
.method public quit()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z
invoke-virtual {p0}, Lcom/android/volley/NetworkDispatcher;->interrupt()V
return-void
.end method
.method public run()V
.registers 3
const/16 v1, 0xa
invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
:try_start_5
:goto_5
:cond_5
iget-object v1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/android/volley/Request;
invoke-direct {p0, v1}, Lcom/android/volley/NetworkDispatcher;->deal(Lcom/android/volley/Request;)V
:try_end_10
.catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_10} :catch_11
goto :goto_5
:catch_11
move-exception v0
iget-boolean v1, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z
if-eqz v1, :cond_5
return-void
.end method