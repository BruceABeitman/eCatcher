.class abstract Lcom/google/b/b/q;
.super Ljava/util/AbstractSet;
.source "LocalCache.java"
.field final a:Ljava/util/concurrent/ConcurrentMap;
.field final synthetic b:Lcom/google/b/b/n;
.method constructor <init>(Lcom/google/b/b/n;Ljava/util/concurrent/ConcurrentMap;)V
.registers 3
iput-object p1, p0, Lcom/google/b/b/q;->b:Lcom/google/b/b/n;
invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V
iput-object p2, p0, Lcom/google/b/b/q;->a:Ljava/util/concurrent/ConcurrentMap;
return-void
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/google/b/b/q;->a:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V
return-void
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Lcom/google/b/b/q;->a:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z
move-result v0
return v0
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/google/b/b/q;->a:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I
move-result v0
return v0
.end method