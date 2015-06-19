.class public abstract Lcom/google/b/c/e;
.super Lcom/google/b/c/i;
.source "ForwardingCollection.java"
.implements Ljava/util/Collection;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/b/c/i;-><init>()V
return-void
.end method
.method public add(Ljava/lang/Object;)Z
.registers 3
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public addAll(Ljava/util/Collection;)Z
.registers 3
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public abstract b()Ljava/util/Collection;
.end method
.method public synthetic c()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
return-object v0
.end method
.method public clear()V
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->clear()V
return-void
.end method
.method public contains(Ljava/lang/Object;)Z
.registers 3
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public containsAll(Ljava/util/Collection;)Z
.registers 3
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public isEmpty()Z
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z
move-result v0
return v0
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public remove(Ljava/lang/Object;)Z
.registers 3
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public removeAll(Ljava/util/Collection;)Z
.registers 3
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public retainAll(Ljava/util/Collection;)Z
.registers 3
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public size()I
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->size()I
move-result v0
return v0
.end method
.method public toArray()[Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Lcom/google/b/c/e;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method