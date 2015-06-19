.class public Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
.super Ljava/lang/Thread;
.source "PictureEditQueueThread.java"
.implements Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;
.field private static final TAG:Ljava/lang/String;
.field private editor:Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;
.field private mCallback:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$EffectPictureCallback;
.field private mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
.field private mStop:Z
.field private needReloadSources:Z
.field private sdk:Lus/pinguo/androidsdk/PGImageSDK;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mStop:Z
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->editor:Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mCallback:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$EffectPictureCallback;
iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->needReloadSources:Z
const/16 v0, 0xa
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->setPriority(I)V
sget-object v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->TAG:Ljava/lang/String;
const-string/jumbo v1, "Create new queue!"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "GPU Normal Photo Edit Queue Thread"
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->setName(Ljava/lang/String;)V
new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;
const/16 v1, 0x64
invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-static {}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->getPGImageSDK()Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
if-eqz v0, :cond_3a
invoke-static {p0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->registerSDK(Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;)V
:cond_3a
new-instance v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;
invoke-direct {v0}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->editor:Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;
new-instance v0, LvStudio/Android/GPhoto/GPhotoJNI;
invoke-direct {v0}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;
return-void
.end method
.method public static adjustFontSize(II)F
.registers 6
mul-int v2, p1, p0
int-to-double v2, v2
invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v2
double-to-int v1, v2
div-int/lit8 v0, v1, 0x28
const/16 v2, 0x12
if-ge v0, v2, :cond_10
const/16 v0, 0x12
:cond_10
int-to-float v2, v0
return v2
.end method
.method private deal(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/EffectCallback;)V
.registers 27
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v3
const/4 v4, 0x2
if-ne v3, v4, :cond_1f
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getSoundInfo()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->json2SoundInfo(Ljava/lang/String;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v20
if-eqz v20, :cond_1f
:try_start_14
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getOrgPath()Ljava/lang/String;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)V
:try_end_1f
.catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_67
:goto_1f
:cond_1f
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->isMakeGPU()Z
move-result v18
sget-object v3, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Deal picture, is GPU : "
invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move/from16 v0, v18
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v18, :cond_6c
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->editor:Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;
move-object/from16 v0, p1
move-object/from16 v1, p2
move-object/from16 v2, p3
invoke-virtual {v3, v0, v1, v2}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->setPicture(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/EffectCallback;)V
move-object/from16 v0, p0
iget-boolean v3, v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->needReloadSources:Z
if-eqz v3, :cond_5b
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v3}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->reloadResource(Lus/pinguo/androidsdk/PGImageSDK;)V
const/4 v3, 0x0
move-object/from16 v0, p0
iput-boolean v3, v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->needReloadSources:Z
:cond_5b
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->editor:Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;
invoke-virtual {v3, v4}, Lus/pinguo/androidsdk/PGImageSDK;->renderActionWithWait(Lus/pinguo/androidsdk/PGRendererMethod;)V
goto :goto_2
:catch_67
move-exception v12
invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
goto :goto_1f
:cond_6c
if-eqz p3, :cond_75
move-object/from16 v0, p3
move-object/from16 v1, p1
invoke-interface {v0, v1}, Lcom/pinguo/camera360/photoedit/callback/EffectCallback;->effectStart(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
:cond_75
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v13
const/4 v6, 0x0
if-nez v13, :cond_1db
const-string/jumbo v6, "effect=none"
:goto_87
if-nez v6, :cond_8c
const-string/jumbo v6, "Normal"
:cond_8c
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "effect="
invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_1df
const-string/jumbo v3, "effect="
move-object/from16 v0, v19
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, v19
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_a7
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAppendix()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v14
if-eqz v14, :cond_ce
const/4 v3, 0x0
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v4
invoke-virtual {v14, v3, v4, v13}, Lcom/pinguo/camera360/photoedit/effect/EffectAppend;->getEffectAppendParam(ZILcom/pinguo/camera360/effect/model/entity/Effect;)Ljava/lang/String;
move-result-object v21
if-eqz v21, :cond_ce
const-string/jumbo v3, ";"
move-object/from16 v0, v19
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v3, 0x0
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v4
invoke-virtual {v14, v3, v4, v13}, Lcom/pinguo/camera360/photoedit/effect/EffectAppend;->getEffectAppendParam(ZILcom/pinguo/camera360/effect/model/entity/Effect;)Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v19
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_ce
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v9
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v3
const/16 v4, 0xc9
if-ne v3, v4, :cond_e1
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->isFromCamera360()Z
move-result v3
if-eqz v3, :cond_e1
const/4 v9, 0x0
:cond_e1
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getAddTimerWaterMark()Z
move-result v3
if-eqz v3, :cond_1e6
new-instance v10, Ljava/util/Date;
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v3
invoke-direct {v10, v3, v4}, Ljava/util/Date;-><init>(J)V
new-instance v3, Ljava/text/SimpleDateFormat;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v7, 0x7f080294
invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v3, v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
invoke-virtual {v3, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v22
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v3
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v4
invoke-static {v3, v4}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->adjustFontSize(II)F
move-result v3
move-object/from16 v0, v22
invoke-static {v0, v3}, Lcom/pinguo/lib/image/BitmapUtils;->makeTextBitmap(Ljava/lang/String;F)Landroid/graphics/Bitmap;
move-result-object v11
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;
const/4 v4, 0x1
invoke-virtual {v3, v11, v4}, LvStudio/Android/GPhoto/GPhotoJNI;->SetDateBitmap(Landroid/graphics/Bitmap;I)V
sget-object v3, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->TAG:Ljava/lang/String;
const-string/jumbo v4, "Already set the time water for picture"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_138
sget-object v3, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v7, "CPU make effect photo:"
invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v7, "/"
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;
invoke-virtual {v3}, LvStudio/Android/GPhoto/GPhotoJNI;->setPhotoPanoQuality()V
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, ".tmp"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getOrgPath()Ljava/lang/String;
move-result-object v4
const/4 v7, 0x0
const/4 v8, 0x0
invoke-virtual/range {v3 .. v9}, LvStudio/Android/GPhoto/GPhotoJNI;->MakeEffectImageEX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)Z
move-result v17
sget-object v3, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->TAG:Ljava/lang/String;
const-string/jumbo v4, "MakeEffectImageEX"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getExifData()[B
move-result-object v3
if-nez v3, :cond_1a2
if-eqz p2, :cond_1f1
invoke-static/range {p2 .. p2}, Lcom/pinguo/lib/image/Exif;->getExifData([B)[B
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V
:cond_1a2
:goto_1a2
sget-object v3, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->TAG:Ljava/lang/String;
const-string/jumbo v4, "setExifData"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v3, 0x0
move-object/from16 v0, p1
invoke-static {v0, v3}, Lcom/pinguo/lib/image/Exif;->getDefaultPGExifData(Lcom/pinguo/camera360/photoedit/PictureInfo;I)[B
move-result-object v15
:try_start_1b1
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;
move-result-object v3
invoke-static {v5, v3, v15}, Lcom/pinguo/lib/image/Exif;->exifToJpegFile(Ljava/lang/String;Ljava/lang/String;[B)V
:try_end_1b8
.catchall {:try_start_1b1 .. :try_end_1b8} :catchall_21d
.catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1b8} :catch_1ff
new-instance v16, Ljava/io/File;
move-object/from16 v0, v16
invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_1c8
invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
:goto_1c8
:cond_1c8
sget-object v3, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->TAG:Ljava/lang/String;
const-string/jumbo v4, "exifToJpegFile"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p3
move-object/from16 v1, p1
move/from16 v2, v17
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/photoedit/callback/EffectCallback;->effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
goto/16 :goto_2
:cond_1db
iget-object v6, v13, Lcom/pinguo/camera360/effect/model/entity/Effect;->cpuCmd:Ljava/lang/String;
goto/16 :goto_87
:cond_1df
move-object/from16 v0, v19
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_a7
:cond_1e6
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;
const/4 v4, 0x0
const/4 v7, 0x1
invoke-virtual {v3, v4, v7}, LvStudio/Android/GPhoto/GPhotoJNI;->SetDateBitmap(Landroid/graphics/Bitmap;I)V
goto/16 :goto_138
:cond_1f1
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getOrgPath()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/lib/image/Exif;->getExifData(Ljava/lang/String;)[B
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V
goto :goto_1a2
:catch_1ff
move-exception v12
:try_start_200
sget-object v3, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->TAG:Ljava/lang/String;
invoke-static {v3, v12}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_205
.catchall {:try_start_200 .. :try_end_205} :catchall_21d
:try_start_205
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;
move-result-object v3
invoke-static {v5, v3}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)V
:goto_20c
:try_end_20c
.catchall {:try_start_205 .. :try_end_20c} :catchall_21d
.catch Ljava/io/IOException; {:try_start_205 .. :try_end_20c} :catch_22f
new-instance v16, Ljava/io/File;
move-object/from16 v0, v16
invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_1c8
invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
goto :goto_1c8
:catchall_21d
move-exception v3
new-instance v16, Ljava/io/File;
move-object/from16 v0, v16
invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z
move-result v4
if-eqz v4, :cond_22e
invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
:cond_22e
throw v3
:catch_22f
move-exception v3
goto :goto_20c
.end method
.method public addImage(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/EffectCallback;)V
.registers 7
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
invoke-static {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->adjustPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object p1
sget-object v1, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Add Image!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;-><init>(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;)V
#setter for: Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->data:[B
invoke-static {v0, p2}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->access$1(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;[B)V
#setter for: Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->callback:Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
invoke-static {v0, p3}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->access$2(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;Lcom/pinguo/camera360/photoedit/callback/EffectCallback;)V
#setter for: Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-static {v0, p1}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->access$3(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;Lcom/pinguo/camera360/photoedit/PictureInfo;)V
monitor-enter p0
:try_start_1f
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I
move-result v1
const/16 v2, 0x64
if-ge v1, v2, :cond_31
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
:cond_31
monitor-exit p0
goto :goto_2
:catchall_33
move-exception v1
monitor-exit p0
:try_end_35
.catchall {:try_start_1f .. :try_end_35} :catchall_33
throw v1
.end method
.method public cancelFinish()V
.registers 2
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput-boolean v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mStop:Z
monitor-exit p0
return-void
:catchall_6
move-exception v0
monitor-exit p0
:try_end_8
.catchall {:try_start_2 .. :try_end_8} :catchall_6
throw v0
.end method
.method public finish()V
.registers 2
monitor-enter p0
const/4 v0, 0x1
:try_start_2
iput-boolean v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mStop:Z
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
:try_end_b
.catchall {:try_start_2 .. :try_end_b} :catchall_9
throw v0
.end method
.method public getCount()I
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I
move-result v0
monitor-exit p0
return v0
:catchall_9
move-exception v0
monitor-exit p0
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_9
throw v0
.end method
.method public reloadResources()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->needReloadSources:Z
return-void
.end method
.method public run()V
.registers 8
const/4 v6, 0x0
:goto_1
const/4 v2, 0x0
monitor-enter p0
:try_start_3
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z
move-result v3
if-eqz v3, :cond_42
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
iget-boolean v3, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mStop:Z
if-eqz v3, :cond_3a
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mCallback:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$EffectPictureCallback;
if-eqz v3, :cond_1b
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mCallback:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$EffectPictureCallback;
invoke-interface {v3}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$EffectPictureCallback;->makeAllEffectFinish()V
:cond_1b
monitor-exit p0
:try_end_1c
.catchall {:try_start_3 .. :try_end_1c} :catchall_3f
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
if-eqz v3, :cond_37
sget-object v3, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->TAG:Ljava/lang/String;
const-string/jumbo v4, "Destroy sdk!"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->unregisterSDK(Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;)V
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
invoke-virtual {v3}, Lus/pinguo/androidsdk/PGImageSDK;->destroySDK()V
iput-object v6, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
:cond_37
iput-object v6, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->editor:Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;
return-void
:try_start_3a
:cond_3a
invoke-virtual {p0}, Ljava/lang/Object;->wait()V
:try_start_3d
:goto_3d
:try_end_3d
.catchall {:try_start_3a .. :try_end_3d} :catchall_3f
.catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_77
monitor-exit p0
goto :goto_1
:catchall_3f
move-exception v3
monitor-exit p0
:try_end_41
.catchall {:try_start_3d .. :try_end_41} :catchall_3f
throw v3
:cond_42
:try_start_42
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;
move-result-object v3
move-object v0, v3
check-cast v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;
move-object v2, v0
:goto_4c
:try_start_4c
:try_end_4c
.catchall {:try_start_42 .. :try_end_4c} :catchall_3f
.catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_4c} :catch_72
monitor-exit p0
:try_end_4d
.catchall {:try_start_4c .. :try_end_4d} :catchall_3f
#getter for: Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-static {v2}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->access$4(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v3
#getter for: Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->data:[B
invoke-static {v2}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->access$5(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;)[B
move-result-object v4
#getter for: Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->callback:Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
invoke-static {v2}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->access$6(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;)Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
move-result-object v5
invoke-direct {p0, v3, v4, v5}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->deal(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/EffectCallback;)V
monitor-enter p0
:try_start_5d
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mCallback:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$EffectPictureCallback;
if-eqz v3, :cond_6a
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mCallback:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$EffectPictureCallback;
#getter for: Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-static {v2}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->access$4(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v4
invoke-interface {v3, v4}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$EffectPictureCallback;->makeEffectFinish(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
:cond_6a
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
monitor-exit p0
goto :goto_1
:catchall_6f
move-exception v3
monitor-exit p0
:try_end_71
.catchall {:try_start_5d .. :try_end_71} :catchall_6f
throw v3
:catch_72
move-exception v1
:try_start_73
invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
:try_end_76
.catchall {:try_start_73 .. :try_end_76} :catchall_3f
goto :goto_4c
:catch_77
move-exception v3
goto :goto_3d
.end method
.method public declared-synchronized setEditCallback(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$EffectPictureCallback;)V
.registers 3
monitor-enter p0
:try_start_1
iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->mCallback:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$EffectPictureCallback;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-void
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method