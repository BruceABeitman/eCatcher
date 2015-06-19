.class  Lcom/facebook/ab$1;
.super Landroid/os/Handler;
.source "SourceFile"
.field final synthetic a:Lcom/facebook/ab;
.method constructor <init>(Lcom/facebook/ab;)V
.registers 2
iput-object p1, p0, Lcom/facebook/ab$1;->a:Lcom/facebook/ab;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 3
iget-object v0, p0, Lcom/facebook/ab$1;->a:Lcom/facebook/ab;
invoke-static {v0, p1}, Lcom/facebook/ab;->a(Lcom/facebook/ab;Landroid/os/Message;)V
return-void
.end method