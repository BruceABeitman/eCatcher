.class public Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;
.super Ljava/lang/Object;
.source "EffectImageSaveStrategy.java"

# interfaces
.implements Lcom/pinguo/camera360/save/IImageSaveStrategy;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEffectPrevBitmap:Landroid/graphics/Bitmap;

.field private mOrgPrevBitmap:Landroid/graphics/Bitmap;

.field private mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public save([BLcom/pinguo/camera360/photoedit/PictureInfo;)Z
    .registers 34

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v26

    sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v23

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v3, :cond_2f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    return v3

    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    const/16 v4, 0x5f

    move-object/from16 v0, v23

    invoke-static {v0, v3, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    :cond_42
    invoke-static {}, Lcom/pinguo/lib/UIContants;->getAbsoluteWidth()I

    move-result v25

    div-int/lit8 v30, v25, 0x4

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move/from16 v0, v30

    invoke-static {v3, v0, v4}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v28

    :cond_5b
    sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v29

    if-eqz v28, :cond_7d

    const/16 v3, 0x5f

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v3, :cond_7d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onThumbNailSaved(Landroid/graphics/Bitmap;)V

    :cond_7d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    :cond_8f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_a1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;

    :cond_a1
    sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v21

    :try_start_a9
    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getExifData()[B

    move-result-object v3

    if-nez v3, :cond_ba

    invoke-static/range {p1 .. p1}, Lcom/pinguo/lib/image/Exif;->getExifData([B)[B

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V

    :cond_ba
    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicFrame()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I

    move-result v3

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_d1

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->isFromCamera360()Z

    move-result v3

    if-eqz v3, :cond_d1

    const/4 v8, 0x0

    :cond_d1
    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v3

    move/from16 v0, v22

    invoke-static {v0, v8, v3}, Lcom/pinguo/camera360/photoedit/PGGPUUtils;->getCPUPicFrame(IILcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_159

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I

    move-result v3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/pinguo/lib/image/Exif;->getDefaultPGExifData(Lcom/pinguo/camera360/photoedit/PictureInfo;I)[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/pinguo/lib/image/Exif;->exifToJpegData([B[B)[B

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V

    :goto_f6
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSaveOrgPicState()Z

    move-result v3

    if-eqz v3, :cond_129

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->getSystemOrgPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I

    move-result v14

    invoke-static/range {v9 .. v15}, Lcom/pinguo/camera360/save/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/io/File;)Landroid/net/Uri;
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_129} :catch_23f

    :cond_129
    :goto_129
    invoke-static/range {p2 .. p2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createItemFromPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    move-result-object v20

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->insertIntoSandBoxDB(Landroid/content/Context;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setOrgPath(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->makeEffectPicture(Lcom/pinguo/camera360/photoedit/PictureInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v3, :cond_156

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V

    :cond_156
    const/4 v3, 0x1

    goto/16 :goto_30

    :cond_159
    :try_start_159
    new-instance v2, LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-direct {v2}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "effect=normal"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, LvStudio/Android/GPhoto/GPhotoJNI;->SetDateBitmap(Landroid/graphics/Bitmap;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ".exif"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, LvStudio/Android/GPhoto/GPhotoJNI;->MakeEffectImageEX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)Z

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ".exif"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_245

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I

    move-result v3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/pinguo/lib/image/Exif;->getDefaultPGExifData(Lcom/pinguo/camera360/photoedit/PictureInfo;I)[B

    move-result-object v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ".exif"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/pinguo/lib/image/Exif;->exifToJpegFile(Ljava/lang/String;Ljava/lang/String;[B)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ".exif"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_221
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ".tmp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_23d
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_23d} :catch_23f

    goto/16 :goto_f6

    :catch_23f
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_129

    :cond_245
    :try_start_245
    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I

    move-result v3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/pinguo/lib/image/Exif;->getDefaultPGExifData(Lcom/pinguo/camera360/photoedit/PictureInfo;I)[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/pinguo/lib/image/Exif;->exifToJpegData([B[B)[B

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V
    :try_end_25e
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_25e} :catch_23f

    goto :goto_221
.end method

.method public setCallback(Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    return-void
.end method

.method public setPreviewData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
