.class final Lcom/google/b/b/bd;
.super Lcom/google/b/b/be;
.source "LocalCache.java"
.implements Lcom/google/b/b/am;
.field volatile a:J
.field  b:Lcom/google/b/b/am;
.field  c:Lcom/google/b/b/am;
.field volatile d:J
.field  e:Lcom/google/b/b/am;
.field  f:Lcom/google/b/b/am;
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/b/b/am;)V
.registers 8
const-wide v1, 0x7fffffffffffffffL
invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/b/b/be;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/b/b/am;)V
iput-wide v1, p0, Lcom/google/b/b/bd;->a:J
invoke-static {}, Lcom/google/b/b/n;->k()Lcom/google/b/b/am;
move-result-object v0
iput-object v0, p0, Lcom/google/b/b/bd;->b:Lcom/google/b/b/am;
invoke-static {}, Lcom/google/b/b/n;->k()Lcom/google/b/b/am;
move-result-object v0
iput-object v0, p0, Lcom/google/b/b/bd;->c:Lcom/google/b/b/am;
iput-wide v1, p0, Lcom/google/b/b/bd;->d:J
invoke-static {}, Lcom/google/b/b/n;->k()Lcom/google/b/b/am;
move-result-object v0
iput-object v0, p0, Lcom/google/b/b/bd;->e:Lcom/google/b/b/am;
invoke-static {}, Lcom/google/b/b/n;->k()Lcom/google/b/b/am;
move-result-object v0
iput-object v0, p0, Lcom/google/b/b/bd;->f:Lcom/google/b/b/am;
return-void
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/google/b/b/bd;->a:J
return-void
.end method
.method public final a(Lcom/google/b/b/am;)V
.registers 2
iput-object p1, p0, Lcom/google/b/b/bd;->b:Lcom/google/b/b/am;
return-void
.end method
.method public final b(J)V
.registers 3
iput-wide p1, p0, Lcom/google/b/b/bd;->d:J
return-void
.end method
.method public final b(Lcom/google/b/b/am;)V
.registers 2
iput-object p1, p0, Lcom/google/b/b/bd;->c:Lcom/google/b/b/am;
return-void
.end method
.method public final c(Lcom/google/b/b/am;)V
.registers 2
iput-object p1, p0, Lcom/google/b/b/bd;->e:Lcom/google/b/b/am;
return-void
.end method
.method public final d(Lcom/google/b/b/am;)V
.registers 2
iput-object p1, p0, Lcom/google/b/b/bd;->f:Lcom/google/b/b/am;
return-void
.end method
.method public final e()J
.registers 3
iget-wide v0, p0, Lcom/google/b/b/bd;->a:J
return-wide v0
.end method
.method public final f()Lcom/google/b/b/am;
.registers 2
iget-object v0, p0, Lcom/google/b/b/bd;->b:Lcom/google/b/b/am;
return-object v0
.end method
.method public final g()Lcom/google/b/b/am;
.registers 2
iget-object v0, p0, Lcom/google/b/b/bd;->c:Lcom/google/b/b/am;
return-object v0
.end method
.method public final h()J
.registers 3
iget-wide v0, p0, Lcom/google/b/b/bd;->d:J
return-wide v0
.end method
.method public final i()Lcom/google/b/b/am;
.registers 2
iget-object v0, p0, Lcom/google/b/b/bd;->e:Lcom/google/b/b/am;
return-object v0
.end method
.method public final j()Lcom/google/b/b/am;
.registers 2
iget-object v0, p0, Lcom/google/b/b/bd;->f:Lcom/google/b/b/am;
return-object v0
.end method