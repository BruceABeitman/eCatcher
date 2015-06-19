.class public Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;
.super Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;
.source "LRULimitedMemoryCache.java"
.field private static final INITIAL_CAPACITY:I = 0xa
.field private static final LOAD_FACTOR:F = 1.1f
.field private final lruCache:Ljava/util/Map;
.method public constructor <init>(I)V
.registers 6
invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;-><init>(I)V
new-instance v0, Ljava/util/LinkedHashMap;
const/16 v1, 0xa
const v2, 0x3f8ccccd
const/4 v3, 0x1
invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V
invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;
return-void
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
invoke-super {p0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->clear()V
return-void
.end method
.method protected createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
.registers 3
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
return-object v0
.end method
.method protected bridge synthetic createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;
.registers 3
check-cast p1, Landroid/graphics/Bitmap;
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
move-result-object v0
return-object v0
.end method
.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 3
iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
return-object v0
.end method
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;
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
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I
move-result v0
return v0
.end method
.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 4
check-cast p1, Ljava/lang/String;
check-cast p2, Landroid/graphics/Bitmap;
invoke-virtual {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
move-result v0
return v0
.end method
.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x1
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public bridge synthetic remove(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->remove(Ljava/lang/String;)V
return-void
.end method
.method public remove(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->remove(Ljava/lang/Object;)V
return-void
.end method
.method protected removeNext()Landroid/graphics/Bitmap;
.registers 7
const/4 v3, 0x0
iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;
monitor-enter v5
:try_start_4
iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;
invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_25
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v4
move-object v0, v4
check-cast v0, Landroid/graphics/Bitmap;
move-object v3, v0
invoke-interface {v2}, Ljava/util/Iterator;->remove()V
:cond_25
monitor-exit v5
return-object v3
:catchall_27
move-exception v4
monitor-exit v5
:try_end_29
.catchall {:try_start_4 .. :try_end_29} :catchall_27
throw v4
.end method
.method protected bridge synthetic removeNext()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->removeNext()Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method