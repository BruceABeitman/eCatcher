.class public Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;
.super Ljava/lang/Object;
.source "VideoImageSaveStrategy.java"
.implements Lcom/pinguo/camera360/save/IImageSaveStrategy;
.field private static final TAG:Ljava/lang/String;
.field private mEffectPrevBitmap:Landroid/graphics/Bitmap;
.field private mOrgPrevBitmap:Landroid/graphics/Bitmap;
.field private mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public save([BLcom/pinguo/camera360/photoedit/PictureInfo;)Z
.registers 27
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v19
sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
move-wide/from16 v0, v19
invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v16
new-instance v12, Ljava/io/File;
move-object/from16 v0, v16
invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v9
invoke-static {v9}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z
move-result v3
if-nez v3, :cond_2f
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
if-eqz v3, :cond_2d
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
const/4 v4, 0x0
move-object/from16 v0, p2
invoke-interface {v3, v0, v4}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
:cond_2d
const/4 v3, 0x0
:goto_2e
return v3
:cond_2f
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
if-eqz v3, :cond_40
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
const/16 v4, 0x5f
move-object/from16 v0, v16
invoke-static {v0, v3, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
:cond_40
invoke-static {}, Lcom/pinguo/lib/UIContants;->getAbsoluteWidth()I
move-result v18
div-int/lit8 v23, v18, 0x4
const/16 v21, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
if-eqz v3, :cond_59
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
const/4 v4, 0x0
move/from16 v0, v23
invoke-static {v3, v0, v4}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v21
:cond_59
sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
move-wide/from16 v0, v19
invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v22
if-eqz v21, :cond_7b
const/16 v3, 0x5f
move-object/from16 v0, v22
move-object/from16 v1, v21
invoke-static {v0, v1, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
if-eqz v3, :cond_7b
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
move-object/from16 v0, v21
invoke-interface {v3, v0}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onThumbNailSaved(Landroid/graphics/Bitmap;)V
:cond_7b
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
if-eqz v3, :cond_8d
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
const/4 v3, 0x0
move-object/from16 v0, p0
iput-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
:cond_8d
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
if-eqz v3, :cond_9f
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
const/4 v3, 0x0
move-object/from16 v0, p0
iput-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
:cond_9f
sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
move-wide/from16 v0, v19
invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v14
:try_start_a7
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getExifData()[B
move-result-object v3
if-nez v3, :cond_b6
invoke-static/range {p1 .. p1}, Lcom/pinguo/lib/image/Exif;->getExifData([B)[B
move-result-object v11
move-object/from16 v0, p2
invoke-virtual {v0, v11}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V
:cond_b6
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicFrame()I
move-result v15
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v8
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v3
const/16 v4, 0xc9
if-ne v3, v4, :cond_cd
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->isFromCamera360()Z
move-result v3
if-eqz v3, :cond_cd
const/4 v8, 0x0
:cond_cd
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v3
invoke-static {v15, v8, v3}, Lcom/pinguo/camera360/photoedit/PGGPUUtils;->getCPUPicFrame(IILcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Ljava/lang/String;
move-result-object v17
if-nez v17, :cond_118
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v3
move-object/from16 v0, p2
invoke-static {v0, v3}, Lcom/pinguo/lib/image/Exif;->getDefaultPGExifData(Lcom/pinguo/camera360/photoedit/PictureInfo;I)[B
move-result-object v11
move-object/from16 v0, p1
invoke-static {v0, v11}, Lcom/pinguo/lib/image/Exif;->exifToJpegData([B[B)[B
move-result-object p1
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V
:try_end_ec
.catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ec} :catch_1fa
:goto_ec
invoke-static/range {p2 .. p2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createItemFromPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
move-result-object v13
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v13}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->insertIntoSandBoxDB(Landroid/content/Context;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)V
move-object/from16 v0, p2
invoke-virtual {v0, v14}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setOrgPath(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v3
move-object/from16 v0, p2
invoke-virtual {v3, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->makeEffectPicture(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
if-eqz v3, :cond_115
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
const/4 v4, 0x1
move-object/from16 v0, p2
invoke-interface {v3, v0, v4}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
:cond_115
const/4 v3, 0x1
goto/16 :goto_2e
:try_start_118
:cond_118
new-instance v2, LvStudio/Android/GPhoto/GPhotoJNI;
invoke-direct {v2}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
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
move-object/from16 v0, v17
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
const/4 v3, 0x0
const/4 v4, 0x1
invoke-virtual {v2, v3, v4}, LvStudio/Android/GPhoto/GPhotoJNI;->SetDateBitmap(Landroid/graphics/Bitmap;I)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, ".tmp"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
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
invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
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
if-eqz v3, :cond_200
const/4 v3, 0x0
move-object/from16 v0, p2
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v3
move-object/from16 v0, p2
invoke-static {v0, v3}, Lcom/pinguo/lib/image/Exif;->getDefaultPGExifData(Lcom/pinguo/camera360/photoedit/PictureInfo;I)[B
move-result-object v11
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, ".exif"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3, v14, v11}, Lcom/pinguo/lib/image/Exif;->exifToJpegFile(Ljava/lang/String;Ljava/lang/String;[B)V
new-instance v3, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, ".exif"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->delete()Z
:goto_1dc
new-instance v3, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, ".tmp"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->delete()Z
:try_end_1f8
.catch Ljava/io/IOException; {:try_start_118 .. :try_end_1f8} :catch_1fa
goto/16 :goto_ec
:catch_1fa
move-exception v10
invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_ec
:cond_200
:try_start_200
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v3
move-object/from16 v0, p2
invoke-static {v0, v3}, Lcom/pinguo/lib/image/Exif;->getDefaultPGExifData(Lcom/pinguo/camera360/photoedit/PictureInfo;I)[B
move-result-object v11
move-object/from16 v0, p1
invoke-static {v0, v11}, Lcom/pinguo/lib/image/Exif;->exifToJpegData([B[B)[B
move-result-object p1
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V
:try_end_215
.catch Ljava/io/IOException; {:try_start_200 .. :try_end_215} :catch_1fa
goto :goto_1dc
.end method
.method public setCallback(Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
return-void
.end method
.method public setPreviewData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
iput-object p2, p0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
return-void
.end method