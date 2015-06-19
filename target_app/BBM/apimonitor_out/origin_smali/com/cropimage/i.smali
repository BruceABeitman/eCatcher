.class abstract Lcom/cropimage/i;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:[F

.field private c:Lcom/cropimage/l;

.field private d:Ljava/lang/Runnable;

.field protected f:Landroid/graphics/Matrix;

.field protected g:Landroid/graphics/Matrix;

.field protected final h:Lcom/cropimage/m;

.field i:I

.field j:I

.field k:F

.field protected l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cropimage/i;->f:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cropimage/i;->g:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cropimage/i;->a:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cropimage/i;->b:[F

    new-instance v0, Lcom/cropimage/m;

    invoke-direct {v0, v2}, Lcom/cropimage/m;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/cropimage/i;->h:Lcom/cropimage/m;

    iput v1, p0, Lcom/cropimage/i;->i:I

    iput v1, p0, Lcom/cropimage/i;->j:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cropimage/i;->l:Landroid/os/Handler;

    iput-object v2, p0, Lcom/cropimage/i;->d:Ljava/lang/Runnable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/cropimage/i;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cropimage/i;->f:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cropimage/i;->g:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cropimage/i;->a:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cropimage/i;->b:[F

    new-instance v0, Lcom/cropimage/m;

    invoke-direct {v0, v2}, Lcom/cropimage/m;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/cropimage/i;->h:Lcom/cropimage/m;

    iput v1, p0, Lcom/cropimage/i;->i:I

    iput v1, p0, Lcom/cropimage/i;->j:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cropimage/i;->l:Landroid/os/Handler;

    iput-object v2, p0, Lcom/cropimage/i;->d:Ljava/lang/Runnable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/cropimage/i;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/cropimage/i;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_d
    iget-object v0, p0, Lcom/cropimage/i;->h:Lcom/cropimage/m;

    iget-object v0, v0, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/cropimage/i;->h:Lcom/cropimage/m;

    iput-object p1, v1, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/cropimage/i;->h:Lcom/cropimage/m;

    iput p2, v1, Lcom/cropimage/m;->b:I

    if-eqz v0, :cond_23

    if-eq v0, p1, :cond_23

    iget-object v0, p0, Lcom/cropimage/i;->c:Lcom/cropimage/l;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/cropimage/i;->c:Lcom/cropimage/l;

    :cond_23
    return-void
.end method

.method private a(Lcom/cropimage/m;Landroid/graphics/Matrix;)V
    .registers 12

    const/high16 v6, 0x4040

    const/high16 v8, 0x4000

    invoke-virtual {p0}, Lcom/cropimage/i;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/cropimage/i;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/cropimage/m;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/cropimage/m;->a()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    div-float v4, v0, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v6, p1, Lcom/cropimage/m;->b:I

    if-eqz v6, :cond_62

    iget-object v6, p1, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p1, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v6, p1, Lcom/cropimage/m;->b:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p1}, Lcom/cropimage/m;->b()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/cropimage/m;->a()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_62
    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 8

    const/high16 v6, 0x4000

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/cropimage/i;->h:Lcom/cropimage/m;

    iget-object v0, v0, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/cropimage/i;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/cropimage/i;->h:Lcom/cropimage/m;

    iget-object v3, v3, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/cropimage/i;->h:Lcom/cropimage/m;

    iget-object v4, v4, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0}, Lcom/cropimage/i;->getHeight()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_5a

    int-to-float v4, v4

    sub-float v0, v4, v0

    div-float/2addr v0, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    :goto_40
    invoke-virtual {p0}, Lcom/cropimage/i;->getWidth()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_74

    int-to-float v1, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    :cond_4f
    :goto_4f
    invoke-virtual {p0, v1, v0}, Lcom/cropimage/i;->a(FF)V

    invoke-virtual {p0}, Lcom/cropimage/i;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cropimage/i;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_9

    :cond_5a
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_64

    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_40

    :cond_64
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_8a

    invoke-virtual {p0}, Lcom/cropimage/i;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    goto :goto_40

    :cond_74
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_7e

    iget v1, v2, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_4f

    :cond_7e
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4f

    int-to-float v1, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    goto :goto_4f

    :cond_8a
    move v0, v1

    goto :goto_40
.end method

.method protected a(FF)V
    .registers 4

    iget-object v0, p0, Lcom/cropimage/i;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method protected a(FFF)V
    .registers 6

    iget v0, p0, Lcom/cropimage/i;->k:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    iget p1, p0, Lcom/cropimage/i;->k:F

    :cond_8
    invoke-virtual {p0}, Lcom/cropimage/i;->getScale()F

    move-result v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/cropimage/i;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/cropimage/i;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cropimage/i;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/cropimage/i;->a()V

    return-void
.end method

.method protected final b(FF)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/cropimage/i;->a(FF)V

    invoke-virtual {p0}, Lcom/cropimage/i;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cropimage/i;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected final b(FFF)V
    .registers 13

    invoke-virtual {p0}, Lcom/cropimage/i;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    const/high16 v1, 0x4396

    div-float v5, v0, v1

    invoke-virtual {p0}, Lcom/cropimage/i;->getScale()F

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v8, p0, Lcom/cropimage/i;->l:Landroid/os/Handler;

    new-instance v0, Lcom/cropimage/k;

    move-object v1, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cropimage/k;-><init>(Lcom/cropimage/i;JFFFF)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .registers 3

    iget-object v0, p0, Lcom/cropimage/i;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/cropimage/i;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/cropimage/i;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/cropimage/i;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/cropimage/i;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .registers 3

    iget-object v0, p0, Lcom/cropimage/i;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/cropimage/i;->b:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/cropimage/i;->b:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7

    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/cropimage/i;->getScale()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2c

    invoke-virtual {p0}, Lcom/cropimage/i;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/cropimage/i;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/cropimage/i;->a(FFF)V

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_2b
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/cropimage/i;->i:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/cropimage/i;->j:I

    iget-object v0, p0, Lcom/cropimage/i;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cropimage/i;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_15
    iget-object v0, p0, Lcom/cropimage/i;->h:Lcom/cropimage/m;

    iget-object v0, v0, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/cropimage/i;->h:Lcom/cropimage/m;

    iget-object v1, p0, Lcom/cropimage/i;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/cropimage/i;->a(Lcom/cropimage/m;Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/cropimage/i;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cropimage/i;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_29
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cropimage/i;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .registers 4

    new-instance v0, Lcom/cropimage/m;

    invoke-direct {v0, p1}, Lcom/cropimage/m;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/cropimage/i;->setImageRotateBitmapResetBase(Lcom/cropimage/m;Z)V

    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/cropimage/m;Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/cropimage/i;->getWidth()I

    move-result v0

    if-gtz v0, :cond_e

    new-instance v0, Lcom/cropimage/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/cropimage/j;-><init>(Lcom/cropimage/i;Lcom/cropimage/m;Z)V

    iput-object v0, p0, Lcom/cropimage/i;->d:Ljava/lang/Runnable;

    :goto_d
    return-void

    :cond_e
    iget-object v0, p1, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/cropimage/i;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/cropimage/i;->a(Lcom/cropimage/m;Landroid/graphics/Matrix;)V

    iget-object v0, p1, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/cropimage/m;->b:I

    invoke-direct {p0, v0, v1}, Lcom/cropimage/i;->a(Landroid/graphics/Bitmap;I)V

    :goto_1e
    if-eqz p2, :cond_25

    iget-object v0, p0, Lcom/cropimage/i;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    :cond_25
    invoke-virtual {p0}, Lcom/cropimage/i;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cropimage/i;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/cropimage/i;->h:Lcom/cropimage/m;

    iget-object v0, v0, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_41

    const/high16 v0, 0x3f80

    :goto_34
    iput v0, p0, Lcom/cropimage/i;->k:F

    goto :goto_d

    :cond_37
    iget-object v0, p0, Lcom/cropimage/i;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cropimage/i;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1e

    :cond_41
    iget-object v0, p0, Lcom/cropimage/i;->h:Lcom/cropimage/m;

    invoke-virtual {v0}, Lcom/cropimage/m;->b()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/cropimage/i;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/cropimage/i;->h:Lcom/cropimage/m;

    invoke-virtual {v1}, Lcom/cropimage/m;->a()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/cropimage/i;->j:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    goto :goto_34
.end method

.method public setRecycler(Lcom/cropimage/l;)V
    .registers 2

    iput-object p1, p0, Lcom/cropimage/i;->c:Lcom/cropimage/l;

    return-void
.end method
