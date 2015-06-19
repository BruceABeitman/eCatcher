.class final Lcom/google/b/c/bq;
.super Lcom/google/b/c/bo;
.source "MapMakerInternalMap.java"
.implements Lcom/google/b/c/az;
.field volatile d:J
.field  e:Lcom/google/b/c/az;
.field  f:Lcom/google/b/c/az;
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/b/c/az;)V
.registers 7
invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/b/c/bo;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/b/c/az;)V
const-wide v0, 0x7fffffffffffffffL
iput-wide v0, p0, Lcom/google/b/c/bq;->d:J
invoke-static {}, Lcom/google/b/c/aa;->g()Lcom/google/b/c/az;
move-result-object v0
iput-object v0, p0, Lcom/google/b/c/bq;->e:Lcom/google/b/c/az;
invoke-static {}, Lcom/google/b/c/aa;->g()Lcom/google/b/c/az;
move-result-object v0
iput-object v0, p0, Lcom/google/b/c/bq;->f:Lcom/google/b/c/az;
return-void
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/google/b/c/bq;->d:J
return-void
.end method
.method public final a(Lcom/google/b/c/az;)V
.registers 2
iput-object p1, p0, Lcom/google/b/c/bq;->e:Lcom/google/b/c/az;
return-void
.end method
.method public final b(Lcom/google/b/c/az;)V
.registers 2
iput-object p1, p0, Lcom/google/b/c/bq;->f:Lcom/google/b/c/az;
return-void
.end method
.method public final e()J
.registers 3
iget-wide v0, p0, Lcom/google/b/c/bq;->d:J
return-wide v0
.end method
.method public final f()Lcom/google/b/c/az;
.registers 2
iget-object v0, p0, Lcom/google/b/c/bq;->e:Lcom/google/b/c/az;
return-object v0
.end method
.method public final g()Lcom/google/b/c/az;
.registers 2
iget-object v0, p0, Lcom/google/b/c/bq;->f:Lcom/google/b/c/az;
return-object v0
.end method