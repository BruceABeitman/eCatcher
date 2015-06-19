.class public Lcom/bbm/ui/TouchImageView;
.super Lcom/bbm/ui/ObservingImageView;
.source "TouchImageView.java"


# instance fields
.field a:Landroid/graphics/Matrix;

.field e:I

.field f:Landroid/graphics/PointF;

.field g:Landroid/graphics/PointF;

.field h:F

.field i:F

.field j:[F

.field k:I

.field l:I

.field m:F

.field protected n:F

.field protected o:F

.field p:I

.field q:I

.field r:Landroid/view/ScaleGestureDetector;

.field s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1}, Lcom/bbm/ui/ObservingImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/ui/TouchImageView;->e:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/TouchImageView;->f:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/TouchImageView;->g:Landroid/graphics/PointF;

    iput v1, p0, Lcom/bbm/ui/TouchImageView;->h:F

    const/high16 v0, 0x4040

    iput v0, p0, Lcom/bbm/ui/TouchImageView;->i:F

    iput v1, p0, Lcom/bbm/ui/TouchImageView;->m:F

    invoke-direct {p0, p1}, Lcom/bbm/ui/TouchImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/ObservingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/ui/TouchImageView;->e:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/TouchImageView;->f:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/TouchImageView;->g:Landroid/graphics/PointF;

    iput v1, p0, Lcom/bbm/ui/TouchImageView;->h:F

    const/high16 v0, 0x4040

    iput v0, p0, Lcom/bbm/ui/TouchImageView;->i:F

    iput v1, p0, Lcom/bbm/ui/TouchImageView;->m:F

    invoke-direct {p0, p1}, Lcom/bbm/ui/TouchImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static a(FFF)F
    .registers 4

    cmpg-float v0, p2, p1

    if-gtz v0, :cond_5

    const/4 p0, 0x0

    :cond_5
    return p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/bbm/ui/ObservingImageView;->setClickable(Z)V

    iput-object p1, p0, Lcom/bbm/ui/TouchImageView;->s:Landroid/content/Context;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/bbm/ui/ha;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bbm/ui/ha;-><init>(Lcom/bbm/ui/TouchImageView;B)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/bbm/ui/TouchImageView;->r:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/TouchImageView;->a:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bbm/ui/TouchImageView;->j:[F

    iget-object v0, p0, Lcom/bbm/ui/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lcom/bbm/ui/gz;

    invoke-direct {v0, p0}, Lcom/bbm/ui/gz;-><init>(Lcom/bbm/ui/TouchImageView;)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/TouchImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static b(FFF)F
    .registers 7

    const/4 v0, 0x0

    cmpg-float v1, p2, p1

    if-gtz v1, :cond_10

    sub-float v1, p1, p2

    move v2, v1

    move v1, v0

    :goto_9
    cmpg-float v3, p0, v1

    if-gez v3, :cond_14

    neg-float v0, p0

    add-float/2addr v0, v1

    :cond_f
    :goto_f
    return v0

    :cond_10
    sub-float v1, p1, p2

    move v2, v0

    goto :goto_9

    :cond_14
    cmpl-float v1, p0, v2

    if-lez v1, :cond_f

    neg-float v0, p0

    add-float/2addr v0, v2

    goto :goto_f
.end method


# virtual methods
.method final a()V
    .registers 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/bbm/ui/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/bbm/ui/TouchImageView;->j:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/bbm/ui/TouchImageView;->j:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/bbm/ui/TouchImageView;->j:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    iget v2, p0, Lcom/bbm/ui/TouchImageView;->k:I

    int-to-float v2, v2

    iget v3, p0, Lcom/bbm/ui/TouchImageView;->n:F

    iget v4, p0, Lcom/bbm/ui/TouchImageView;->m:F

    mul-float/2addr v3, v4

    invoke-static {v0, v2, v3}, Lcom/bbm/ui/TouchImageView;->b(FFF)F

    move-result v0

    iget v2, p0, Lcom/bbm/ui/TouchImageView;->l:I

    int-to-float v2, v2

    iget v3, p0, Lcom/bbm/ui/TouchImageView;->o:F

    iget v4, p0, Lcom/bbm/ui/TouchImageView;->m:F

    mul-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/bbm/ui/TouchImageView;->b(FFF)F

    move-result v1

    cmpl-float v2, v0, v5

    if-nez v2, :cond_32

    cmpl-float v2, v1, v5

    if-eqz v2, :cond_37

    :cond_32
    iget-object v2, p0, Lcom/bbm/ui/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_37
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    const/high16 v5, 0x4000

    invoke-super {p0, p1, p2}, Lcom/bbm/ui/ObservingImageView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/bbm/ui/TouchImageView;->k:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/bbm/ui/TouchImageView;->l:I

    iget v0, p0, Lcom/bbm/ui/TouchImageView;->q:I

    iget v1, p0, Lcom/bbm/ui/TouchImageView;->k:I

    if-ne v0, v1, :cond_1d

    iget v0, p0, Lcom/bbm/ui/TouchImageView;->q:I

    iget v1, p0, Lcom/bbm/ui/TouchImageView;->l:I

    if-eq v0, v1, :cond_25

    :cond_1d
    iget v0, p0, Lcom/bbm/ui/TouchImageView;->k:I

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/bbm/ui/TouchImageView;->l:I

    if-nez v0, :cond_26

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget v0, p0, Lcom/bbm/ui/TouchImageView;->l:I

    iput v0, p0, Lcom/bbm/ui/TouchImageView;->q:I

    iget v0, p0, Lcom/bbm/ui/TouchImageView;->k:I

    iput v0, p0, Lcom/bbm/ui/TouchImageView;->p:I

    iget v0, p0, Lcom/bbm/ui/TouchImageView;->m:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8d

    invoke-virtual {p0}, Lcom/bbm/ui/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v2, p0, Lcom/bbm/ui/TouchImageView;->k:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    iget v3, p0, Lcom/bbm/ui/TouchImageView;->l:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/bbm/ui/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v3, p0, Lcom/bbm/ui/TouchImageView;->l:I

    int-to-float v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float v0, v3, v0

    iget v3, p0, Lcom/bbm/ui/TouchImageView;->k:I

    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float v1, v3, v1

    div-float/2addr v0, v5

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/bbm/ui/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v2, p0, Lcom/bbm/ui/TouchImageView;->k:I

    int-to-float v2, v2

    mul-float/2addr v1, v5

    sub-float v1, v2, v1

    iput v1, p0, Lcom/bbm/ui/TouchImageView;->n:F

    iget v1, p0, Lcom/bbm/ui/TouchImageView;->l:I

    int-to-float v1, v1

    mul-float/2addr v0, v5

    sub-float v0, v1, v0

    iput v0, p0, Lcom/bbm/ui/TouchImageView;->o:F

    iget-object v0, p0, Lcom/bbm/ui/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_8d
    invoke-virtual {p0}, Lcom/bbm/ui/TouchImageView;->a()V

    goto :goto_25
.end method

.method public setMaxZoom(F)V
    .registers 2

    iput p1, p0, Lcom/bbm/ui/TouchImageView;->i:F

    return-void
.end method
