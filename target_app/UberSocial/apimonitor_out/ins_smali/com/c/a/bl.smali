.class abstract Lcom/c/a/bl;
.super Ljava/lang/Object;
.implements Lcom/c/a/at;
.field protected final a:Lcom/c/bp;
.field protected final b:Lcom/c/a/bn;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;
move-result-object v0
iput-object v0, p0, Lcom/c/a/bl;->a:Lcom/c/bp;
new-instance v0, Lcom/c/a/bn;
invoke-direct {v0}, Lcom/c/a/bn;-><init>()V
iput-object v0, p0, Lcom/c/a/bl;->b:Lcom/c/a/bn;
return-void
.end method
.method public a()V
.registers 2
iget-object v0, p0, Lcom/c/a/bl;->b:Lcom/c/a/bn;
invoke-virtual {v0}, Lcom/c/a/bn;->a()V
return-void
.end method