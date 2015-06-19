.class public Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;
.super Lus/pinguo/androidsdk/PGRendererMethod;
.source "GPUNormalPhotoMethod.java"
.field private static final TAG:Ljava/lang/String;
.field private callback:Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
.field private jpegData:[B
.field private lastEffect:Lcom/pinguo/camera360/effect/model/entity/Effect;
.field private lastTextureIndex:I
.field private pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->TAG:Ljava/lang/String;
return-void
.end method
.method protected constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lus/pinguo/androidsdk/PGRendererMethod;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iput-object v1, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->jpegData:[B
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->lastTextureIndex:I
iput-object v1, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->lastEffect:Lcom/pinguo/camera360/effect/model/entity/Effect;
return-void
.end method
.method private addTimerWaterMark(Ljava/lang/String;Lcom/pinguo/camera360/photoedit/PictureInfo;I)Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;
.registers 19
new-instance v10, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;
const/4 v3, 0x0
invoke-direct {v10, p0, v3}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;-><init>(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;)V
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getAddTimerWaterMark()Z
move-result v3
if-eqz v3, :cond_9c
new-instance v9, Ljava/util/Date;
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v5
invoke-direct {v9, v5, v6}, Ljava/util/Date;-><init>(J)V
new-instance v3, Ljava/text/SimpleDateFormat;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f080294
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v12
const/16 v3, 0x400
move/from16 v0, p3
if-le v0, v3, :cond_83
move/from16 v0, p3
int-to-double v5, v0
const-wide v13, 0x3fe6666666666666L
mul-double/2addr v5, v13
double-to-int v3, v5
move/from16 v0, p3
invoke-static {v0, v3}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->adjustFontSize(II)F
move-result v3
invoke-static {v12, v3}, Lcom/pinguo/lib/image/BitmapUtils;->makeTextBitmap(Ljava/lang/String;F)Landroid/graphics/Bitmap;
move-result-object v1
:goto_49
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v8
if-lez v4, :cond_9c
if-lez v8, :cond_9c
mul-int v3, v4, v8
new-array v2, v3, [I
const/4 v3, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
move v7, v4
invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
const/4 v3, 0x4
invoke-virtual {p0, v3, v2, v4, v8}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->setImageFromARGB(I[III)Z
new-instance v11, Ljava/lang/StringBuilder;
move-object/from16 v0, p1
invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "|"
invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v3, "Effect=DrawBottomObject;alignMode=1"
invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v3, 0x1
#setter for: Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->addTimerWaterMark:Z
invoke-static {v10, v3}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->access$3(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;Z)V
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
#setter for: Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->effectParam:Ljava/lang/String;
invoke-static {v10, v3}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->access$4(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;Ljava/lang/String;)V
:goto_82
return-object v10
:cond_83
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v3
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v5
invoke-static {v3, v5}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->adjustFontSize(II)F
move-result v3
invoke-static {v12, v3}, Lcom/pinguo/lib/image/BitmapUtils;->makeTextBitmap(Ljava/lang/String;F)Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_49
:cond_9c
move-object/from16 v0, p1
#setter for: Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->effectParam:Ljava/lang/String;
invoke-static {v10, v0}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->access$4(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;Ljava/lang/String;)V
goto :goto_82
.end method
.method private effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
invoke-interface {v0, p1, p2}, Lcom/pinguo/camera360/photoedit/callback/EffectCallback;->effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
:cond_9
return-void
.end method
.method private effectStart(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/photoedit/callback/EffectCallback;->effectStart(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
:cond_9
return-void
.end method
.method private isRightSize(IILcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
if-nez p3, :cond_5
:goto_4
:cond_4
return v0
:cond_5
invoke-virtual {p3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v2
if-ne p1, v2, :cond_13
invoke-virtual {p3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v2
if-ne p2, v2, :cond_13
move v0, v1
goto :goto_4
:cond_13
invoke-virtual {p3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v2
if-ne p2, v2, :cond_4
invoke-virtual {p3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v2
if-ne p1, v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method private setTexture(Lcom/pinguo/camera360/effect/model/entity/Effect;J)V
.registers 11
const/4 v6, -0x1
sget-object v2, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "getEffectAlias time:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
sub-long/2addr v4, p2
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p1, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->lastEffect:Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-virtual {v2, p1}, Lcom/pinguo/camera360/effect/model/entity/Effect;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_5d
iget v2, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->lastTextureIndex:I
if-eq v2, v6, :cond_39
iget v2, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->lastTextureIndex:I
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->clearImage(I)Z
:cond_39
invoke-virtual {p1}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getTexture()Lcom/pinguo/camera360/effect/model/entity/Texture;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/effect/model/entity/Texture;->isLegal(Lcom/pinguo/camera360/effect/model/entity/Texture;)Z
move-result v2
if-eqz v2, :cond_77
invoke-static {v0}, Lcom/pinguo/camera360/photoedit/TextureManager;->getTexturePath(Lcom/pinguo/camera360/effect/model/entity/Texture;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_74
const-string/jumbo v2, ".jpg"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_5e
iget v2, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
invoke-virtual {p0, v2, v1}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->setImageFromPath(ILjava/lang/String;)Z
iget v2, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
iput v2, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->lastTextureIndex:I
:goto_5b
iput-object p1, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->lastEffect:Lcom/pinguo/camera360/effect/model/entity/Effect;
:cond_5d
return-void
:cond_5e
const-string/jumbo v2, ".png"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_71
iget v2, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
invoke-virtual {p0, v2, v1}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->setSupportImageFromPNGPath(ILjava/lang/String;)Z
iget v2, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
iput v2, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->lastTextureIndex:I
goto :goto_5b
:cond_71
iput v6, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->lastTextureIndex:I
goto :goto_5b
:cond_74
iput v6, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->lastTextureIndex:I
goto :goto_5b
:cond_77
iput v6, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->lastTextureIndex:I
goto :goto_5b
.end method
.method public rendererAction()V
.registers 30
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->effectStart(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v27
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v6
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v3
const/16 v4, 0xc9
if-ne v3, v4, :cond_2c
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->isFromCamera360()Z
move-result v3
if-eqz v3, :cond_2c
const/4 v6, 0x0
:cond_2c
const/16 v19, -0x1
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPicEditCompatibilityMode()I
move-result v12
const/4 v3, 0x2
if-eq v12, v3, :cond_b8
const/4 v3, 0x1
if-eq v12, v3, :cond_b8
const/16 v18, 0x0
:goto_3e
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v3
const-string/jumbo v4, "key_max_texture_size"
const/4 v7, -0x1
invoke-virtual {v3, v4, v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I
move-result v21
sget-boolean v3, Lcom/pinguo/camera360/adapter/GAdapter;->IS_LT26I:Z
if-eqz v3, :cond_bb
const/16 v3, 0xbb8
const/16 v4, 0xfa0
move-object/from16 v0, p0
iget-object v7, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v7
move-object/from16 v0, p0
invoke-direct {v0, v3, v4, v7}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->isRightSize(IILcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Z
move-result v3
if-eqz v3, :cond_bb
const/16 v19, 0xe10
if-eqz v18, :cond_68
const/16 v19, 0x800
:goto_68
:cond_68
const/16 v3, 0x400
move/from16 v0, v19
if-le v0, v3, :cond_144
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->jpegData:[B
if-eqz v3, :cond_119
const/4 v3, 0x0
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->jpegData:[B
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v3, v4, v1}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->setImageFromJPEG(I[BI)Z
move-result v25
:goto_81
sget-object v3, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->renderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)Z
sget-object v3, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v7, "setImageFromJPEG time:"
invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
sub-long v7, v7, v27
invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
if-nez v25, :cond_181
sget-object v3, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->TAG:Ljava/lang/String;
const-string/jumbo v4, "setImageFromJPEG failed!"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v3, v4}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
:goto_b7
return-void
:cond_b8
const/16 v18, 0x1
goto :goto_3e
:cond_bb
if-eqz v18, :cond_f3
const/16 v3, 0x400
move/from16 v0, v21
if-le v0, v3, :cond_f3
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getMaxLength()I
move-result v23
move/from16 v0, v23
move/from16 v1, v21
if-le v0, v1, :cond_e8
move/from16 v0, v21
int-to-float v3, v0
const v4, 0x3f333333
mul-float/2addr v3, v4
float-to-int v0, v3
move/from16 v19, v0
:goto_df
const/16 v3, 0x500
move/from16 v0, v19
if-ge v0, v3, :cond_68
const/16 v19, 0x500
goto :goto_68
:cond_e8
move/from16 v0, v23
int-to-float v3, v0
const v4, 0x3f333333
mul-float/2addr v3, v4
float-to-int v0, v3
move/from16 v19, v0
goto :goto_df
:cond_f3
if-eqz v18, :cond_115
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getMaxLength()I
move-result v23
move/from16 v0, v23
int-to-float v3, v0
const v4, 0x3f333333
mul-float/2addr v3, v4
float-to-int v0, v3
move/from16 v19, v0
const/16 v3, 0x500
move/from16 v0, v19
if-ge v0, v3, :cond_68
const/16 v19, 0x500
goto/16 :goto_68
:cond_115
const/16 v19, -0x1
goto/16 :goto_68
:cond_119
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getOrgPath()Ljava/lang/String;
move-result-object v17
new-instance v16, Ljava/io/File;
invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_137
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v3, v4}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
goto :goto_b7
:cond_137
const/4 v3, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v17
move/from16 v2, v19
invoke-virtual {v0, v3, v1, v2}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->setImageFromPath(ILjava/lang/String;I)Z
move-result v25
goto/16 :goto_81
:cond_144
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->jpegData:[B
if-eqz v3, :cond_157
const/4 v3, 0x0
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->jpegData:[B
move-object/from16 v0, p0
invoke-virtual {v0, v3, v4}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->setImageFromJPEG(I[B)Z
move-result v25
goto/16 :goto_81
:cond_157
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getOrgPath()Ljava/lang/String;
move-result-object v17
new-instance v16, Ljava/io/File;
invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_176
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v3, v4}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
goto/16 :goto_b7
:cond_176
const/4 v3, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-virtual {v0, v3, v1}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->setImageFromPath(ILjava/lang/String;)Z
move-result v25
goto/16 :goto_81
:cond_181
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffect()Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v13
if-nez v13, :cond_195
sget-object v3, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->TAG:Ljava/lang/String;
const-string/jumbo v4, "Effect object is null, render fail!"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_b7
:cond_195
if-eqz v6, :cond_1a7
rem-int/lit16 v3, v6, 0xb4
if-eqz v3, :cond_25c
const/4 v5, 0x1
:goto_19c
const/4 v4, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x1
move-object/from16 v3, p0
invoke-virtual/range {v3 .. v11}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z
:cond_1a7
move-object/from16 v0, p0
move-wide/from16 v1, v27
invoke-direct {v0, v13, v1, v2}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->setTexture(Lcom/pinguo/camera360/effect/model/entity/Effect;J)V
const/4 v14, 0x0
invoke-virtual {v13}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveGPUCmd()Z
move-result v3
if-eqz v3, :cond_25f
invoke-virtual {v13}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getGpuCmds()[Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
aget-object v22, v3, v4
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAppendix()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v14
:goto_1c4
const-string/jumbo v3, "Effect="
move-object/from16 v0, v22
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_1e7
new-instance v24, Ljava/lang/StringBuilder;
invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Effect="
move-object/from16 v0, v24
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, v24
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
:cond_1e7
if-eqz v14, :cond_215
new-instance v3, Ljava/lang/StringBuilder;
invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v4, 0x3b
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x1
move-object/from16 v0, p0
iget-object v7, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v7
move-object/from16 v0, p0
iget-object v8, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v8}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffect()Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v8
invoke-virtual {v14, v4, v7, v8}, Lcom/pinguo/camera360/photoedit/effect/EffectAppend;->getEffectAppendParam(ZILcom/pinguo/camera360/effect/model/entity/Effect;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
:cond_215
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
move-object/from16 v0, p0
move-object/from16 v1, v22
move/from16 v2, v19
invoke-direct {v0, v1, v3, v2}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->addTimerWaterMark(Ljava/lang/String;Lcom/pinguo/camera360/photoedit/PictureInfo;I)Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;
move-result-object v20
#getter for: Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->effectParam:Ljava/lang/String;
invoke-static/range {v20 .. v20}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->access$0(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;)Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->setEffect(Ljava/lang/String;)Z
move-result v25
sget-object v3, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Effect Param:"
invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
#getter for: Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->effectParam:Ljava/lang/String;
invoke-static/range {v20 .. v20}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->access$0(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
if-nez v25, :cond_264
sget-object v3, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->TAG:Ljava/lang/String;
const-string/jumbo v4, "setEffect failed!"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v3, v4}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
goto/16 :goto_b7
:cond_25c
const/4 v5, 0x0
goto/16 :goto_19c
:cond_25f
const-string/jumbo v22, "Effect=Normal"
goto/16 :goto_1c4
:cond_264
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->make()Z
move-result v25
if-nez v25, :cond_27e
sget-object v3, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->TAG:Ljava/lang/String;
const-string/jumbo v4, "make failed!"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v3, v4}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
goto/16 :goto_b7
:cond_27e
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;
move-result-object v15
new-instance v3, Ljava/io/File;
invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z
move-result v3
if-nez v3, :cond_2bd
sget-object v3, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Create "
invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v7, "\'s  ParentFile Failed!"
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v3, v4}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
goto/16 :goto_b7
:cond_2bd
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, ".tmp"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
invoke-static {}, Lcom/pinguo/camera360/photoedit/JpgQuality;->getGPUJpgQuality()I
move-result v3
move-object/from16 v0, p0
move-object/from16 v1, v26
invoke-virtual {v0, v1, v3}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->getMakedImage2JpegFile(Ljava/lang/String;I)Z
move-result v25
#getter for: Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->addTimerWaterMark:Z
invoke-static/range {v20 .. v20}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->access$1(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;)Z
move-result v3
if-eqz v3, :cond_2e9
const/4 v3, 0x4
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->clearImage(I)Z
:cond_2e9
if-nez v25, :cond_2ff
sget-object v3, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->TAG:Ljava/lang/String;
const-string/jumbo v4, "getMakedImage2JpegFile failed!"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v3, v4}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
goto/16 :goto_b7
:cond_2ff
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->jpegData:[B
move-object/from16 v0, v26
invoke-static {v3, v4, v0}, Lcom/pinguo/camera360/photoedit/PGGPUUtils;->writeExifInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLjava/lang/String;)V
sget-object v3, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v7, "getMakedImage2JpegFile time:"
invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
sub-long v7, v7, v27
invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v4, 0x1
move-object/from16 v0, p0
invoke-direct {v0, v3, v4}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
const/4 v3, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->clearImage(I)Z
const/4 v3, 0x0
move-object/from16 v0, p0
iput-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v3, 0x0
move-object/from16 v0, p0
iput-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->jpegData:[B
const/4 v3, 0x0
move-object/from16 v0, p0
iput-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
goto/16 :goto_b7
.end method
.method protected setPicture(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/EffectCallback;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iput-object p2, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->jpegData:[B
iput-object p3, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
return-void
.end method