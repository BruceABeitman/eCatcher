.class abstract Lcom/google/common/collect/ImmutableAsList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V
return-void
.end method
.method final a()Z
.registers 2
invoke-virtual {p0}, Lcom/google/common/collect/ImmutableAsList;->d()Lcom/google/common/collect/ImmutableCollection;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->a()Z
move-result v0
return v0
.end method
.method public contains(Ljava/lang/Object;)Z
.registers 3
invoke-virtual {p0}, Lcom/google/common/collect/ImmutableAsList;->d()Lcom/google/common/collect/ImmutableCollection;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method abstract d()Lcom/google/common/collect/ImmutableCollection;
.end method
.method public isEmpty()Z
.registers 2
invoke-virtual {p0}, Lcom/google/common/collect/ImmutableAsList;->d()Lcom/google/common/collect/ImmutableCollection;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z
move-result v0
return v0
.end method
.method public size()I
.registers 2
invoke-virtual {p0}, Lcom/google/common/collect/ImmutableAsList;->d()Lcom/google/common/collect/ImmutableCollection;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->size()I
move-result v0
return v0
.end method
.method  writeReplace()Ljava/lang/Object;
.registers 3
new-instance v0, Lcom/google/common/collect/ImmutableAsList$SerializedForm;
invoke-virtual {p0}, Lcom/google/common/collect/ImmutableAsList;->d()Lcom/google/common/collect/ImmutableCollection;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableAsList$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableCollection;)V
return-object v0
.end method