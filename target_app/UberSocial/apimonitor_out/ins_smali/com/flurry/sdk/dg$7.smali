.class  Lcom/flurry/sdk/dg$7;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"
.field final synthetic a:Lcom/flurry/sdk/dg;
.method constructor <init>(Lcom/flurry/sdk/dg;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/dg$7;->a:Lcom/flurry/sdk/dg;
invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V
return-void
.end method
.method public a()V
.registers 3
iget-object v0, p0, Lcom/flurry/sdk/dg$7;->a:Lcom/flurry/sdk/dg;
invoke-virtual {v0}, Lcom/flurry/sdk/dg;->d()Lcom/flurry/sdk/de;
move-result-object v0
iget-object v1, p0, Lcom/flurry/sdk/dg$7;->a:Lcom/flurry/sdk/dg;
invoke-static {v1}, Lcom/flurry/sdk/dg;->c(Lcom/flurry/sdk/dg;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->clear()V
iget-object v1, p0, Lcom/flurry/sdk/dg$7;->a:Lcom/flurry/sdk/dg;
invoke-static {v1}, Lcom/flurry/sdk/dg;->c(Lcom/flurry/sdk/dg;)Ljava/util/List;
move-result-object v1
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/flurry/sdk/dg$7;->a:Lcom/flurry/sdk/dg;
invoke-static {v0}, Lcom/flurry/sdk/dg;->d(Lcom/flurry/sdk/dg;)V
return-void
.end method