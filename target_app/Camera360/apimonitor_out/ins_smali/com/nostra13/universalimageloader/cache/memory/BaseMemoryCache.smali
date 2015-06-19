.class public abstract Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;
.super Ljava/lang/Object;
.source "BaseMemoryCache.java"
.implements Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
.field private final softMap:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;
return-void
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method
.method protected abstract createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;
.end method
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
const/4 v1, 0x0
iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;
invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/Reference;
if-eqz v0, :cond_f
invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
move-result-object v1
:cond_f
return-object v1
.end method
.method public keys()Ljava/util/Collection;
.registers 4
iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;
monitor-enter v1
:try_start_3
new-instance v0, Ljava/util/HashSet;
iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;
invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v2
invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
monitor-exit v1
return-object v0
:catchall_10
move-exception v0
monitor-exit v1
:try_end_12
.catchall {:try_start_3 .. :try_end_12} :catchall_10
throw v0
.end method
.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 5
iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;
invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;
move-result-object v1
invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x1
return v0
.end method
.method public remove(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method