.class final Lcom/google/b/b/ai;
.super Lcom/google/b/b/q;
.source "LocalCache.java"
.field final synthetic c:Lcom/google/b/b/n;
.method constructor <init>(Lcom/google/b/b/n;Ljava/util/concurrent/ConcurrentMap;)V
.registers 3
iput-object p1, p0, Lcom/google/b/b/ai;->c:Lcom/google/b/b/n;
invoke-direct {p0, p1, p2}, Lcom/google/b/b/q;-><init>(Lcom/google/b/b/n;Ljava/util/concurrent/ConcurrentMap;)V
return-void
.end method
.method public final contains(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lcom/google/b/b/ai;->a:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final iterator()Ljava/util/Iterator;
.registers 3
new-instance v0, Lcom/google/b/b/ah;
iget-object v1, p0, Lcom/google/b/b/ai;->c:Lcom/google/b/b/n;
invoke-direct {v0, v1}, Lcom/google/b/b/ah;-><init>(Lcom/google/b/b/n;)V
return-object v0
.end method
.method public final remove(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lcom/google/b/b/ai;->a:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method