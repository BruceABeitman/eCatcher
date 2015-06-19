.class public Lcom/pinguo/camera360/camera/model/TiltShiftCameraModel;
.super Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.source "TiltShiftCameraModel.java"


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V

    return-void
.end method


# virtual methods
.method public canReplaceEffectAfterTaken()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f080333

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraModeIndex()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public initMode()V
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V

    const-string/jumbo v0, "C360_TiltShift_Other_Line"

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/model/TiltShiftCameraModel;->setSubEffect(Ljava/lang/String;)V

    return-void
.end method

.method public makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)Lcom/pinguo/camera360/photoedit/PictureInfo;
    .registers 11

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    new-instance v4, Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-direct {v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPictureType(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/TiltShiftCameraModel;->getCameraModeIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setCameraModeIndex(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/TiltShiftCameraModel;->getSubEffect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->getEffectAppend(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppend;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAppendix(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V

    invoke-virtual {v4, p3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V

    invoke-virtual {v4, p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPicSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V

    invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getOrientation([B)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifRotation(I)V

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getPreviewLength()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPreviewLength(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setTakenTime(J)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimeWaterMarkState()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setAddTimeWaterMark(Z)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/TiltShiftCameraModel;->getEffectAppend()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAppendix(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getGpsState()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/lib/location/PGLocationManager;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;

    move-result-object v2

    if-eqz v2, :cond_63

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V

    :cond_63
    return-object v4
.end method
