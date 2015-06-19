.class public Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;
.super Ljava/lang/Object;
.source "SonyImageSaveStrategy.java"
.implements Lcom/pinguo/camera360/save/IImageSaveStrategy;
.field private static final TAG:Ljava/lang/String;
.field private mEffectPrevBitmap:Landroid/graphics/Bitmap;
.field private mOrgPrevBitmap:Landroid/graphics/Bitmap;
.field private mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private createItemFromPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
.registers 8
new-instance v2, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
invoke-direct {v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;-><init>()V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getCameraModeIndex()I
move-result v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setCameraModeIndex(I)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setPhotoType(I)V
const/4 v4, 0x0
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setTryCount(I)V
const-string/jumbo v4, "finished"
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setProjectState(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setOrientation(I)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setWidth(I)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setHeight(I)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v4
invoke-virtual {v2, v4, v5}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setElapsedTime(J)V
invoke-static {}, Lcom/pinguo/lib/util/Util;->getVersionCode()I
move-result v4
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setVersion(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getAddTimerWaterMark()Z
move-result v4
iput-boolean v4, v2, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->isTimeWatermark:Z
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getJsonEx()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setJSONExpand(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getSoundInfo()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setExif(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v4
invoke-virtual {v2, v4, v5}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setDateTaken(J)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setDestPath(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getOrgPath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setSourcePath(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setEffectAlias(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAppendix()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v1
if-eqz v1, :cond_90
invoke-virtual {v1}, Lcom/pinguo/camera360/photoedit/effect/EffectAppend;->toJson()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setEffectAppendix(Ljava/lang/String;)V
:cond_90
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v4
const/4 v5, 0x2
if-eq v4, v5, :cond_b6
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getAddTimerWaterMark()Z
move-result v4
if-eqz v4, :cond_b6
invoke-virtual {v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getExif()Ljava/lang/String;
move-result-object v4
if-nez v4, :cond_b6
:try_start_a3
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
const-string/jumbo v4, "time_water"
const/4 v5, 0x1
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setJSONExpand(Ljava/lang/String;)V
:try_end_b6
.catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b6} :catch_b7
:goto_b6
:cond_b6
return-object v2
:catch_b7
move-exception v0
const/4 v4, 0x0
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setExif(Ljava/lang/String;)V
goto :goto_b6
.end method
.method public save([BLcom/pinguo/camera360/photoedit/PictureInfo;)Z
.registers 24
sget-object v2, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "xxxxxz="
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static/range {p1 .. p1}, Lcom/pinguo/lib/image/Exif;->getOrientation([B)I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ",exif ortation="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getExifRotation()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v16
sget-object v2, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
move-wide/from16 v0, v16
invoke-static {v2, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v14
new-instance v11, Ljava/io/File;
invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v9
invoke-static {v9}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z
move-result v2
if-nez v2, :cond_55
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
if-eqz v2, :cond_53
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
const/4 v4, 0x0
move-object/from16 v0, p2
invoke-interface {v2, v0, v4}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
:cond_53
const/4 v2, 0x0
:goto_54
return v2
:cond_55
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
if-eqz v2, :cond_64
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
const/16 v4, 0x5f
invoke-static {v14, v2, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
:cond_64
invoke-static {}, Lcom/pinguo/lib/UIContants;->getAbsoluteWidth()I
move-result v15
div-int/lit8 v20, v15, 0x4
const/16 v18, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
if-eqz v2, :cond_7d
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
const/4 v4, 0x0
move/from16 v0, v20
invoke-static {v2, v0, v4}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v18
:cond_7d
sget-object v2, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
move-wide/from16 v0, v16
invoke-static {v2, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v19
if-eqz v18, :cond_9f
const/16 v2, 0x5f
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
if-eqz v2, :cond_9f
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
move-object/from16 v0, v18
invoke-interface {v2, v0}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onThumbNailSaved(Landroid/graphics/Bitmap;)V
:cond_9f
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
if-eqz v2, :cond_b1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
const/4 v2, 0x0
move-object/from16 v0, p0
iput-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
:cond_b1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
if-eqz v2, :cond_c3
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
const/4 v2, 0x0
move-object/from16 v0, p0
iput-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
:cond_c3
sget-object v2, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
move-wide/from16 v0, v16
invoke-static {v2, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v13
:try_start_cb
move-object/from16 v0, p1
invoke-static {v0, v13}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;
move-result-object v3
invoke-static {v13, v3}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)V
new-instance v8, Ljava/io/File;
invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v4
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v6
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v7
invoke-static/range {v2 .. v8}, Lcom/pinguo/camera360/save/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/io/File;)Landroid/net/Uri;
:goto_f3
:try_end_f3
.catch Ljava/io/IOException; {:try_start_cb .. :try_end_f3} :catch_115
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-direct {v0, v1}, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->createItemFromPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
move-result-object v12
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2, v12}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->insertIntoSandBoxDB(Landroid/content/Context;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
if-eqz v2, :cond_112
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
const/4 v4, 0x1
move-object/from16 v0, p2
invoke-interface {v2, v0, v4}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
:cond_112
const/4 v2, 0x1
goto/16 :goto_54
:catch_115
move-exception v10
invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
goto :goto_f3
.end method
.method public setCallback(Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
return-void
.end method
.method public setPreviewData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
iput-object p2, p0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
return-void
.end method