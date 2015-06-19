.class final Lcom/pinguo/share/util/IntentService$ServiceHandler;
.super Landroid/os/Handler;
.source "IntentService.java"
.field final synthetic this$0:Lcom/pinguo/share/util/IntentService;
.method public constructor <init>(Lcom/pinguo/share/util/IntentService;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/share/util/IntentService$ServiceHandler;->this$0:Lcom/pinguo/share/util/IntentService;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget-object v1, p0, Lcom/pinguo/share/util/IntentService$ServiceHandler;->this$0:Lcom/pinguo/share/util/IntentService;
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/content/Intent;
invoke-virtual {v1, v0}, Lcom/pinguo/share/util/IntentService;->onHandleIntent(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/pinguo/share/util/IntentService$ServiceHandler;->this$0:Lcom/pinguo/share/util/IntentService;
iget v1, p1, Landroid/os/Message;->arg1:I
invoke-virtual {v0, v1}, Lcom/pinguo/share/util/IntentService;->stopSelf(I)V
return-void
.end method