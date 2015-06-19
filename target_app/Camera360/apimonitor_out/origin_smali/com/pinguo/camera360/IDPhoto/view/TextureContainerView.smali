.class public Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
.super Landroid/view/View;
.source "TextureContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;
    }
.end annotation


# static fields
.field private static final DRAG:I = 0x1

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x2


# instance fields
.field private mContentRectF:Landroid/graphics/RectF;

.field private mCurMode:I

.field private mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

.field private mGestureEnabled:Z

.field private mLastDistance:F

.field private mLastPoint:Landroid/graphics/PointF;

.field private mLastTextureViewMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mGestureEnabled:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mGestureEnabled:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mGestureEnabled:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastPoint:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;II)Landroid/graphics/Matrix;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->generateTextureViewMatrix(II)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;)Landroid/graphics/RectF;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$2(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->isIntersectRange(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z

    move-result v0

    return v0
.end method

.method private static distance(Landroid/view/MotionEvent;)F
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private generateTextureViewMatrix(II)Landroid/graphics/Matrix;
    .registers 15

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    if-eqz v7, :cond_5a

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v7, v1, v10

    if-eqz v7, :cond_5a

    cmpl-float v7, v0, v10

    if-eqz v7, :cond_5a

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    int-to-float v8, p1

    sub-float v8, v1, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float v5, v7, v8

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v0

    int-to-float v8, p2

    sub-float v6, v7, v8

    int-to-float v7, p1

    cmpl-float v7, v1, v7

    if-eqz v7, :cond_57

    int-to-float v7, p1

    div-float v4, v1, v7

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v7, 0x2

    new-array v2, v7, [F

    const/4 v7, 0x0

    aput v10, v2, v7

    int-to-float v7, p2

    aput v7, v2, v11

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    iget v5, v7, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v0

    aget v8, v2, v11

    sub-float v6, v7, v8

    :cond_57
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5a
    return-object v3
.end method

.method private static isIntersectRange(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z
    .registers 10

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v2, v3, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v0, v3, p2

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget v3, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v2

    iget v4, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iget v5, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v2

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget v3, p0, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_42

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_42

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_42

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_42

    const/4 v3, 0x1

    :goto_41
    return v3

    :cond_42
    const/4 v3, 0x0

    goto :goto_41
.end method

.method private restLastMatrix()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastTextureViewMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private setTexture(Landroid/graphics/Bitmap;)V
    .registers 4

    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->matrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastTextureViewMatrix:Landroid/graphics/Matrix;

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->postInvalidate()V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    iput-object p1, v0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->bitmap:Landroid/graphics/Bitmap;

    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->postInvalidate()V

    goto :goto_12

    :cond_1f
    new-instance v0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    invoke-direct {v0, p0, p1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;-><init>(Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastTextureViewMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastTextureViewMatrix:Landroid/graphics/Matrix;

    iput-object v1, v0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->matrix:Landroid/graphics/Matrix;

    goto :goto_1b
.end method


# virtual methods
.method public addTexture2BgBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    if-eqz v5, :cond_56

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    if-eqz v5, :cond_56

    :try_start_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v5

    if-eqz v5, :cond_4d

    move-object v4, p1

    :goto_f
    if-eqz v4, :cond_56

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    new-instance v2, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v3, v2, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    iget-object v5, v5, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    iget-object v6, v6, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->matrix:Landroid/graphics/Matrix;

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_4c
    return-object v4

    :cond_4d
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_53} :catch_55

    move-result-object v4

    goto :goto_f

    :catch_55
    move-exception v5

    :cond_56
    move-object v4, p1

    goto :goto_4c
.end method

.method public getCurTextureBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->bitmap:Landroid/graphics/Bitmap;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getCurTextureMatrix()Landroid/graphics/Matrix;
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    if-eqz v1, :cond_11

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    iget-object v1, v1, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getCurTextureResId()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    iget v0, v0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->bitmapResId:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public hasTexture()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :cond_10
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    iget-object v1, v1, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->matrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_7c

    :cond_c
    :goto_c
    :pswitch_c
    move v4, v5

    :goto_d
    return v4

    :pswitch_e
    iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    invoke-virtual {v6, p1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->contains(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-boolean v6, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mGestureEnabled:Z

    if-nez v6, :cond_21

    :cond_1e
    iput v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurMode:I

    goto :goto_d

    :cond_21
    iput v5, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurMode:I

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_c

    :pswitch_31
    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurMode:I

    if-ne v4, v5, :cond_5c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v0, v4, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v1, v4, v6

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    invoke-virtual {v4, v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->translate(FF)V

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_c

    :cond_5c
    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurMode:I

    if-ne v4, v7, :cond_c

    invoke-static {p1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->distance(Landroid/view/MotionEvent;)F

    move-result v2

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastDistance:F

    div-float v3, v2, v4

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    invoke-virtual {v4, v3}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->scale(F)V

    iput v2, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastDistance:F

    goto :goto_c

    :pswitch_70
    iput v7, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurMode:I

    invoke-static {p1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->distance(Landroid/view/MotionEvent;)F

    move-result v4

    iput v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mLastDistance:F

    goto :goto_c

    :pswitch_79
    iput v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurMode:I

    goto :goto_c

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_e
        :pswitch_79
        :pswitch_31
        :pswitch_79
        :pswitch_c
        :pswitch_70
        :pswitch_79
    .end packed-switch
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setTexture(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->restLastMatrix()V

    return-void
.end method

.method public setContentRectF(Landroid/graphics/RectF;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mContentRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public setGestureEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mGestureEnabled:Z

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->hasTexture()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->postInvalidate()V

    :cond_12
    return-void
.end method

.method public setTextureRes(I)V
    .registers 8

    const/4 v4, 0x0

    if-gez p1, :cond_7

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setTexture(Landroid/graphics/Bitmap;)V

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :try_start_11
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_40
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_37

    move-result-object v0

    if-eqz v1, :cond_25

    :try_start_22
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_49

    :cond_25
    :goto_25
    if-nez v0, :cond_2b

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2b
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setTexture(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->mCurTextureView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;

    iput p1, v4, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView$TextureView;->bitmapResId:I

    goto :goto_6

    :catch_37
    move-exception v4

    if-eqz v1, :cond_25

    :try_start_3a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_25

    :catch_3e
    move-exception v4

    goto :goto_25

    :catchall_40
    move-exception v4

    if-eqz v1, :cond_46

    :try_start_43
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    throw v4

    :catch_47
    move-exception v5

    goto :goto_46

    :catch_49
    move-exception v4

    goto :goto_25
.end method
