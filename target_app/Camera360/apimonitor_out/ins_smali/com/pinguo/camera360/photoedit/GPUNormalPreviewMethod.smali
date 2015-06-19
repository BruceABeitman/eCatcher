.class public Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;
.super Lus/pinguo/androidsdk/PGRendererMethod;
.source "GPUNormalPreviewMethod.java"
.field private static final TAG:Ljava/lang/String;
.field private callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
.field private jpegData:[B
.field private lastEffect:Lcom/pinguo/camera360/effect/model/entity/Effect;
.field private lastTextureIndex:I
.field private mUseLastData:Z
.field private needOrgPreview:Z
.field private pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->TAG:Ljava/lang/String;
return-void
.end method
.method protected constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Lus/pinguo/androidsdk/PGRendererMethod;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iput-object v1, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->jpegData:[B
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->lastTextureIndex:I
iput-object v1, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->lastEffect:Lcom/pinguo/camera360/effect/model/entity/Effect;
iput-boolean v2, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->mUseLastData:Z
iput-boolean v2, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->needOrgPreview:Z
return-void
.end method
.method protected static decodeJpg([B)Landroid/graphics/Bitmap;
.registers 5
const/4 v0, 0x0
if-eqz p0, :cond_8
array-length v2, p0
const/16 v3, 0xa
if-ge v2, v3, :cond_9
:goto_8
:cond_8
return-object v0
:cond_9
const/4 v2, 0x0
:try_start_a
array-length v3, p0
invoke-static {p0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
:try_end_e
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_10
.catch Ljava/lang/Error; {:try_start_a .. :try_end_e} :catch_12
move-result-object v0
goto :goto_8
:catch_10
move-exception v1
goto :goto_8
:catch_12
move-exception v1
goto :goto_8
.end method
.method protected static pGColorBuffer2Bitmap(Lus/pinguo/androidsdk/PGColorBuffer;)Landroid/graphics/Bitmap;
.registers 8
invoke-virtual {p0}, Lus/pinguo/androidsdk/PGColorBuffer;->getColorBuffer()[I
move-result-object v2
invoke-virtual {p0}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageHeight()I
move-result v1
invoke-virtual {p0}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageWidth()I
move-result v3
if-eqz v2, :cond_41
if-lez v1, :cond_41
if-lez v3, :cond_41
sget-object v4, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "getMakedImage:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v2, v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
sget-object v4, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->TAG:Ljava/lang/String;
const-string/jumbo v5, "getMakedImage end"
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:goto_40
return-object v0
:cond_41
const/4 v0, 0x0
goto :goto_40
.end method
.method public rendererAction()V
.registers 26
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v23
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPreviewLength()I
move-result v18
const/16 v2, 0xa
move/from16 v0, v18
if-lt v0, v2, :cond_18
const/16 v2, 0x1388
move/from16 v0, v18
if-le v0, v2, :cond_30
:cond_18
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v7, "previewLength must [10, 5000], but previewLength="
invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move/from16 v0, v18
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_30
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v5
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v2
const/16 v3, 0xc9
if-ne v2, v3, :cond_4f
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->isFromCamera360()Z
move-result v2
if-eqz v2, :cond_4f
const/4 v5, 0x0
:cond_4f
const/16 v20, 0x1
move-object/from16 v0, p0
iget-boolean v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->mUseLastData:Z
if-nez v2, :cond_9b
const/4 v2, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->clearImage(I)Z
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->jpegData:[B
if-nez v2, :cond_d5
const/4 v2, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getOrgPath()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
move/from16 v1, v18
invoke-virtual {v0, v2, v3, v1}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->setImageFromPath(ILjava/lang/String;I)Z
move-result v20
:goto_74
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicFrame()I
move-result v3
invoke-static {v2, v3, v5}, Lcom/pinguo/camera360/photoedit/PGGPUUtils;->getPictureFrameRect(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;II)Lus/pinguo/androidsdk/PGRect;
move-result-object v6
if-nez v5, :cond_8c
if-eqz v6, :cond_9b
:cond_8c
rem-int/lit16 v2, v5, 0xb4
if-eqz v2, :cond_e3
const/4 v4, 0x1
:goto_91
const/4 v3, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
const/4 v10, 0x1
move-object/from16 v2, p0
invoke-virtual/range {v2 .. v10}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z
:cond_9b
sget-object v2, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->renderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)Z
sget-object v2, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v7, "setImageFromJPEG time:"
invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
sub-long v7, v7, v23
invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
if-nez v20, :cond_e5
sget-object v2, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->TAG:Ljava/lang/String;
const-string/jumbo v3, "setImageFromJPEG failed!"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v7, 0x0
const/4 v8, 0x0
invoke-interface {v2, v3, v7, v8}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
:goto_d4
return-void
:cond_d5
const/4 v2, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->jpegData:[B
move-object/from16 v0, p0
move/from16 v1, v18
invoke-virtual {v0, v2, v3, v1}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->setImageFromJPEG(I[BI)Z
move-result v20
goto :goto_74
:cond_e3
const/4 v4, 0x0
goto :goto_91
:cond_e5
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffect()Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v11
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->lastEffect:Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-virtual {v2, v11}, Lcom/pinguo/camera360/effect/model/entity/Effect;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_139
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->lastTextureIndex:I
const/4 v3, -0x1
if-eq v2, v3, :cond_107
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->lastTextureIndex:I
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->clearImage(I)Z
:cond_107
invoke-virtual {v11}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getTexture()Lcom/pinguo/camera360/effect/model/entity/Texture;
move-result-object v21
invoke-static/range {v21 .. v21}, Lcom/pinguo/camera360/effect/model/entity/Texture;->isLegal(Lcom/pinguo/camera360/effect/model/entity/Texture;)Z
move-result v2
if-eqz v2, :cond_1ec
invoke-static/range {v21 .. v21}, Lcom/pinguo/camera360/photoedit/TextureManager;->getTexturePath(Lcom/pinguo/camera360/effect/model/entity/Texture;)Ljava/lang/String;
move-result-object v22
if-eqz v22, :cond_1e5
const-string/jumbo v2, ".jpg"
move-object/from16 v0, v22
invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_1be
move-object/from16 v0, v21
iget v2, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
move-object/from16 v0, p0
move-object/from16 v1, v22
invoke-virtual {v0, v2, v1}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->setImageFromPath(ILjava/lang/String;)Z
move-object/from16 v0, v21
iget v2, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
move-object/from16 v0, p0
iput v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->lastTextureIndex:I
:goto_135
move-object/from16 v0, p0
iput-object v11, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->lastEffect:Lcom/pinguo/camera360/effect/model/entity/Effect;
:cond_139
const/4 v12, 0x0
if-eqz v11, :cond_142
invoke-virtual {v11}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveGPUCmd()Z
move-result v2
if-nez v2, :cond_1f3
:cond_142
const-string/jumbo v15, "Normal"
:goto_145
const-string/jumbo v2, "Effect="
invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_164
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Effect="
move-object/from16 v0, v19
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, v19
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
:cond_164
if-eqz v12, :cond_204
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v3, 0x3b
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
const/4 v3, 0x1
move-object/from16 v0, p0
iget-object v7, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v7
invoke-virtual {v12, v3, v7, v11}, Lcom/pinguo/camera360/photoedit/effect/EffectAppend;->getEffectAppendParam(ZILcom/pinguo/camera360/effect/model/entity/Effect;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->setEffect(Ljava/lang/String;)Z
move-result v20
:goto_190
sget-object v2, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Effect Param:"
invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
if-nez v20, :cond_20b
sget-object v2, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->TAG:Ljava/lang/String;
const-string/jumbo v3, "setEffect failed!"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v7, 0x0
const/4 v8, 0x0
invoke-interface {v2, v3, v7, v8}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
goto/16 :goto_d4
:cond_1be
const-string/jumbo v2, ".png"
move-object/from16 v0, v22
invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_1de
move-object/from16 v0, v21
iget v2, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
move-object/from16 v0, p0
move-object/from16 v1, v22
invoke-virtual {v0, v2, v1}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->setSupportImageFromPNGPath(ILjava/lang/String;)Z
move-object/from16 v0, v21
iget v2, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
move-object/from16 v0, p0
iput v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->lastTextureIndex:I
goto/16 :goto_135
:cond_1de
const/4 v2, -0x1
move-object/from16 v0, p0
iput v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->lastTextureIndex:I
goto/16 :goto_135
:cond_1e5
const/4 v2, -0x1
move-object/from16 v0, p0
iput v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->lastTextureIndex:I
goto/16 :goto_135
:cond_1ec
const/4 v2, -0x1
move-object/from16 v0, p0
iput v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->lastTextureIndex:I
goto/16 :goto_135
:cond_1f3
invoke-virtual {v11}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getGpuCmds()[Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
aget-object v15, v2, v3
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAppendix()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v12
goto/16 :goto_145
:cond_204
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->setEffect(Ljava/lang/String;)Z
move-result v20
goto :goto_190
:cond_20b
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->make()Z
move-result v20
sget-object v2, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v7, "make time:"
invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
sub-long v7, v7, v23
invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
if-nez v20, :cond_243
sget-object v2, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->TAG:Ljava/lang/String;
const-string/jumbo v3, "make failed!"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v7, 0x0
const/4 v8, 0x0
invoke-interface {v2, v3, v7, v8}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
goto/16 :goto_d4
:cond_243
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->getMakedImage2Buffer()Lus/pinguo/androidsdk/PGColorBuffer;
move-result-object v16
sget-object v2, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v7, "getMakedImagePreview time:"
invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
sub-long v7, v7, v23
invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
invoke-static/range {v16 .. v16}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pGColorBuffer2Bitmap(Lus/pinguo/androidsdk/PGColorBuffer;)Landroid/graphics/Bitmap;
move-result-object v13
move-object/from16 v0, p0
iget-boolean v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->needOrgPreview:Z
if-nez v2, :cond_2ac
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v7, 0x0
invoke-interface {v2, v3, v13, v7}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
:goto_278
sget-object v2, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v7, "getMakedImagePreview bitmap create:"
invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
sub-long v7, v7, v23
invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->TAG:Ljava/lang/String;
const-string/jumbo v3, "Clear image!"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x0
move-object/from16 v0, p0
iput-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v2, 0x0
move-object/from16 v0, p0
iput-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
const/4 v2, 0x0
move-object/from16 v0, p0
iput-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->jpegData:[B
goto/16 :goto_d4
:cond_2ac
const-string/jumbo v2, "Effect=Normal"
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->setEffect(Ljava/lang/String;)Z
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->make()Z
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->getMakedImage2Buffer()Lus/pinguo/androidsdk/PGColorBuffer;
move-result-object v17
invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pGColorBuffer2Bitmap(Lus/pinguo/androidsdk/PGColorBuffer;)Landroid/graphics/Bitmap;
move-result-object v14
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-interface {v2, v3, v13, v14}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
goto :goto_278
.end method
.method public setPreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V
.registers 7
iput-object p1, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iput-boolean p4, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->mUseLastData:Z
iput-boolean p5, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->needOrgPreview:Z
if-nez p4, :cond_d
iput-object p2, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->jpegData:[B
:goto_a
iput-object p3, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
return-void
:cond_d
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->jpegData:[B
goto :goto_a
.end method