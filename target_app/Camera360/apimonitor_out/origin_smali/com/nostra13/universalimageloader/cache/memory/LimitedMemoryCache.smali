.class public abstract Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;
.super Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;
.source "LimitedMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final MAX_NORMAL_CACHE_SIZE:I = 0x1000000

.field private static final MAX_NORMAL_CACHE_SIZE_IN_MB:I = 0x10


# instance fields
.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final hardCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final sizeLimit:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    iput p1, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->sizeLimit:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v0, 0x100

    if-le p1, v0, :cond_2d

    const-string/jumbo v0, "You set too large memory cache size (more than %1$d Mb)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-super {p0}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->clear()V

    return-void
.end method

.method protected abstract getSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method protected getSizeLimit()I
    .registers 2

    iget v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->sizeLimit:I

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->getSize(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->getSizeLimit()I

    move-result v3

    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ge v4, v3, :cond_38

    :cond_11
    :goto_11
    add-int v5, v0, v4

    if-le v5, v3, :cond_2d

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->removeNext()Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v2}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->getSize(Ljava/lang/Object;)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_11

    :cond_2d
    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    const/4 v1, 0x1

    :cond_38
    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return v1
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->getSize(Ljava/lang/Object;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_18
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract removeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method
