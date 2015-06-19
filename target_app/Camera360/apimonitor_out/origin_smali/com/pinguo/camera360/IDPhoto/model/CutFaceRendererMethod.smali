.class public Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;
.super Lus/pinguo/androidsdk/PGRendererMethod;
.source "CutFaceRendererMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod$OnBitmapMadeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CutFaceRendererMethod"


# instance fields
.field private mByteBuffer:[B

.field private mListener:Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod$OnBitmapMadeListener;

.field private mRect:Lus/pinguo/androidsdk/PGRect;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lus/pinguo/androidsdk/PGRendererMethod;-><init>()V

    return-void
.end method

.method private pGColorBuffer2Bitmap(Lus/pinguo/androidsdk/PGColorBuffer;)Landroid/graphics/Bitmap;
    .registers 11

    invoke-virtual {p1}, Lus/pinguo/androidsdk/PGColorBuffer;->getColorBuffer()[I

    move-result-object v0

    invoke-virtual {p1}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageHeight()I

    move-result v7

    invoke-virtual {p1}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x3

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v1, v7, 0x3

    mul-int/lit8 v4, v1, 0x3

    if-eqz v0, :cond_4c

    if-lez v7, :cond_4c

    if-lez v2, :cond_4c

    const-string/jumbo v1, "CutFaceRendererMethod"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getMakedImage:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    const-string/jumbo v1, "CutFaceRendererMethod"

    const-string/jumbo v5, "getMakedImage end"

    invoke-static {v1, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4b
    return-object v6

    :cond_4c
    const/4 v6, 0x0

    goto :goto_4b
.end method


# virtual methods
.method public rendererAction()V
    .registers 21

    sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->renderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->clearImage(I)Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mByteBuffer:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->setImageFromJPEG(I[B)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-string/jumbo v1, "CutFaceRendererMethod"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setimage time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v3, v14, v12

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Effect=Portrait_AutoLevel|Effect=SkinPlus_RedClear"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->setEffect(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cutFace:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->getRendererPointer()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    const/high16 v1, 0x4448

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mRect:Lus/pinguo/androidsdk/PGRect;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/PGRect;->getY_2()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mRect:Lus/pinguo/androidsdk/PGRect;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/PGRect;->getY_1()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    const-string/jumbo v1, "CutFaceRendererMethod"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "maxLength:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", x1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mRect:Lus/pinguo/androidsdk/PGRect;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/PGRect;->getX_1()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",y1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mRect:Lus/pinguo/androidsdk/PGRect;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/PGRect;->getY_1()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", x2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mRect:Lus/pinguo/androidsdk/PGRect;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/PGRect;->getX_2()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", y2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mRect:Lus/pinguo/androidsdk/PGRect;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/PGRect;->getY_2()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x5a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mRect:Lus/pinguo/androidsdk/PGRect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-string/jumbo v1, "CutFaceRendererMethod"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "make time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v3, v16, v14

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->make()Z

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->getMakedImage2Buffer()Lus/pinguo/androidsdk/PGColorBuffer;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-string/jumbo v1, "CutFaceRendererMethod"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getMakedImagePreview time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v3, v18, v16

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->pGColorBuffer2Bitmap(Lus/pinguo/androidsdk/PGColorBuffer;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mListener:Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod$OnBitmapMadeListener;

    if-eqz v1, :cond_136

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mListener:Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod$OnBitmapMadeListener;

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->getRendererPointer()I

    move-result v2

    invoke-interface {v1, v10, v2}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod$OnBitmapMadeListener;->onBitmapMade(Landroid/graphics/Bitmap;I)V

    :cond_136
    return-void
.end method

.method public setInputPicFromEyeWidth([BLcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;)V
    .registers 15

    const/high16 v9, 0x4000

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mByteBuffer:[B

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceBottom:F

    iget v8, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    sub-float v2, v7, v8

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceRight:F

    iget v8, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceLeft:F

    sub-float v3, v7, v8

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeX:F

    iget v8, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeX:F

    sub-float v1, v7, v8

    const v7, 0x3e5f3b64

    div-float v6, v1, v7

    div-float v7, v2, v3

    mul-float/2addr v7, v6

    const/high16 v8, 0x3f40

    div-float v5, v7, v8

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F

    const v8, 0x3ed70a3d

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    iput v7, v4, Landroid/graphics/RectF;->top:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F

    const v8, 0x3f147ae1

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iput v7, v4, Landroid/graphics/RectF;->bottom:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeX:F

    iget v8, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeX:F

    add-float/2addr v7, v8

    div-float v0, v7, v9

    div-float v7, v6, v9

    sub-float v7, v0, v7

    iput v7, v4, Landroid/graphics/RectF;->left:F

    div-float v7, v6, v9

    add-float/2addr v7, v0

    iput v7, v4, Landroid/graphics/RectF;->right:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceLeft:F

    iget v8, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v6

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceLeft:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceRight:F

    iget v8, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v6

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceRight:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    iget v8, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v5

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceBottom:F

    iget v8, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v5

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceBottom:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeX:F

    iget v8, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v6

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeX:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F

    iget v8, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v5

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeX:F

    iget v8, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v6

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeX:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeY:F

    iget v8, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v5

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeY:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->noseX:F

    iget v8, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v6

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->noseX:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->noseY:F

    iget v8, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v5

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->noseY:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthLeftX:F

    iget v8, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v6

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthLeftX:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthLeftY:F

    iget v8, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v5

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthLeftY:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthRightX:F

    iget v8, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v6

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthRightX:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthRightY:F

    iget v8, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v5

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthRightY:F

    iget v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    const v8, 0x3dcccccd

    sub-float/2addr v7, v8

    iput v7, p2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->headTop:F

    new-instance v7, Lus/pinguo/androidsdk/PGRect;

    iget v8, v4, Landroid/graphics/RectF;->left:F

    iget v9, v4, Landroid/graphics/RectF;->top:F

    iget v10, v4, Landroid/graphics/RectF;->right:F

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v7, v8, v9, v10, v11}, Lus/pinguo/androidsdk/PGRect;-><init>(FFFF)V

    iput-object v7, p0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mRect:Lus/pinguo/androidsdk/PGRect;

    return-void
.end method

.method public setInputPicFromFaceRect([BLcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;)V
    .registers 18

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mByteBuffer:[B

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceBottom:F

    move-object/from16 v0, p2

    iget v11, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    sub-float v3, v10, v11

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceRight:F

    move-object/from16 v0, p2

    iget v11, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceLeft:F

    sub-float v4, v10, v11

    const v10, 0x3ecccccd

    div-float v9, v4, v10

    const v10, 0x3ecccccd

    div-float v10, v3, v10

    const/high16 v11, 0x3f40

    div-float v8, v10, v11

    sub-float v1, v8, v3

    sub-float v2, v9, v4

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    const v11, 0x3f19999a

    mul-float/2addr v11, v1

    sub-float/2addr v10, v11

    iput v10, v5, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceBottom:F

    const v11, 0x3ecccccd

    mul-float/2addr v11, v1

    add-float/2addr v10, v11

    iput v10, v5, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceLeft:F

    const/high16 v11, 0x4000

    div-float v11, v2, v11

    sub-float/2addr v10, v11

    iput v10, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceRight:F

    const/high16 v11, 0x4000

    div-float v11, v2, v11

    add-float/2addr v10, v11

    iput v10, v5, Landroid/graphics/RectF;->right:F

    iget v10, v5, Landroid/graphics/RectF;->right:F

    iget v11, v5, Landroid/graphics/RectF;->left:F

    sub-float v7, v10, v11

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    sub-float v6, v10, v11

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceLeft:F

    iget v11, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v7

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceLeft:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceRight:F

    iget v11, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v7

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceRight:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v6

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceBottom:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v6

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceBottom:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeX:F

    iget v11, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v7

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeX:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v6

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeX:F

    iget v11, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v7

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeX:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeY:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v6

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeY:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->noseX:F

    iget v11, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v7

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->noseX:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->noseY:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v6

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->noseY:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthLeftX:F

    iget v11, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v7

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthLeftX:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthLeftY:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v6

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthLeftY:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthRightX:F

    iget v11, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v7

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthRightX:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthRightY:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v6

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthRightY:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    const v11, 0x3dcccccd

    sub-float/2addr v10, v11

    move-object/from16 v0, p2

    iput v10, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->headTop:F

    new-instance v10, Lus/pinguo/androidsdk/PGRect;

    iget v11, v5, Landroid/graphics/RectF;->left:F

    iget v12, v5, Landroid/graphics/RectF;->top:F

    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v10, v11, v12, v13, v14}, Lus/pinguo/androidsdk/PGRect;-><init>(FFFF)V

    iput-object v10, p0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mRect:Lus/pinguo/androidsdk/PGRect;

    return-void
.end method

.method public setOnBitmapMadeListener(Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod$OnBitmapMadeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->mListener:Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod$OnBitmapMadeListener;

    return-void
.end method
