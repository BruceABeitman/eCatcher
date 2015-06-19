.class public Lcom/pinguo/album/opengles/GLES11Canvas;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"
.implements Lcom/pinguo/album/opengles/GLESCanvas;
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
.field private static mGLId:Lcom/pinguo/album/opengles/GLId;
.field private static sCropRect:[F
.field private mAlpha:F
.field private mBlendEnabled:Z
.field private mBoxCoords:I
.field  mCountDrawLine:I
.field  mCountDrawMesh:I
.field  mCountFillRect:I
.field  mCountTextureOES:I
.field  mCountTextureRect:I
.field private final mDeleteBuffers:Lcom/pinguo/album/utils/IntArray;
.field private final mDrawTextureSourceRect:Landroid/graphics/RectF;
.field private final mDrawTextureTargetRect:Landroid/graphics/RectF;
.field private mFrameBuffer:[I
.field private mGL:Ljavax/microedition/khronos/opengles/GL11;
.field private mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
.field private final mMapPointsBuffer:[F
.field private final mMatrixValues:[F
.field private mRecycledRestoreAction:Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
.field private final mRestoreStack:Ljava/util/ArrayList;
.field private mScreenHeight:I
.field private mScreenWidth:I
.field private final mTargetStack:Ljava/util/ArrayList;
.field private mTargetTexture:Lcom/pinguo/album/opengles/RawTexture;
.field private final mTempMatrix:[F
.field private final mTextureColor:[F
.field private final mTextureMatrixValues:[F
.field private final mUnboundTextures:Lcom/pinguo/album/utils/IntArray;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x14
new-array v0, v0, [F
fill-array-data v0, :array_16
sput-object v0, Lcom/pinguo/album/opengles/GLES11Canvas;->BOX_COORDINATES:[F
const/4 v0, 0x4
new-array v0, v0, [F
sput-object v0, Lcom/pinguo/album/opengles/GLES11Canvas;->sCropRect:[F
new-instance v0, Lcom/pinguo/album/opengles/GLES11IdImpl;
invoke-direct {v0}, Lcom/pinguo/album/opengles/GLES11IdImpl;-><init>()V
sput-object v0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLId:Lcom/pinguo/album/opengles/GLId;
return-void
:array_16
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
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
.registers 11
const/4 v4, 0x4
const/16 v8, 0x1406
const/4 v7, 0x2
const/4 v5, 0x1
const/4 v6, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v3, 0x10
new-array v3, v3, [F
iput-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
const/16 v3, 0x10
new-array v3, v3, [F
iput-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTextureMatrixValues:[F
new-array v3, v4, [F
iput-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMapPointsBuffer:[F
new-array v3, v4, [F
iput-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTextureColor:[F
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iput-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iput-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;
new-instance v3, Landroid/graphics/RectF;
invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V
iput-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;
new-instance v3, Landroid/graphics/RectF;
invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V
iput-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;
const/16 v3, 0x20
new-array v3, v3, [F
iput-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTempMatrix:[F
new-instance v3, Lcom/pinguo/album/utils/IntArray;
invoke-direct {v3}, Lcom/pinguo/album/utils/IntArray;-><init>()V
iput-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mUnboundTextures:Lcom/pinguo/album/utils/IntArray;
new-instance v3, Lcom/pinguo/album/utils/IntArray;
invoke-direct {v3}, Lcom/pinguo/album/utils/IntArray;-><init>()V
iput-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mDeleteBuffers:Lcom/pinguo/album/utils/IntArray;
iput-boolean v5, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mBlendEnabled:Z
new-array v3, v5, [I
iput-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mFrameBuffer:[I
iput-object p1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
new-instance v3, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
invoke-direct {v3, p1}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V
iput-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
sget-object v3, Lcom/pinguo/album/opengles/GLES11Canvas;->BOX_COORDINATES:[F
array-length v3, v3
mul-int/lit8 v3, v3, 0x20
div-int/lit8 v1, v3, 0x8
invoke-static {v1}, Lcom/pinguo/album/opengles/GLES11Canvas;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
move-result-object v3
invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;
move-result-object v2
sget-object v3, Lcom/pinguo/album/opengles/GLES11Canvas;->BOX_COORDINATES:[F
sget-object v4, Lcom/pinguo/album/opengles/GLES11Canvas;->BOX_COORDINATES:[F
array-length v4, v4
invoke-virtual {v2, v3, v6, v4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;
move-result-object v3
invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
new-array v0, v5, [I
sget-object v3, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLId:Lcom/pinguo/album/opengles/GLId;
invoke-interface {v3, v5, v0, v6}, Lcom/pinguo/album/opengles/GLId;->glGenBuffers(I[II)V
aget v3, v0, v6
iput v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mBoxCoords:I
const v3, 0x8892
iget v4, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mBoxCoords:I
invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V
const v3, 0x8892
invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I
move-result v4
mul-int/lit8 v4, v4, 0x4
const v5, 0x88e4
invoke-interface {p1, v3, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V
invoke-interface {p1, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V
invoke-interface {p1, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V
const v3, 0x84c1
invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V
invoke-interface {p1, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V
const v3, 0x84c0
invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V
const v3, 0x8078
invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/album/opengles/GLES11Canvas;)[F
.registers 2
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
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
.method private bindTexture(Lcom/pinguo/album/opengles/BasicTexture;)Z
.registers 5
invoke-virtual {p1, p0}, Lcom/pinguo/album/opengles/BasicTexture;->onBind(Lcom/pinguo/album/opengles/GLESCanvas;)Z
move-result v1
if-nez v1, :cond_8
const/4 v1, 0x0
:goto_7
return v1
:cond_8
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTarget()I
move-result v0
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
invoke-virtual {v1, v0}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setTextureTarget(I)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getId()I
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
:pswitch_12
:goto_12
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
.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/pinguo/album/opengles/BasicTexture;)V
.registers 12
invoke-virtual {p2}, Lcom/pinguo/album/opengles/BasicTexture;->getWidth()I
move-result v3
invoke-virtual {p2}, Lcom/pinguo/album/opengles/BasicTexture;->getHeight()I
move-result v0
invoke-virtual {p2}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureWidth()I
move-result v2
invoke-virtual {p2}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureHeight()I
move-result v1
iget v6, p0, Landroid/graphics/RectF;->left:F
int-to-float v7, v2
div-float/2addr v6, v7
iput v6, p0, Landroid/graphics/RectF;->left:F
iget v6, p0, Landroid/graphics/RectF;->right:F
int-to-float v7, v2
div-float/2addr v6, v7
iput v6, p0, Landroid/graphics/RectF;->right:F
iget v6, p0, Landroid/graphics/RectF;->top:F
int-to-float v7, v1
div-float/2addr v6, v7
iput v6, p0, Landroid/graphics/RectF;->top:F
iget v6, p0, Landroid/graphics/RectF;->bottom:F
int-to-float v7, v1
div-float/2addr v6, v7
iput v6, p0, Landroid/graphics/RectF;->bottom:F
int-to-float v6, v3
int-to-float v7, v2
div-float v4, v6, v7
iget v6, p0, Landroid/graphics/RectF;->right:F
cmpl-float v6, v6, v4
if-lez v6, :cond_47
iget v6, p1, Landroid/graphics/RectF;->left:F
invoke-virtual {p1}, Landroid/graphics/RectF;->width()F
move-result v7
iget v8, p0, Landroid/graphics/RectF;->left:F
sub-float v8, v4, v8
mul-float/2addr v7, v8
invoke-virtual {p0}, Landroid/graphics/RectF;->width()F
move-result v8
div-float/2addr v7, v8
add-float/2addr v6, v7
iput v6, p1, Landroid/graphics/RectF;->right:F
iput v4, p0, Landroid/graphics/RectF;->right:F
:cond_47
int-to-float v6, v0
int-to-float v7, v1
div-float v5, v6, v7
iget v6, p0, Landroid/graphics/RectF;->bottom:F
cmpl-float v6, v6, v5
if-lez v6, :cond_66
iget v6, p1, Landroid/graphics/RectF;->top:F
invoke-virtual {p1}, Landroid/graphics/RectF;->height()F
move-result v7
iget v8, p0, Landroid/graphics/RectF;->top:F
sub-float v8, v5, v8
mul-float/2addr v7, v8
invoke-virtual {p0}, Landroid/graphics/RectF;->height()F
move-result v8
div-float/2addr v7, v8
add-float/2addr v6, v7
iput v6, p1, Landroid/graphics/RectF;->bottom:F
iput v5, p0, Landroid/graphics/RectF;->bottom:F
:cond_66
return-void
.end method
.method private drawBoundTexture(Lcom/pinguo/album/opengles/BasicTexture;IIII)V
.registers 15
const/4 v8, 0x0
const/4 v3, 0x0
const/high16 v4, 0x3f80
const/high16 v7, 0x3f00
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
invoke-static {v0}, Lcom/pinguo/album/opengles/GLES11Canvas;->isMatrixRotatedOrFlipped([F)Z
move-result v0
if-eqz v0, :cond_5f
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->hasBorder()Z
move-result v0
if-eqz v0, :cond_45
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureWidth()I
move-result v0
int-to-float v0, v0
div-float v0, v4, v0
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureHeight()I
move-result v1
int-to-float v1, v1
div-float v1, v4, v1
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getWidth()I
move-result v2
int-to-float v2, v2
sub-float/2addr v2, v4
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureWidth()I
move-result v3
int-to-float v3, v3
div-float/2addr v2, v3
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getHeight()I
move-result v3
int-to-float v3, v3
sub-float/2addr v3, v4
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureHeight()I
move-result v4
int-to-float v4, v4
div-float/2addr v3, v4
invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/album/opengles/GLES11Canvas;->setTextureCoords(FFFF)V
:goto_3d
int-to-float v0, p2
int-to-float v1, p3
int-to-float v2, p4
int-to-float v3, p5
invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/album/opengles/GLES11Canvas;->textureRect(FFFF)V
:cond_44
:goto_44
return-void
:cond_45
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getWidth()I
move-result v0
int-to-float v0, v0
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureWidth()I
move-result v1
int-to-float v1, v1
div-float/2addr v0, v1
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getHeight()I
move-result v1
int-to-float v1, v1
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureHeight()I
move-result v2
int-to-float v2, v2
div-float/2addr v1, v2
invoke-direct {p0, v3, v3, v0, v1}, Lcom/pinguo/album/opengles/GLES11Canvas;->setTextureCoords(FFFF)V
goto :goto_3d
:cond_5f
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
add-int v3, p3, p5
add-int v4, p2, p4
move-object v0, p0
move v2, p2
move v5, p3
invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/opengles/GLES11Canvas;->mapPoints([FIIII)[F
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
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;
move v1, p2
move v2, p3
move v3, v8
move v4, p4
move v5, p5
invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountTextureOES:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountTextureOES:I
goto :goto_44
.end method
.method private drawMixed(Lcom/pinguo/album/opengles/BasicTexture;IFIIIIF)V
.registers 18
const v1, 0x3c23d70a
cmpg-float v1, p3, v1
if-gtz v1, :cond_14
move-object v1, p0
move-object v2, p1
move v3, p4
move v4, p5
move v5, p6
move/from16 v6, p7
move/from16 v7, p8
invoke-direct/range {v1 .. v7}, Lcom/pinguo/album/opengles/GLES11Canvas;->drawTexture(Lcom/pinguo/album/opengles/BasicTexture;IIIIF)V
:cond_13
:goto_13
return-void
:cond_14
const/high16 v1, 0x3f80
cmpl-float v1, p3, v1
if-ltz v1, :cond_26
int-to-float v2, p4
int-to-float v3, p5
int-to-float v4, p6
move/from16 v0, p7
int-to-float v5, v0
move-object v1, p0
move v6, p2
invoke-virtual/range {v1 .. v6}, Lcom/pinguo/album/opengles/GLES11Canvas;->fillRect(FFFFI)V
goto :goto_13
:cond_26
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
iget-boolean v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mBlendEnabled:Z
if-eqz v1, :cond_6a
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->isOpaque()Z
move-result v1
if-eqz v1, :cond_3f
invoke-static {p2}, Lcom/pinguo/album/utils/Utils;->isOpaque(I)Z
move-result v1
if-eqz v1, :cond_3f
const v1, 0x3f733333
cmpg-float v1, p8, v1
if-gez v1, :cond_6a
:cond_3f
const/4 v1, 0x1
:goto_40
invoke-virtual {v2, v1}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setBlendEnabled(Z)V
iget-object v8, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-direct {p0, p1}, Lcom/pinguo/album/opengles/GLES11Canvas;->bindTexture(Lcom/pinguo/album/opengles/BasicTexture;)Z
move-result v1
if-eqz v1, :cond_13
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
const v2, 0x8570
invoke-virtual {v1, v2}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setTexEnvMode(I)V
move/from16 v0, p8
invoke-direct {p0, p2, p3, v0}, Lcom/pinguo/album/opengles/GLES11Canvas;->setMixedColor(IFF)V
move-object v1, p0
move-object v2, p1
move v3, p4
move v4, p5
move v5, p6
move/from16 v6, p7
invoke-direct/range {v1 .. v6}, Lcom/pinguo/album/opengles/GLES11Canvas;->drawBoundTexture(Lcom/pinguo/album/opengles/BasicTexture;IIII)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
const/16 v2, 0x1e01
invoke-virtual {v1, v2}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setTexEnvMode(I)V
goto :goto_13
:cond_6a
const/4 v1, 0x0
goto :goto_40
.end method
.method private drawTexture(Lcom/pinguo/album/opengles/BasicTexture;IIIIF)V
.registers 9
if-lez p4, :cond_4
if-gtz p5, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
iget-boolean v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mBlendEnabled:Z
if-eqz v0, :cond_2b
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->isOpaque()Z
move-result v0
if-eqz v0, :cond_18
const v0, 0x3f733333
cmpg-float v0, p6, v0
if-gez v0, :cond_2b
:cond_18
const/4 v0, 0x1
:goto_19
invoke-virtual {v1, v0}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setBlendEnabled(Z)V
invoke-direct {p0, p1}, Lcom/pinguo/album/opengles/GLES11Canvas;->bindTexture(Lcom/pinguo/album/opengles/BasicTexture;)Z
move-result v0
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
invoke-virtual {v0, p6}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setTextureAlpha(F)V
invoke-direct/range {p0 .. p5}, Lcom/pinguo/album/opengles/GLES11Canvas;->drawBoundTexture(Lcom/pinguo/album/opengles/BasicTexture;IIII)V
goto :goto_4
:cond_2b
const/4 v0, 0x0
goto :goto_19
.end method
.method private freeRestoreConfig(Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mRecycledRestoreAction:Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
iput-object v0, p1, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;->mNextFree:Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
iput-object p1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mRecycledRestoreAction:Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
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
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMapPointsBuffer:[F
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
.method private obtainRestoreConfig()Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
.registers 3
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mRecycledRestoreAction:Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
if-eqz v1, :cond_b
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mRecycledRestoreAction:Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
iget-object v1, v0, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;->mNextFree:Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
iput-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mRecycledRestoreAction:Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
:goto_a
return-object v0
:cond_b
new-instance v0, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;-><init>(Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;)V
goto :goto_a
.end method
.method private restoreTransform()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTempMatrix:[F
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
const/16 v2, 0x10
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method private saveTransform()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTempMatrix:[F
const/16 v2, 0x10
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method private setMixedColor(IFF)V
.registers 15
const v10, 0x47057500
const/high16 v5, 0x3f80
const v9, 0x44408000
const v8, 0x47057600
const/16 v7, 0x2300
sub-float v4, v5, p2
mul-float v1, p3, v4
mul-float v4, p3, p2
sub-float/2addr v5, v1
div-float v3, v4, v5
ushr-int/lit8 v4, p1, 0x18
int-to-float v4, v4
mul-float/2addr v4, v3
const v5, 0x477e0100
div-float v0, v4, v5
ushr-int/lit8 v4, p1, 0x10
and-int/lit16 v4, v4, 0xff
int-to-float v4, v4
mul-float/2addr v4, v0
ushr-int/lit8 v5, p1, 0x8
and-int/lit16 v5, v5, 0xff
int-to-float v5, v5
mul-float/2addr v5, v0
and-int/lit16 v6, p1, 0xff
int-to-float v6, v6
mul-float/2addr v6, v0
invoke-direct {p0, v4, v5, v6, v1}, Lcom/pinguo/album/opengles/GLES11Canvas;->setTextureColor(FFFF)V
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/16 v4, 0x2201
iget-object v5, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTextureColor:[F
const/4 v6, 0x0
invoke-interface {v2, v7, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V
const v4, 0x8571
invoke-interface {v2, v7, v4, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
const v4, 0x8572
invoke-interface {v2, v7, v4, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
const v4, 0x8581
invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
const v4, 0x8591
const/high16 v5, 0x4440
invoke-interface {v2, v7, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
const v4, 0x8589
invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
const v4, 0x8599
invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
const v4, 0x8582
invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
const v4, 0x8592
invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
const v4, 0x858a
invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
const v4, 0x859a
invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
return-void
.end method
.method private setRenderTarget(Lcom/pinguo/album/opengles/RawTexture;)V
.registers 8
const/4 v4, 0x1
const v1, 0x8d40
const/4 v5, 0x0
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTargetTexture:Lcom/pinguo/album/opengles/RawTexture;
if-nez v2, :cond_1d
if-eqz p1, :cond_1d
sget-object v2, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLId:Lcom/pinguo/album/opengles/GLId;
iget-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mFrameBuffer:[I
invoke-interface {v2, v4, v3, v5}, Lcom/pinguo/album/opengles/GLId;->glGenBuffers(I[II)V
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mFrameBuffer:[I
aget v2, v2, v5
invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V
:cond_1d
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTargetTexture:Lcom/pinguo/album/opengles/RawTexture;
if-eqz v2, :cond_2b
if-nez p1, :cond_2b
invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mFrameBuffer:[I
invoke-interface {v0, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V
:cond_2b
iput-object p1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTargetTexture:Lcom/pinguo/album/opengles/RawTexture;
if-nez p1, :cond_37
iget v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mScreenWidth:I
iget v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mScreenHeight:I
invoke-virtual {p0, v1, v2}, Lcom/pinguo/album/opengles/GLES11Canvas;->setSize(II)V
:goto_36
return-void
:cond_37
invoke-virtual {p1}, Lcom/pinguo/album/opengles/RawTexture;->getWidth()I
move-result v2
invoke-virtual {p1}, Lcom/pinguo/album/opengles/RawTexture;->getHeight()I
move-result v3
invoke-virtual {p0, v2, v3}, Lcom/pinguo/album/opengles/GLES11Canvas;->setSize(II)V
invoke-virtual {p1}, Lcom/pinguo/album/opengles/RawTexture;->isLoaded()Z
move-result v2
if-nez v2, :cond_4b
invoke-virtual {p1, p0}, Lcom/pinguo/album/opengles/RawTexture;->prepare(Lcom/pinguo/album/opengles/GLESCanvas;)V
:cond_4b
const v2, 0x8ce0
const/16 v3, 0xde1
invoke-virtual {p1}, Lcom/pinguo/album/opengles/RawTexture;->getId()I
move-result v4
invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V
invoke-static {v0}, Lcom/pinguo/album/opengles/GLES11Canvas;->checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V
goto :goto_36
.end method
.method private setTextureColor(FFFF)V
.registers 7
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTextureColor:[F
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
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/16 v1, 0x1702
invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTextureMatrixValues:[F
sub-float v1, p3, p1
aput v1, v0, v4
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTextureMatrixValues:[F
const/4 v1, 0x5
sub-float v2, p4, p2
aput v2, v0, v1
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTextureMatrixValues:[F
const/16 v1, 0xa
aput v3, v0, v1
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTextureMatrixValues:[F
const/16 v1, 0xc
aput p1, v0, v1
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTextureMatrixValues:[F
const/16 v1, 0xd
aput p2, v0, v1
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTextureMatrixValues:[F
const/16 v1, 0xf
aput v3, v0, v1
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTextureMatrixValues:[F
invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
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
invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/album/opengles/GLES11Canvas;->setTextureCoords(FFFF)V
return-void
.end method
.method private setTextureCoords([F)V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/16 v1, 0x1702
invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/4 v1, 0x0
invoke-interface {v0, p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/16 v1, 0x1700
invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V
return-void
.end method
.method private textureRect(FFFF)V
.registers 9
const/4 v3, 0x0
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES11Canvas;->saveTransform()V
invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/opengles/GLES11Canvas;->translate(FF)V
const/high16 v1, 0x3f80
invoke-virtual {p0, p3, p4, v1}, Lcom/pinguo/album/opengles/GLES11Canvas;->scale(FFF)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V
const/4 v1, 0x5
const/4 v2, 0x4
invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V
invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES11Canvas;->restoreTransform()V
iget v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountTextureRect:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountTextureRect:I
return-void
.end method
.method private uploadBuffer(Ljava/nio/Buffer;I)I
.registers 9
const v5, 0x8892
const/4 v4, 0x0
const/4 v2, 0x1
new-array v1, v2, [I
sget-object v2, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLId:Lcom/pinguo/album/opengles/GLId;
array-length v3, v1
invoke-interface {v2, v3, v1, v4}, Lcom/pinguo/album/opengles/GLId;->glGenBuffers(I[II)V
aget v0, v1, v4
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v2, v5, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I
move-result v3
mul-int/2addr v3, p2
const v4, 0x88e4
invoke-interface {v2, v5, v3, p1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V
return v0
.end method
.method public beginRenderTarget(Lcom/pinguo/album/opengles/RawTexture;)V
.registers 4
invoke-virtual {p0}, Lcom/pinguo/album/opengles/GLES11Canvas;->save()V
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTargetTexture:Lcom/pinguo/album/opengles/RawTexture;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-direct {p0, p1}, Lcom/pinguo/album/opengles/GLES11Canvas;->setRenderTarget(Lcom/pinguo/album/opengles/RawTexture;)V
return-void
.end method
.method public clearBuffer()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/album/opengles/GLES11Canvas;->clearBuffer([F)V
return-void
.end method
.method public clearBuffer([F)V
.registers 7
const/4 v2, 0x0
if-eqz p1, :cond_20
array-length v0, p1
const/4 v1, 0x4
if-ne v0, v1, :cond_20
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/4 v1, 0x1
aget v1, p1, v1
const/4 v2, 0x2
aget v2, p1, v2
const/4 v3, 0x3
aget v3, p1, v3
const/4 v4, 0x0
aget v4, p1, v4
invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V
:goto_18
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/16 v1, 0x4000
invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V
return-void
:cond_20
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/high16 v1, 0x3f80
invoke-interface {v0, v2, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V
goto :goto_18
.end method
.method public deleteBuffer(I)V
.registers 4
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mUnboundTextures:Lcom/pinguo/album/utils/IntArray;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mDeleteBuffers:Lcom/pinguo/album/utils/IntArray;
invoke-virtual {v0, p1}, Lcom/pinguo/album/utils/IntArray;->add(I)V
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
.registers 8
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mUnboundTextures:Lcom/pinguo/album/utils/IntArray;
monitor-enter v2
:try_start_3
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mUnboundTextures:Lcom/pinguo/album/utils/IntArray;
invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->size()I
move-result v1
if-lez v1, :cond_1e
sget-object v1, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLId:Lcom/pinguo/album/opengles/GLId;
iget-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->size()I
move-result v4
invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->getInternalArray()[I
move-result-object v5
const/4 v6, 0x0
invoke-interface {v1, v3, v4, v5, v6}, Lcom/pinguo/album/opengles/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V
invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->clear()V
:cond_1e
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mDeleteBuffers:Lcom/pinguo/album/utils/IntArray;
invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->size()I
move-result v1
if-lez v1, :cond_39
sget-object v1, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLId:Lcom/pinguo/album/opengles/GLId;
iget-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->size()I
move-result v4
invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->getInternalArray()[I
move-result-object v5
const/4 v6, 0x0
invoke-interface {v1, v3, v4, v5, v6}, Lcom/pinguo/album/opengles/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V
invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->clear()V
:cond_39
monitor-exit v2
return-void
:catchall_3b
move-exception v1
monitor-exit v2
:try_end_3d
.catchall {:try_start_3 .. :try_end_3d} :catchall_3b
throw v1
.end method
.method public drawLine(FFFFLcom/pinguo/album/opengles/GLPaint;)V
.registers 10
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
invoke-virtual {p5}, Lcom/pinguo/album/opengles/GLPaint;->getColor()I
move-result v2
iget v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
invoke-virtual {v1, v2, v3}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setColorMode(IF)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
invoke-virtual {p5}, Lcom/pinguo/album/opengles/GLPaint;->getLineWidth()F
move-result v2
invoke-virtual {v1, v2}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setLineWidth(F)V
invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES11Canvas;->saveTransform()V
invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/opengles/GLES11Canvas;->translate(FF)V
sub-float v1, p3, p1
sub-float v2, p4, p2
const/high16 v3, 0x3f80
invoke-virtual {p0, v1, v2, v3}, Lcom/pinguo/album/opengles/GLES11Canvas;->scale(FFF)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V
const/4 v1, 0x3
const/4 v2, 0x4
const/4 v3, 0x2
invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V
invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES11Canvas;->restoreTransform()V
iget v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountDrawLine:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountDrawLine:I
return-void
.end method
.method public drawMesh(Lcom/pinguo/album/opengles/BasicTexture;IIIIII)V
.registers 16
const/4 v4, 0x0
const v7, 0x8892
const/16 v6, 0x1406
const/4 v5, 0x2
const/4 v2, 0x0
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
invoke-direct {p0, p1}, Lcom/pinguo/album/opengles/GLES11Canvas;->bindTexture(Lcom/pinguo/album/opengles/BasicTexture;)Z
move-result v1
if-nez v1, :cond_11
:goto_10
return-void
:cond_11
iget-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
iget-boolean v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mBlendEnabled:Z
if-eqz v1, :cond_82
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->isOpaque()Z
move-result v1
if-eqz v1, :cond_24
const v1, 0x3f733333
cmpg-float v1, v0, v1
if-gez v1, :cond_82
:cond_24
const/4 v1, 0x1
:goto_25
invoke-virtual {v3, v1}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setBlendEnabled(Z)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
invoke-virtual {v1, v0}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setTextureAlpha(F)V
const/high16 v1, 0x3f80
const/high16 v3, 0x3f80
invoke-direct {p0, v4, v4, v1, v3}, Lcom/pinguo/album/opengles/GLES11Canvas;->setTextureCoords(FFFF)V
invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES11Canvas;->saveTransform()V
int-to-float v1, p2
int-to-float v3, p3
invoke-virtual {p0, v1, v3}, Lcom/pinguo/album/opengles/GLES11Canvas;->translate(FF)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
iget-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v1, v7, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v1, v7, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const v3, 0x8893
invoke-interface {v1, v3, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/4 v3, 0x5
const/16 v4, 0x1401
invoke-interface {v1, v3, p7, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
iget v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mBoxCoords:I
invoke-interface {v1, v7, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V
invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES11Canvas;->restoreTransform()V
iget v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountDrawMesh:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountDrawMesh:I
goto :goto_10
:cond_82
move v1, v2
goto :goto_25
.end method
.method public drawMixed(Lcom/pinguo/album/opengles/BasicTexture;IFIIII)V
.registers 17
iget v8, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
move-object v0, p0
move-object v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
move v6, p6
move/from16 v7, p7
invoke-direct/range {v0 .. v8}, Lcom/pinguo/album/opengles/GLES11Canvas;->drawMixed(Lcom/pinguo/album/opengles/BasicTexture;IFIIIIF)V
return-void
.end method
.method public drawMixed(Lcom/pinguo/album/opengles/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
.registers 13
const/4 v1, 0x0
invoke-virtual {p5}, Landroid/graphics/RectF;->width()F
move-result v0
cmpg-float v0, v0, v1
if-lez v0, :cond_11
invoke-virtual {p5}, Landroid/graphics/RectF;->height()F
move-result v0
cmpg-float v0, v0, v1
if-gtz v0, :cond_12
:cond_11
:goto_11
return-void
:cond_12
const v0, 0x3c23d70a
cmpg-float v0, p3, v0
if-gtz v0, :cond_1d
invoke-virtual {p0, p1, p4, p5}, Lcom/pinguo/album/opengles/GLES11Canvas;->drawTexture(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
goto :goto_11
:cond_1d
const/high16 v0, 0x3f80
cmpl-float v0, p3, v0
if-ltz v0, :cond_35
iget v1, p5, Landroid/graphics/RectF;->left:F
iget v2, p5, Landroid/graphics/RectF;->top:F
invoke-virtual {p5}, Landroid/graphics/RectF;->width()F
move-result v3
invoke-virtual {p5}, Landroid/graphics/RectF;->height()F
move-result v4
move-object v0, p0
move v5, p2
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/album/opengles/GLES11Canvas;->fillRect(FFFFI)V
goto :goto_11
:cond_35
iget v6, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;
invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;
invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
iget-object p4, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;
iget-object p5, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
iget-boolean v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mBlendEnabled:Z
if-eqz v0, :cond_90
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->isOpaque()Z
move-result v0
if-eqz v0, :cond_5e
invoke-static {p2}, Lcom/pinguo/album/utils/Utils;->isOpaque(I)Z
move-result v0
if-eqz v0, :cond_5e
const v0, 0x3f733333
cmpg-float v0, v6, v0
if-gez v0, :cond_90
:cond_5e
const/4 v0, 0x1
:goto_5f
invoke-virtual {v1, v0}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setBlendEnabled(Z)V
invoke-direct {p0, p1}, Lcom/pinguo/album/opengles/GLES11Canvas;->bindTexture(Lcom/pinguo/album/opengles/BasicTexture;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
const v1, 0x8570
invoke-virtual {v0, v1}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setTexEnvMode(I)V
invoke-direct {p0, p2, p3, v6}, Lcom/pinguo/album/opengles/GLES11Canvas;->setMixedColor(IFF)V
invoke-static {p4, p5, p1}, Lcom/pinguo/album/opengles/GLES11Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/pinguo/album/opengles/BasicTexture;)V
invoke-direct {p0, p4}, Lcom/pinguo/album/opengles/GLES11Canvas;->setTextureCoords(Landroid/graphics/RectF;)V
iget v0, p5, Landroid/graphics/RectF;->left:F
iget v1, p5, Landroid/graphics/RectF;->top:F
invoke-virtual {p5}, Landroid/graphics/RectF;->width()F
move-result v2
invoke-virtual {p5}, Landroid/graphics/RectF;->height()F
move-result v3
invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/album/opengles/GLES11Canvas;->textureRect(FFFF)V
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
const/16 v1, 0x1e01
invoke-virtual {v0, v1}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setTexEnvMode(I)V
goto :goto_11
:cond_90
const/4 v0, 0x0
goto :goto_5f
.end method
.method public drawRect(FFFFLcom/pinguo/album/opengles/GLPaint;)V
.registers 10
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
invoke-virtual {p5}, Lcom/pinguo/album/opengles/GLPaint;->getColor()I
move-result v2
iget v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
invoke-virtual {v1, v2, v3}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setColorMode(IF)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
invoke-virtual {p5}, Lcom/pinguo/album/opengles/GLPaint;->getLineWidth()F
move-result v2
invoke-virtual {v1, v2}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setLineWidth(F)V
invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES11Canvas;->saveTransform()V
invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/opengles/GLES11Canvas;->translate(FF)V
const/high16 v1, 0x3f80
invoke-virtual {p0, p3, p4, v1}, Lcom/pinguo/album/opengles/GLES11Canvas;->scale(FFF)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V
const/4 v1, 0x2
const/4 v2, 0x6
const/4 v3, 0x4
invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V
invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES11Canvas;->restoreTransform()V
iget v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountDrawLine:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountDrawLine:I
return-void
.end method
.method public drawTexture(Lcom/pinguo/album/opengles/BasicTexture;IIII)V
.registers 13
iget v6, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
move-object v0, p0
move-object v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-direct/range {v0 .. v6}, Lcom/pinguo/album/opengles/GLES11Canvas;->drawTexture(Lcom/pinguo/album/opengles/BasicTexture;IIIIF)V
return-void
.end method
.method public drawTexture(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
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
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;
invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;
invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
iget-object p2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;
iget-object p3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
iget-boolean v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mBlendEnabled:Z
if-eqz v0, :cond_5c
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->isOpaque()Z
move-result v0
if-eqz v0, :cond_35
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
const v2, 0x3f733333
cmpg-float v0, v0, v2
if-gez v0, :cond_5c
:cond_35
const/4 v0, 0x1
:goto_36
invoke-virtual {v1, v0}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setBlendEnabled(Z)V
invoke-direct {p0, p1}, Lcom/pinguo/album/opengles/GLES11Canvas;->bindTexture(Lcom/pinguo/album/opengles/BasicTexture;)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {p2, p3, p1}, Lcom/pinguo/album/opengles/GLES11Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/pinguo/album/opengles/BasicTexture;)V
invoke-direct {p0, p2}, Lcom/pinguo/album/opengles/GLES11Canvas;->setTextureCoords(Landroid/graphics/RectF;)V
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
iget v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
invoke-virtual {v0, v1}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setTextureAlpha(F)V
iget v0, p3, Landroid/graphics/RectF;->left:F
iget v1, p3, Landroid/graphics/RectF;->top:F
invoke-virtual {p3}, Landroid/graphics/RectF;->width()F
move-result v2
invoke-virtual {p3}, Landroid/graphics/RectF;->height()F
move-result v3
invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/album/opengles/GLES11Canvas;->textureRect(FFFF)V
goto :goto_11
:cond_5c
const/4 v0, 0x0
goto :goto_36
.end method
.method public drawTexture(Lcom/pinguo/album/opengles/BasicTexture;[FIIII)V
.registers 11
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
iget-boolean v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mBlendEnabled:Z
if-eqz v0, :cond_20
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->isOpaque()Z
move-result v0
if-eqz v0, :cond_15
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
const v2, 0x3f733333
cmpg-float v0, v0, v2
if-gez v0, :cond_20
:cond_15
const/4 v0, 0x1
:goto_16
invoke-virtual {v1, v0}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setBlendEnabled(Z)V
invoke-direct {p0, p1}, Lcom/pinguo/album/opengles/GLES11Canvas;->bindTexture(Lcom/pinguo/album/opengles/BasicTexture;)Z
move-result v0
if-nez v0, :cond_22
:goto_1f
return-void
:cond_20
const/4 v0, 0x0
goto :goto_16
:cond_22
invoke-direct {p0, p2}, Lcom/pinguo/album/opengles/GLES11Canvas;->setTextureCoords([F)V
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
iget v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
invoke-virtual {v0, v1}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setTextureAlpha(F)V
int-to-float v0, p3
int-to-float v1, p4
int-to-float v2, p5
int-to-float v3, p6
invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/album/opengles/GLES11Canvas;->textureRect(FFFF)V
goto :goto_1f
.end method
.method public dumpStatisticsAndClear()V
.registers 7
const/4 v5, 0x0
const-string/jumbo v1, "MESH:%d, TEX_OES:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"
const/4 v2, 0x5
new-array v2, v2, [Ljava/lang/Object;
iget v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountDrawMesh:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v5
const/4 v3, 0x1
iget v4, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountTextureRect:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x2
iget v4, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountTextureOES:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x3
iget v4, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountFillRect:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x4
iget v4, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountDrawLine:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iput v5, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountDrawMesh:I
iput v5, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountTextureRect:I
iput v5, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountTextureOES:I
iput v5, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountFillRect:I
iput v5, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountDrawLine:I
const-string/jumbo v1, "GLCanvasImp"
invoke-static {v1, v0}, Lcom/pinguo/album/common/PGLog;->d(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public endRenderTarget()V
.registers 4
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/opengles/RawTexture;
invoke-direct {p0, v0}, Lcom/pinguo/album/opengles/GLES11Canvas;->setRenderTarget(Lcom/pinguo/album/opengles/RawTexture;)V
invoke-virtual {p0}, Lcom/pinguo/album/opengles/GLES11Canvas;->restore()V
return-void
.end method
.method public fillRect(FFFFI)V
.registers 10
const/4 v3, 0x0
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLState:Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
iget v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
invoke-virtual {v1, p5, v2}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setColorMode(IF)V
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES11Canvas;->saveTransform()V
invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/opengles/GLES11Canvas;->translate(FF)V
const/high16 v1, 0x3f80
invoke-virtual {p0, p3, p4, v1}, Lcom/pinguo/album/opengles/GLES11Canvas;->scale(FFF)V
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V
const/4 v1, 0x5
const/4 v2, 0x4
invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V
invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES11Canvas;->restoreTransform()V
iget v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountFillRect:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mCountFillRect:I
return-void
.end method
.method public getAlpha()F
.registers 2
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
return v0
.end method
.method public getBounds(Landroid/graphics/Rect;IIII)V
.registers 6
return-void
.end method
.method public getGLId()Lcom/pinguo/album/opengles/GLId;
.registers 2
sget-object v0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGLId:Lcom/pinguo/album/opengles/GLId;
return-object v0
.end method
.method public initializeTexture(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/Bitmap;)V
.registers 7
const/4 v3, 0x0
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTarget()I
move-result v0
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getId()I
move-result v2
invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V
invoke-static {v0, v3, p2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
return-void
.end method
.method public initializeTextureSize(Lcom/pinguo/album/opengles/BasicTexture;II)V
.registers 14
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTarget()I
move-result v1
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getId()I
move-result v3
invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureWidth()I
move-result v4
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureHeight()I
move-result v5
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/4 v9, 0x0
move v3, p2
move v6, v2
move v7, p2
move v8, p3
invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
return-void
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
invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
mul-float/2addr v0, p1
iput v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
return-void
:cond_15
const/4 v0, 0x0
goto :goto_c
.end method
.method public multiplyMatrix([FI)V
.registers 9
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTempMatrix:[F
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
move v3, v1
move-object v4, p1
move v5, p2
invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
const/16 v3, 0x10
invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method public recoverFromLightCycle()V
.registers 1
return-void
.end method
.method public restore()V
.registers 4
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
move-result v1
if-eqz v1, :cond_e
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V
throw v1
:cond_e
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
invoke-virtual {v0, p0}, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;->restore(Lcom/pinguo/album/opengles/GLES11Canvas;)V
invoke-direct {p0, v0}, Lcom/pinguo/album/opengles/GLES11Canvas;->freeRestoreConfig(Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;)V
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
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTempMatrix:[F
move v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
iget-object v4, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
move-object v2, v0
move v3, v8
move v5, v1
move-object v6, v0
move v7, v1
invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_8
.end method
.method public save()V
.registers 2
const/4 v0, -0x1
invoke-virtual {p0, v0}, Lcom/pinguo/album/opengles/GLES11Canvas;->save(I)V
return-void
.end method
.method public save(I)V
.registers 7
const/4 v4, 0x0
invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES11Canvas;->obtainRestoreConfig()Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
move-result-object v0
and-int/lit8 v1, p1, 0x1
if-eqz v1, :cond_20
iget v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
iput v1, v0, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;->mAlpha:F
:goto_d
and-int/lit8 v1, p1, 0x2
if-eqz v1, :cond_25
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
iget-object v2, v0, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;->mMatrix:[F
const/16 v3, 0x10
invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_1a
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
:cond_20
const/high16 v1, -0x4080
iput v1, v0, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;->mAlpha:F
goto :goto_d
:cond_25
iget-object v1, v0, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;->mMatrix:[F
const/high16 v2, -0x80
aput v2, v1, v4
goto :goto_1a
.end method
.method public scale(FFF)V
.registers 6
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
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
invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V
iput p1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
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
invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTargetTexture:Lcom/pinguo/album/opengles/RawTexture;
if-nez v2, :cond_14
iput p1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mScreenWidth:I
iput p2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mScreenHeight:I
:cond_14
iput v6, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mAlpha:F
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
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
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V
iget-object v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mTargetTexture:Lcom/pinguo/album/opengles/RawTexture;
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
.method public setTextureParameters(Lcom/pinguo/album/opengles/BasicTexture;)V
.registers 11
const v8, 0x812f
const/4 v7, 0x0
const v6, 0x46180400
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getWidth()I
move-result v2
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getHeight()I
move-result v0
sget-object v3, Lcom/pinguo/album/opengles/GLES11Canvas;->sCropRect:[F
const/4 v4, 0x0
aput v4, v3, v7
sget-object v3, Lcom/pinguo/album/opengles/GLES11Canvas;->sCropRect:[F
const/4 v4, 0x1
int-to-float v5, v0
aput v5, v3, v4
sget-object v3, Lcom/pinguo/album/opengles/GLES11Canvas;->sCropRect:[F
const/4 v4, 0x2
int-to-float v5, v2
aput v5, v3, v4
sget-object v3, Lcom/pinguo/album/opengles/GLES11Canvas;->sCropRect:[F
const/4 v4, 0x3
neg-int v5, v0
int-to-float v5, v5
aput v5, v3, v4
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTarget()I
move-result v1
iget-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getId()I
move-result v4
invoke-interface {v3, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V
iget-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const v4, 0x8b9d
sget-object v5, Lcom/pinguo/album/opengles/GLES11Canvas;->sCropRect:[F
invoke-interface {v3, v1, v4, v5, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V
iget-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/16 v4, 0x2802
invoke-interface {v3, v1, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V
iget-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/16 v4, 0x2803
invoke-interface {v3, v1, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V
iget-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/16 v4, 0x2801
invoke-interface {v3, v1, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V
iget-object v3, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/16 v4, 0x2800
invoke-interface {v3, v1, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V
return-void
.end method
.method public texSubImage2D(Lcom/pinguo/album/opengles/BasicTexture;IILandroid/graphics/Bitmap;II)V
.registers 14
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTarget()I
move-result v0
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getId()I
move-result v2
invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V
const/4 v1, 0x0
move v2, p2
move v3, p3
move-object v4, p4
move v5, p5
move v6, p6
invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
return-void
.end method
.method public translate(FF)V
.registers 8
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
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
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
const/4 v1, 0x0
invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V
return-void
.end method
.method public unloadTexture(Lcom/pinguo/album/opengles/BasicTexture;)Z
.registers 5
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mUnboundTextures:Lcom/pinguo/album/utils/IntArray;
monitor-enter v1
:try_start_3
invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->isLoaded()Z
move-result v0
if-nez v0, :cond_c
monitor-exit v1
const/4 v0, 0x0
:goto_b
return v0
:cond_c
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas;->mUnboundTextures:Lcom/pinguo/album/utils/IntArray;
iget v2, p1, Lcom/pinguo/album/opengles/BasicTexture;->mId:I
invoke-virtual {v0, v2}, Lcom/pinguo/album/utils/IntArray;->add(I)V
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
.method public uploadBuffer(Ljava/nio/ByteBuffer;)I
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/pinguo/album/opengles/GLES11Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I
move-result v0
return v0
.end method
.method public uploadBuffer(Ljava/nio/FloatBuffer;)I
.registers 3
const/4 v0, 0x4
invoke-direct {p0, p1, v0}, Lcom/pinguo/album/opengles/GLES11Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I
move-result v0
return v0
.end method