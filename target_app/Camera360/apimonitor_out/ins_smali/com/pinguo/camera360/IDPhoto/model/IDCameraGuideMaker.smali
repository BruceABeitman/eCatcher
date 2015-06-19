.class public Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;
.super Ljava/lang/Object;
.source "IDCameraGuideMaker.java"
.field private static final EVALUATE_HEAD_TOP_ERROR:I = 0x32
.field private static final GUIDE_LINE_STROKE_WIDTH:I = 0xa
.field private mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
.field private mFaceCenterX:F
.field private mHeight:I
.field private mPaint:Landroid/graphics/Paint;
.field private mWidth:I
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
const/high16 v1, 0x4120
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
return-void
.end method
.method private drawBg(Landroid/graphics/Canvas;)V
.registers 3
const v0, -0x777778
invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V
return-void
.end method
.method private drawBottom(Landroid/graphics/Canvas;)V
.registers 14
iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
const/4 v8, -0x1
invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V
iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
const v1, 0x3f666666
const v0, 0x3e4ccccd
iget v7, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mWidth:I
int-to-float v7, v7
mul-float/2addr v7, v1
float-to-int v6, v7
iget v7, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mHeight:I
int-to-float v7, v7
mul-float/2addr v7, v0
float-to-int v2, v7
iget v7, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mWidth:I
sub-int/2addr v7, v6
div-int/lit8 v3, v7, 0x2
iget v7, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mHeight:I
sub-int v5, v7, v2
new-instance v4, Landroid/graphics/RectF;
int-to-float v7, v3
div-int/lit8 v8, v2, 0x2
add-int/2addr v8, v5
int-to-float v8, v8
add-int v9, v3, v6
int-to-float v9, v9
iget v10, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mHeight:I
div-int/lit8 v11, v2, 0x2
add-int/2addr v10, v11
int-to-float v10, v10
invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V
iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
return-void
.end method
.method private drawEyeCross(Landroid/graphics/Canvas;)V
.registers 8
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v0, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeX:F
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mWidth:I
int-to-float v1, v1
mul-float/2addr v1, v0
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v0, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mHeight:I
int-to-float v2, v2
mul-float/2addr v2, v0
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v0, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeX:F
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mWidth:I
int-to-float v3, v3
mul-float/2addr v3, v0
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v0, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeY:F
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mHeight:I
int-to-float v4, v4
mul-float/2addr v4, v0
iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFaceCenterX:F
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v0, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->headTop:F
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mHeight:I
int-to-float v2, v2
mul-float/2addr v2, v0
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFaceCenterX:F
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mHeight:I
int-to-float v4, v0
iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
return-void
.end method
.method private drawHeadArc(Landroid/graphics/Canvas;)V
.registers 8
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
const/high16 v4, -0x100
invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v3, v3, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->headTop:F
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mHeight:I
int-to-float v4, v4
mul-float/2addr v3, v4
const/high16 v4, 0x4248
sub-float v1, v3, v4
cmpl-float v3, v1, v2
if-ltz v3, :cond_50
:goto_1f
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFaceCenterX:F
invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v3, v3, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mHeight:I
int-to-float v4, v4
mul-float/2addr v3, v4
invoke-virtual {v0, v2, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFaceCenterX:F
invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mWidth:I
int-to-float v2, v2
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mWidth:I
int-to-float v3, v3
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v4, v4, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeY:F
iget v5, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mHeight:I
int-to-float v5, v5
mul-float/2addr v4, v5
invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
return-void
:cond_50
move v1, v2
goto :goto_1f
.end method
.method private drawTopRect(Landroid/graphics/Canvas;)V
.registers 8
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
const/high16 v2, -0x100
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v0, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->headTop:F
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mHeight:I
int-to-float v2, v2
mul-float/2addr v0, v2
const/high16 v2, 0x4248
sub-float v4, v0, v2
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mWidth:I
int-to-float v3, v0
iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mPaint:Landroid/graphics/Paint;
move-object v0, p1
move v2, v1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
return-void
.end method
.method public makeGuideBitmap(IILcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;)Landroid/graphics/Bitmap;
.registers 9
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
iput p1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mWidth:I
iput p2, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mHeight:I
iput-object p3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v2, p3, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeX:F
iget v3, p3, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeX:F
iget v4, p3, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeX:F
sub-float/2addr v3, v4
const/high16 v4, 0x4000
div-float/2addr v3, v4
add-float/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mWidth:I
int-to-float v3, v3
mul-float/2addr v2, v3
iput v2, p0, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->mFaceCenterX:F
new-instance v1, Landroid/graphics/Canvas;
invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
invoke-direct {p0, v1}, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->drawBg(Landroid/graphics/Canvas;)V
invoke-direct {p0, v1}, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->drawTopRect(Landroid/graphics/Canvas;)V
invoke-direct {p0, v1}, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->drawHeadArc(Landroid/graphics/Canvas;)V
invoke-direct {p0, v1}, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->drawEyeCross(Landroid/graphics/Canvas;)V
invoke-direct {p0, v1}, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->drawBottom(Landroid/graphics/Canvas;)V
return-object v0
.end method