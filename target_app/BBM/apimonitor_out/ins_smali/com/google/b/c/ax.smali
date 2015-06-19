.class final Lcom/google/b/c/ax;
.super Ljava/util/AbstractSet;
.source "MapMakerInternalMap.java"
.field final synthetic a:Lcom/google/b/c/aa;
.method constructor <init>(Lcom/google/b/c/aa;)V
.registers 2
iput-object p1, p0, Lcom/google/b/c/ax;->a:Lcom/google/b/c/aa;
invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V
return-void
.end method
.method public final clear()V
.registers 2
iget-object v0, p0, Lcom/google/b/c/ax;->a:Lcom/google/b/c/aa;
invoke-virtual {v0}, Lcom/google/b/c/aa;->clear()V
return-void
.end method
.method public final contains(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lcom/google/b/c/ax;->a:Lcom/google/b/c/aa;
invoke-virtual {v0, p1}, Lcom/google/b/c/aa;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final isEmpty()Z
.registers 2
iget-object v0, p0, Lcom/google/b/c/ax;->a:Lcom/google/b/c/aa;
invoke-virtual {v0}, Lcom/google/b/c/aa;->isEmpty()Z
move-result v0
return v0
.end method
.method public final iterator()Ljava/util/Iterator;
.registers 3
new-instance v0, Lcom/google/b/c/aw;
iget-object v1, p0, Lcom/google/b/c/ax;->a:Lcom/google/b/c/aa;
invoke-direct {v0, v1}, Lcom/google/b/c/aw;-><init>(Lcom/google/b/c/aa;)V
return-object v0
.end method
.method public final remove(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lcom/google/b/c/ax;->a:Lcom/google/b/c/aa;
invoke-virtual {v0, p1}, Lcom/google/b/c/aa;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final size()I
.registers 2
iget-object v0, p0, Lcom/google/b/c/ax;->a:Lcom/google/b/c/aa;
invoke-virtual {v0}, Lcom/google/b/c/aa;->size()I
move-result v0
return v0
.end method