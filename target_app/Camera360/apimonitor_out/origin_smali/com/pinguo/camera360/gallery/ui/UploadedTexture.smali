.class abstract Lcom/pinguo/camera360/gallery/ui/UploadedTexture;
.super Lcom/pinguo/camera360/gallery/ui/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/ui/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static final UPLOAD_LIMIT:I = 0x64

.field private static sBorderKey:Lcom/pinguo/camera360/gallery/ui/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/pinguo/camera360/gallery/ui/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static sCropRect:[F

.field static sTextureId:[I

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mIsUploading:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture$BorderKey;-><init>(Lcom/pinguo/camera360/gallery/ui/UploadedTexture$BorderKey;)V

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sBorderKey:Lcom/pinguo/camera360/gallery/ui/UploadedTexture$BorderKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sTextureId:[I

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sCropRect:[F

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;-><init>(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mContentValid:Z

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mIsUploading:Z

    iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mOpaque:Z

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mThrottled:Z

    if-eqz p1, :cond_15

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->setBorder(Z)V

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    :cond_15
    return-void
.end method

.method private freeBitmap()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .registers 5

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2a

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2a

    invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->setSize(II)V

    :cond_2a
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v3, 0x1

    sget-object v1, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sBorderKey:Lcom/pinguo/camera360/gallery/ui/UploadedTexture$BorderKey;

    iput-boolean p0, v1, Lcom/pinguo/camera360/gallery/ui/UploadedTexture$BorderKey;->vertical:Z

    iput-object p1, v1, Lcom/pinguo/camera360/gallery/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    iput p2, v1, Lcom/pinguo/camera360/gallery/ui/UploadedTexture$BorderKey;->length:I

    sget-object v2, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_22

    if-eqz p0, :cond_23

    invoke-static {v3, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_19
    sget-object v2, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture$BorderKey;->clone()Lcom/pinguo/camera360/gallery/ui/UploadedTexture$BorderKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-object v0

    :cond_23
    invoke-static {p2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_19
.end method

.method public static resetUploadLimit()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sUploadedCount:I

    return-void
.end method

.method public static uploadLimitReached()Z
    .registers 2

    sget v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private uploadToCanvas(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
    .registers 27

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_164

    :try_start_d
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getTextureWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getTextureHeight()I

    move-result v6

    move/from16 v0, v23

    if-gt v0, v5, :cond_be

    move/from16 v0, v22

    if-gt v0, v6, :cond_be

    const/4 v2, 0x1

    :goto_26
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    sget-object v2, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    int-to-float v7, v7

    aput v7, v2, v3

    sget-object v2, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    add-int v7, v7, v22

    int-to-float v7, v7

    aput v7, v2, v3

    sget-object v2, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x2

    move/from16 v0, v23

    int-to-float v7, v0

    aput v7, v2, v3

    sget-object v2, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x3

    move/from16 v0, v22

    neg-int v7, v0

    int-to-float v7, v7

    aput v7, v2, v3

    const/4 v2, 0x1

    sget-object v3, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sTextureId:[I

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Lcom/pinguo/camera360/gallery/ui/GLId;->glGenTextures(I[II)V

    const/16 v2, 0xde1

    sget-object v3, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sTextureId:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/16 v2, 0xde1

    const v3, 0x8b9d

    sget-object v7, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sCropRect:[F

    const/4 v8, 0x0

    invoke-interface {v1, v2, v3, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v7, 0x812f

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v7, 0x812f

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v7, 0x46180400

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v7, 0x46180400

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    move/from16 v0, v23

    if-ne v0, v5, :cond_c1

    move/from16 v0, v22

    if-ne v0, v6, :cond_c1

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v14, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_a3
    .catchall {:try_start_d .. :try_end_a3} :catchall_15f

    :cond_a3
    :goto_a3
    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->freeBitmap()V

    invoke-virtual/range {p0 .. p1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->setAssociatedCanvas(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    sget-object v2, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sTextureId:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mId:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mState:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mContentValid:Z

    goto/16 :goto_2

    :cond_be
    const/4 v2, 0x0

    goto/16 :goto_26

    :cond_c1
    :try_start_c1
    invoke-static {v14}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-static {v14}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v9

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move v8, v4

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v10, 0xde1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    if-lez v2, :cond_119

    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-static {v2, v0, v6}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v2, v0, v5}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    :cond_119
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    add-int v2, v2, v23

    if-ge v2, v5, :cond_13b

    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-static {v2, v0, v6}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    const/16 v15, 0xde1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    add-int v17, v2, v23

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    :cond_13b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    add-int v2, v2, v22

    if-ge v2, v6, :cond_a3

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v2, v0, v5}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    add-int v18, v2, v22

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_15d
    .catchall {:try_start_c1 .. :try_end_15d} :catchall_15f

    goto/16 :goto_a3

    :catchall_15f
    move-exception v2

    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->freeBitmap()V

    throw v2

    :cond_164
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mState:I

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Texture load fail, no bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getHeight()I
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    :cond_8
    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mHeight:I

    return v0
.end method

.method protected getTarget()I
    .registers 2

    const/16 v0, 0xde1

    return v0
.end method

.method public getWidth()I
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    :cond_8
    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mWidth:I

    return v0
.end method

.method protected invalidateContent()V
    .registers 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->freeBitmap()V

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mContentValid:Z

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mWidth:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mHeight:I

    return-void
.end method

.method public isContentValid()Z
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mContentValid:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isOpaque()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method public isUploading()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mIsUploading:Z

    return v0
.end method

.method protected onBind(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->updateContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->recycle()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->freeBitmap()V

    :cond_a
    return-void
.end method

.method protected setIsUploading(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mIsUploading:Z

    return-void
.end method

.method public setOpaque(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mOpaque:Z

    return-void
.end method

.method protected setThrottled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mThrottled:Z

    return-void
.end method

.method public updateContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
    .registers 9

    const/16 v0, 0xde1

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_16

    sget v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sUploadedCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_18

    :cond_16
    if-nez p1, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->uploadToCanvas(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    goto :goto_18

    :cond_1d
    iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mContentValid:Z

    if-nez v1, :cond_18

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mId:I

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/4 v1, 0x0

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mBorder:I

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->freeBitmap()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->mContentValid:Z

    goto :goto_18
.end method
