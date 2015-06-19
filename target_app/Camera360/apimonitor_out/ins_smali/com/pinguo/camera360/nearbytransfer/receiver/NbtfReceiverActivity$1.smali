.class  Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$1;
.super Landroid/os/Handler;
.source "NbtfReceiverActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 3
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_10
:goto_8
return-void
:pswitch_9
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
#calls: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->showReceiveFailureDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$0(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V
goto :goto_8
nop
:pswitch_data_10
.packed-switch 0x69
:pswitch_9
.end packed-switch
.end method