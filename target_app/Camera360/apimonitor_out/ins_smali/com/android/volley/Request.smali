.class public abstract Lcom/android/volley/Request;
.super Ljava/lang/Object;
.source "Request.java"
.implements Ljava/lang/Comparable;
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"
.field private static final SLOW_REQUEST_THRESHOLD_MS:J = 0xbb8L
.field private mCacheEntry:Lcom/android/volley/Cache$Entry;
.field private mCanceled:Z
.field private final mDefaultTrafficStatsTag:I
.field private final mErrorListener:Lcom/android/volley/Response$ErrorListener;
.field private final mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;
.field private final mMethod:I
.field private mRequestBirthTime:J
.field private mRequestQueue:Lcom/android/volley/RequestQueue;
.field private mResponseDelivered:Z
.field private mRetryPolicy:Lcom/android/volley/RetryPolicy;
.field private mSequence:Ljava/lang/Integer;
.field private mShouldCache:Z
.field private mTag:Ljava/lang/Object;
.field private final mUrl:Ljava/lang/String;
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
.registers 8
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z
if-eqz v0, :cond_32
new-instance v0, Lcom/android/volley/VolleyLog$MarkerLog;
invoke-direct {v0}, Lcom/android/volley/VolleyLog$MarkerLog;-><init>()V
:goto_e
iput-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/android/volley/Request;->mShouldCache:Z
iput-boolean v2, p0, Lcom/android/volley/Request;->mCanceled:Z
iput-boolean v2, p0, Lcom/android/volley/Request;->mResponseDelivered:Z
const-wide/16 v2, 0x0
iput-wide v2, p0, Lcom/android/volley/Request;->mRequestBirthTime:J
iput-object v1, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;
iput p1, p0, Lcom/android/volley/Request;->mMethod:I
iput-object p2, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;
iput-object p3, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;
new-instance v0, Lcom/android/volley/DefaultRetryPolicy;
invoke-direct {v0}, Lcom/android/volley/DefaultRetryPolicy;-><init>()V
invoke-virtual {p0, v0}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;
invoke-static {p2}, Lcom/android/volley/Request;->findDefaultTrafficStatsTag(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/android/volley/Request;->mDefaultTrafficStatsTag:I
return-void
:cond_32
move-object v0, v1
goto :goto_e
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
.registers 4
const/4 v0, -0x1
invoke-direct {p0, v0, p1, p2}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
return-void
.end method
.method static synthetic access$1(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;
.registers 2
iget-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;
return-object v0
.end method
.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
.registers 9
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
:try_start_5
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_1c
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v3
return-object v3
:cond_1c
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v3, 0x3d
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v3, 0x26
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:try_end_46
.catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_46} :catch_47
goto :goto_d
:catch_47
move-exception v2
new-instance v3, Ljava/lang/RuntimeException;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Encoding not supported: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
.end method
.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
.registers 4
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_17
invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
if-eqz v1, :cond_17
invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_17
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_16
return v2
:cond_17
const/4 v2, 0x0
goto :goto_16
.end method
.method public addMarker(Ljava/lang/String;)V
.registers 6
sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->getId()J
move-result-wide v1
invoke-virtual {v0, p1, v1, v2}, Lcom/android/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V
:goto_11
:cond_11
return-void
:cond_12
iget-wide v0, p0, Lcom/android/volley/Request;->mRequestBirthTime:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_11
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iput-wide v0, p0, Lcom/android/volley/Request;->mRequestBirthTime:J
goto :goto_11
.end method
.method public cancel()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/android/volley/Request;->mCanceled:Z
return-void
.end method
.method public compareTo(Lcom/android/volley/Request;)I
.registers 6
invoke-virtual {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;
move-result-object v0
invoke-virtual {p1}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;
move-result-object v1
if-ne v0, v1, :cond_18
iget-object v2, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
iget-object v3, p1, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v3
sub-int/2addr v2, v3
:goto_17
return v2
:cond_18
invoke-virtual {v1}, Lcom/android/volley/Request$Priority;->ordinal()I
move-result v2
invoke-virtual {v0}, Lcom/android/volley/Request$Priority;->ordinal()I
move-result v3
sub-int/2addr v2, v3
goto :goto_17
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/android/volley/Request;
invoke-virtual {p0, p1}, Lcom/android/volley/Request;->compareTo(Lcom/android/volley/Request;)I
move-result v0
return v0
.end method
.method public deliverError(Lcom/android/volley/VolleyError;)V
.registers 3
iget-object v0, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;
invoke-interface {v0, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V
:cond_9
return-void
.end method
.method protected abstract deliverResponse(Ljava/lang/Object;)V
.end method
.method  finish(Ljava/lang/String;)V
.registers 11
iget-object v5, p0, Lcom/android/volley/Request;->mRequestQueue:Lcom/android/volley/RequestQueue;
if-eqz v5, :cond_9
iget-object v5, p0, Lcom/android/volley/Request;->mRequestQueue:Lcom/android/volley/RequestQueue;
invoke-virtual {v5, p0}, Lcom/android/volley/RequestQueue;->finish(Lcom/android/volley/Request;)V
:cond_9
sget-boolean v5, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z
if-eqz v5, :cond_40
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Thread;->getId()J
move-result-wide v3
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v5
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v6
if-eq v5, v6, :cond_31
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v5
invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
new-instance v5, Lcom/android/volley/Request$1;
invoke-direct {v5, p0, p1, v3, v4}, Lcom/android/volley/Request$1;-><init>(Lcom/android/volley/Request;Ljava/lang/String;J)V
invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_30
:goto_30
return-void
:cond_31
iget-object v5, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;
invoke-virtual {v5, p1, v3, v4}, Lcom/android/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V
iget-object v5, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;
invoke-virtual {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/android/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V
goto :goto_30
:cond_40
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v5
iget-wide v7, p0, Lcom/android/volley/Request;->mRequestBirthTime:J
sub-long v1, v5, v7
const-wide/16 v5, 0xbb8
cmp-long v5, v1, v5
if-ltz v5, :cond_30
const-string/jumbo v5, "%d ms: %s"
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v8
aput-object v8, v6, v7
const/4 v7, 0x1
invoke-virtual {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v5, v6}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_30
.end method
.method public getBody(Ljava/io/OutputStream;)V
.registers 2
return-void
.end method
.method public getBody()[B
.registers 3
invoke-virtual {p0}, Lcom/android/volley/Request;->getParams()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_15
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v1
if-lez v1, :cond_15
invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
move-result-object v1
:goto_14
return-object v1
:cond_15
const/4 v1, 0x0
goto :goto_14
.end method
.method public getBodyContentType()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "application/x-www-form-urlencoded; charset="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCacheEntry()Lcom/android/volley/Cache$Entry;
.registers 2
iget-object v0, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;
return-object v0
.end method
.method public getCacheKey()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getHeaders()Ljava/util/Map;
.registers 2
invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public getMethod()I
.registers 2
iget v0, p0, Lcom/android/volley/Request;->mMethod:I
return v0
.end method
.method protected getParams()Ljava/util/Map;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method protected getParamsEncoding()Ljava/lang/String;
.registers 2
const-string/jumbo v0, "UTF-8"
return-object v0
.end method
.method public getPostBody()[B
.registers 3
invoke-virtual {p0}, Lcom/android/volley/Request;->getPostParams()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_15
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v1
if-lez v1, :cond_15
invoke-virtual {p0}, Lcom/android/volley/Request;->getPostParamsEncoding()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
move-result-object v1
:goto_14
return-object v1
:cond_15
const/4 v1, 0x0
goto :goto_14
.end method
.method public getPostBodyContentType()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected getPostParams()Ljava/util/Map;
.registers 2
invoke-virtual {p0}, Lcom/android/volley/Request;->getParams()Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method protected getPostParamsEncoding()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getPriority()Lcom/android/volley/Request$Priority;
.registers 2
sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;
return-object v0
.end method
.method public getRetryPolicy()Lcom/android/volley/RetryPolicy;
.registers 2
iget-object v0, p0, Lcom/android/volley/Request;->mRetryPolicy:Lcom/android/volley/RetryPolicy;
return-object v0
.end method
.method public final getSequence()I
.registers 3
iget-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;
if-nez v0, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "getSequence called before setSequence"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
return v0
.end method
.method public getTag()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/android/volley/Request;->mTag:Ljava/lang/Object;
return-object v0
.end method
.method public final getTimeoutMs()I
.registers 2
iget-object v0, p0, Lcom/android/volley/Request;->mRetryPolicy:Lcom/android/volley/RetryPolicy;
invoke-interface {v0}, Lcom/android/volley/RetryPolicy;->getCurrentTimeout()I
move-result v0
return v0
.end method
.method public getTrafficStatsTag()I
.registers 2
iget v0, p0, Lcom/android/volley/Request;->mDefaultTrafficStatsTag:I
return v0
.end method
.method public getUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;
return-object v0
.end method
.method public hasHadResponseDelivered()Z
.registers 2
iget-boolean v0, p0, Lcom/android/volley/Request;->mResponseDelivered:Z
return v0
.end method
.method public isCanceled()Z
.registers 2
iget-boolean v0, p0, Lcom/android/volley/Request;->mCanceled:Z
return v0
.end method
.method public markDelivered()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/android/volley/Request;->mResponseDelivered:Z
return-void
.end method
.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
.registers 2
return-object p1
.end method
.method protected abstract parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
.end method
.method public setCacheEntry(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;
.registers 2
iput-object p1, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;
return-object p0
.end method
.method public setRequestQueue(Lcom/android/volley/RequestQueue;)Lcom/android/volley/Request;
.registers 2
iput-object p1, p0, Lcom/android/volley/Request;->mRequestQueue:Lcom/android/volley/RequestQueue;
return-object p0
.end method
.method public setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;
.registers 2
iput-object p1, p0, Lcom/android/volley/Request;->mRetryPolicy:Lcom/android/volley/RetryPolicy;
return-object p0
.end method
.method public final setSequence(I)Lcom/android/volley/Request;
.registers 3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;
return-object p0
.end method
.method public final setShouldCache(Z)Lcom/android/volley/Request;
.registers 2
iput-boolean p1, p0, Lcom/android/volley/Request;->mShouldCache:Z
return-object p0
.end method
.method public setTag(Ljava/lang/Object;)Lcom/android/volley/Request;
.registers 2
iput-object p1, p0, Lcom/android/volley/Request;->mTag:Ljava/lang/Object;
return-object p0
.end method
.method public final shouldCache()Z
.registers 2
iget-boolean v0, p0, Lcom/android/volley/Request;->mShouldCache:Z
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "0x"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/android/volley/Request;->getTrafficStatsTag()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
iget-boolean v1, p0, Lcom/android/volley/Request;->mCanceled:Z
if-eqz v1, :cond_5c
const-string/jumbo v1, "[X] "
:goto_21
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
:cond_5c
const-string/jumbo v1, "[ ] "
goto :goto_21
.end method