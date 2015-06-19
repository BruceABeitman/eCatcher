.class  Lcom/facebook/GetTokenClient$1;
.super Landroid/os/Handler;
.source "GetTokenClient.java"
.field final synthetic this$0:Lcom/facebook/GetTokenClient;
.method constructor <init>(Lcom/facebook/GetTokenClient;)V
.registers 2
iput-object p1, p0, Lcom/facebook/GetTokenClient$1;->this$0:Lcom/facebook/GetTokenClient;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 3
iget-object v0, p0, Lcom/facebook/GetTokenClient$1;->this$0:Lcom/facebook/GetTokenClient;
#calls: Lcom/facebook/GetTokenClient;->handleMessage(Landroid/os/Message;)V
invoke-static {v0, p1}, Lcom/facebook/GetTokenClient;->access$000(Lcom/facebook/GetTokenClient;Landroid/os/Message;)V
return-void
.end method