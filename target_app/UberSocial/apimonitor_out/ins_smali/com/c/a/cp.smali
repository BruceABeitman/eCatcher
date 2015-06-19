.class  Lcom/c/a/cp;
.super Ljava/lang/Object;
.implements Lcom/c/ap;
.field final a:Lcom/c/ba;
.field final b:Lcom/c/a/cl;
.method constructor <init>(Lcom/c/a/cl;Lcom/c/ba;)V
.registers 3
iput-object p1, p0, Lcom/c/a/cp;->b:Lcom/c/a/cl;
iput-object p2, p0, Lcom/c/a/cp;->a:Lcom/c/ba;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public n_()Lcom/c/ba;
.registers 2
iget-object v0, p0, Lcom/c/a/cp;->a:Lcom/c/ba;
return-object v0
.end method