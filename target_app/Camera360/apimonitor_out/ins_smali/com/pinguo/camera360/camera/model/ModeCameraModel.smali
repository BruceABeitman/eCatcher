.class public abstract Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.super Ljava/lang/Object;
.source "ModeCameraModel.java"
.implements Lcom/pinguo/camera360/camera/model/IModeCameraModel;
.implements Landroid/hardware/Camera$ShutterCallback;
.field protected static final MIRROR_X:Ljava/lang/String; = "effect=mirror,1,0"
.field protected static final MIRROR_X_Y:Ljava/lang/String; = "effect=mirror,1,1"
.field protected static final MIRROR_Y:Ljava/lang/String; = "effect=mirror,0,1"
.field private static final TAG:Ljava/lang/String; = null
.field public static final VIBRATE_REPEAT:I = -0x1
.field public static final VIBRATE_TIME:I = 0x23
.field private effectAppend:Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
.field protected mBase:Lcom/pinguo/camera360/camera/model/PGCameraBase;
.field private mCurrentEffect:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v0, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->mCurrentEffect:Ljava/lang/String;
iput-object p1, p0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->mBase:Lcom/pinguo/camera360/camera/model/PGCameraBase;
return-void
.end method
.method public canReplaceEffectAfterTaken()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public destroyMode()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "destroyMode"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->mBase:Lcom/pinguo/camera360/camera/model/PGCameraBase;
return-object v0
.end method
.method public abstract getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
.end method
.method public getCameraModeIndex()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getEffectAppend()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->effectAppend:Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
return-object v0
.end method
.method public getSubEffect()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->mCurrentEffect:Ljava/lang/String;
return-object v0
.end method
.method public initMode()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "initMode"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public isFrontCamera()Z
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isFrontCamera()Z
move-result v0
return v0
.end method
.method public makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)Lcom/pinguo/camera360/photoedit/PictureInfo;
.registers 14
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
new-instance v5, Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-direct {v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V
const/4 v6, 0x0
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPictureType(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraModeIndex()I
move-result v6
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setCameraModeIndex(I)V
invoke-virtual {v5, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V
const/4 v6, 0x0
invoke-static {v1, v6}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->getEffectAppend(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAppendix(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V
const/4 v6, 0x1
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V
invoke-virtual {v5, p3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V
invoke-virtual {v5, p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPicSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getOrientation([B)I
move-result v6
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifRotation(I)V
invoke-static {}, Lcom/pinguo/lib/UIContants;->getPreviewLength()I
move-result v6
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPreviewLength(I)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
invoke-virtual {v5, v6, v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setTakenTime(J)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimeWaterMarkState()Z
move-result v6
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setAddTimeWaterMark(Z)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getGpsState()Z
move-result v6
if-eqz v6, :cond_93
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/lib/location/PGLocationManager;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v3
if-eqz v3, :cond_93
sget-object v6, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "location = "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Lcom/pinguo/lib/location/data/PGLocation;->getAddress()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, " /"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-static {v3}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLatitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v8
invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, "/"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-static {v3}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLongitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v8
invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v5, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V
:cond_93
if-eqz p1, :cond_a0
if-eqz p2, :cond_a0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderRealEnable()Z
move-result v6
if-eqz v6, :cond_a1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectUsedWithRender(Ljava/lang/String;)V
:goto_a0
:cond_a0
return-object v5
:cond_a1
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v6
invoke-virtual {v6, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v2
if-eqz v2, :cond_a0
iget-object v6, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectUsedNoRender(Ljava/lang/String;)V
goto :goto_a0
.end method
.method public needEnablePreviewCallback()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public needShowPreview()Z
.registers 7
const/4 v4, 0x1
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderRealEnable()Z
move-result v5
if-eqz v5, :cond_2b
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v5
invoke-virtual {v5, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v0
const/4 v2, 0x0
if-eqz v0, :cond_1e
invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/entity/Effect;->havePreCmd()Z
move-result v2
:cond_1e
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPicAutoSaveState()Z
move-result v3
if-eqz v2, :cond_2b
if-eqz v3, :cond_2b
const/4 v4, 0x0
:cond_2b
return v4
.end method
.method public onShutter()V
.registers 1
return-void
.end method
.method public pauseModel()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "pauseModel"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public preResumeModel()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "preResumeModel"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public resumeModel()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "resumeModel"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public setCameraMirror([BI)[B
.registers 12
move-object v8, p1
new-instance v0, LvStudio/Android/GPhoto/GPhotoJNI;
invoke-direct {v0}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V
:try_start_6
sget-object v1, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA_FRONT_PIC:Ljava/lang/String;
invoke-static {v8, v1}, Lcom/pinguo/lib/util/FileTool;->write([BLjava/lang/String;)Z
sget-object v2, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA_FRONT_PIC_MIRROR:Ljava/lang/String;
const/4 v1, 0x0
const/4 v4, 0x1
invoke-virtual {v0, v1, v4}, LvStudio/Android/GPhoto/GPhotoJNI;->SetDateBitmap(Landroid/graphics/Bitmap;I)V
const/16 v1, 0x5a
if-eq p2, v1, :cond_1a
const/16 v1, 0x10e
if-ne p2, v1, :cond_2a
:cond_1a
const-string/jumbo v3, "effect=mirror,1,0"
:goto_1d
sget-object v1, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA_FRONT_PIC:Ljava/lang/String;
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
invoke-virtual/range {v0 .. v6}, LvStudio/Android/GPhoto/GPhotoJNI;->MakeEffectImageEX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)Z
invoke-static {v2}, Lcom/pinguo/lib/util/FileTool;->getByteFromPath(Ljava/lang/String;)[B
move-result-object v8
:goto_29
return-object v8
:cond_2a
const-string/jumbo v3, "effect=mirror,0,1"
:try_end_2d
.catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_2d} :catch_2e
goto :goto_1d
:catch_2e
move-exception v7
sget-object v1, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->TAG:Ljava/lang/String;
const-string/jumbo v4, "Make picture data mirror error."
invoke-static {v1, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_29
.end method
.method public setEffectAppend(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->effectAppend:Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
return-void
.end method
.method public setSubEffect(Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->mCurrentEffect:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->mBase:Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getPreviewModel()Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
move-result-object v0
instance-of v0, v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->mBase:Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getPreviewModel()Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setRenderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->mBase:Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getPreviewModel()Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->mCurrentEffect:Ljava/lang/String;
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setEffect([Ljava/lang/Object;)V
:cond_2c
return-void
.end method
.method public takePicture(Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->mBase:Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->setTakePictureFailCallBack(Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->mBase:Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-virtual {v0, p0, v1, v1, p1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;)V
return-void
.end method
.method public vibrate()V
.registers 5
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBtnVibrationFeedBackState()Z
move-result v1
if-eqz v1, :cond_1a
const/4 v1, 0x2
new-array v0, v1, [J
const/4 v1, 0x1
const-wide/16 v2, 0x23
aput-wide v2, v0, v1
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const/4 v2, -0x1
invoke-static {v1, v0, v2}, Lcom/pinguo/camera360/base/device/DeviceController;->vibrate(Landroid/content/Context;[JI)V
:cond_1a
return-void
.end method