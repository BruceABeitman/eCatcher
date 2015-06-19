.class public Lcom/pinguo/camera360/camera/model/ColorShiftCameraModel;
.super Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.source "ColorShiftCameraModel.java"
.method public constructor <init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
return-void
.end method
.method public canReplaceEffectAfterTaken()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public destroyMode()V
.registers 3
invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/ColorShiftCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setEffectToColorShift(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
return-void
.end method
.method public getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f080334
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCameraModeIndex()I
.registers 2
const/4 v0, 0x4
return v0
.end method
.method public initMode()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getEffectOfColorShift()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/model/ColorShiftCameraModel;->setSubEffect(Ljava/lang/String;)V
return-void
.end method