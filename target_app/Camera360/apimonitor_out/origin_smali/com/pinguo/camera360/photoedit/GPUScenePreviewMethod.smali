.class public Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;
.super Lus/pinguo/androidsdk/PGRendererMethod;
.source "GPUScenePreviewMethod.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;

.field private jpegData:[B

.field private pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lus/pinguo/androidsdk/PGRendererMethod;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->jpegData:[B

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;

    return-void
.end method


# virtual methods
.method public rendererAction()V
    .registers 29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPreviewLength()I

    move-result v21

    const/16 v2, 0xa

    move/from16 v0, v21

    if-lt v0, v2, :cond_18

    const/16 v2, 0x1388

    move/from16 v0, v21

    if-le v0, v2, :cond_30

    :cond_18
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "previewLength must [10, 5000], but previewLength="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_30
    sget-object v2, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_SCENE:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->renderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I

    move-result v5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->jpegData:[B

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v2, v3, v1}, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->setImageFromJPEG(I[BI)Z

    move-result v23

    if-eqz v5, :cond_5e

    rem-int/lit16 v2, v5, 0xb4

    if-eqz v2, :cond_91

    const/4 v4, 0x1

    :goto_53
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z

    :cond_5e
    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setImageFromJPEG time:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v25

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v23, :cond_93

    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setImageFromJPEG failed!"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v3, v6, v7}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_90
    :goto_90
    return-void

    :cond_91
    const/4 v4, 0x0

    goto :goto_53

    :cond_93
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getSceneParam()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v2, 0x0

    :goto_ab
    if-lt v2, v3, :cond_106

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v2, "rotate=1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getScenePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->loadTemplate(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->loadTemplateSuccess()Z

    move-result v23

    if-eqz v23, :cond_90

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->make()Z

    move-result v23

    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "make time:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v25

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v23, :cond_173

    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "make failed!"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v3, v6, v7}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_90

    :cond_106
    aget-object v17, v18, v2

    const-string/jumbo v6, "effect="

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_163

    const-string/jumbo v6, "="

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectParamByOldParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_155

    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_132
    if-eqz v12, :cond_15a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Effect="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_149
    const-string/jumbo v6, ";"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_151
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_ab

    :cond_155
    invoke-static {v15}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_132

    :cond_15a
    const-string/jumbo v6, "Effect=Normal"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_149

    :cond_163
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v6, ";"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_151

    :cond_173
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->getMakedImage2Buffer()Lus/pinguo/androidsdk/PGColorBuffer;

    move-result-object v20

    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getMakedImagePreview time:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v25

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lus/pinguo/androidsdk/PGColorBuffer;->getColorBuffer()[I

    move-result-object v14

    invoke-virtual/range {v20 .. v20}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageHeight()I

    move-result v13

    invoke-virtual/range {v20 .. v20}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageWidth()I

    move-result v27

    if-eqz v14, :cond_20f

    if-lez v13, :cond_20f

    if-lez v27, :cond_20f

    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getMakedImage:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v27

    invoke-static {v14, v0, v13, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v24, :cond_1d6

    const/16 v2, 0x5a

    invoke-static {v11, v2}, Lcom/pinguo/lib/image/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_1d6
    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getMakedImagePreview bitmap create:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v25

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v11, v6}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :goto_1fd
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->clearImage(I)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;

    goto/16 :goto_90

    :cond_20f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v3, v6, v7}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_1fd
.end method

.method public setPreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    iput-object p2, p0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->jpegData:[B

    iput-object p3, p0, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;

    return-void
.end method
