.class final Lcom/google/common/collect/ah;
.super Lcom/google/common/collect/ae;
.source "SourceFile"
.implements Lcom/google/common/collect/u;
.field volatile d:J
.field  e:Lcom/google/common/collect/u;
.field  f:Lcom/google/common/collect/u;
.field  g:Lcom/google/common/collect/u;
.field  h:Lcom/google/common/collect/u;
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/u;)V
.registers 7
invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ae;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/u;)V
const-wide v0, 0x7fffffffffffffffL
iput-wide v0, p0, Lcom/google/common/collect/ah;->d:J
invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/ah;->e:Lcom/google/common/collect/u;
invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/ah;->f:Lcom/google/common/collect/u;
invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/ah;->g:Lcom/google/common/collect/u;
invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/ah;->h:Lcom/google/common/collect/u;
return-void
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/google/common/collect/ah;->d:J
return-void
.end method
.method public final a(Lcom/google/common/collect/u;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/ah;->e:Lcom/google/common/collect/u;
return-void
.end method
.method public final b(Lcom/google/common/collect/u;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/ah;->f:Lcom/google/common/collect/u;
return-void
.end method
.method public final c(Lcom/google/common/collect/u;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/ah;->g:Lcom/google/common/collect/u;
return-void
.end method
.method public final d(Lcom/google/common/collect/u;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/ah;->h:Lcom/google/common/collect/u;
return-void
.end method
.method public final e()J
.registers 3
iget-wide v0, p0, Lcom/google/common/collect/ah;->d:J
return-wide v0
.end method
.method public final f()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ah;->e:Lcom/google/common/collect/u;
return-object v0
.end method
.method public final g()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ah;->f:Lcom/google/common/collect/u;
return-object v0
.end method
.method public final h()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ah;->g:Lcom/google/common/collect/u;
return-object v0
.end method
.method public final i()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ah;->h:Lcom/google/common/collect/u;
return-object v0
.end method