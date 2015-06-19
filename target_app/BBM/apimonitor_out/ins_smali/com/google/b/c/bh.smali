.class final Lcom/google/b/c/bh;
.super Lcom/google/b/c/bg;
.source "MapMakerInternalMap.java"
.implements Lcom/google/b/c/az;
.field  e:Lcom/google/b/c/az;
.field  f:Lcom/google/b/c/az;
.method constructor <init>(Ljava/lang/Object;ILcom/google/b/c/az;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/google/b/c/bg;-><init>(Ljava/lang/Object;ILcom/google/b/c/az;)V
invoke-static {}, Lcom/google/b/c/aa;->g()Lcom/google/b/c/az;
move-result-object v0
iput-object v0, p0, Lcom/google/b/c/bh;->e:Lcom/google/b/c/az;
invoke-static {}, Lcom/google/b/c/aa;->g()Lcom/google/b/c/az;
move-result-object v0
iput-object v0, p0, Lcom/google/b/c/bh;->f:Lcom/google/b/c/az;
return-void
.end method
.method public final c(Lcom/google/b/c/az;)V
.registers 2
iput-object p1, p0, Lcom/google/b/c/bh;->e:Lcom/google/b/c/az;
return-void
.end method
.method public final d(Lcom/google/b/c/az;)V
.registers 2
iput-object p1, p0, Lcom/google/b/c/bh;->f:Lcom/google/b/c/az;
return-void
.end method
.method public final h()Lcom/google/b/c/az;
.registers 2
iget-object v0, p0, Lcom/google/b/c/bh;->e:Lcom/google/b/c/az;
return-object v0
.end method
.method public final i()Lcom/google/b/c/az;
.registers 2
iget-object v0, p0, Lcom/google/b/c/bh;->f:Lcom/google/b/c/az;
return-object v0
.end method