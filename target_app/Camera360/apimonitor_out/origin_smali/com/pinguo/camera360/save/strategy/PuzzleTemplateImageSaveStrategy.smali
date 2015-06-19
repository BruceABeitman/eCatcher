.class public Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;
.super Ljava/lang/Object;
.source "PuzzleTemplateImageSaveStrategy.java"

# interfaces
.implements Lcom/pinguo/camera360/save/IImageSaveStrategy;


# instance fields
.field private mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public save([BLcom/pinguo/camera360/photoedit/PictureInfo;)Z
    .registers 33

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V

    :cond_16
    const/4 v3, 0x0

    :goto_17
    return v3

    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getOrgPath()Ljava/lang/String;

    move-result-object v22

    :try_start_1c
    move-object/from16 v0, v22

    invoke-static {v0, v9}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_5d

    :goto_21
    invoke-static {}, Lcom/pinguo/lib/UIContants;->getAbsoluteWidth()I

    move-result v23

    div-int/lit8 v29, v23, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-static {v0, v1, v3}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v24

    sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    move-wide/from16 v0, v24

    invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v28

    new-instance v27, Ljava/io/File;

    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_62

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v3, :cond_5b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V

    :cond_5b
    const/4 v3, 0x0

    goto :goto_17

    :catch_5d
    move-exception v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :cond_62
    if-eqz v26, :cond_85

    invoke-static/range {v19 .. v19}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_7c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v3, :cond_7a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V

    :cond_7a
    const/4 v3, 0x0

    goto :goto_17

    :cond_7c
    const/16 v3, 0x5f

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    :cond_85
    new-instance v8, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I

    move-result v7

    invoke-static/range {v2 .. v8}, Lcom/pinguo/camera360/save/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/io/File;)Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createItemFromPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    move-result-object v21

    const-string/jumbo v3, "finished"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setProjectState(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->insertIntoSandBoxDB(Landroid/content/Context;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v3, :cond_eb

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onThumbNailSaved(Landroid/graphics/Bitmap;)V

    :cond_eb
    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v3

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-static {v3, v4, v5}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :try_start_f6
    const-string/jumbo v10, "100"

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getSoundInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_102

    const-string/jumbo v10, "104"

    :cond_102
    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v11, v3, v5

    invoke-static {v9}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J

    move-result-wide v13

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v16, "unknow"

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v9 .. v18}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->CSS_addUploadData(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_f6 .. :try_end_11a} :catch_134

    :goto_11a
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->startCloudUpload(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v3, :cond_131

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V

    :cond_131
    const/4 v3, 0x1

    goto/16 :goto_17

    :catch_134
    move-exception v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_11a
.end method

.method public setCallback(Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    return-void
.end method

.method public setPreviewData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 3

    return-void
.end method
