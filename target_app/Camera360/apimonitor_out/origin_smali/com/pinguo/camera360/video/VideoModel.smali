.class public Lcom/pinguo/camera360/video/VideoModel;
.super Lcom/pinguo/camera360/lib/camera/model/CameraModel;
.source "VideoModel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/video/VideoModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;-><init>()V

    return-void
.end method

.method private makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;IJ)Lcom/pinguo/camera360/photoedit/PictureInfo;
    .registers 15

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    new-instance v4, Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-direct {v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPictureType(I)V

    const-string/jumbo v1, ""

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setCameraModeIndex(I)V

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

    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-nez v5, :cond_42

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    :cond_42
    invoke-virtual {v4, p4, p5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setTakenTime(J)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimeWaterMarkState()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setAddTimeWaterMark(Z)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getGpsState()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/lib/location/PGLocationManager;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;

    move-result-object v3

    if-eqz v3, :cond_96

    sget-object v5, Lcom/pinguo/camera360/video/VideoModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "location = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/pinguo/lib/location/data/PGLocation;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " /"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/pinguo/lib/location/data/PGLocation;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/pinguo/lib/location/data/PGLocation;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V

    :cond_96
    if-eqz p1, :cond_a3

    if-eqz p2, :cond_a3

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderRealEnable()Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectUsedWithRender(Ljava/lang/String;)V

    :cond_a3
    :goto_a3
    return-object v4

    :cond_a4
    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;

    move-result-object v2

    if-eqz v2, :cond_a3

    iget-object v5, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;

    invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectUsedNoRender(Ljava/lang/String;)V

    goto :goto_a3
.end method


# virtual methods
.method public handleVideoPicture([B[BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;ILjava/lang/String;J)V
    .registers 16

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/video/VideoModel;->makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;IJ)Lcom/pinguo/camera360/photoedit/PictureInfo;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V

    new-instance v6, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {v6, v7, p1, v0, v1}, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;-><init>(Lcom/pinguo/camera360/photoedit/PictureInfo;[BZZ)V

    invoke-virtual {v6, p5}, Lcom/pinguo/lib/eventbus/BaseEvent;->setFromTag(Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/video/VideoModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start ShowPicturePreviewEvent"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method public storeVideoFirstFrame(Lcom/pinguo/camera360/video/VideoInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 16

    sget-object v9, Lcom/pinguo/camera360/video/VideoModel;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "storeVideoFirstFrame start time = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoTakenTime()J

    move-result-wide v4

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getAbsoluteWidth()I

    move-result v3

    div-int/lit8 v8, v3, 0x4

    const/4 v6, 0x0

    if-eqz p2, :cond_2b

    const/4 v9, 0x0

    invoke-static {p2, v8, v9}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_2b
    sget-object v9, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    invoke-static {v9, v4, v5}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_41

    :goto_40
    return-object v6

    :cond_41
    if-eqz v6, :cond_48

    const/16 v9, 0x5f

    invoke-static {v7, v6, v9}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    :cond_48
    sget-object v9, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    invoke-static {v9, v4, v5}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x64

    :try_start_50
    invoke-static {v2, p2, v9}, Lcom/pinguo/lib/util/FileUtils;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_74

    :goto_53
    :try_start_53
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v9

    invoke-virtual {v9, p1, v2}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->insertVideoFirstFrame(Lcom/pinguo/camera360/video/VideoInfo;Ljava/lang/String;)J
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_79

    :goto_5a
    sget-object v9, Lcom/pinguo/camera360/video/VideoModel;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "storeVideoFirstFrame end time = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :catch_74
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53

    :catch_79
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a
.end method
