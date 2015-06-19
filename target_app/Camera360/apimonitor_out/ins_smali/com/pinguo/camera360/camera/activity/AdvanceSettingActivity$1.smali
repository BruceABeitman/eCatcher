.class  Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity$1;
.super Landroid/os/Handler;
.source "AdvanceSettingActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity$1;->this$0:Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_e
:goto_5
return-void
:pswitch_6
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity$1;->this$0:Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity$1;->this$0:Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->updateViews(Landroid/content/Context;)V
goto :goto_5
:pswitch_data_e
.packed-switch 0x1
:pswitch_6
.end packed-switch
.end method