.class  Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$14;
.super Landroid/os/Handler;
.source "NbtfSendActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$14;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 3
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_18
:goto_5
return-void
:pswitch_6
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$14;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->enterSendFragment()V
goto :goto_5
:pswitch_c
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$14;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
#calls: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onSendFailure()V
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$2(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
goto :goto_5
:pswitch_12
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$14;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
#calls: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onSendSuccess()V
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$3(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
goto :goto_5
:pswitch_data_18
.packed-switch 0x65
:pswitch_6
:pswitch_c
:pswitch_12
.end packed-switch
.end method