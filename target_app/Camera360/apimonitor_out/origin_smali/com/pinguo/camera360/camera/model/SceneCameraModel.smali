.class public Lcom/pinguo/camera360/camera/model/SceneCameraModel;
.super Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.source "SceneCameraModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/model/SceneCameraModel$OnScenePreviewFrameMakedListener;
    }
.end annotation


# static fields
.field private static final MAX_PREV_WIDTH:I = 0x1f4

.field public static final ORIENTATION_BACK:Ljava/lang/String; = "orientation=0;"

.field public static final ORIENTATION_FRONT:Ljava/lang/String; = "orientation=1;"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_NAME_CN:Ljava/lang/String; = "name_cn"

.field private static final TAG_PARAM:Ljava/lang/String; = "param"

.field private static final TAG_TEMPLATE:Ljava/lang/String; = "template"


# instance fields
.field private mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

.field private final mLock:[B

.field private mSceneParam:Ljava/lang/String;

.field private mScenePath:Ljava/lang/String;

.field private mScenePrevData:[I

.field private mScenePrevHeight:I

.field private mScenePrevWidth:I

.field private mSceneTemplateChildId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePath:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneTemplateChildId:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mLock:[B

    return-void
.end method


# virtual methods
.method public canReplaceEffectAfterTaken()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public destroyMode()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "destroyMode"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mLock:[B

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-virtual {v0}, LvStudio/Android/GPhoto/GPhotoJNI;->FreeSceneData()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    :cond_1a
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f08032e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraModeIndex()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getSceneParam()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    return-object v0
.end method

.method public getScenePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePath:Ljava/lang/String;

    return-object v0
.end method

.method public getScenePreviewHeight()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePrevHeight:I

    return v0
.end method

.method public getScenePreviewWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePrevWidth:I

    return v0
.end method

.method public getSceneTemplateChildId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneTemplateChildId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubEffect()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public initMode()V
    .registers 5

    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mLock:[B

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    if-nez v0, :cond_46

    new-instance v0, LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-direct {v0}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    :goto_11
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getLastSceneTemplatePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3}, LvStudio/Android/GPhoto/GPhotoJNI;->SetSceneTemplateData(Ljava/lang/String;I)Z

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getLastSceneTemplateParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getLastSceneTemplatePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-virtual {v0}, LvStudio/Android/GPhoto/GPhotoJNI;->GetScenePrevTemplateWidth()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePrevWidth:I

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-virtual {v0}, LvStudio/Android/GPhoto/GPhotoJNI;->GetScenePrevTemplateHeight()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePrevHeight:I

    monitor-exit v1

    return-void

    :cond_46
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-virtual {v0}, LvStudio/Android/GPhoto/GPhotoJNI;->FreeSceneData()V

    goto :goto_11

    :catchall_4c
    move-exception v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_6 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)Lcom/pinguo/camera360/photoedit/PictureInfo;
    .registers 12

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    new-instance v3, Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-direct {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPictureType(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getCameraModeIndex()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setCameraModeIndex(I)V

    iget-object v4, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    iget-object v5, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    const-string/jumbo v6, "orientation=0;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6f

    iget-object v5, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    const-string/jumbo v6, "orientation=0;"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_2d
    :goto_2d
    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setSceneParam(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setScenePath(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V

    invoke-virtual {v3, p3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V

    invoke-virtual {v3, p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPicSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V

    invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getOrientation([B)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifRotation(I)V

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getPreviewLength()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPreviewLength(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setTakenTime(J)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getGpsState()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/lib/location/PGLocationManager;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V

    :cond_67
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getSceneTemplateChildId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Scene;->sceneUsed(Ljava/lang/String;)V

    return-object v3

    :cond_6f
    iget-object v5, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    const-string/jumbo v6, "orientation=1;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    const-string/jumbo v6, "orientation=1;"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2d
.end method

.method public makeSceneFrame([BIILandroid/hardware/Camera;Lcom/pinguo/camera360/camera/model/SceneCameraModel$OnScenePreviewFrameMakedListener;)V
    .registers 14

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mLock:[B

    monitor-enter v7

    :try_start_b
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePrevData:[I

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePrevData:[I

    array-length v0, v0

    mul-int v1, p2, p3

    if-eq v0, v1, :cond_1c

    :cond_16
    mul-int v0, p2, p3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePrevData:[I

    :cond_1c
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePrevData:[I

    invoke-virtual {v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v3

    invoke-virtual {v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, LvStudio/Android/GPhoto/GPhotoJNI;->MakeScenePrevImage([I[BIILjava/lang/String;)Z

    :goto_32
    if-eqz p5, :cond_39

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePrevData:[I

    invoke-interface {p5, v0, p2, p3}, Lcom/pinguo/camera360/camera/model/SceneCameraModel$OnScenePreviewFrameMakedListener;->onScenePreviewMaked([III)V

    :cond_39
    monitor-exit v7

    return-void

    :cond_3b
    sget-object v0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mGPhotoJNI already == null"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :catchall_44
    move-exception v0

    monitor-exit v7
    :try_end_46
    .catchall {:try_start_b .. :try_end_46} :catchall_44

    throw v0
.end method

.method public needEnablePreviewCallback()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public parseSceneParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Landroid/sax/RootElement;

    const-string/jumbo v7, "template"

    invoke-direct {v6, v7}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "param"

    invoke-virtual {v6, v7}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v7, Lcom/pinguo/camera360/camera/model/SceneCameraModel$1;

    invoke-direct {v7, p0, v3}, Lcom/pinguo/camera360/camera/model/SceneCameraModel$1;-><init>(Lcom/pinguo/camera360/camera/model/SceneCameraModel;Ljava/util/HashMap;)V

    invoke-virtual {v2, v7}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string/jumbo v7, "name_cn"

    invoke-virtual {v6, v7}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v7, Lcom/pinguo/camera360/camera/model/SceneCameraModel$2;

    invoke-direct {v7, p0, v3}, Lcom/pinguo/camera360/camera/model/SceneCameraModel$2;-><init>(Lcom/pinguo/camera360/camera/model/SceneCameraModel;Ljava/util/HashMap;)V

    invoke-virtual {v1, v7}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string/jumbo v7, "name"

    invoke-virtual {v6, v7}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v7, Lcom/pinguo/camera360/camera/model/SceneCameraModel$3;

    invoke-direct {v7, p0, v3}, Lcom/pinguo/camera360/camera/model/SceneCameraModel$3;-><init>(Lcom/pinguo/camera360/camera/model/SceneCameraModel;Ljava/util/HashMap;)V

    invoke-virtual {v1, v7}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    :try_start_3a
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    invoke-virtual {v6}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v4, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5a} :catch_64

    :goto_5a
    const-string/jumbo v7, "param"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    return-object v7

    :catch_64
    move-exception v0

    const-string/jumbo v7, ""

    const-string/jumbo v8, "Parser XML error."

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a
.end method

.method public pauseModel()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pauseModel"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->pauseModel()V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mLock:[B

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-virtual {v0}, LvStudio/Android/GPhoto/GPhotoJNI;->FreeSceneData()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    :cond_1a
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public refreshSceneParam(Z)V
    .registers 6

    if-nez p1, :cond_11

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    const-string/jumbo v2, "orientation=1;"

    const-string/jumbo v3, "orientation=0;"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    return-void

    :cond_11
    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    const-string/jumbo v2, "orientation=0;"

    const-string/jumbo v3, "orientation=1;"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public resetSceneParam(ZLjava/lang/String;)V
    .registers 5

    if-nez p1, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "orientation=0;"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_12
    iput-object p2, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    return-void

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "orientation=1;"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_12
.end method

.method public resumeModel()V
    .registers 5

    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->resumeModel()V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mLock:[B

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    if-nez v0, :cond_22

    sget-object v0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeModel"

    invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-direct {v0}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePath:Ljava/lang/String;

    const/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3}, LvStudio/Android/GPhoto/GPhotoJNI;->SetSceneTemplateData(Ljava/lang/String;I)Z

    :cond_22
    monitor-exit v1

    return-void

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public setSceneParam(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    return-void
.end method

.method public setScenePath(Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mLock:[B

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    if-nez v0, :cond_10

    new-instance v0, LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-direct {v0}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    :cond_10
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePath:Ljava/lang/String;

    const/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3}, LvStudio/Android/GPhoto/GPhotoJNI;->SetSceneTemplateData(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-virtual {v0}, LvStudio/Android/GPhoto/GPhotoJNI;->GetScenePrevTemplateWidth()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePrevWidth:I

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-virtual {v0}, LvStudio/Android/GPhoto/GPhotoJNI;->GetScenePrevTemplateHeight()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePrevHeight:I

    monitor-exit v1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public setSceneTemplateChildId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneTemplateChildId:Ljava/lang/String;

    return-void
.end method

.method public updateScene(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePath:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->parseSceneParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setLastSceneTemplatePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setLastSceneTemplateParam(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCurCameraId()I

    move-result v1

    if-ne v1, v0, :cond_51

    :goto_25
    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mSceneParam:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->resetSceneParam(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mLock:[B

    monitor-enter v2

    :try_start_2d
    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-virtual {v1}, LvStudio/Android/GPhoto/GPhotoJNI;->FreeSceneData()V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePath:Ljava/lang/String;

    const/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4}, LvStudio/Android/GPhoto/GPhotoJNI;->SetSceneTemplateData(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-virtual {v1}, LvStudio/Android/GPhoto/GPhotoJNI;->GetScenePrevTemplateWidth()I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePrevWidth:I

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-virtual {v1}, LvStudio/Android/GPhoto/GPhotoJNI;->GetScenePrevTemplateHeight()I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->mScenePrevHeight:I

    :cond_4f
    monitor-exit v2

    return-void

    :cond_51
    const/4 v0, 0x0

    goto :goto_25

    :catchall_53
    move-exception v1

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_2d .. :try_end_55} :catchall_53

    throw v1
.end method
