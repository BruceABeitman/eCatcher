.class final Lcom/facebook/ah;
.super Landroid/os/Handler;
.source "GetTokenClient.java"
.field final synthetic a:Lcom/facebook/ag;
.method constructor <init>(Lcom/facebook/ag;)V
.registers 2
iput-object p1, p0, Lcom/facebook/ah;->a:Lcom/facebook/ag;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 3
iget-object v0, p0, Lcom/facebook/ah;->a:Lcom/facebook/ag;
invoke-static {v0, p1}, Lcom/facebook/ag;->a(Lcom/facebook/ag;Landroid/os/Message;)V
return-void
.end method