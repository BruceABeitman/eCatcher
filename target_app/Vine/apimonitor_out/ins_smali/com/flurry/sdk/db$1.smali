.class  Lcom/flurry/sdk/db$1;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/flurry/sdk/db;
.method constructor <init>(Lcom/flurry/sdk/db;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/flurry/sdk/db$1;->b:Lcom/flurry/sdk/db;
iput-object p2, p0, Lcom/flurry/sdk/db$1;->a:Ljava/lang/String;
invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V
return-void
.end method
.method public a()V
.registers 4
iget-object v0, p0, Lcom/flurry/sdk/db$1;->b:Lcom/flurry/sdk/db;
new-instance v1, Lcom/flurry/sdk/dd;
iget-object v2, p0, Lcom/flurry/sdk/db$1;->a:Ljava/lang/String;
invoke-direct {v1, v2}, Lcom/flurry/sdk/dd;-><init>(Ljava/lang/String;)V
iput-object v1, v0, Lcom/flurry/sdk/db;->f:Lcom/flurry/sdk/dd;
return-void
.end method