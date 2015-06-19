.class  Lcom/google/common/collect/MapMaker$NullConcurrentMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;
.field private final removalCause:Lcom/google/common/collect/MapMaker$RemovalCause;
.field private final removalListener:Lcom/google/common/collect/l;
.method constructor <init>(Lcom/google/common/collect/MapMaker;)V
.registers 3
invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V
invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/collect/l;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalListener:Lcom/google/common/collect/l;
iget-object v0, p1, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;
iput-object v0, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalCause:Lcom/google/common/collect/MapMaker$RemovalCause;
return-void
.end method
.method public containsKey(Ljava/lang/Object;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public containsValue(Ljava/lang/Object;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public entrySet()Ljava/util/Set;
.registers 2
invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/google/common/collect/MapMaker$RemovalNotification;
iget-object v1, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalCause:Lcom/google/common/collect/MapMaker$RemovalCause;
invoke-direct {v0, p1, p2, v1}, Lcom/google/common/collect/MapMaker$RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
iget-object v0, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalListener:Lcom/google/common/collect/l;
const/4 v0, 0x0
return-object v0
.end method
.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x0
return-object v0
.end method
.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 5
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x0
return v0
.end method