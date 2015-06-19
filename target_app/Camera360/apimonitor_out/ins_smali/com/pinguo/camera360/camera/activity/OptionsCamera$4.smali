.class  Lcom/pinguo/camera360/camera/activity/OptionsCamera$4;
.super Ljava/lang/Object;
.source "OptionsCamera.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
.field private final synthetic val$compatibilityItems:[Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsCamera;[Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
iput-object p2, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$4;->val$compatibilityItems:[Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/activity/OptionsCamera$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->access$1(Lcom/pinguo/camera360/camera/activity/OptionsCamera;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V
packed-switch p2, :pswitch_data_3a
:goto_d
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsCamera$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_e
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$4;->val$compatibilityItems:[Ljava/lang/String;
aget-object v1, v1, p2
const v2, 0x7f0801e9
const/4 v3, 0x1
#calls: Lcom/pinguo/camera360/camera/activity/OptionsCamera;->showCompatibilityModeMsgDialog(Ljava/lang/String;II)V
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->access$2(Lcom/pinguo/camera360/camera/activity/OptionsCamera;Ljava/lang/String;II)V
goto :goto_d
:pswitch_1c
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$4;->val$compatibilityItems:[Ljava/lang/String;
aget-object v1, v1, p2
const v2, 0x7f0801e8
const/4 v3, 0x2
#calls: Lcom/pinguo/camera360/camera/activity/OptionsCamera;->showCompatibilityModeMsgDialog(Ljava/lang/String;II)V
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->access$2(Lcom/pinguo/camera360/camera/activity/OptionsCamera;Ljava/lang/String;II)V
goto :goto_d
:pswitch_2a
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCompatibilityMode(I)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setPicEditCompatibilityMode(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
#calls: Lcom/pinguo/camera360/camera/activity/OptionsCamera;->updateCompatibilityModeText()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->access$3(Lcom/pinguo/camera360/camera/activity/OptionsCamera;)V
goto :goto_d
:pswitch_data_3a
.packed-switch 0x0
:pswitch_e
:pswitch_1c
:pswitch_2a
.end packed-switch
.end method