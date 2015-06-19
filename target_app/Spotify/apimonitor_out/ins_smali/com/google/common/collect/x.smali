.class final Lcom/google/common/collect/x;
.super Lcom/google/common/collect/w;
.source "SourceFile"
.implements Lcom/google/common/collect/u;
.field  e:Lcom/google/common/collect/u;
.field  f:Lcom/google/common/collect/u;
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/u;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/w;-><init>(Ljava/lang/Object;ILcom/google/common/collect/u;)V
invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/x;->e:Lcom/google/common/collect/u;
invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/x;->f:Lcom/google/common/collect/u;
return-void
.end method
.method public final c(Lcom/google/common/collect/u;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/x;->e:Lcom/google/common/collect/u;
return-void
.end method
.method public final d(Lcom/google/common/collect/u;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/x;->f:Lcom/google/common/collect/u;
return-void
.end method
.method public final h()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/x;->e:Lcom/google/common/collect/u;
return-object v0
.end method
.method public final i()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/x;->f:Lcom/google/common/collect/u;
return-object v0
.end method