.class  Lcom/pinguo/Camera360Lib/network/HttpFileRequest$2;
.super Landroid/os/Handler;
.source "HttpFileRequest.java"
.field final synthetic this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;
.method constructor <init>(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$2;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$2;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;
#calls: Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->deliverMessage(Landroid/os/Message;)V
invoke-static {v0, p1}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->access$7(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;Landroid/os/Message;)V
return-void
.end method