.class public Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;
.super Lus/pinguo/androidsdk/PGRendererMethod;
.source "CutoutComposeMethod.java"
.field private static final EFFECT:Ljava/lang/String; = "Effect=ComposeBackground;backColor=%f,%f,%f;Contrast=100"
.field public static final TAG:Ljava/lang/String; = "CutoutComposeMethod"
.field private mAlphaPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
.field private mBgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
.field private mListener:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;
.field private mOrgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
.field private mRenderBgColor:I
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lus/pinguo/androidsdk/PGRendererMethod;-><init>()V
new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
invoke-direct {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;-><init>(Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mOrgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
invoke-direct {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;-><init>(Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mBgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
invoke-direct {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;-><init>(Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mAlphaPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
return-void
.end method
.method private bitmapToARGB(Landroid/graphics/Bitmap;)[I
.registers 10
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
mul-int v0, v3, v7
new-array v1, v0, [I
move-object v0, p1
move v4, v2
move v5, v2
move v6, v3
invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
return-object v1
.end method
.method private getEffect()Ljava/lang/String;
.registers 8
const/high16 v5, 0x437f
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mRenderBgColor:I
const/high16 v4, 0xff
and-int/2addr v3, v4
shr-int/lit8 v3, v3, 0x10
int-to-float v3, v3
div-float v2, v3, v5
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mRenderBgColor:I
const v4, 0xff00
and-int/2addr v3, v4
shr-int/lit8 v3, v3, 0x8
int-to-float v3, v3
div-float v1, v3, v5
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mRenderBgColor:I
and-int/lit16 v3, v3, 0xff
int-to-float v3, v3
div-float v0, v3, v5
const-string/jumbo v3, "Effect=ComposeBackground;backColor=%f,%f,%f;Contrast=100"
const/4 v4, 0x3
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x2
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method private pGColorBuffer2Bitmap(Lus/pinguo/androidsdk/PGColorBuffer;)Landroid/graphics/Bitmap;
.registers 9
invoke-virtual {p1}, Lus/pinguo/androidsdk/PGColorBuffer;->getColorBuffer()[I
move-result-object v2
invoke-virtual {p1}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageHeight()I
move-result v1
invoke-virtual {p1}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageWidth()I
move-result v3
if-eqz v2, :cond_43
if-lez v1, :cond_43
if-lez v3, :cond_43
const-string/jumbo v4, "CutoutComposeMethod"
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
const-string/jumbo v4, "CutoutComposeMethod"
const-string/jumbo v5, "getMakedImage end"
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:goto_42
return-object v0
:cond_43
const/4 v0, 0x0
goto :goto_42
.end method
.method private setImage(ILcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;)V
.registers 6
iget-object v0, p2, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->path:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_16
iget-object v0, p2, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->path:Ljava/lang/String;
invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setImageFromPath(ILjava/lang/String;)Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p2, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->path:Ljava/lang/String;
invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setSupportImageFromPNGPath(ILjava/lang/String;)Z
:goto_15
:cond_15
return-void
:cond_16
iget-object v0, p2, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->buffer:[I
if-eqz v0, :cond_15
iget-object v0, p2, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->buffer:[I
array-length v0, v0
if-eqz v0, :cond_15
iget-object v0, p2, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->buffer:[I
iget v1, p2, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->width:I
iget v2, p2, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->height:I
invoke-virtual {p0, p1, v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setImageFromARGB(I[III)Z
goto :goto_15
.end method
.method public rendererAction()V
.registers 22
sget-object v17, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->renderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mOrgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->isEmpty()Z
move-result v17
if-nez v17, :cond_3c
const/16 v17, 0x0
move-object/from16 v0, p0
move/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->clearImage(I)Z
const/16 v17, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mOrgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
move-object/from16 v18, v0
move-object/from16 v0, p0
move/from16 v1, v17
move-object/from16 v2, v18
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setImage(ILcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mOrgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->clear()V
:cond_3c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mBgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->isEmpty()Z
move-result v17
if-nez v17, :cond_6b
const/16 v17, 0x1
move-object/from16 v0, p0
move/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->clearImage(I)Z
const/16 v17, 0x1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mBgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
move-object/from16 v18, v0
move-object/from16 v0, p0
move/from16 v1, v17
move-object/from16 v2, v18
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setImage(ILcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mBgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->clear()V
:cond_6b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mAlphaPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->isEmpty()Z
move-result v17
if-nez v17, :cond_9a
const/16 v17, 0x2
move-object/from16 v0, p0
move/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->clearImage(I)Z
const/16 v17, 0x2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mAlphaPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
move-object/from16 v18, v0
move-object/from16 v0, p0
move/from16 v1, v17
move-object/from16 v2, v18
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setImage(ILcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mAlphaPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->clear()V
:cond_9a
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
const-string/jumbo v17, "CutoutComposeMethod"
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v19, "setimage time:"
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sub-long v19, v9, v7
invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->getEffect()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setEffect(Ljava/lang/String;)Z
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->make()Z
move-result v6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v11
const-string/jumbo v17, "CutoutComposeMethod"
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v19, "make time:"
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sub-long v19, v11, v9
invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->getMakedImage2Buffer()Lus/pinguo/androidsdk/PGColorBuffer;
move-result-object v5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v13
const-string/jumbo v17, "CutoutComposeMethod"
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v19, "getMakedImagePreview time:"
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sub-long v19, v13, v11
invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v5, :cond_148
const/4 v4, 0x0
:try_start_104
move-object/from16 v0, p0
invoke-direct {v0, v5}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->pGColorBuffer2Bitmap(Lus/pinguo/androidsdk/PGColorBuffer;)Landroid/graphics/Bitmap;
:try_end_109
.catch Ljava/lang/OutOfMemoryError; {:try_start_104 .. :try_end_109} :catch_13a
move-result-object v4
:goto_10a
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v15
const-string/jumbo v17, "CutoutComposeMethod"
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v19, "buffer2Bitmap time:"
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sub-long v19, v15, v13
invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mListener:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;
move-object/from16 v17, v0
if-eqz v17, :cond_139
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mListener:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-interface {v0, v4}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;->onBitmapComposed(Landroid/graphics/Bitmap;)V
:cond_139
:goto_139
return-void
:catch_13a
move-exception v3
invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
const-string/jumbo v17, "CutoutComposeMethod"
const-string/jumbo v18, "compose bitmap error with OOM, madeBitmap = null"
invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10a
:cond_148
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mListener:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;
move-object/from16 v17, v0
if-eqz v17, :cond_139
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mListener:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;
move-object/from16 v17, v0
invoke-interface/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;->onBitmapComposedFail()V
goto :goto_139
.end method
.method public setBgColor(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mRenderBgColor:I
return-void
.end method
.method public setInputAlpha(Landroid/graphics/Bitmap;)V
.registers 4
if-eqz p1, :cond_1f
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mAlphaPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
invoke-direct {p0, p1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->bitmapToARGB(Landroid/graphics/Bitmap;)[I
move-result-object v1
iput-object v1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->buffer:[I
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mAlphaPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
iput v1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->width:I
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mAlphaPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
iput v1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->height:I
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mAlphaPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
const/4 v1, 0x0
iput-object v1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->path:Ljava/lang/String;
:cond_1f
return-void
.end method
.method public setInputOrg(Landroid/graphics/Bitmap;)V
.registers 4
if-eqz p1, :cond_1f
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mOrgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
invoke-direct {p0, p1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->bitmapToARGB(Landroid/graphics/Bitmap;)[I
move-result-object v1
iput-object v1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->buffer:[I
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mOrgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
iput v1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->width:I
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mOrgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
iput v1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->height:I
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mOrgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
const/4 v1, 0x0
iput-object v1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->path:Ljava/lang/String;
:cond_1f
return-void
.end method
.method public setInputPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mOrgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
iput-object p1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->path:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mBgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
iput-object p2, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->path:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mAlphaPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
iput-object p3, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->path:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mOrgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
iput-object v1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->buffer:[I
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mBgPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
iput-object v1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->buffer:[I
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mAlphaPic:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
iput-object v1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->buffer:[I
return-void
.end method
.method public setOnBitmapCompsedListener(Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->mListener:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;
return-void
.end method