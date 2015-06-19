.class final Lcom/google/b/c/bp;
.super Lcom/google/b/c/bo;
.source "MapMakerInternalMap.java"
.implements Lcom/google/b/c/az;
.field  d:Lcom/google/b/c/az;
.field  e:Lcom/google/b/c/az;
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/b/c/az;)V
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/b/c/bo;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/b/c/az;)V
invoke-static {}, Lcom/google/b/c/aa;->g()Lcom/google/b/c/az;
move-result-object v0
iput-object v0, p0, Lcom/google/b/c/bp;->d:Lcom/google/b/c/az;
invoke-static {}, Lcom/google/b/c/aa;->g()Lcom/google/b/c/az;
move-result-object v0
iput-object v0, p0, Lcom/google/b/c/bp;->e:Lcom/google/b/c/az;
return-void
.end method
.method public final c(Lcom/google/b/c/az;)V
.registers 2
iput-object p1, p0, Lcom/google/b/c/bp;->d:Lcom/google/b/c/az;
return-void
.end method
.method public final d(Lcom/google/b/c/az;)V
.registers 2
iput-object p1, p0, Lcom/google/b/c/bp;->e:Lcom/google/b/c/az;
return-void
.end method
.method public final h()Lcom/google/b/c/az;
.registers 2
iget-object v0, p0, Lcom/google/b/c/bp;->d:Lcom/google/b/c/az;
return-object v0
.end method
.method public final i()Lcom/google/b/c/az;
.registers 2
iget-object v0, p0, Lcom/google/b/c/bp;->e:Lcom/google/b/c/az;
return-object v0
.end method