.class final Lcom/google/b/b/au;
.super Lcom/google/b/b/aw;
.source "LocalCache.java"
.implements Lcom/google/b/b/am;
.field volatile a:J
.field  b:Lcom/google/b/b/am;
.field  c:Lcom/google/b/b/am;
.method constructor <init>(Ljava/lang/Object;ILcom/google/b/b/am;)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Lcom/google/b/b/aw;-><init>(Ljava/lang/Object;ILcom/google/b/b/am;)V
const-wide v0, 0x7fffffffffffffffL
iput-wide v0, p0, Lcom/google/b/b/au;->a:J
invoke-static {}, Lcom/google/b/b/n;->k()Lcom/google/b/b/am;
move-result-object v0
iput-object v0, p0, Lcom/google/b/b/au;->b:Lcom/google/b/b/am;
invoke-static {}, Lcom/google/b/b/n;->k()Lcom/google/b/b/am;
move-result-object v0
iput-object v0, p0, Lcom/google/b/b/au;->c:Lcom/google/b/b/am;
return-void
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/google/b/b/au;->a:J
return-void
.end method
.method public final a(Lcom/google/b/b/am;)V
.registers 2
iput-object p1, p0, Lcom/google/b/b/au;->b:Lcom/google/b/b/am;
return-void
.end method
.method public final b(Lcom/google/b/b/am;)V
.registers 2
iput-object p1, p0, Lcom/google/b/b/au;->c:Lcom/google/b/b/am;
return-void
.end method
.method public final e()J
.registers 3
iget-wide v0, p0, Lcom/google/b/b/au;->a:J
return-wide v0
.end method
.method public final f()Lcom/google/b/b/am;
.registers 2
iget-object v0, p0, Lcom/google/b/b/au;->b:Lcom/google/b/b/am;
return-object v0
.end method
.method public final g()Lcom/google/b/b/am;
.registers 2
iget-object v0, p0, Lcom/google/b/b/au;->c:Lcom/google/b/b/am;
return-object v0
.end method