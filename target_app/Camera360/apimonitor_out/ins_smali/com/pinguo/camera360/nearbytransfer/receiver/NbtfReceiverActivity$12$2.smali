.class  Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$2;
.super Ljava/lang/Object;
.source "NbtfReceiverActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;
.field private final synthetic val$userInfo:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$2;->this$1:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;
iput-object p2, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$2;->val$userInfo:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$2;->this$1:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->access$0(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;)Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$2;->val$userInfo:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->onRemoteStopSending(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
return-void
.end method