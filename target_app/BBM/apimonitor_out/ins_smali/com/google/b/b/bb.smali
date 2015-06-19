.class final Lcom/google/b/b/bb;
.super Lcom/google/b/b/q;
.source "LocalCache.java"
.field final synthetic c:Lcom/google/b/b/n;
.method constructor <init>(Lcom/google/b/b/n;Ljava/util/concurrent/ConcurrentMap;)V
.registers 3
iput-object p1, p0, Lcom/google/b/b/bb;->c:Lcom/google/b/b/n;
invoke-direct {p0, p1, p2}, Lcom/google/b/b/q;-><init>(Lcom/google/b/b/n;Ljava/util/concurrent/ConcurrentMap;)V
return-void
.end method
.method public final contains(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lcom/google/b/b/bb;->a:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final iterator()Ljava/util/Iterator;
.registers 3
new-instance v0, Lcom/google/b/b/az;
iget-object v1, p0, Lcom/google/b/b/bb;->c:Lcom/google/b/b/n;
invoke-direct {v0, v1}, Lcom/google/b/b/az;-><init>(Lcom/google/b/b/n;)V
return-object v0
.end method