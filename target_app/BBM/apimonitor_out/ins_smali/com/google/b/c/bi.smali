.class final Lcom/google/b/c/bi;
.super Lcom/google/b/c/bg;
.source "MapMakerInternalMap.java"
.implements Lcom/google/b/c/az;
.field volatile e:J
.field  f:Lcom/google/b/c/az;
.field  g:Lcom/google/b/c/az;
.method constructor <init>(Ljava/lang/Object;ILcom/google/b/c/az;)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Lcom/google/b/c/bg;-><init>(Ljava/lang/Object;ILcom/google/b/c/az;)V
const-wide v0, 0x7fffffffffffffffL
iput-wide v0, p0, Lcom/google/b/c/bi;->e:J
invoke-static {}, Lcom/google/b/c/aa;->g()Lcom/google/b/c/az;
move-result-object v0
iput-object v0, p0, Lcom/google/b/c/bi;->f:Lcom/google/b/c/az;
invoke-static {}, Lcom/google/b/c/aa;->g()Lcom/google/b/c/az;
move-result-object v0
iput-object v0, p0, Lcom/google/b/c/bi;->g:Lcom/google/b/c/az;
return-void
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/google/b/c/bi;->e:J
return-void
.end method
.method public final a(Lcom/google/b/c/az;)V
.registers 2
iput-object p1, p0, Lcom/google/b/c/bi;->f:Lcom/google/b/c/az;
return-void
.end method
.method public final b(Lcom/google/b/c/az;)V
.registers 2
iput-object p1, p0, Lcom/google/b/c/bi;->g:Lcom/google/b/c/az;
return-void
.end method
.method public final e()J
.registers 3
iget-wide v0, p0, Lcom/google/b/c/bi;->e:J
return-wide v0
.end method
.method public final f()Lcom/google/b/c/az;
.registers 2
iget-object v0, p0, Lcom/google/b/c/bi;->f:Lcom/google/b/c/az;
return-object v0
.end method
.method public final g()Lcom/google/b/c/az;
.registers 2
iget-object v0, p0, Lcom/google/b/c/bi;->g:Lcom/google/b/c/az;
return-object v0
.end method