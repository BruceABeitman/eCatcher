.class  Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$1;
.super Landroid/os/Handler;
.source "ParameterAdvanceSettingFragment.java"
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$1;->this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;
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
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$1;->this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;
#calls: Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->fadeoutTips()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->access$0(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;)V
goto :goto_8
nop
:pswitch_data_10
.packed-switch 0xb
:pswitch_9
.end packed-switch
.end method