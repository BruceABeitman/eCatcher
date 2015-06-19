.class final Lcom/google/common/collect/q$1;
.super Lcom/google/common/collect/m;
.source "SourceFile"
.field  a:Lcom/google/common/collect/u;
.field  b:Lcom/google/common/collect/u;
.field final synthetic c:Lcom/google/common/collect/q;
.method constructor <init>(Lcom/google/common/collect/q;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/q$1;->c:Lcom/google/common/collect/q;
invoke-direct {p0}, Lcom/google/common/collect/m;-><init>()V
iput-object p0, p0, Lcom/google/common/collect/q$1;->a:Lcom/google/common/collect/u;
iput-object p0, p0, Lcom/google/common/collect/q$1;->b:Lcom/google/common/collect/u;
return-void
.end method
.method public final a(J)V
.registers 3
return-void
.end method
.method public final a(Lcom/google/common/collect/u;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/q$1;->a:Lcom/google/common/collect/u;
return-void
.end method
.method public final b(Lcom/google/common/collect/u;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/q$1;->b:Lcom/google/common/collect/u;
return-void
.end method
.method public final e()J
.registers 3
const-wide v0, 0x7fffffffffffffffL
return-wide v0
.end method
.method public final f()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/q$1;->a:Lcom/google/common/collect/u;
return-object v0
.end method
.method public final g()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/q$1;->b:Lcom/google/common/collect/u;
return-object v0
.end method