.class public Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;
.super Ljava/lang/Object;
.source "LimitedAgeMemoryCache.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final loadingDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final maxAge:J


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
            "<TK;TV;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->loadingDates:Ljava/util/Map;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->maxAge:J

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->clear()V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->maxAge:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_23

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v1, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->remove(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v1, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public keys()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->keys()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v1, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->loadingDates:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return v0
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->remove(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
