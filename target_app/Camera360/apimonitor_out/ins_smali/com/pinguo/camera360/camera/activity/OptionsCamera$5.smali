.class  Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;
.super Ljava/lang/Object;
.source "OptionsCamera.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
.field private final synthetic val$compatibilityModeType:I
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsCamera;I)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
iput p2, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->val$compatibilityModeType:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/activity/OptionsCamera$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->val$compatibilityModeType:I
const/4 v1, 0x2
if-eq v0, v1, :cond_a
iget v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->val$compatibilityModeType:I
const/4 v1, 0x1
if-ne v0, v1, :cond_1d
:cond_a
iget v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->val$compatibilityModeType:I
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingCompatibilityMode(I)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->val$compatibilityModeType:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setPicEditCompatibilityMode(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
#calls: Lcom/pinguo/camera360/camera/activity/OptionsCamera;->updateCompatibilityModeText()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->access$3(Lcom/pinguo/camera360/camera/activity/OptionsCamera;)V
:cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$5;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsCamera;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->access$1(Lcom/pinguo/camera360/camera/activity/OptionsCamera;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsCamera$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method