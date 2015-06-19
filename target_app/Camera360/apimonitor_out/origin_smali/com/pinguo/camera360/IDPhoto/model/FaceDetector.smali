.class public Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;
.super Ljava/lang/Object;
.source "FaceDetector.java"


# static fields
.field public static final MIN_FACE_SIZE:I = 0x64

.field public static final TAG:Ljava/lang/String; = "FaceDetector"


# instance fields
.field dtHandle:Lcom/megvii/api/FaceDetection$DTHandle;

.field dtResult:Lcom/megvii/api/FaceDetection$DTResult;

.field ptHandle:Lcom/megvii/api/PartsDetection$PTHandle;

.field ptResult:Lcom/megvii/api/PartsDetection$PTResult;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGrayscale(Landroid/graphics/Bitmap;)[B
    .registers 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    new-array v6, v7, [B

    const/4 v3, 0x0

    :goto_c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lt v3, v7, :cond_13

    return-object v6

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lt v2, v7, :cond_1d

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1d
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    const/high16 v7, 0xff

    and-int/2addr v7, v4

    shr-int/lit8 v5, v7, 0x10

    const v7, 0xff00

    and-int/2addr v7, v4

    shr-int/lit8 v1, v7, 0x8

    and-int/lit16 v0, v4, 0xff

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/2addr v7, v3

    add-int/2addr v7, v2

    mul-int/lit16 v8, v5, 0x12b

    mul-int/lit16 v9, v1, 0x24b

    add-int/2addr v8, v9

    mul-int/lit8 v9, v0, 0x72

    add-int/2addr v8, v9

    div-int/lit16 v8, v8, 0x3e8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_14
.end method


# virtual methods
.method public create(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/megvii/api/FaceDetection;->createHandle(Landroid/content/Context;)Lcom/megvii/api/FaceDetection$DTHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->dtHandle:Lcom/megvii/api/FaceDetection$DTHandle;

    invoke-static {p1}, Lcom/megvii/api/FaceDetection;->createResult(Landroid/content/Context;)Lcom/megvii/api/FaceDetection$DTResult;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->dtResult:Lcom/megvii/api/FaceDetection$DTResult;

    invoke-static {p1}, Lcom/megvii/api/PartsDetection;->createHandle(Landroid/content/Context;)Lcom/megvii/api/PartsDetection$PTHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->ptHandle:Lcom/megvii/api/PartsDetection$PTHandle;

    invoke-static {p1}, Lcom/megvii/api/PartsDetection;->createResult(Landroid/content/Context;)Lcom/megvii/api/PartsDetection$PTResult;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->ptResult:Lcom/megvii/api/PartsDetection$PTResult;

    return-void
.end method

.method public destory()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->dtHandle:Lcom/megvii/api/FaceDetection$DTHandle;

    invoke-static {v1}, Lcom/megvii/api/FaceDetection;->releaseHandle(Lcom/megvii/api/FaceDetection$DTHandle;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->dtResult:Lcom/megvii/api/FaceDetection$DTResult;

    invoke-static {v1}, Lcom/megvii/api/FaceDetection;->releaseResult(Lcom/megvii/api/FaceDetection$DTResult;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->ptHandle:Lcom/megvii/api/PartsDetection$PTHandle;

    invoke-static {v1}, Lcom/megvii/api/PartsDetection;->releaseHandle(Lcom/megvii/api/PartsDetection$PTHandle;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->ptResult:Lcom/megvii/api/PartsDetection$PTResult;

    invoke-static {v1}, Lcom/megvii/api/PartsDetection;->releaseResult(Lcom/megvii/api/PartsDetection$PTResult;)V
    :try_end_14
    .catch Lcom/megvii/api/exception/MegviiException; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Lcom/megvii/api/exception/MegviiException;->printStackTrace()V

    goto :goto_14
.end method

.method public detect(Landroid/graphics/Bitmap;)Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
    .registers 25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->dtHandle:Lcom/megvii/api/FaceDetection$DTHandle;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->dtResult:Lcom/megvii/api/FaceDetection$DTResult;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->ptHandle:Lcom/megvii/api/PartsDetection$PTHandle;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->ptResult:Lcom/megvii/api/PartsDetection$PTResult;

    if-nez v2, :cond_27

    :cond_1c
    const-string/jumbo v2, "FaceDetector"

    const-string/jumbo v3, "fail with init fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :cond_26
    :goto_26
    return-object v10

    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static/range {p1 .. p1}, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->getGrayscale(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    const-string/jumbo v2, "FaceDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "face detect"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->dtHandle:Lcom/megvii/api/FaceDetection$DTHandle;

    const/16 v4, 0x64

    if-le v6, v7, :cond_80

    move v2, v7

    :goto_5d
    invoke-static {v3, v4, v2}, Lcom/megvii/api/FaceDetection;->setFaceSizeRange(Lcom/megvii/api/FaceDetection$DTHandle;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->dtHandle:Lcom/megvii/api/FaceDetection$DTHandle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->dtResult:Lcom/megvii/api/FaceDetection$DTResult;

    invoke-static {v2, v5, v6, v7, v3}, Lcom/megvii/api/FaceDetection;->detect(Lcom/megvii/api/FaceDetection$DTHandle;[BIILcom/megvii/api/FaceDetection$DTResult;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->dtResult:Lcom/megvii/api/FaceDetection$DTResult;

    invoke-static {v2}, Lcom/megvii/api/FaceDetection;->getFaceCount(Lcom/megvii/api/FaceDetection$DTResult;)I

    move-result v11

    if-nez v11, :cond_82

    const-string/jumbo v2, "FaceDetector"

    const-string/jumbo v3, "fail with face count:0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_26

    :cond_80
    move v2, v6

    goto :goto_5d

    :cond_82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->dtResult:Lcom/megvii/api/FaceDetection$DTResult;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/megvii/api/FaceDetection;->getFaceInfo(Lcom/megvii/api/FaceDetection$DTResult;I)Lcom/megvii/api/FaceDetection$FaceInfo;

    move-result-object v12

    if-nez v12, :cond_98

    const-string/jumbo v2, "FaceDetector"

    const-string/jumbo v3, "fail with face info null0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_26

    :cond_98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->ptHandle:Lcom/megvii/api/PartsDetection$PTHandle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->dtResult:Lcom/megvii/api/FaceDetection$DTResult;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->ptResult:Lcom/megvii/api/PartsDetection$PTResult;

    invoke-static/range {v2 .. v8}, Lcom/megvii/api/PartsDetection;->detectKeyPoint(Lcom/megvii/api/PartsDetection$PTHandle;Lcom/megvii/api/FaceDetection$DTResult;I[BIILcom/megvii/api/PartsDetection$PTResult;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->ptResult:Lcom/megvii/api/PartsDetection$PTResult;

    invoke-static {v2}, Lcom/megvii/api/PartsDetection;->getFaceKeyPoint(Lcom/megvii/api/PartsDetection$PTResult;)Lcom/megvii/api/PartsDetection$FaceKeyPoint;

    move-result-object v13

    if-nez v13, :cond_b5

    const/4 v10, 0x0

    goto/16 :goto_26

    :cond_b5
    new-instance v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;

    invoke-direct {v10}, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;-><init>()V

    invoke-virtual {v12}, Lcom/megvii/api/FaceDetection$FaceInfo;->getFaceRectangle()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v3, v6

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceLeft:F

    invoke-virtual {v12}, Lcom/megvii/api/FaceDetection$FaceInfo;->getFaceRectangle()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v3, v7

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    invoke-virtual {v12}, Lcom/megvii/api/FaceDetection$FaceInfo;->getFaceRectangle()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    int-to-float v3, v6

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceRight:F

    invoke-virtual {v12}, Lcom/megvii/api/FaceDetection$FaceInfo;->getFaceRectangle()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    int-to-float v3, v7

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceBottom:F

    iget v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    const v3, 0x3dcccccd

    sub-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->headTop:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-string/jumbo v2, "FaceDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "success, faceCount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", consume time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v21, v17, v19

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Lcom/megvii/api/PartsDetection$FaceKeyPoint;->getKeyPoint()[Landroid/graphics/PointF;

    move-result-object v16

    const/4 v14, 0x0

    :goto_11c
    move-object/from16 v0, v16

    array-length v2, v0

    if-ge v14, v2, :cond_26

    aget-object v15, v16, v14

    const-string/jumbo v2, "FaceDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "p: point.x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", point.y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_161

    iget v2, v15, Landroid/graphics/PointF;->x:F

    int-to-float v3, v6

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeX:F

    iget v2, v15, Landroid/graphics/PointF;->y:F

    int-to-float v3, v7

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F

    :cond_15e
    :goto_15e
    add-int/lit8 v14, v14, 0x1

    goto :goto_11c

    :cond_161
    const/4 v2, 0x1

    if-ne v14, v2, :cond_178

    iget v2, v15, Landroid/graphics/PointF;->x:F

    int-to-float v3, v6

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeX:F

    iget v2, v15, Landroid/graphics/PointF;->y:F

    int-to-float v3, v7

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeY:F
    :try_end_170
    .catch Lcom/megvii/api/exception/MegviiException; {:try_start_54 .. :try_end_170} :catch_171

    goto :goto_15e

    :catch_171
    move-exception v9

    invoke-virtual {v9}, Lcom/megvii/api/exception/MegviiException;->printStackTrace()V

    const/4 v10, 0x0

    goto/16 :goto_26

    :cond_178
    const/4 v2, 0x2

    if-ne v14, v2, :cond_188

    :try_start_17b
    iget v2, v15, Landroid/graphics/PointF;->x:F

    int-to-float v3, v6

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->noseX:F

    iget v2, v15, Landroid/graphics/PointF;->y:F

    int-to-float v3, v7

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->noseY:F

    goto :goto_15e

    :cond_188
    const/4 v2, 0x3

    if-ne v14, v2, :cond_198

    iget v2, v15, Landroid/graphics/PointF;->x:F

    int-to-float v3, v6

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthLeftX:F

    iget v2, v15, Landroid/graphics/PointF;->y:F

    int-to-float v3, v7

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthLeftY:F

    goto :goto_15e

    :cond_198
    const/4 v2, 0x4

    if-ne v14, v2, :cond_15e

    iget v2, v15, Landroid/graphics/PointF;->x:F

    int-to-float v3, v6

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthRightX:F

    iget v2, v15, Landroid/graphics/PointF;->y:F

    int-to-float v3, v7

    div-float/2addr v2, v3

    iput v2, v10, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthRightY:F
    :try_end_1a7
    .catch Lcom/megvii/api/exception/MegviiException; {:try_start_17b .. :try_end_1a7} :catch_171

    goto :goto_15e
.end method
