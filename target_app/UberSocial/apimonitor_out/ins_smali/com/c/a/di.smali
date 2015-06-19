.class  Lcom/c/a/di;
.super Ljava/lang/Object;
.implements Ljava/util/concurrent/Callable;
.field final a:Lcom/c/a/j;
.field final b:Lcom/c/a/s;
.field final c:Lcom/c/a/bv;
.field final d:Lcom/c/a/bn;
.method constructor <init>(Lcom/c/a/bn;Lcom/c/a/j;Lcom/c/a/s;Lcom/c/a/bv;)V
.registers 5
iput-object p1, p0, Lcom/c/a/di;->d:Lcom/c/a/bn;
iput-object p2, p0, Lcom/c/a/di;->a:Lcom/c/a/j;
iput-object p3, p0, Lcom/c/a/di;->b:Lcom/c/a/s;
iput-object p4, p0, Lcom/c/a/di;->c:Lcom/c/a/bv;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Lcom/c/o;
.registers 5
iget-object v0, p0, Lcom/c/a/di;->d:Lcom/c/a/bn;
iget-object v1, p0, Lcom/c/a/di;->a:Lcom/c/a/j;
iget-object v2, p0, Lcom/c/a/di;->b:Lcom/c/a/s;
iget-object v3, p0, Lcom/c/a/di;->c:Lcom/c/a/bv;
invoke-virtual {v0, v1, v2, v3}, Lcom/c/a/bn;->b(Lcom/c/a/j;Lcom/c/a/s;Lcom/c/a/bv;)Lcom/c/o;
move-result-object v0
return-object v0
.end method
.method public synthetic call()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/c/a/di;->a()Lcom/c/o;
move-result-object v0
return-object v0
.end method