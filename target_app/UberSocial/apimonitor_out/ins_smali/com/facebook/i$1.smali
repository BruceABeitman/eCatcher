.class  Lcom/facebook/i$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/ac;
.field final synthetic a:Lcom/facebook/g;
.field final synthetic b:Lcom/facebook/i;
.method constructor <init>(Lcom/facebook/i;Lcom/facebook/g;)V
.registers 3
iput-object p1, p0, Lcom/facebook/i$1;->b:Lcom/facebook/i;
iput-object p2, p0, Lcom/facebook/i$1;->a:Lcom/facebook/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/facebook/i$1;->b:Lcom/facebook/i;
iget-object v1, p0, Lcom/facebook/i$1;->a:Lcom/facebook/g;
invoke-virtual {v0, v1, p1}, Lcom/facebook/i;->a(Lcom/facebook/g;Landroid/os/Bundle;)V
return-void
.end method