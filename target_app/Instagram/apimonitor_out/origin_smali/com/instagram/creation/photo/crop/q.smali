.class abstract Lcom/instagram/creation/photo/crop/q;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:[F

.field private c:Lcom/instagram/creation/photo/crop/t;

.field private d:Ljava/lang/Runnable;

.field protected f:Landroid/graphics/Matrix;

.field protected g:Landroid/graphics/Matrix;

.field protected final h:Lcom/instagram/creation/photo/b/f;

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

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->f:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->g:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->b:[F

    new-instance v0, Lcom/instagram/creation/photo/b/f;

    invoke-direct {v0, v2}, Lcom/instagram/creation/photo/b/f;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->h:Lcom/instagram/creation/photo/b/f;

    iput v1, p0, Lcom/instagram/creation/photo/crop/q;->i:I

    iput v1, p0, Lcom/instagram/creation/photo/crop/q;->j:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/os/Handler;

    iput-object v2, p0, Lcom/instagram/creation/photo/crop/q;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->f:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->g:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->b:[F

    new-instance v0, Lcom/instagram/creation/photo/b/f;

    invoke-direct {v0, v2}, Lcom/instagram/creation/photo/b/f;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->h:Lcom/instagram/creation/photo/b/f;

    iput v1, p0, Lcom/instagram/creation/photo/crop/q;->i:I

    iput v1, p0, Lcom/instagram/creation/photo/crop/q;->j:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/os/Handler;

    iput-object v2, p0, Lcom/instagram/creation/photo/crop/q;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->e()V

    return-void
.end method

.method private a(Landroid/graphics/Matrix;)F
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->b:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->b:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private a()V
    .registers 3

    new-instance v0, Lcom/instagram/creation/photo/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/creation/photo/b/f;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/photo/crop/q;->a(Lcom/instagram/creation/photo/b/f;Z)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_d
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->h:Lcom/instagram/creation/photo/b/f;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/b/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->h:Lcom/instagram/creation/photo/b/f;

    invoke-virtual {v1, p1}, Lcom/instagram/creation/photo/b/f;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->h:Lcom/instagram/creation/photo/b/f;

    invoke-virtual {v1, p2}, Lcom/instagram/creation/photo/b/f;->a(I)V

    if-eqz v0, :cond_27

    if-eq v0, p1, :cond_27

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->c:Lcom/instagram/creation/photo/crop/t;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->c:Lcom/instagram/creation/photo/crop/t;

    :cond_27
    return-void
.end method

.method private a(Lcom/instagram/creation/photo/b/f;Landroid/graphics/Matrix;)V
    .registers 11

    const/high16 v7, 0x4040

    const/high16 v6, 0x4000

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/instagram/creation/photo/b/f;->e()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/instagram/creation/photo/b/f;->d()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    div-float v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float v5, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {p1}, Lcom/instagram/creation/photo/b/f;->c()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private b(Landroid/graphics/Matrix;)F
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/q;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method private e()V
    .registers 2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/q;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private f()Landroid/graphics/Matrix;
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private g()F
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->h:Lcom/instagram/creation/photo/b/f;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/b/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b

    const/high16 v0, 0x3f80

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->h:Lcom/instagram/creation/photo/b/f;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/b/f;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/instagram/creation/photo/crop/q;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->h:Lcom/instagram/creation/photo/b/f;

    invoke-virtual {v1}, Lcom/instagram/creation/photo/b/f;->d()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/instagram/creation/photo/crop/q;->j:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    goto :goto_a
.end method

.method private h()V
    .registers 4

    const/high16 v2, 0x4000

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    invoke-virtual {p0, v2, v0, v1}, Lcom/instagram/creation/photo/crop/q;->a(FFF)V

    return-void
.end method


# virtual methods
.method protected a(FF)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method protected a(FFF)V
    .registers 6

    iget v0, p0, Lcom/instagram/creation/photo/crop/q;->k:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    iget p1, p0, Lcom/instagram/creation/photo/crop/q;->k:F

    :cond_8
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->d()F

    move-result v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/q;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->c()V

    return-void
.end method

.method public final a(Lcom/instagram/creation/photo/b/f;Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->getWidth()I

    move-result v0

    if-gtz v0, :cond_e

    new-instance v0, Lcom/instagram/creation/photo/crop/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/instagram/creation/photo/crop/r;-><init>(Lcom/instagram/creation/photo/crop/q;Lcom/instagram/creation/photo/b/f;Z)V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->d:Ljava/lang/Runnable;

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p1}, Lcom/instagram/creation/photo/b/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/photo/crop/q;->a(Lcom/instagram/creation/photo/b/f;Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/instagram/creation/photo/b/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/photo/b/f;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/photo/crop/q;->a(Landroid/graphics/Bitmap;I)V

    :goto_24
    if-eqz p2, :cond_2b

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    :cond_2b
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/q;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->g()F

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/q;->k:F

    goto :goto_d

    :cond_39
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/q;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_24
.end method

.method public final b()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->a()V

    return-void
.end method

.method protected final b(FF)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/instagram/creation/photo/crop/q;->a(FF)V

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/q;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected final b(FFF)V
    .registers 14

    const/high16 v2, 0x4396

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->d()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, v2

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->d()F

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v9, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/creation/photo/crop/s;

    move-object v1, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/instagram/creation/photo/crop/s;-><init>(Lcom/instagram/creation/photo/crop/q;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final c()V
    .registers 8

    const/high16 v6, 0x4000

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->h:Lcom/instagram/creation/photo/b/f;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/b/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->f()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->h:Lcom/instagram/creation/photo/b/f;

    invoke-virtual {v3}, Lcom/instagram/creation/photo/b/f;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->h:Lcom/instagram/creation/photo/b/f;

    invoke-virtual {v4}, Lcom/instagram/creation/photo/b/f;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->getHeight()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_60

    int-to-float v4, v4

    sub-float v0, v4, v0

    div-float/2addr v0, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    :goto_46
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->getWidth()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_7a

    int-to-float v1, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    :cond_55
    :goto_55
    invoke-virtual {p0, v1, v0}, Lcom/instagram/creation/photo/crop/q;->a(FF)V

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/q;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_b

    :cond_60
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6a

    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_46

    :cond_6a
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_90

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    goto :goto_46

    :cond_7a
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_84

    iget v1, v2, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_55

    :cond_84
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_55

    int-to-float v1, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    goto :goto_55

    :cond_90
    move v0, v1

    goto :goto_46
.end method

.method protected final d()F
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->g:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/q;->b(Landroid/graphics/Matrix;)F

    move-result v0

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
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/q;->d()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->h()V

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1d
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/instagram/creation/photo/crop/q;->i:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/instagram/creation/photo/crop/q;->j:I

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/instagram/creation/photo/crop/q;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_15
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->h:Lcom/instagram/creation/photo/b/f;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/b/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->h:Lcom/instagram/creation/photo/b/f;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/photo/crop/q;->a(Lcom/instagram/creation/photo/b/f;Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/q;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_2b
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/photo/crop/q;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method
