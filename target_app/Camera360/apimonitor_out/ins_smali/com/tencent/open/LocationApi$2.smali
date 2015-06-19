.class  Lcom/tencent/open/LocationApi$2;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/tencent/open/LocationApi;
.method constructor <init>(Lcom/tencent/open/LocationApi;)V
.registers 2
iput-object p1, p0, Lcom/tencent/open/LocationApi$2;->a:Lcom/tencent/open/LocationApi;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/tencent/open/LocationApi$2;->a:Lcom/tencent/open/LocationApi;
invoke-static {v0}, Lcom/tencent/open/LocationApi;->b(Lcom/tencent/open/LocationApi;)Lcom/tencent/open/d;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/open/d;->a()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/tencent/open/LocationApi$2;->a:Lcom/tencent/open/LocationApi;
invoke-static {v0}, Lcom/tencent/open/LocationApi;->c(Lcom/tencent/open/LocationApi;)Landroid/os/Handler;
move-result-object v0
const/16 v1, 0x67
invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
:goto_1b
return-void
:cond_1c
iget-object v0, p0, Lcom/tencent/open/LocationApi$2;->a:Lcom/tencent/open/LocationApi;
invoke-static {v0}, Lcom/tencent/open/LocationApi;->c(Lcom/tencent/open/LocationApi;)Landroid/os/Handler;
move-result-object v0
const/16 v1, 0x68
invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
goto :goto_1b
.end method