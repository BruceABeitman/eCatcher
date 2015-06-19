.class public Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;
.super Ljava/lang/Object;
.source "LruMemoryCache.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput p1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->maxSize:I

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .registers 5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private trimToSize(I)V
    .registers 8

    :goto_0
    monitor-enter p0

    :try_start_1
    iget v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->size:I

    if-ltz v3, :cond_11

    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->size:I

    if-eqz v3, :cond_36

    :cond_11
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_33
    move-exception v3

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v3

    :cond_36
    :try_start_36
    iget v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->size:I

    if-le v3, p1, :cond_42

    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_44

    :cond_42
    monitor-exit p0

    :goto_43
    return-void

    :cond_44
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_58

    monitor-exit p0

    goto :goto_43

    :cond_58
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->size:I

    invoke-direct {p0, v0, v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->size:I

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_36 .. :try_end_73} :catchall_33

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->trimToSize(I)V

    return-void
.end method

.method public final get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    monitor-enter p0

    :try_start_c
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public final put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    monitor-enter p0

    :try_start_e
    iget v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->size:I

    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->size:I

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2a

    iget v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->size:I

    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_32

    iget v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->maxSize:I

    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->trimToSize(I)V

    const/4 v1, 0x1

    return v1

    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final remove(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    monitor-enter p0

    :try_start_c
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    iget v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->size:I

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_21

    throw v1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "LruCache[maxSize=%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->maxSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
