.class  Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$1;
.super Ljava/lang/Object;
.source "NbtfSendActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$1;->this$1:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$1;->this$1:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
move-result-object v0
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$6(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->SENDING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
if-ne v0, v1, :cond_22
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$4()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "onLocalUserChanged onRemoteCancelReceive"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$1;->this$1:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
move-result-object v0
#calls: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onRemoteCancelReceive()V
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$7(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
:cond_21
:goto_21
return-void
:cond_22
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$1;->this$1:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
move-result-object v0
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$6(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->REQUEST_CONNECTING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
if-ne v0, v1, :cond_44
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$4()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "onLocalUserChanged onRemoteReject"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$1;->this$1:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
move-result-object v0
#calls: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onRemoteReject()V
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$8(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
goto :goto_21
:cond_44
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$1;->this$1:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
move-result-object v0
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$6(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->CONNECTED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
if-ne v0, v1, :cond_21
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$4()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "onLocalUserChanged onConnectFail"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$1;->this$1:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
move-result-object v0
#calls: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onConnectFail()V
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$9(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
goto :goto_21
.end method