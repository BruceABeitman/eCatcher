.class public Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;
.super Ljava/lang/Object;
.source "SoundImageSaveStrategy.java"
.implements Lcom/pinguo/camera360/save/IImageSaveStrategy;
.field private static final TAG:Ljava/lang/String;
.field private mEffectPrevBitmap:Landroid/graphics/Bitmap;
.field private mOrgPrevBitmap:Landroid/graphics/Bitmap;
.field private mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private dealPic(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
.registers 4
invoke-static {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createItemFromPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
move-result-object v0
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v0}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->insertIntoSandBoxDB(Landroid/content/Context;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)V
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->makeEffectPicture(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
return-void
.end method
.method private getSoundInfo(Ljava/lang/String;J)Ljava/lang/String;
.registers 6
new-instance v0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
invoke-direct {v0}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;-><init>()V
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getmAudioFormat()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->setAudioFormat(I)V
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getmChannelConfig()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->setChannel(I)V
new-instance v1, Ljava/io/File;
invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->setPath(Ljava/lang/String;)V
invoke-virtual {v0, p2, p3}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->setTime(J)V
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getmSampleRate()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->setSampleRate(I)V
invoke-virtual {v0}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->toJsonString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method private preProcessAndSaveSound(Ljava/util/List;Ljava/lang/String;)V
.registers 13
const/high16 v3, 0x3f80
const/4 v2, 0x0
if-eqz p1, :cond_b
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-gtz v0, :cond_14
:cond_b
sget-object v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->TAG:Ljava/lang/String;
const-string/jumbo v1, "sound data is empty error"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_13
return-void
:cond_14
new-instance v9, Ljava/util/LinkedList;
invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v8
const/4 v6, 0x0
:goto_1e
if-lt v6, v8, :cond_33
:goto_20
const/4 v0, 0x2
const v1, 0x469c4000
invoke-static {v9, v0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->raisePcmVolume(Ljava/util/List;IF)Ljava/util/List;
move-result-object v9
const-string/jumbo v7, "sound.pcm"
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v0
invoke-virtual {v0, v9, p2, v7}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->storePcmDataToFile(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
goto :goto_13
:cond_33
invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, [S
if-nez v6, :cond_53
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v0
sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;->FadeIn:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getmSampleRate()I
move-result v5
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->FadeAtSec(Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;FF[SI)[S
move-result-object v4
invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_50
add-int/lit8 v6, v6, 0x1
goto :goto_1e
:cond_53
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-ne v6, v0, :cond_71
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v0
sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;->FadeOut:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getmSampleRate()I
move-result v5
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->FadeAtSec(Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;FF[SI)[S
move-result-object v4
invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_20
:cond_71
invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_50
.end method
.method public save([BLcom/pinguo/camera360/photoedit/PictureInfo;)Z
.registers 22
sget-object v17, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->TAG:Ljava/lang/String;
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v16, "start save sound picture! data is null ? "
move-object/from16 v0, v18
move-object/from16 v1, v16
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
if-nez p1, :cond_64
const/16 v16, 0x1
:goto_12
move-object/from16 v0, v18
move/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v17
move-object/from16 v1, v16
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v11
sget-object v16, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
move-object/from16 v0, v16
invoke-static {v0, v11, v12}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v9
new-instance v6, Ljava/io/File;
invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z
move-result v16
if-nez v16, :cond_67
sget-object v16, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->TAG:Ljava/lang/String;
const-string/jumbo v17, "Create the floder failed when save the sound picture!"
invoke-static/range {v16 .. v17}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
move-object/from16 v16, v0
if-eqz v16, :cond_61
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
move-object/from16 v16, v0
const/16 v17, 0x0
move-object/from16 v0, v16
move-object/from16 v1, p2
move/from16 v2, v17
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
:cond_61
const/16 v16, 0x0
:goto_63
return v16
:cond_64
const/16 v16, 0x0
goto :goto_12
:cond_67
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v16
invoke-static/range {v16 .. v17}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxDir(J)Ljava/lang/String;
move-result-object v8
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getSoundData()Ljava/util/List;
move-result-object v16
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-direct {v0, v1, v8}, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->preProcessAndSaveSound(Ljava/util/List;Ljava/lang/String;)V
const/16 v16, 0x0
move-object/from16 v0, p2
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setSoundData(Ljava/util/List;)V
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v16
move-object/from16 v0, p0
move-wide/from16 v1, v16
invoke-direct {v0, v8, v1, v2}, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->getSoundInfo(Ljava/lang/String;J)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, p2
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setSoundInfo(Ljava/lang/String;)V
sget-object v16, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
move-object/from16 v0, v16
invoke-static {v0, v11, v12}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v7
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getExifData()[B
move-result-object v16
if-nez v16, :cond_ad
invoke-static/range {p1 .. p1}, Lcom/pinguo/lib/image/Exif;->getExifData([B)[B
move-result-object v5
move-object/from16 v0, p2
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V
:cond_ad
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v16
move-object/from16 v0, p2
move/from16 v1, v16
invoke-static {v0, v1}, Lcom/pinguo/lib/image/Exif;->getDefaultPGExifData(Lcom/pinguo/camera360/photoedit/PictureInfo;I)[B
move-result-object v16
move-object/from16 v0, p1
move-object/from16 v1, v16
invoke-static {v0, v1}, Lcom/pinguo/lib/image/Exif;->exifToJpegData([B[B)[B
move-result-object p1
:try_start_c1
move-object/from16 v0, p1
invoke-static {v0, v7}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V
move-object/from16 v0, p2
invoke-virtual {v0, v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setOrgPath(Ljava/lang/String;)V
:goto_cb
:try_end_cb
.catch Ljava/io/IOException; {:try_start_c1 .. :try_end_cb} :catch_17b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
move-object/from16 v16, v0
if-eqz v16, :cond_e2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
move-object/from16 v16, v0
const/16 v17, 0x5f
move-object/from16 v0, v16
move/from16 v1, v17
invoke-static {v9, v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
:cond_e2
invoke-static {}, Lcom/pinguo/lib/UIContants;->getAbsoluteWidth()I
move-result v10
div-int/lit8 v15, v10, 0x4
const/4 v13, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
move-object/from16 v16, v0
if-eqz v16, :cond_101
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
move-object/from16 v16, v0
const/16 v17, 0x0
move-object/from16 v0, v16
move/from16 v1, v17
invoke-static {v0, v15, v1}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v13
:cond_101
sget-object v16, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
move-object/from16 v0, v16
invoke-static {v0, v11, v12}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v14
if-eqz v13, :cond_125
const/16 v16, 0x5f
move/from16 v0, v16
invoke-static {v14, v13, v0}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
move-object/from16 v16, v0
if-eqz v16, :cond_125
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-interface {v0, v13}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onThumbNailSaved(Landroid/graphics/Bitmap;)V
:cond_125
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
move-object/from16 v16, v0
if-eqz v16, :cond_13e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V
const/16 v16, 0x0
move-object/from16 v0, v16
move-object/from16 v1, p0
iput-object v0, v1, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
:cond_13e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
move-object/from16 v16, v0
if-eqz v16, :cond_157
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V
const/16 v16, 0x0
move-object/from16 v0, v16
move-object/from16 v1, p0
iput-object v0, v1, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
:cond_157
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-direct {v0, v1}, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->dealPic(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
move-object/from16 v16, v0
if-eqz v16, :cond_177
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
move-object/from16 v16, v0
const/16 v17, 0x1
move-object/from16 v0, v16
move-object/from16 v1, p2
move/from16 v2, v17
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
:cond_177
const/16 v16, 0x1
goto/16 :goto_63
:catch_17b
move-exception v4
invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_cb
.end method
.method public setCallback(Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
return-void
.end method
.method public setPreviewData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
iput-object p2, p0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
return-void
.end method