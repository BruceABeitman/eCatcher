.class public Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;
.super Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;
.source "LargestLimitedMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final valueSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-super {p0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->clear()V

    return-void
.end method

.method protected createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected bridge synthetic createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .registers 3

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;

    move-result-object v0

    return-object v0
.end method

.method protected getSize(Landroid/graphics/Bitmap;)I
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected bridge synthetic getSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method protected removeNext()Landroid/graphics/Bitmap;
    .registers 11

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    monitor-enter v8

    :try_start_b
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v4, :cond_2e

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0

    goto :goto_f

    :cond_2e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v7, v9, :cond_f

    move-object v5, v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    goto :goto_f

    :cond_48
    monitor-exit v8
    :try_end_49
    .catchall {:try_start_b .. :try_end_49} :catchall_4f

    iget-object v7, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :catchall_4f
    move-exception v7

    :try_start_50
    monitor-exit v8
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v7
.end method

.method protected bridge synthetic removeNext()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->removeNext()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
