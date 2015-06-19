.class public Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;
.super Ljava/lang/Object;
.source "FuzzyKeyMemoryCache.java"
.implements Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
.field private final cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
.field private final keyComparator:Ljava/util/Comparator;
.method public constructor <init>(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;Ljava/util/Comparator;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
iput-object p2, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;
return-void
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->clear()V
return-void
.end method
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public keys()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->keys()Ljava/util/Collection;
move-result-object v0
return-object v0
.end method
.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 8
iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
monitor-enter v4
const/4 v2, 0x0
:try_start_4
iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
invoke-interface {v3}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->keys()Ljava/util/Collection;
move-result-object v3
invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_21
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;
invoke-interface {v3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v3
if-nez v3, :cond_e
move-object v2, v0
:cond_21
if-eqz v2, :cond_28
iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
invoke-interface {v3, v2}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->remove(Ljava/lang/Object;)V
:cond_28
monitor-exit v4
:try_end_29
.catchall {:try_start_4 .. :try_end_29} :catchall_30
iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
invoke-interface {v3, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v3
return v3
:catchall_30
move-exception v3
:try_start_31
monitor-exit v4
:try_end_32
.catchall {:try_start_31 .. :try_end_32} :catchall_30
throw v3
.end method
.method public remove(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->remove(Ljava/lang/Object;)V
return-void
.end method