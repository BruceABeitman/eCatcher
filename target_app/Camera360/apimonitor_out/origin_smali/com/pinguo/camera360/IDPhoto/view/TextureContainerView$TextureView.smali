.class Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;
.super Ljava/lang/Object;
.source "TextureContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextureView"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field bitmapResId:I

.field matrix:Landroid/graphics/Matrix;

.field tempMatrixForCal:Landroid/graphics/Matrix;

.field tempMatrixValuesForCal:[F

.field textureRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;Landroid/graphics/Bitmap;)V
    .registers 7

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->this$0:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    #calls: Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->generateTextureViewMatrix(II)Landroid/graphics/Matrix;
    invoke-static {p1, v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->access$0(Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;II)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->textureRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->tempMatrixForCal:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->tempMatrixValuesForCal:[F

    return-void
.end method


# virtual methods
.method public contains(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->textureRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->textureRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->textureRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public scale(F)V
    .registers 11

    const/4 v6, 0x0

    const-wide/high16 v7, 0x4000

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->textureRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->textureRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->tempMatrixForCal:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->tempMatrixForCal:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->textureRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->textureRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v3, p1, p1, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->tempMatrixForCal:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->tempMatrixValuesForCal:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->tempMatrixValuesForCal:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->tempMatrixValuesForCal:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v2, v3

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getClothesMinScale()F

    move-result v1

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getClothesMaxScale()F

    move-result v0

    cmpg-float v3, v2, v1

    if-ltz v3, :cond_66

    cmpl-float v3, v2, v0

    if-lez v3, :cond_67

    :cond_66
    :goto_66
    return-void

    :cond_67
    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->textureRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->textureRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v3, p1, p1, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->this$0:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->postInvalidate()V

    goto :goto_66
.end method

.method public translate(FF)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->tempMatrixForCal:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->tempMatrixForCal:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->textureRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->tempMatrixForCal:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->textureRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->this$0:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;

    #getter for: Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->access$1(Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->textureRect:Landroid/graphics/RectF;

    const/high16 v2, 0x3e80

    #calls: Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->isIntersectRange(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z
    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->access$2(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z

    move-result v0

    if-nez v0, :cond_38

    :goto_37
    return-void

    :cond_38
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->this$0:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->postInvalidate()V

    goto :goto_37
.end method
