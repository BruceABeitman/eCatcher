.class final Lcom/google/common/collect/y;
.super Lcom/google/common/collect/w;
.source "SourceFile"
.implements Lcom/google/common/collect/u;
.field volatile e:J
.field  f:Lcom/google/common/collect/u;
.field  g:Lcom/google/common/collect/u;
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/u;)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/w;-><init>(Ljava/lang/Object;ILcom/google/common/collect/u;)V
const-wide v0, 0x7fffffffffffffffL
iput-wide v0, p0, Lcom/google/common/collect/y;->e:J
invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/y;->f:Lcom/google/common/collect/u;
invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/y;->g:Lcom/google/common/collect/u;
return-void
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/google/common/collect/y;->e:J
return-void
.end method
.method public final a(Lcom/google/common/collect/u;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/y;->f:Lcom/google/common/collect/u;
return-void
.end method
.method public final b(Lcom/google/common/collect/u;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/y;->g:Lcom/google/common/collect/u;
return-void
.end method
.method public final e()J
.registers 3
iget-wide v0, p0, Lcom/google/common/collect/y;->e:J
return-wide v0
.end method
.method public final f()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/y;->f:Lcom/google/common/collect/u;
return-object v0
.end method
.method public final g()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/y;->g:Lcom/google/common/collect/u;
return-object v0
.end method