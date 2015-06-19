.class public Lcom/lenovo/anyshare/sdk/internal/an;
.super Ljava/lang/Object;
.source "CopyOnWriteHashMap.java"
.implements Ljava/util/Map;
.field protected volatile a:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/an;->a()Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
return-void
.end method
.method protected a()Ljava/util/Map;
.registers 2
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
return-object v0
.end method
.method protected b()Ljava/util/Map;
.registers 3
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/an;->a()Ljava/util/Map;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
return-object v0
.end method
.method public declared-synchronized clear()V
.registers 2
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/an;->a()Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public containsKey(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public containsValue(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public entrySet()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
return v0
.end method
.method public keySet()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/an;->b()Ljava/util/Map;
move-result-object v0
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_d
monitor-exit p0
return-object v1
:catchall_d
move-exception v2
monitor-exit p0
throw v2
.end method
.method public declared-synchronized putAll(Ljava/util/Map;)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/an;->b()Ljava/util/Map;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/an;->b()Ljava/util/Map;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_d
monitor-exit p0
return-object v1
:catchall_d
move-exception v2
monitor-exit p0
throw v2
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
return v0
.end method
.method public values()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/an;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
return-object v0
.end method