.class abstract Lcom/pinguo/camera360/ui/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"
.field static final SCALE_RATE:F = 1.25f
.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"
.field protected mBaseMatrix:Landroid/graphics/Matrix;
.field protected final mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
.field private final mDisplayMatrix:Landroid/graphics/Matrix;
.field protected mHandler:Landroid/os/Handler;
.field private final mMatrixValues:[F
.field  mMaxZoom:F
.field private mOnLayoutRunnable:Ljava/lang/Runnable;
.field private mRecycler:Lcom/pinguo/camera360/ui/ImageViewTouchBase$Recycler;
.field protected mSuppMatrix:Landroid/graphics/Matrix;
.field  mThisHeight:I
.field  mThisWidth:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
const/4 v1, -0x1
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;
const/16 v0, 0x9
new-array v0, v0, [F
iput-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mMatrixValues:[F
new-instance v0, Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-direct {v0, v2}, Lcom/pinguo/camera360/ui/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
iput v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mThisWidth:I
iput v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mThisHeight:I
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mHandler:Landroid/os/Handler;
iput-object v2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;
invoke-direct {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, 0x0
const/4 v1, -0x1
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;
const/16 v0, 0x9
new-array v0, v0, [F
iput-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mMatrixValues:[F
new-instance v0, Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-direct {v0, v2}, Lcom/pinguo/camera360/ui/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
iput v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mThisWidth:I
iput v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mThisHeight:I
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mHandler:Landroid/os/Handler;
iput-object v2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;
invoke-direct {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->init()V
return-void
.end method
.method private getProperBaseMatrix(Lcom/pinguo/camera360/ui/RotateBitmap;Landroid/graphics/Matrix;)V
.registers 13
const/high16 v9, 0x4000
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getWidth()I
move-result v7
int-to-float v4, v7
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getHeight()I
move-result v7
int-to-float v3, v7
invoke-virtual {p1}, Lcom/pinguo/camera360/ui/RotateBitmap;->getWidth()I
move-result v7
int-to-float v5, v7
invoke-virtual {p1}, Lcom/pinguo/camera360/ui/RotateBitmap;->getHeight()I
move-result v7
int-to-float v0, v7
invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V
div-float v7, v4, v5
invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F
move-result v6
div-float v7, v3, v0
invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F
move-result v1
invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F
move-result v2
invoke-virtual {p1}, Lcom/pinguo/camera360/ui/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;
move-result-object v7
invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z
invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z
mul-float v7, v5, v2
sub-float v7, v4, v7
div-float/2addr v7, v9
mul-float v8, v0, v2
sub-float v8, v3, v8
div-float/2addr v8, v9
invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z
return-void
.end method
.method private init()V
.registers 2
sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
return-void
.end method
.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
.registers 6
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_d
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V
:cond_d
iget-object v2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-virtual {v2}, Lcom/pinguo/camera360/ui/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-virtual {v2, p1}, Lcom/pinguo/camera360/ui/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V
iget-object v2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-virtual {v2, p2}, Lcom/pinguo/camera360/ui/RotateBitmap;->setRotation(I)V
if-eqz v1, :cond_2a
if-eq v1, p1, :cond_2a
iget-object v2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mRecycler:Lcom/pinguo/camera360/ui/ImageViewTouchBase$Recycler;
if-eqz v2, :cond_2a
iget-object v2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mRecycler:Lcom/pinguo/camera360/ui/ImageViewTouchBase$Recycler;
invoke-interface {v2, v1}, Lcom/pinguo/camera360/ui/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V
:cond_2a
return-void
.end method
.method public center(ZZ)V
.registers 15
const/high16 v11, 0x4000
const/4 v10, 0x0
iget-object v8, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-virtual {v8}, Lcom/pinguo/camera360/ui/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v8
if-nez v8, :cond_c
:goto_b
return-void
:cond_c
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;
move-result-object v3
new-instance v4, Landroid/graphics/RectF;
iget-object v8, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-virtual {v8}, Lcom/pinguo/camera360/ui/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v8
invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I
move-result v8
int-to-float v8, v8
iget-object v9, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-virtual {v9}, Lcom/pinguo/camera360/ui/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v9
invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I
move-result v9
int-to-float v9, v9
invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V
invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z
invoke-virtual {v4}, Landroid/graphics/RectF;->height()F
move-result v2
invoke-virtual {v4}, Landroid/graphics/RectF;->width()F
move-result v7
const/4 v0, 0x0
const/4 v1, 0x0
if-eqz p2, :cond_4a
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getHeight()I
move-result v5
int-to-float v8, v5
cmpg-float v8, v2, v8
if-gez v8, :cond_67
int-to-float v8, v5
sub-float/2addr v8, v2
div-float/2addr v8, v11
iget v9, v4, Landroid/graphics/RectF;->top:F
sub-float v1, v8, v9
:goto_4a
:cond_4a
if-eqz p1, :cond_5c
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getWidth()I
move-result v6
int-to-float v8, v6
cmpg-float v8, v7, v8
if-gez v8, :cond_82
int-to-float v8, v6
sub-float/2addr v8, v7
div-float/2addr v8, v11
iget v9, v4, Landroid/graphics/RectF;->left:F
sub-float v0, v8, v9
:goto_5c
:cond_5c
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->postTranslate(FF)V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;
move-result-object v8
invoke-virtual {p0, v8}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V
goto :goto_b
:cond_67
iget v8, v4, Landroid/graphics/RectF;->top:F
cmpl-float v8, v8, v10
if-lez v8, :cond_71
iget v8, v4, Landroid/graphics/RectF;->top:F
neg-float v1, v8
goto :goto_4a
:cond_71
iget v8, v4, Landroid/graphics/RectF;->bottom:F
int-to-float v9, v5
cmpg-float v8, v8, v9
if-gez v8, :cond_4a
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getHeight()I
move-result v8
int-to-float v8, v8
iget v9, v4, Landroid/graphics/RectF;->bottom:F
sub-float v1, v8, v9
goto :goto_4a
:cond_82
iget v8, v4, Landroid/graphics/RectF;->left:F
cmpl-float v8, v8, v10
if-lez v8, :cond_8c
iget v8, v4, Landroid/graphics/RectF;->left:F
neg-float v0, v8
goto :goto_5c
:cond_8c
iget v8, v4, Landroid/graphics/RectF;->right:F
int-to-float v9, v6
cmpg-float v8, v8, v9
if-gez v8, :cond_5c
int-to-float v8, v6
iget v9, v4, Landroid/graphics/RectF;->right:F
sub-float v0, v8, v9
goto :goto_5c
.end method
.method public clear()V
.registers 3
const/4 v0, 0x0
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
return-void
.end method
.method protected getImageViewMatrix()Landroid/graphics/Matrix;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;
iget-object v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;
invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;
iget-object v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;
invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z
iget-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;
return-object v0
.end method
.method public getScale()F
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F
move-result v0
return v0
.end method
.method protected getScale(Landroid/graphics/Matrix;)F
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F
move-result v0
return v0
.end method
.method protected getValue(Landroid/graphics/Matrix;I)F
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mMatrixValues:[F
invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mMatrixValues:[F
aget v0, v0, p2
return v0
.end method
.method protected maxZoom()F
.registers 6
iget-object v3, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v3
if-nez v3, :cond_b
const/high16 v2, 0x3f80
:goto_a
return v2
:cond_b
iget-object v3, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/RotateBitmap;->getWidth()I
move-result v3
int-to-float v3, v3
iget v4, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mThisWidth:I
int-to-float v4, v4
div-float v1, v3, v4
iget-object v3, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/RotateBitmap;->getHeight()I
move-result v3
int-to-float v3, v3
iget v4, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mThisHeight:I
int-to-float v4, v4
div-float v0, v3, v4
invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F
move-result v3
const/high16 v4, 0x4080
mul-float v2, v3, v4
goto :goto_a
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 5
const/high16 v1, 0x3f80
const/4 v0, 0x4
if-ne p1, v0, :cond_12
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getScale()F
move-result v0
cmpl-float v0, v0, v1
if-lez v0, :cond_12
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->zoomTo(F)V
const/4 v0, 0x1
:goto_11
return v0
:cond_12
invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_11
.end method
.method protected onLayout(ZIIII)V
.registers 9
invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V
sub-int v1, p4, p2
iput v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mThisWidth:I
sub-int v1, p5, p3
iput v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mThisHeight:I
iget-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;
if-eqz v0, :cond_15
const/4 v1, 0x0
iput-object v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:cond_15
iget-object v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_2b
iget-object v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
iget-object v2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;
invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getProperBaseMatrix(Lcom/pinguo/camera360/ui/RotateBitmap;Landroid/graphics/Matrix;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V
:cond_2b
return-void
.end method
.method protected panBy(FF)V
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->postTranslate(FF)V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V
return-void
.end method
.method protected postTranslate(FF)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;
invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z
return-void
.end method
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V
return-void
.end method
.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
.registers 4
new-instance v0, Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/ui/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V
invoke-virtual {p0, v0, p2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/pinguo/camera360/ui/RotateBitmap;Z)V
return-void
.end method
.method public setImageRotateBitmapResetBase(Lcom/pinguo/camera360/ui/RotateBitmap;Z)V
.registers 6
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getWidth()I
move-result v0
if-gtz v0, :cond_e
new-instance v1, Lcom/pinguo/camera360/ui/ImageViewTouchBase$1;
invoke-direct {v1, p0, p1, p2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase$1;-><init>(Lcom/pinguo/camera360/ui/ImageViewTouchBase;Lcom/pinguo/camera360/ui/RotateBitmap;Z)V
iput-object v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;
:goto_d
return-void
:cond_e
invoke-virtual {p1}, Lcom/pinguo/camera360/ui/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_39
iget-object v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;
invoke-direct {p0, p1, v1}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getProperBaseMatrix(Lcom/pinguo/camera360/ui/RotateBitmap;Landroid/graphics/Matrix;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/ui/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {p1}, Lcom/pinguo/camera360/ui/RotateBitmap;->getRotation()I
move-result v2
invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V
:goto_24
if-eqz p2, :cond_2b
iget-object v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;
invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V
:cond_2b
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->maxZoom()F
move-result v1
iput v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mMaxZoom:F
goto :goto_d
:cond_39
iget-object v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;
invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_24
.end method
.method protected zoomIn()V
.registers 2
const/high16 v0, 0x3fa0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->zoomIn(F)V
return-void
.end method
.method protected zoomIn(F)V
.registers 7
const/high16 v4, 0x4000
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getScale()F
move-result v2
iget v3, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mMaxZoom:F
cmpl-float v2, v2, v3
if-ltz v2, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-virtual {v2}, Lcom/pinguo/camera360/ui/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_c
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getWidth()I
move-result v2
int-to-float v2, v2
div-float v0, v2, v4
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getHeight()I
move-result v2
int-to-float v2, v2
div-float v1, v2, v4
iget-object v2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;
invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V
goto :goto_c
.end method
.method protected zoomOut()V
.registers 2
const/high16 v0, 0x3fa0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->zoomOut(F)V
return-void
.end method
.method protected zoomOut(F)V
.registers 9
const/4 v6, 0x1
const/high16 v4, 0x4000
const/high16 v5, 0x3f80
iget-object v3, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v3
if-nez v3, :cond_e
:goto_d
return-void
:cond_e
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getWidth()I
move-result v3
int-to-float v3, v3
div-float v0, v3, v4
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getHeight()I
move-result v3
int-to-float v3, v3
div-float v1, v3, v4
new-instance v2, Landroid/graphics/Matrix;
iget-object v3, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;
invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V
div-float v3, v5, p1
div-float v4, v5, p1
invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F
move-result v3
cmpg-float v3, v3, v5
if-gez v3, :cond_42
iget-object v3, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;
invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V
:goto_37
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V
invoke-virtual {p0, v6, v6}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->center(ZZ)V
goto :goto_d
:cond_42
iget-object v3, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;
div-float v4, v5, p1
div-float/2addr v5, p1
invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z
goto :goto_37
.end method
.method protected zoomTo(F)V
.registers 6
const/high16 v3, 0x4000
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getWidth()I
move-result v2
int-to-float v2, v2
div-float v0, v2, v3
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getHeight()I
move-result v2
int-to-float v2, v2
div-float v1, v2, v3
invoke-virtual {p0, p1, v0, v1}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->zoomTo(FFF)V
return-void
.end method
.method protected zoomTo(FFF)V
.registers 8
const/4 v3, 0x1
iget v2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mMaxZoom:F
cmpl-float v2, p1, v2
if-lez v2, :cond_9
iget p1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mMaxZoom:F
:cond_9
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getScale()F
move-result v1
div-float v0, p1, v1
iget-object v2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;
invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V
invoke-virtual {p0, v3, v3}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->center(ZZ)V
return-void
.end method
.method protected zoomTo(FFFF)V
.registers 15
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getScale()F
move-result v0
sub-float v0, p1, v0
div-float v6, v0, p4
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getScale()F
move-result v5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-object v9, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->mHandler:Landroid/os/Handler;
new-instance v0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;
move-object v1, p0
move v2, p4
move v7, p2
move v8, p3
invoke-direct/range {v0 .. v8}, Lcom/pinguo/camera360/ui/ImageViewTouchBase$2;-><init>(Lcom/pinguo/camera360/ui/ImageViewTouchBase;FJFFFF)V
invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method