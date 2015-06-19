.class  Lcom/lenovo/anyshare/sdk/internal/h$a;
.super Ljava/lang/Object;
.source "ShareRecordCache.java"
.field  a:Ljava/util/Map;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/h$a;->a:Ljava/util/Map;
return-void
.end method
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord;
.registers 5
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/h$a;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_15
if-nez v0, :cond_e
const/4 v1, 0x0
:goto_c
monitor-exit p0
return-object v1
:cond_e
:try_start_e
invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/ShareRecord;
:try_end_14
.catchall {:try_start_e .. :try_end_14} :catchall_15
goto :goto_c
:catchall_15
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/Collection;
.registers 4
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/h$a;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
if-nez v0, :cond_12
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:goto_10
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_17
monitor-exit p0
return-object v1
:cond_12
:try_start_12
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_17
move-result-object v1
goto :goto_10
:catchall_17
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized a(Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p2}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->emptyContent()Z
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_25
move-result v1
if-eqz v1, :cond_9
:goto_7
monitor-exit p0
return-void
:try_start_9
:cond_9
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/h$a;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
if-nez v0, :cond_1d
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/h$a;->a:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1d
invoke-virtual {p2}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getShareId()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_24
.catchall {:try_start_9 .. :try_end_24} :catchall_25
goto :goto_7
:catchall_25
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized a(Ljava/lang/String;Ljava/util/List;)V
.registers 7
monitor-enter p0
:try_start_1
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/h$a;->a:Ljava/util/Map;
invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/Map;
if-nez v2, :cond_15
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/h$a;->a:Ljava/util/Map;
invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_15
invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_19
:cond_19
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_36
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->emptyContent()Z
move-result v3
if-nez v3, :cond_19
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getShareId()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_32
.catchall {:try_start_1 .. :try_end_32} :catchall_33
goto :goto_19
:catchall_33
move-exception v3
monitor-exit p0
throw v3
:cond_36
:try_start_36
invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
move-result v3
if-eqz v3, :cond_41
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/h$a;->a:Ljava/util/Map;
invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_41
.catchall {:try_start_36 .. :try_end_41} :catchall_33
:cond_41
monitor-exit p0
return-void
.end method
.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Z
.registers 5
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/h$a;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_13
if-nez v0, :cond_e
const/4 v1, 0x0
:goto_c
monitor-exit p0
return v1
:cond_e
:try_start_e
invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
:try_end_11
.catchall {:try_start_e .. :try_end_11} :catchall_13
move-result v1
goto :goto_c
:catchall_13
move-exception v1
monitor-exit p0
throw v1
.end method