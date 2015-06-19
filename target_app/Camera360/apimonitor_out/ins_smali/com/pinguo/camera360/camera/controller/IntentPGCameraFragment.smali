.class public Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;
.super Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
.source "IntentPGCameraFragment.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;-><init>()V
return-void
.end method
.method public createModeCameraModel(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.registers 5
const-string/jumbo v1, "c0d064951ba5413391b702dcc44580f0"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1f
new-instance v0, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment$1;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment$1;-><init>(Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCameraMode(Ljava/lang/String;)V
:goto_1e
return-object v0
:cond_1f
const-string/jumbo v1, "bb1b1f0e37114931914b579bdd1bbcf0"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_42
new-instance v0, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment$2;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v0, p0, v1, v2}, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment$2;-><init>(Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;Lcom/pinguo/camera360/camera/model/PGCameraBase;Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCameraMode(Ljava/lang/String;)V
goto :goto_1e
:cond_42
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {p1, v1, v2}, Lcom/pinguo/camera360/camera/controller/ModeCameraModelFactory;->create(Ljava/lang/String;Lcom/pinguo/camera360/camera/model/PGCameraBase;Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;
move-result-object v0
goto :goto_1e
.end method
.method public createViewHolder(Landroid/view/View;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
.registers 3
new-instance v0, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment$IntentViewHolder;
invoke-direct {v0, p0, p1}, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment$IntentViewHolder;-><init>(Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;Landroid/view/View;)V
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/camera/businessPrefSetting/IntentCameraBusinessSettingModel;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/IntentCameraBusinessSettingModel;-><init>()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setInstance(Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-super {p0, p1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->onCreate(Landroid/os/Bundle;)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;-><init>()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setInstance(Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->onPause()V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
.registers 7
invoke-super/range {p0 .. p5}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;->getModeCameraModel()Lcom/pinguo/camera360/camera/model/ModeCameraModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z
move-result v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Other;->otherPictureTaken(Z)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;->getCurrentMode()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Other;->otherModeUsed(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->onResume()V
new-instance v0, Lcom/pinguo/camera360/camera/businessPrefSetting/IntentCameraBusinessSettingModel;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/IntentCameraBusinessSettingModel;-><init>()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setInstance(Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
const-string v1, " - Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method