.class final Lcom/google/b/b/t;
.super Lcom/google/b/b/r;
.source "LocalCache.java"
.field  a:Lcom/google/b/b/am;
.field  b:Lcom/google/b/b/am;
.field final synthetic c:Lcom/google/b/b/s;
.method constructor <init>(Lcom/google/b/b/s;)V
.registers 2
iput-object p1, p0, Lcom/google/b/b/t;->c:Lcom/google/b/b/s;
invoke-direct {p0}, Lcom/google/b/b/r;-><init>()V
iput-object p0, p0, Lcom/google/b/b/t;->a:Lcom/google/b/b/am;
iput-object p0, p0, Lcom/google/b/b/t;->b:Lcom/google/b/b/am;
return-void
.end method
.method public final a(J)V
.registers 3
return-void
.end method
.method public final a(Lcom/google/b/b/am;)V
.registers 2
iput-object p1, p0, Lcom/google/b/b/t;->a:Lcom/google/b/b/am;
return-void
.end method
.method public final b(Lcom/google/b/b/am;)V
.registers 2
iput-object p1, p0, Lcom/google/b/b/t;->b:Lcom/google/b/b/am;
return-void
.end method
.method public final e()J
.registers 3
const-wide v0, 0x7fffffffffffffffL
return-wide v0
.end method
.method public final f()Lcom/google/b/b/am;
.registers 2
iget-object v0, p0, Lcom/google/b/b/t;->a:Lcom/google/b/b/am;
return-object v0
.end method
.method public final g()Lcom/google/b/b/am;
.registers 2
iget-object v0, p0, Lcom/google/b/b/t;->b:Lcom/google/b/b/am;
return-object v0
.end method