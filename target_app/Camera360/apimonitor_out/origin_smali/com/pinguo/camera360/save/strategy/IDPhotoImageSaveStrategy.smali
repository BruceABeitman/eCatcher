.class public Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;
.super Ljava/lang/Object;
.source "IDPhotoImageSaveStrategy.java"

# interfaces
.implements Lcom/pinguo/camera360/save/IImageSaveStrategy;


# instance fields
.field private mEffectPrevBitmap:Landroid/graphics/Bitmap;

.field private mOrgPrevBitmap:Landroid/graphics/Bitmap;

.field private mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private saveThumbnail(J)V
    .registers 9

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getAbsoluteWidth()I

    move-result v0

    div-int/lit8 v3, v0, 0x4

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_12
    sget-object v4, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    invoke-static {v4, p1, p2}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_28

    const/16 v4, 0x5f

    invoke-static {v2, v1, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    iget-object v4, p0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    invoke-interface {v4, v1}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onThumbNailSaved(Landroid/graphics/Bitmap;)V

    :cond_28
    return-void
.end method


# virtual methods
.method public save([BLcom/pinguo/camera360/photoedit/PictureInfo;)Z
    .registers 24

    const/4 v14, 0x0

    :try_start_1
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->hasPictureInserted(Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_3c

    move-result v14

    :goto_d
    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v19

    sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    move-wide/from16 v0, v19

    invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v18

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-static {v10}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_41

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v3, :cond_3a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V

    :cond_3a
    const/4 v3, 0x0

    :goto_3b
    return v3

    :catch_3c
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_59

    new-instance v16, LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-direct/range {v16 .. v16}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    const/16 v4, 0x64

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1, v4}, LvStudio/Android/GPhoto/GPhotoJNI;->SaveBitmapToJpgFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    :cond_59
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->saveThumbnail(J)V

    :try_start_60
    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getExifData()[B

    move-result-object v3

    if-nez v3, :cond_6f

    invoke-static/range {p1 .. p1}, Lcom/pinguo/lib/image/Exif;->getExifData([B)[B

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V

    :cond_6f
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/pinguo/lib/image/Exif;->getDefaultPGExifData(Lcom/pinguo/camera360/photoedit/PictureInfo;I)[B

    move-result-object v12

    if-nez v14, :cond_87

    sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    move-wide/from16 v0, v19

    invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v0, v3, v12}, Lcom/pinguo/lib/image/Exif;->exifToJpegFile(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_90} :catch_114

    :goto_90
    if-nez v14, :cond_e4

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->set(II)V

    invoke-static/range {p2 .. p2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createItemFromPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    move-result-object v15

    const-string/jumbo v3, "finished"

    invoke-virtual {v15, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setProjectState(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v15}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->insertIntoSandBoxDB(Landroid/content/Context;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)V

    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I

    move-result v8

    invoke-static/range {v3 .. v9}, Lcom/pinguo/camera360/save/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/io/File;)Landroid/net/Uri;

    :cond_e4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_ef

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    :cond_ef
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_101

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;

    :cond_101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v3, :cond_111

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V

    :cond_111
    const/4 v3, 0x1

    goto/16 :goto_3b

    :catch_114
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_90
.end method

.method public setCallback(Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    return-void
.end method

.method public setPreviewData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
