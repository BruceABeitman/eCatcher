.class public Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;
.super Ljava/lang/Object;
.source "CacheConfig.java"
.field public static final DEFAULT_ASYNCHRONOUS_WORKERS_CORE:I = 0x1
.field public static final DEFAULT_ASYNCHRONOUS_WORKERS_MAX:I = 0x1
.field public static final DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS:I = 0x3c
.field public static final DEFAULT_HEURISTIC_CACHING_ENABLED:Z = false
.field public static final DEFAULT_HEURISTIC_COEFFICIENT:F = 0.1f
.field public static final DEFAULT_HEURISTIC_LIFETIME:J = 0x0L
.field public static final DEFAULT_MAX_CACHE_ENTRIES:I = 0x3e8
.field public static final DEFAULT_MAX_OBJECT_SIZE_BYTES:I = 0x2000
.field public static final DEFAULT_MAX_UPDATE_RETRIES:I = 0x1
.field public static final DEFAULT_REVALIDATION_QUEUE_SIZE:I = 0x64
.field private asynchronousWorkerIdleLifetimeSecs:I
.field private asynchronousWorkersCore:I
.field private asynchronousWorkersMax:I
.field private heuristicCachingEnabled:Z
.field private heuristicCoefficient:F
.field private heuristicDefaultLifetime:J
.field private isSharedCache:Z
.field private maxCacheEntries:I
.field private maxObjectSizeBytes:I
.field private maxUpdateRetries:I
.field private revalidationQueueSize:I
.method public constructor <init>()V
.registers 4
const/4 v2, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x2000
iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxObjectSizeBytes:I
const/16 v0, 0x3e8
iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxCacheEntries:I
iput v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxUpdateRetries:I
const/4 v0, 0x0
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z
const v0, 0x3dcccccd
iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicCoefficient:F
const-wide/16 v0, 0x0
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J
iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isSharedCache:Z
iput v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I
iput v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I
const/16 v0, 0x3c
iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I
const/16 v0, 0x64
iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->revalidationQueueSize:I
return-void
.end method
.method public getAsynchronousWorkerIdleLifetimeSecs()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I
return v0
.end method
.method public getAsynchronousWorkersCore()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I
return v0
.end method
.method public getAsynchronousWorkersMax()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I
return v0
.end method
.method public getHeuristicCoefficient()F
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicCoefficient:F
return v0
.end method
.method public getHeuristicDefaultLifetime()J
.registers 3
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J
return-wide v0
.end method
.method public getMaxCacheEntries()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxCacheEntries:I
return v0
.end method
.method public getMaxObjectSizeBytes()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxObjectSizeBytes:I
return v0
.end method
.method public getMaxUpdateRetries()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxUpdateRetries:I
return v0
.end method
.method public getRevalidationQueueSize()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->revalidationQueueSize:I
return v0
.end method
.method public isHeuristicCachingEnabled()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z
return v0
.end method
.method public isSharedCache()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isSharedCache:Z
return v0
.end method
.method public setAsynchronousWorkerIdleLifetimeSecs(I)V
.registers 2
iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I
return-void
.end method
.method public setAsynchronousWorkersCore(I)V
.registers 2
iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I
return-void
.end method
.method public setAsynchronousWorkersMax(I)V
.registers 2
iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I
return-void
.end method
.method public setHeuristicCachingEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z
return-void
.end method
.method public setHeuristicCoefficient(F)V
.registers 2
iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicCoefficient:F
return-void
.end method
.method public setHeuristicDefaultLifetime(J)V
.registers 3
iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J
return-void
.end method
.method public setMaxCacheEntries(I)V
.registers 2
iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxCacheEntries:I
return-void
.end method
.method public setMaxObjectSizeBytes(I)V
.registers 2
iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxObjectSizeBytes:I
return-void
.end method
.method public setMaxUpdateRetries(I)V
.registers 2
iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxUpdateRetries:I
return-void
.end method
.method public setRevalidationQueueSize(I)V
.registers 2
iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->revalidationQueueSize:I
return-void
.end method
.method public setSharedCache(Z)V
.registers 2
iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isSharedCache:Z
return-void
.end method