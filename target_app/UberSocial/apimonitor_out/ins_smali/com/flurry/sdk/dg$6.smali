.class  Lcom/flurry/sdk/dg$6;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"
.field final synthetic a:Lcom/flurry/sdk/dg;
.method constructor <init>(Lcom/flurry/sdk/dg;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/dg$6;->a:Lcom/flurry/sdk/dg;
invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V
return-void
.end method
.method public a()V
.registers 3
invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;
move-result-object v0
iget-object v1, p0, Lcom/flurry/sdk/dg$6;->a:Lcom/flurry/sdk/dg;
invoke-virtual {v1}, Lcom/flurry/sdk/dg;->j()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/flurry/sdk/di;->a(Ljava/lang/String;)V
return-void
.end method