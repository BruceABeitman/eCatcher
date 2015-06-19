.class public abstract Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;
.super Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;
.source "LimitedDiscCache.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final lastUsageDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeLimit:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;-><init>(Ljava/io/File;Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    iput p3, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->sizeLimit:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->calculateCacheSizeAndFillUsageMap()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private calculateCacheSizeAndFillUsageMap()V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache$1;

    invoke-direct {v1, p0}, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache$1;-><init>(Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-super {p0}, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;->clear()V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    invoke-super {p0, p1}, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    iget-object v2, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getCacheSize()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected abstract getSize(Ljava/io/File;)I
.end method

.method public getSizeLimit()I
    .registers 2

    iget v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->sizeLimit:I

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Z)V
    .registers 4

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    return-void
.end method
