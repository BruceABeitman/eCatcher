.class  Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$1;
.super Landroid/os/Handler;
.source "NbtfDevicePickerFragment.java"
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 3
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_c
:goto_5
return-void
:pswitch_6
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;
#calls: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->updateDevices()V
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)V
goto :goto_5
:pswitch_data_c
.packed-switch 0x64
:pswitch_6
.end packed-switch
.end method