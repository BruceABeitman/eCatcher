.class  Lcom/flurry/sdk/da$2;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"
.field final synthetic a:I
.field final synthetic b:Lcom/flurry/sdk/da;
.method constructor <init>(Lcom/flurry/sdk/da;I)V
.registers 3
iput-object p1, p0, Lcom/flurry/sdk/da$2;->b:Lcom/flurry/sdk/da;
iput p2, p0, Lcom/flurry/sdk/da$2;->a:I
invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V
return-void
.end method
.method public a()V
.registers 3
iget v0, p0, Lcom/flurry/sdk/da$2;->a:I
const/16 v1, 0xc8
if-ne v0, v1, :cond_13
invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;
move-result-object v0
if-eqz v0, :cond_13
invoke-virtual {v0}, Lcom/flurry/sdk/dg;->b()V
:cond_13
return-void
.end method