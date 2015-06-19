.class final Lcom/google/common/collect/af;
.super Lcom/google/common/collect/ae;
.source "SourceFile"
.implements Lcom/google/common/collect/u;
.field  d:Lcom/google/common/collect/u;
.field  e:Lcom/google/common/collect/u;
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/u;)V
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ae;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/u;)V
invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/af;->d:Lcom/google/common/collect/u;
invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/af;->e:Lcom/google/common/collect/u;
return-void
.end method
.method public final c(Lcom/google/common/collect/u;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/af;->d:Lcom/google/common/collect/u;
return-void
.end method
.method public final d(Lcom/google/common/collect/u;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/af;->e:Lcom/google/common/collect/u;
return-void
.end method
.method public final h()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/af;->d:Lcom/google/common/collect/u;
return-object v0
.end method
.method public final i()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/af;->e:Lcom/google/common/collect/u;
return-object v0
.end method