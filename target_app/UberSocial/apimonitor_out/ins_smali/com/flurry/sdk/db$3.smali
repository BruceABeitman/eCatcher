.class  Lcom/flurry/sdk/db$3;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"
.field final synthetic a:Lcom/flurry/sdk/db$a;
.field final synthetic b:Lcom/flurry/sdk/db;
.method constructor <init>(Lcom/flurry/sdk/db;Lcom/flurry/sdk/db$a;)V
.registers 3
iput-object p1, p0, Lcom/flurry/sdk/db$3;->b:Lcom/flurry/sdk/db;
iput-object p2, p0, Lcom/flurry/sdk/db$3;->a:Lcom/flurry/sdk/db$a;
invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V
return-void
.end method
.method public a()V
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/db$3;->b:Lcom/flurry/sdk/db;
invoke-virtual {v0}, Lcom/flurry/sdk/db;->f()V
iget-object v0, p0, Lcom/flurry/sdk/db$3;->a:Lcom/flurry/sdk/db$a;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/flurry/sdk/db$3;->a:Lcom/flurry/sdk/db$a;
invoke-interface {v0}, Lcom/flurry/sdk/db$a;->a()V
:cond_e
return-void
.end method