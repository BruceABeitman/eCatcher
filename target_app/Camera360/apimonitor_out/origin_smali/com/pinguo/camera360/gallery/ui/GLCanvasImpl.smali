.class public Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/ui/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;,
        Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;
    }
.end annotation


# static fields
.field private static final BOX_COORDINATES:[F = null

.field private static final MSCALE_X:I = 0x0

.field private static final MSCALE_Y:I = 0x5

.field private static final MSKEW_X:I = 0x4

.field private static final MSKEW_Y:I = 0x1

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f

.field private static final TAG:Ljava/lang/String; = "GLCanvasImp"


# instance fields
.field private mAlpha:F

.field private mBlendEnabled:Z

.field private mBoxCoords:I

.field mCountDrawLine:I

.field mCountDrawMesh:I

.field mCountFillRect:I

.field mCountTextureOES:I

.field mCountTextureRect:I

.field private final mDeleteBuffers:Lcom/pinguo/camera360/gallery/util/IntArray;

.field private final mDrawTextureSourceRect:Landroid/graphics/RectF;

.field private final mDrawTextureTargetRect:Landroid/graphics/RectF;

.field private mFrameBuffer:[I

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

.field private final mMapPointsBuffer:[F

.field private final mMatrixValues:[F

.field private mRecycledRestoreAction:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;

.field private final mRestoreStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mTargetStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/ui/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTexture:Lcom/pinguo/camera360/gallery/ui/RawTexture;

.field private final mTempMatrix:[F

.field private final mTextureColor:[F

.field private final mTextureMatrixValues:[F

.field private final mUnboundTextures:Lcom/pinguo/camera360/gallery/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    return-void

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 6

    const/16 v3, 0x10

    const/4 v2, 0x4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMapPointsBuffer:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTextureColor:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTempMatrix:[F

    new-instance v0, Lcom/pinguo/camera360/gallery/util/IntArray;

    invoke-direct {v0}, Lcom/pinguo/camera360/gallery/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mUnboundTextures:Lcom/pinguo/camera360/gallery/util/IntArray;

    new-instance v0, Lcom/pinguo/camera360/gallery/util/IntArray;

    invoke-direct {v0}, Lcom/pinguo/camera360/gallery/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/pinguo/camera360/gallery/util/IntArray;

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mBlendEnabled:Z

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mFrameBuffer:[I

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->initialize()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;)[F
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    return-object v0
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .registers 3

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private bindTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)Z
    .registers 5

    invoke-virtual {p1, p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->onBind(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getTarget()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setTextureTarget(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/4 v1, 0x1

    goto :goto_7
.end method

.method private static checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V
    .registers 6

    const v2, 0x8d40

    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v1

    const v2, 0x8cd5

    if-eq v1, v2, :cond_50

    const-string/jumbo v0, ""

    packed-switch v1, :pswitch_data_52

    :goto_12
    :pswitch_12
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_34
    const-string/jumbo v0, "FRAMEBUFFER_FORMATS"

    goto :goto_12

    :pswitch_38
    const-string/jumbo v0, "FRAMEBUFFER_ATTACHMENT"

    goto :goto_12

    :pswitch_3c
    const-string/jumbo v0, "FRAMEBUFFER_MISSING_ATTACHMENT"

    goto :goto_12

    :pswitch_40
    const-string/jumbo v0, "FRAMEBUFFER_DRAW_BUFFER"

    goto :goto_12

    :pswitch_44
    const-string/jumbo v0, "FRAMEBUFFER_READ_BUFFER"

    goto :goto_12

    :pswitch_48
    const-string/jumbo v0, "FRAMEBUFFER_UNSUPPORTED"

    goto :goto_12

    :pswitch_4c
    const-string/jumbo v0, "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_12

    :cond_50
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x8cd6
        :pswitch_38
        :pswitch_3c
        :pswitch_12
        :pswitch_4c
        :pswitch_34
        :pswitch_40
        :pswitch_44
        :pswitch_48
    .end packed-switch
.end method

.method private convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/pinguo/camera360/gallery/ui/BasicTexture;)V
    .registers 13

    invoke-virtual {p3}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getTextureWidth()I

    move-result v2

    invoke-virtual {p3}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    iget v6, p1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->left:F

    iget v6, p1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    iget v6, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_47

    iget v6, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/RectF;->right:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    :cond_47
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_66

    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/RectF;->bottom:F

    iput v5, p1, Landroid/graphics/RectF;->bottom:F

    :cond_66
    return-void
.end method

.method private drawBoundTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IIII)V
    .registers 15

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v7, 0x3f00

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->hasBorder()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getTextureWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    :goto_3d
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->textureRect(FFFF)V

    :cond_44
    :goto_44
    return-void

    :cond_45
    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getTextureHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    goto :goto_3d

    :cond_5f
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mapPoints([FIIII)[F

    move-result-object v6

    aget v0, v6, v8

    add-float/2addr v0, v7

    float-to-int p2, v0

    const/4 v0, 0x1

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int p3, v0

    const/4 v0, 0x2

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p4, v0, p2

    const/4 v0, 0x3

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p5, v0, p3

    if-lez p4, :cond_44

    if-lez p5, :cond_44

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p2

    move v2, p3

    move v3, v8

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountTextureOES:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountTextureOES:I

    goto :goto_44
.end method

.method private drawMixed(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IFIIIIF)V
    .registers 21

    const v1, 0x3c23d70a

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_17

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IIIIF)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    const/high16 v1, 0x3f80

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_2f

    move/from16 v0, p4

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    move/from16 v0, p6

    int-to-float v4, v0

    move/from16 v0, p7

    int-to-float v5, v0

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->fillRect(FFFFI)V

    goto :goto_16

    :cond_2f
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v1, :cond_111

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {p2}, Lcom/pinguo/camera360/gallery/util/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_48

    const v1, 0x3f733333

    cmpg-float v1, p8, v1

    if-gez v1, :cond_111

    :cond_48
    const/4 v1, 0x1

    :goto_49
    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->bindTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    mul-float v9, p8, v1

    mul-float v1, p8, p3

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v9

    div-float v11, v1, v2

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    const v2, 0x8570

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    ushr-int/lit8 v1, p2, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, v11

    const v2, 0x477e0100

    div-float v8, v1, v2

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v8

    ushr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v8

    and-int/lit16 v3, p2, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-direct {p0, v1, v2, v3, v9}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->setTextureColor(FFFF)V

    const/16 v1, 0x2300

    const/16 v2, 0x2201

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTextureColor:[F

    const/4 v4, 0x0

    invoke-interface {v10, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    const/16 v1, 0x2300

    const v2, 0x8571

    const v3, 0x47057500

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/16 v1, 0x2300

    const v2, 0x8572

    const v3, 0x47057500

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/16 v1, 0x2300

    const v2, 0x8581

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/16 v1, 0x2300

    const v2, 0x8591

    const/high16 v3, 0x4440

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/16 v1, 0x2300

    const v2, 0x8589

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/16 v1, 0x2300

    const v2, 0x8599

    const v3, 0x44408000

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/16 v1, 0x2300

    const v2, 0x8582

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/16 v1, 0x2300

    const v2, 0x8592

    const v3, 0x44408000

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/16 v1, 0x2300

    const v2, 0x858a

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/16 v1, 0x2300

    const v2, 0x859a

    const v3, 0x44408000

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->drawBoundTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IIII)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    const/16 v2, 0x1e01

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto/16 :goto_16

    :cond_111
    const/4 v1, 0x0

    goto/16 :goto_49
.end method

.method private drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IIIIF)V
    .registers 9

    if-lez p4, :cond_4

    if-gtz p5, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x3f733333

    cmpg-float v0, p6, v0

    if-gez v0, :cond_2b

    :cond_18
    const/4 v0, 0x1

    :goto_19
    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->bindTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    invoke-virtual {v0, p6}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    invoke-direct/range {p0 .. p5}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->drawBoundTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IIII)V

    goto :goto_4

    :cond_2b
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private freeRestoreConfig(Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;

    iput-object v0, p1, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;->mNextFree:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;

    return-void
.end method

.method private initialize()V
    .registers 12

    const v10, 0x8892

    const/4 v9, 0x1

    const/16 v8, 0x1406

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    sget-object v4, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x20

    div-int/lit8 v2, v4, 0x8

    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    sget-object v4, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    sget-object v5, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array v1, v9, [I

    invoke-static {v9, v1, v6}, Lcom/pinguo/camera360/gallery/ui/GLId;->glGenBuffers(I[II)V

    aget v4, v1, v6

    iput v4, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mBoxCoords:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v0, v10, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e4

    invoke-interface {v0, v10, v4, v3, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    const v4, 0x84c1

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    const v4, 0x84c0

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    const v4, 0x8078

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    return-void
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v5, 0x3727c5ac

    const v0, 0x3727c5ac

    const/4 v3, 0x4

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_2e

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_2e

    aget v3, p0, v1

    const v4, -0x48d83a54

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2e

    const/4 v3, 0x5

    aget v3, p0, v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_2e

    :goto_2d
    return v1

    :cond_2e
    move v1, v2

    goto :goto_2d
.end method

.method private mapPoints([FIIII)[F
    .registers 16

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMapPointsBuffer:[F

    const/4 v7, 0x0

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xc

    aget v8, p1, v8

    add-float v3, v7, v8

    const/4 v7, 0x1

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xd

    aget v8, p1, v8

    add-float v5, v7, v8

    const/4 v7, 0x3

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xf

    aget v8, p1, v8

    add-float v1, v7, v8

    const/4 v7, 0x0

    div-float v8, v3, v1

    aput v8, v0, v7

    const/4 v7, 0x1

    div-float v8, v5, v1

    aput v8, v0, v7

    const/4 v7, 0x0

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xc

    aget v8, p1, v8

    add-float v4, v7, v8

    const/4 v7, 0x1

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xd

    aget v8, p1, v8

    add-float v6, v7, v8

    const/4 v7, 0x3

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xf

    aget v8, p1, v8

    add-float v2, v7, v8

    const/4 v7, 0x2

    div-float v8, v4, v2

    aput v8, v0, v7

    const/4 v7, 0x3

    div-float v8, v6, v2

    aput v8, v0, v7

    return-object v0
.end method

.method private obtainRestoreConfig()Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;->mNextFree:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;-><init>(Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;)V

    goto :goto_a
.end method

.method private restoreTransform()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTempMatrix:[F

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private saveTransform()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTempMatrix:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private setRenderTarget(Lcom/pinguo/camera360/gallery/ui/RawTexture;)V
    .registers 8

    const/4 v3, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTargetTexture:Lcom/pinguo/camera360/gallery/ui/RawTexture;

    if-nez v2, :cond_1b

    if-eqz p1, :cond_1b

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mFrameBuffer:[I

    invoke-static {v3, v2, v5}, Lcom/pinguo/camera360/gallery/ui/GLId;->glGenBuffers(I[II)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mFrameBuffer:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    :cond_1b
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTargetTexture:Lcom/pinguo/camera360/gallery/ui/RawTexture;

    if-eqz v2, :cond_29

    if-nez p1, :cond_29

    invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mFrameBuffer:[I

    invoke-interface {v0, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    :cond_29
    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTargetTexture:Lcom/pinguo/camera360/gallery/ui/RawTexture;

    if-nez p1, :cond_35

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mScreenWidth:I

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mScreenHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->setSize(II)V

    :goto_34
    return-void

    :cond_35
    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/RawTexture;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/RawTexture;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->setSize(II)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/RawTexture;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {p1, p0}, Lcom/pinguo/camera360/gallery/ui/RawTexture;->prepare(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    :cond_49
    const v2, 0x8ce0

    const/16 v3, 0xde1

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/RawTexture;->getId()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V

    goto :goto_34
.end method

.method private setTextureColor(FFFF)V
    .registers 7

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTextureColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    return-void
.end method

.method private setTextureCoords(FFFF)V
    .registers 10

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    sub-float v1, p3, p1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/4 v1, 0x5

    sub-float v2, p4, p2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    return-void
.end method

.method private setTextureCoords(Landroid/graphics/RectF;)V
    .registers 6

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    return-void
.end method

.method private setTextureCoords([F)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    return-void
.end method

.method private textureRect(FFFF)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->saveTransform()V

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->translate(FF)V

    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->scale(FFF)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->restoreTransform()V

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountTextureRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountTextureRect:I

    return-void
.end method


# virtual methods
.method public beginRenderTarget(Lcom/pinguo/camera360/gallery/ui/RawTexture;)V
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->save()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTargetTexture:Lcom/pinguo/camera360/gallery/ui/RawTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->setRenderTarget(Lcom/pinguo/camera360/gallery/ui/RawTexture;)V

    return-void
.end method

.method public clearBuffer()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    return-void
.end method

.method public deleteBuffer(I)V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mUnboundTextures:Lcom/pinguo/camera360/gallery/util/IntArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/pinguo/camera360/gallery/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/util/IntArray;->add(I)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public deleteRecycledResources()V
    .registers 7

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mUnboundTextures:Lcom/pinguo/camera360/gallery/util/IntArray;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mUnboundTextures:Lcom/pinguo/camera360/gallery/util/IntArray;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1c

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/pinguo/camera360/gallery/ui/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/IntArray;->clear()V

    :cond_1c
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/pinguo/camera360/gallery/util/IntArray;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_35

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/pinguo/camera360/gallery/ui/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/IntArray;->clear()V

    :cond_35
    monitor-exit v2

    return-void

    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public drawLine(FFFFLcom/pinguo/camera360/gallery/ui/GLPaint;)V
    .registers 10

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/pinguo/camera360/gallery/ui/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/pinguo/camera360/gallery/ui/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setLineWidth(F)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->saveTransform()V

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->translate(FF)V

    sub-float v1, p3, p1

    sub-float v2, p4, p2

    const/high16 v3, 0x3f80

    invoke-virtual {p0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->scale(FFF)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->restoreTransform()V

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountDrawLine:I

    return-void
.end method

.method public drawMesh(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IIIIII)V
    .registers 16

    const/4 v4, 0x0

    const v7, 0x8892

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->bindTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)Z

    move-result v1

    if-nez v1, :cond_11

    :goto_10
    return-void

    :cond_11
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v1, :cond_82

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_24

    const v1, 0x3f733333

    cmpg-float v1, v0, v1

    if-gez v1, :cond_82

    :cond_24
    const/4 v1, 0x1

    :goto_25
    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    invoke-direct {p0, v4, v4, v1, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->saveTransform()V

    int-to-float v1, p2

    int-to-float v3, p3

    invoke-virtual {p0, v1, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->translate(FF)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v3, 0x8893

    invoke-interface {v1, v3, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v3, 0x5

    const/16 v4, 0x1401

    invoke-interface {v1, v3, p7, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v1, v7, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->restoreTransform()V

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountDrawMesh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountDrawMesh:I

    goto :goto_10

    :cond_82
    move v1, v2

    goto :goto_25
.end method

.method public drawMixed(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IFIIII)V
    .registers 17

    iget v8, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->drawMixed(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IFIIIIF)V

    return-void
.end method

.method public drawRect(FFFFLcom/pinguo/camera360/gallery/ui/GLPaint;)V
    .registers 10

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/pinguo/camera360/gallery/ui/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/pinguo/camera360/gallery/ui/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setLineWidth(F)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->saveTransform()V

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->translate(FF)V

    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->scale(FFF)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->restoreTransform()V

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountDrawLine:I

    return-void
.end method

.method public drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IIII)V
    .registers 13

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IIIIF)V

    return-void
.end method

.method public drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_11

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_35

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5c

    :cond_35
    const/4 v0, 0x1

    :goto_36
    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->bindTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p2, p3, p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/pinguo/camera360/gallery/ui/BasicTexture;)V

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->setTextureCoords(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->textureRect(FFFF)V

    goto :goto_11

    :cond_5c
    const/4 v0, 0x0

    goto :goto_36
.end method

.method public drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;[FIIII)V
    .registers 11

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_20

    :cond_15
    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->bindTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_22

    :goto_1f
    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_16

    :cond_22
    invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->setTextureCoords([F)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    int-to-float v0, p3

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->textureRect(FFFF)V

    goto :goto_1f
.end method

.method public dumpStatisticsAndClear()V
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v1, "MESH:%d, TEX_OES:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountDrawMesh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountTextureRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountTextureOES:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountFillRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountDrawLine:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput v5, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountDrawMesh:I

    iput v5, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountTextureRect:I

    iput v5, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountTextureOES:I

    iput v5, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountFillRect:I

    iput v5, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountDrawLine:I

    const-string/jumbo v1, "GLCanvasImp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endRenderTarget()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/RawTexture;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->setRenderTarget(Lcom/pinguo/camera360/gallery/ui/RawTexture;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->restore()V

    return-void
.end method

.method public fillRect(FFFFI)V
    .registers 10

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGLState:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, p5, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->saveTransform()V

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->translate(FF)V

    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->scale(FFF)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->restoreTransform()V

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountFillRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mCountFillRect:I

    return-void
.end method

.method public getAlpha()F
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    return v0
.end method

.method public getGLInstance()Ljavax/microedition/khronos/opengles/GL11;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method public multiplyAlpha(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_15

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_15

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public multiplyMatrix([FI)V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTempMatrix:[F

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public restore()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_e
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;->restore(Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;)V

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->freeRestoreConfig(Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;)V

    return-void
.end method

.method public rotate(FFFF)V
    .registers 14

    const/16 v8, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTempMatrix:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8
.end method

.method public save()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->save(I)V

    return-void
.end method

.method public save(I)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->obtainRestoreConfig()Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    iput v1, v0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    :goto_d
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1a
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_20
    const/high16 v1, -0x4080

    iput v1, v0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    goto :goto_d

    :cond_25
    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/high16 v2, -0x80

    aput v2, v1, v4

    goto :goto_1a
.end method

.method public scale(FFF)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_12

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setSize(II)V
    .registers 10

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-ltz p1, :cond_43

    if-ltz p2, :cond_43

    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTargetTexture:Lcom/pinguo/camera360/gallery/ui/RawTexture;

    if-nez v2, :cond_14

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mScreenWidth:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mScreenHeight:I

    :cond_14
    iput v6, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mAlpha:F

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v3, v3, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    int-to-float v2, p1

    int-to-float v4, p2

    invoke-static {v0, v5, v2, v5, v4}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    const/16 v2, 0x1700

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mTargetTexture:Lcom/pinguo/camera360/gallery/ui/RawTexture;

    if-nez v2, :cond_42

    int-to-float v2, p2

    invoke-static {v1, v3, v5, v2, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 v2, -0x4080

    invoke-static {v1, v3, v6, v2, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_42
    return-void

    :cond_43
    move v2, v3

    goto :goto_9
.end method

.method public translate(FF)V
    .registers 8

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xd

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xe

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xf

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public translate(FFF)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public unloadTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)Z
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mUnboundTextures:Lcom/pinguo/camera360/gallery/util/IntArray;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_c

    monitor-exit v1

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mUnboundTextures:Lcom/pinguo/camera360/gallery/util/IntArray;

    iget v2, p1, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mId:I

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/gallery/util/IntArray;->add(I)V

    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_b

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method
