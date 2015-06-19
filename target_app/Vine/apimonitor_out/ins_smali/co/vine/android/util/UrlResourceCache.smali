.class public abstract Lco/vine/android/util/UrlResourceCache;
.super Ljava/lang/Object;
.source "UrlResourceCache.java"
.field protected static final IO_BUFFER_SIZE:I = 0x1000
.field protected static final LOGGABLE:Z = false
.field static final NEXT_REQUEST_INTERVAL:J = 0xea60L
.field private static final POST_DELAY_MILLIS:J = 0x64L
.field protected static final TAG:Ljava/lang/String; = "ResourceCache"
.field protected static final sExecutor:Ljava/util/concurrent/ExecutorService;
.field private static final sMainHandler:Landroid/os/Handler;
.field private mCacheBinder:Lco/vine/android/util/CacheBinder;
.field protected final mContext:Landroid/content/Context;
.field final mLock:[I
.field protected final mPendingDownload:Ljava/util/LinkedHashMap;
.field protected final mQueuedDownload:Ljava/util/HashMap;
.field private final mResourceCache:Landroid/support/v4/util/LruCache;
.method static constructor <clinit>()V
.registers 2
const-string v0, "ResourceCache"
const/4 v1, 0x3
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
sput-boolean v0, Lco/vine/android/util/UrlResourceCache;->LOGGABLE:Z
invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
move-result-object v0
sput-object v0, Lco/vine/android/util/UrlResourceCache;->sExecutor:Ljava/util/concurrent/ExecutorService;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
sput-object v0, Lco/vine/android/util/UrlResourceCache;->sMainHandler:Landroid/os/Handler;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;I)V
.registers 7
const/16 v3, 0x14
const/high16 v2, 0x4120
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
new-array v0, v0, [I
iput-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mLock:[I
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mContext:Landroid/content/Context;
new-instance v0, Ljava/util/LinkedHashMap;
const/4 v1, 0x1
invoke-direct {v0, v3, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V
iput-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mPendingDownload:Ljava/util/LinkedHashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0, v3, v2}, Ljava/util/HashMap;-><init>(IF)V
iput-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mQueuedDownload:Ljava/util/HashMap;
if-lez p2, :cond_2b
new-instance v0, Lco/vine/android/util/UrlResourceCache$MemoryLruCache;
invoke-direct {v0, p2}, Lco/vine/android/util/UrlResourceCache$MemoryLruCache;-><init>(I)V
iput-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
:goto_2a
return-void
:cond_2b
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
goto :goto_2a
.end method
.method static synthetic access$000()Landroid/os/Handler;
.registers 1
sget-object v0, Lco/vine/android/util/UrlResourceCache;->sMainHandler:Landroid/os/Handler;
return-object v0
.end method
.method private queueResourceLoad(JLjava/lang/Object;Ljava/lang/String;ZZ)Lco/vine/android/util/UrlResource;
.registers 13
invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_34
if-eqz p6, :cond_d
invoke-virtual {p0, p1, p2, p3, p4}, Lco/vine/android/util/UrlResourceCache;->loadResource(JLjava/lang/Object;Ljava/lang/String;)Lco/vine/android/util/UrlResource;
move-result-object v1
:goto_c
return-object v1
:cond_d
iget-object v2, p0, Lco/vine/android/util/UrlResourceCache;->mLock:[I
monitor-enter v2
:try_start_10
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache;->mPendingDownload:Ljava/util/LinkedHashMap;
invoke-virtual {v1, p3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_33
new-instance v0, Lco/vine/android/util/UrlResourceCache$PendingRes;
invoke-direct {v0, p4, p5}, Lco/vine/android/util/UrlResourceCache$PendingRes;-><init>(Ljava/lang/String;Z)V
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache;->mPendingDownload:Ljava/util/LinkedHashMap;
invoke-virtual {v1, p3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache;->mQueuedDownload:Ljava/util/HashMap;
invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lco/vine/android/util/UrlResourceCache;->sMainHandler:Landroid/os/Handler;
new-instance v3, Lco/vine/android/util/UrlResourceCache$QueueRunnable;
invoke-direct {v3, p0, p1, p2}, Lco/vine/android/util/UrlResourceCache$QueueRunnable;-><init>(Lco/vine/android/util/UrlResourceCache;J)V
const-wide/16 v4, 0x64
invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_33
monitor-exit v2
:cond_34
const/4 v1, 0x0
goto :goto_c
:catchall_36
move-exception v1
monitor-exit v2
:try_end_38
.catchall {:try_start_10 .. :try_end_38} :catchall_36
throw v1
.end method
.method public cancel(Ljava/lang/Object;)I
.registers 5
iget-object v2, p0, Lco/vine/android/util/UrlResourceCache;->mLock:[I
monitor-enter v2
:try_start_3
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache;->mQueuedDownload:Ljava/util/HashMap;
invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/util/UrlResourceCache$PendingRes;
if-eqz v0, :cond_15
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache;->mPendingDownload:Ljava/util/LinkedHashMap;
invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
const/4 v1, 0x1
monitor-exit v2
:goto_14
return v1
:cond_15
monitor-exit v2
const/4 v1, 0x0
goto :goto_14
:catchall_18
move-exception v1
monitor-exit v2
:try_end_1a
.catchall {:try_start_3 .. :try_end_1a} :catchall_18
throw v1
.end method
.method public cancel(Ljava/util/List;)I
.registers 7
const/4 v0, 0x0
iget-object v4, p0, Lco/vine/android/util/UrlResourceCache;->mLock:[I
monitor-enter v4
:try_start_4
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
invoke-virtual {p0, v2}, Lco/vine/android/util/UrlResourceCache;->cancel(Ljava/lang/Object;)I
move-result v3
add-int/2addr v0, v3
goto :goto_8
:cond_18
monitor-exit v4
return v0
:catchall_1a
move-exception v3
monitor-exit v4
:try_end_1c
.catchall {:try_start_4 .. :try_end_1c} :catchall_1a
throw v3
.end method
.method public clear()V
.registers 3
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
if-eqz v0, :cond_d
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
monitor-enter v1
:try_start_7
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V
monitor-exit v1
:cond_d
:try_end_d
.catchall {:try_start_7 .. :try_end_d} :catchall_17
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache;->mLock:[I
monitor-enter v1
:try_start_10
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mPendingDownload:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
monitor-exit v1
:try_end_16
.catchall {:try_start_10 .. :try_end_16} :catchall_1a
return-void
:catchall_17
move-exception v0
:try_start_18
monitor-exit v1
:try_end_19
.catchall {:try_start_18 .. :try_end_19} :catchall_17
throw v0
:catchall_1a
move-exception v0
:try_start_1b
monitor-exit v1
:try_end_1c
.catchall {:try_start_1b .. :try_end_1c} :catchall_1a
throw v0
.end method
.method protected final get(JLjava/lang/Object;Ljava/lang/String;Z)Lco/vine/android/util/UrlResource;
.registers 13
const/4 v6, 0x0
move-object v0, p0
move-wide v1, p1
move-object v3, p3
move-object v4, p4
move v5, p5
invoke-virtual/range {v0 .. v6}, Lco/vine/android/util/UrlResourceCache;->get(JLjava/lang/Object;Ljava/lang/String;ZZ)Lco/vine/android/util/UrlResource;
move-result-object v0
return-object v0
.end method
.method protected final get(JLjava/lang/Object;Ljava/lang/String;ZZ)Lco/vine/android/util/UrlResource;
.registers 12
if-nez p4, :cond_4
const/4 v0, 0x0
:goto_3
:cond_3
return-object v0
:cond_4
sget-boolean v1, Lco/vine/android/util/UrlResourceCache;->LOGGABLE:Z
if-eqz v1, :cond_20
const-string v1, "ResourceCache"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Url: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_20
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
if-eqz v1, :cond_72
iget-object v2, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
monitor-enter v2
:try_start_27
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
invoke-virtual {v1, p3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/util/UrlResource;
monitor-exit v2
:goto_30
:try_end_30
.catchall {:try_start_27 .. :try_end_30} :catchall_6f
if-eqz v0, :cond_74
sget-boolean v1, Lco/vine/android/util/UrlResourceCache;->LOGGABLE:Z
if-eqz v1, :cond_50
const-string v1, "ResourceCache"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Have resource: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, v0, Lco/vine/android/util/UrlResource;->url:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_50
iget-object v1, v0, Lco/vine/android/util/UrlResource;->url:Ljava/lang/String;
invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_6a
iget-wide v1, v0, Lco/vine/android/util/UrlResource;->nextRequestTime:J
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-lez v1, :cond_3
iget-wide v1, v0, Lco/vine/android/util/UrlResource;->nextRequestTime:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
cmp-long v1, v1, v3
if-gez v1, :cond_3
:cond_6a
invoke-direct/range {p0 .. p6}, Lco/vine/android/util/UrlResourceCache;->queueResourceLoad(JLjava/lang/Object;Ljava/lang/String;ZZ)Lco/vine/android/util/UrlResource;
move-result-object v0
goto :goto_3
:catchall_6f
move-exception v1
:try_start_70
monitor-exit v2
:try_end_71
.catchall {:try_start_70 .. :try_end_71} :catchall_6f
throw v1
:cond_72
const/4 v0, 0x0
goto :goto_30
:cond_74
sget-boolean v1, Lco/vine/android/util/UrlResourceCache;->LOGGABLE:Z
if-eqz v1, :cond_90
const-string v1, "ResourceCache"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Looking in persistent storage: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_90
invoke-direct/range {p0 .. p6}, Lco/vine/android/util/UrlResourceCache;->queueResourceLoad(JLjava/lang/Object;Ljava/lang/String;ZZ)Lco/vine/android/util/UrlResource;
move-result-object v0
goto/16 :goto_3
.end method
.method public getCacheBinder()Lco/vine/android/util/CacheBinder;
.registers 4
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
if-eqz v0, :cond_1b
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
monitor-enter v1
:try_start_7
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mCacheBinder:Lco/vine/android/util/CacheBinder;
if-nez v0, :cond_14
new-instance v0, Lco/vine/android/util/CacheBinder;
iget-object v2, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
invoke-direct {v0, v2}, Lco/vine/android/util/CacheBinder;-><init>(Landroid/support/v4/util/LruCache;)V
iput-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mCacheBinder:Lco/vine/android/util/CacheBinder;
:cond_14
monitor-exit v1
:try_end_15
.catchall {:try_start_7 .. :try_end_15} :catchall_18
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mCacheBinder:Lco/vine/android/util/CacheBinder;
:goto_17
return-object v0
:catchall_18
move-exception v0
:try_start_19
monitor-exit v1
:try_end_1a
.catchall {:try_start_19 .. :try_end_1a} :catchall_18
throw v0
:cond_1b
const/4 v0, 0x0
goto :goto_17
.end method
.method protected abstract instantiateResource(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/UrlResource;
.end method
.method protected abstract loadResource(JLjava/lang/Object;Ljava/lang/String;)Lco/vine/android/util/UrlResource;
.end method
.method protected abstract obtainResource(Ljava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/UrlResource;
.end method
.method protected abstract onResourceError(Ljava/lang/Object;Lco/vine/android/network/HttpResult;)V
.end method
.method protected abstract onResourceLoaded(Ljava/util/HashMap;)V
.end method
.method public peek(Ljava/lang/Object;)Lco/vine/android/util/UrlResource;
.registers 4
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
if-eqz v0, :cond_14
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
monitor-enter v1
:try_start_7
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/util/UrlResource;
monitor-exit v1
:goto_10
return-object v0
:catchall_11
move-exception v0
monitor-exit v1
:try_end_13
.catchall {:try_start_7 .. :try_end_13} :catchall_11
throw v0
:cond_14
const/4 v0, 0x0
goto :goto_10
.end method
.method public put(Ljava/lang/Object;Lco/vine/android/util/UrlResource;)Lco/vine/android/util/UrlResource;
.registers 5
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
if-eqz v0, :cond_14
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
monitor-enter v1
:try_start_7
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/util/UrlResource;
monitor-exit v1
:goto_10
return-object v0
:catchall_11
move-exception v0
monitor-exit v1
:try_end_13
.catchall {:try_start_7 .. :try_end_13} :catchall_11
throw v0
:cond_14
const/4 v0, 0x0
goto :goto_10
.end method
.method public remove(Ljava/lang/Object;)Lco/vine/android/util/UrlResource;
.registers 4
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
if-eqz v0, :cond_14
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
monitor-enter v1
:try_start_7
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/util/UrlResource;
monitor-exit v1
:goto_10
return-object v0
:catchall_11
move-exception v0
monitor-exit v1
:try_end_13
.catchall {:try_start_7 .. :try_end_13} :catchall_11
throw v0
:cond_14
const/4 v0, 0x0
goto :goto_10
.end method
.method protected abstract saveResource(JLjava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;Z)Lco/vine/android/util/UrlResource;
.end method
.method public snapShot()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method  urlResourceLoaded(Ljava/util/HashMap;)V
.registers 8
invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z
move-result v4
if-eqz v4, :cond_7
:goto_6
return-void
:cond_7
invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_44
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lco/vine/android/util/UrlResource;
iget-object v4, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
if-eqz v4, :cond_34
if-eqz v3, :cond_34
iget-object v5, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
monitor-enter v5
:try_start_2e
iget-object v4, p0, Lco/vine/android/util/UrlResourceCache;->mResourceCache:Landroid/support/v4/util/LruCache;
invoke-virtual {v4, v2, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v5
:cond_34
:try_end_34
.catchall {:try_start_2e .. :try_end_34} :catchall_41
iget-object v5, p0, Lco/vine/android/util/UrlResourceCache;->mLock:[I
monitor-enter v5
:try_start_37
iget-object v4, p0, Lco/vine/android/util/UrlResourceCache;->mPendingDownload:Ljava/util/LinkedHashMap;
invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v5
goto :goto_f
:catchall_3e
move-exception v4
monitor-exit v5
:try_end_40
.catchall {:try_start_37 .. :try_end_40} :catchall_3e
throw v4
:catchall_41
move-exception v4
:try_start_42
monitor-exit v5
:try_end_43
.catchall {:try_start_42 .. :try_end_43} :catchall_41
throw v4
:cond_44
invoke-virtual {p0, p1}, Lco/vine/android/util/UrlResourceCache;->onResourceLoaded(Ljava/util/HashMap;)V
goto :goto_6
.end method