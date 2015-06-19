.class public Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;
.super Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.source "IdPhotoCameraModel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V

    return-void
.end method

.method private getPreviewLength()I
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPictureSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v2

    const v0, 0x3faaaaab

    const/4 v1, 0x0

    if-eqz v2, :cond_42

    sget-object v3, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getPreviewLength picSize = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    :cond_42
    sget-object v3, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "picRadio = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sub-float v3, v1, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_61

    const/16 v3, 0x320

    :goto_60
    return v3

    :cond_61
    const/high16 v3, 0x4416

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    goto :goto_60
.end method


# virtual methods
.method public getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraModeIndex()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public getSubEffect()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public initMode()V
    .registers 5

    sget-object v2, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initMode"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V

    sget-object v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v2, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->setSubEffect(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCameraCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_4b

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraDevice()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v2

    if-nez v2, :cond_4c

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCurCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->switchCamera(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4b

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v2

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setCameraId(ILandroid/content/Context;)V

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    sget-object v2, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "change camera to FACING_FRONT"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_54
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->switchCamera(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5f} :catch_60

    goto :goto_4b

    :catch_60
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4b
.end method

.method public makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)Lcom/pinguo/camera360/photoedit/PictureInfo;
    .registers 15

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    new-instance v5, Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-direct {v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V

    const/16 v7, 0xcc

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPictureType(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getSubEffect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraModeIndex()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setCameraModeIndex(I)V

    invoke-virtual {v5, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V

    invoke-virtual {v5, p3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V

    invoke-virtual {v5, p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPicSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V

    invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getOrientation([B)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifRotation(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getPreviewLength()I

    move-result v6

    sget-object v7, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "previewLength = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPreviewLength(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setTakenTime(J)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimeWaterMarkState()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setAddTimeWaterMark(Z)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getGpsState()Z

    move-result v7

    if-eqz v7, :cond_a1

    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/lib/location/PGLocationManager;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;

    move-result-object v3

    if-eqz v3, :cond_a1

    sget-object v7, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "location = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/pinguo/lib/location/data/PGLocation;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " /"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/pinguo/lib/location/data/PGLocation;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/pinguo/lib/location/data/PGLocation;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V

    :cond_a1
    if-eqz p1, :cond_ae

    if-eqz p2, :cond_ae

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderRealEnable()Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectUsedWithRender(Ljava/lang/String;)V

    :cond_ae
    :goto_ae
    return-object v5

    :cond_af
    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;

    move-result-object v2

    if-eqz v2, :cond_ae

    iget-object v7, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;

    invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectUsedNoRender(Ljava/lang/String;)V

    goto :goto_ae
.end method

.method public needShowPreview()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public preResumeModel()V
    .registers 4

    sget-object v1, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "preResumeModel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCameraCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_41

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraDevice()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_41

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCurCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->switchCamera(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_41

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v1

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setCameraId(ILandroid/content/Context;)V

    :cond_41
    return-void
.end method
