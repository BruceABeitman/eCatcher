.class public Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;
.super Ljava/lang/Object;
.source "SceneImageSaveStrategy.java"

# interfaces
.implements Lcom/pinguo/camera360/save/IImageSaveStrategy;


# instance fields
.field private mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

.field private mSceneBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public save([BLcom/pinguo/camera360/photoedit/PictureInfo;)Z
    .registers 35

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v27

    sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    move-wide/from16 v0, v27

    invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v25

    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v3, :cond_2f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v5}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    return v3

    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSceneBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSceneBitmap:Landroid/graphics/Bitmap;

    const/16 v5, 0x5f

    move-object/from16 v0, v25

    invoke-static {v0, v3, v5}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    :cond_42
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;

    move-result-object v24

    move-wide/from16 v0, v27

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getPictureSavePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    :try_start_53
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/pinguo/lib/image/Exif;->getDefaultPGExifData(Lcom/pinguo/camera360/photoedit/PictureInfo;I)[B

    move-result-object v3

    move-object/from16 v0, v25

    invoke-static {v0, v4, v3}, Lcom/pinguo/lib/image/Exif;->exifToJpegFile(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5e} :catch_120

    :goto_5e
    invoke-static {}, Lcom/pinguo/lib/UIContants;->getAbsoluteWidth()I

    move-result v26

    div-int/lit8 v31, v26, 0x4

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSceneBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_77

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSceneBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move/from16 v0, v31

    invoke-static {v3, v0, v5}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v29

    :cond_77
    sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    move-wide/from16 v0, v27

    invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v30

    if-eqz v29, :cond_99

    const/16 v3, 0x5f

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v3, :cond_99

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    move-object/from16 v0, v29

    invoke-interface {v3, v0}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onThumbNailSaved(Landroid/graphics/Bitmap;)V

    :cond_99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSceneBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_ab

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSceneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSceneBitmap:Landroid/graphics/Bitmap;

    :cond_ab
    invoke-static/range {p2 .. p2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createItemFromPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    move-result-object v23

    const-string/jumbo v3, "finished"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setProjectState(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->insertIntoSandBoxDB(Landroid/content/Context;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lcom/pinguo/camera360/save/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/io/File;)Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v5

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-static {v5, v6, v3}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    :try_start_e1
    const-string/jumbo v11, "100"

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getSoundInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ed

    const-string/jumbo v11, "104"

    :cond_ed
    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v12, v5, v7

    invoke-static {v4}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J

    move-result-wide v14

    sget-object v16, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v17, "scene"

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v19

    move-object v10, v4

    invoke-static/range {v10 .. v19}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->CSS_addUploadData(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_106
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_106} :catch_12b

    :goto_106
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->startCloudUpload(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v3, :cond_11d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v5}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V

    :cond_11d
    const/4 v3, 0x1

    goto/16 :goto_30

    :catch_120
    move-exception v21

    :try_start_121
    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_126} :catch_128

    goto/16 :goto_5e

    :catch_128
    move-exception v3

    goto/16 :goto_5e

    :catch_12b
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_106
.end method

.method public setCallback(Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    return-void
.end method

.method public setPreviewData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p2, p0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;->mSceneBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
