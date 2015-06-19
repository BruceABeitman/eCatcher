.class Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/cloud/cropImage/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFaces:[Landroid/media/FaceDetector$Face;

.field mImageMatrix:Landroid/graphics/Matrix;

.field mNumFaces:I

.field mScale:F

.field final synthetic this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mScale:F

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;Landroid/media/FaceDetector$Face;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->handleFace(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->makeDefault()V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    return-object v0
.end method

.method private handleFace(Landroid/media/FaceDetector$Face;)V
    .registers 15

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v4, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v10, v1, 0x2

    invoke-virtual {p1, v7}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->x:F

    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->y:F

    iget v1, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v1

    iget v1, v7, Landroid/graphics/PointF;->y:F

    float-to-int v9, v1

    new-instance v0, Lcom/pinguo/camera360/ui/HighlightView;

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Lcom/pinguo/camera360/ui/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/HighlightView;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v4, v9

    int-to-float v5, v8

    int-to-float v12, v9

    invoke-direct {v3, v1, v4, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    neg-int v1, v10

    int-to-float v1, v1

    neg-int v4, v10

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget v1, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6c

    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_6c
    iget v1, v3, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_7c

    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_7c
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_94

    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_94
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_ac

    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_ac
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$2(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Z

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$3(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I

    move-result v5

    if-eqz v5, :cond_d2

    iget-object v5, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectY:I
    invoke-static {v5}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$4(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I

    move-result v5

    if-eqz v5, :cond_d2

    const/4 v5, 0x1

    :goto_c5
    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/ui/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Lcom/pinguo/camera360/ui/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/ui/CropImageView;->add(Lcom/pinguo/camera360/ui/HighlightView;)V

    return-void

    :cond_d2
    const/4 v5, 0x0

    goto :goto_c5
.end method

.method private makeDefault()V
    .registers 15

    const/4 v5, 0x0

    new-instance v0, Lcom/pinguo/camera360/ui/HighlightView;

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Lcom/pinguo/camera360/ui/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/HighlightView;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v7, v1, 0x5

    move v6, v7

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$3(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$4(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$3(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$4(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_96

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$4(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectX:I
    invoke-static {v4}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$3(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    :cond_5b
    :goto_5b
    sub-int v1, v9, v7

    div-int/lit8 v10, v1, 0x2

    sub-int v1, v8, v6

    div-int/lit8 v11, v1, 0x2

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v4, v11

    add-int v12, v10, v7

    int-to-float v12, v12

    add-int v13, v11, v6

    int-to-float v13, v13

    invoke-direct {v3, v1, v4, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$2(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Z

    move-result v4

    iget-object v12, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectX:I
    invoke-static {v12}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$3(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I

    move-result v12

    if-eqz v12, :cond_89

    iget-object v12, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectY:I
    invoke-static {v12}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$4(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I

    move-result v12

    if-eqz v12, :cond_89

    const/4 v5, 0x1

    :cond_89
    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/ui/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Lcom/pinguo/camera360/ui/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/ui/CropImageView;->add(Lcom/pinguo/camera360/ui/HighlightView;)V

    return-void

    :cond_96
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$3(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I

    move-result v1

    mul-int/2addr v1, v6

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$4(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    goto :goto_5b
.end method

.method private prepareBitmap()Landroid/graphics/Bitmap;
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v7, 0x0

    :goto_a
    return-object v7

    :cond_b
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_29

    const/high16 v0, 0x4380

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mScale:F

    :cond_29
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mScale:F

    iget v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mScale:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_a
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Lcom/pinguo/camera360/ui/CropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/ui/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->prepareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mScale:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mScale:F

    if-eqz v1, :cond_39

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mDoFaceDetection:Z
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$5(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_39

    new-instance v0, Landroid/media/FaceDetector;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v0, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v0, v1, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v2

    iput v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mNumFaces:I

    :cond_39
    if-eqz v1, :cond_46

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v1, v2, :cond_46

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_46
    iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$6(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;-><init>(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
