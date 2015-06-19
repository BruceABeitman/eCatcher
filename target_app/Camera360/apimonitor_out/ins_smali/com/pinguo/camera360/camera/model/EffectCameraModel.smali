.class public Lcom/pinguo/camera360/camera/model/EffectCameraModel;
.super Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.source "EffectCameraModel.java"
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/model/EffectCameraModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/model/EffectCameraModel;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
return-void
.end method
.method public changeParentEffect(Ljava/lang/String;)V
.registers 8
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v3
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/EffectCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v2
if-eqz v2, :cond_22
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
iget-object v4, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/EffectCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setSubEffectForEffectMode(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
:cond_22
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v3
invoke-virtual {v3, p1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByTypeKey(Ljava/lang/String;)Ljava/util/List;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v4
const/4 v3, 0x0
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v3, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v4, p1, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getLastUsingSubEffect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/model/EffectCameraModel;->setSubEffect(Ljava/lang/String;)V
sget-object v3, Lcom/pinguo/camera360/camera/model/EffectCameraModel;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "currentEffect:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public destroyMode()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/camera/model/EffectCameraModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "destroyMode"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/EffectCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setEffectForEffectMode(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->commit()Z
return-void
.end method
.method public getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f08032f
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCameraModeIndex()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public initMode()V
.registers 9
const/4 v7, 0x0
sget-object v5, Lcom/pinguo/camera360/camera/model/EffectCameraModel;->TAG:Ljava/lang/String;
const-string/jumbo v6, "initMode"
invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
const-string/jumbo v6, ""
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getEffectForEffectMode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_1c
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v5
if-eqz v5, :cond_44
:cond_1c
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v0
sget-object v5, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->EFFECT:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
move-result-object v4
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v5
if-lez v5, :cond_44
invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffects(Lcom/pinguo/camera360/effect/model/entity/EffectType;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v5
if-lez v5, :cond_44
invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v3, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
:cond_44
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/model/EffectCameraModel;->setSubEffect(Ljava/lang/String;)V
return-void
.end method