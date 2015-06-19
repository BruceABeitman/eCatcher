.class  Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;
.super Ljava/lang/Object;
.source "NbtfReceiverActivity.java"
.implements Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;)Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
return-object v0
.end method
.method public onClientStatusChanged(Z)V
.registers 2
return-void
.end method
.method public onLocalUserChanged(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
.registers 2
return-void
.end method
.method public onRemoteUserChanged(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
.registers 5
const/4 v2, 0x0
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$5()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "onRemoteUserChanged"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p1, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->mEventType:Lcom/lenovo/channel/base/IUserListener$UserEventType;
sget-object v1, Lcom/lenovo/channel/base/IUserListener$UserEventType;->ONLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;
if-ne v0, v1, :cond_5b
invoke-virtual {p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->isPending()Z
move-result v0
if-eqz v0, :cond_55
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$1(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->START:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
if-eq v0, v1, :cond_2b
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$1(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->RECEIVE_END:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
if-ne v0, v1, :cond_46
:cond_2b
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->IF_ACCEPT:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
#setter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
invoke-static {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$6(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#setter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
invoke-static {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$7(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$8(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_45
:cond_45
return-void
:cond_46
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$10(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
move-result-object v0
invoke-virtual {p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->getId()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->acceptUser(Ljava/lang/String;Z)V
goto :goto_45
:cond_55
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#setter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mConnectedUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
invoke-static {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$11(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
goto :goto_45
:cond_5b
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$1(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->RECEIVING:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
if-ne v0, v1, :cond_94
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mConnectedUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$3(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
move-result-object v0
if-eqz v0, :cond_94
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mConnectedUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$3(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_94
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#setter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mConnectedUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
invoke-static {v0, v2}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$11(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$8(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$2;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$2;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->START:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
#setter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
invoke-static {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$6(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;)V
goto :goto_45
:cond_94
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$1(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->IF_ACCEPT:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
if-eq v0, v1, :cond_a8
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$1(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->WAITTING_CONNECT:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
if-ne v0, v1, :cond_45
:cond_a8
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$12(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
move-result-object v0
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$12(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#setter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mPenddingUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
invoke-static {v0, v2}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$7(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$8(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$3;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$3;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->START:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
#setter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
invoke-static {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$6(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;)V
goto/16 :goto_45
.end method
.method public onScanFailed()V
.registers 1
return-void
.end method
.method public onScanResult(Ljava/util/List;)V
.registers 2
return-void
.end method
.method public onServerStatusChanged(Z)V
.registers 2
return-void
.end method