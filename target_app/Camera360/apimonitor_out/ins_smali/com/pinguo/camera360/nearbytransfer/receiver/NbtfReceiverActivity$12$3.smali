.class  Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$3;
.super Ljava/lang/Object;
.source "NbtfReceiverActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$3;->this$1:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12$3;->this$1:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;
#getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;->access$0(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$12;)Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->onRemoteCancelRequestConnect()V
return-void
.end method