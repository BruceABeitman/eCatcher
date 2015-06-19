.class final Lcom/instagram/creation/photo/crop/o;
.super Ljava/lang/Object;
.source "HighlightView.java"


# instance fields
.field a:Landroid/view/View;

.field b:Z

.field c:Z

.field d:Landroid/graphics/Rect;

.field e:Landroid/graphics/RectF;

.field f:Landroid/graphics/Matrix;

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:I

.field private l:Landroid/graphics/RectF;

.field private m:Z

.field private n:F

.field private o:Z

.field private p:Landroid/graphics/drawable/ShapeDrawable;

.field private final q:Landroid/graphics/Paint;

.field private final r:Landroid/graphics/Paint;

.field private final s:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/instagram/creation/photo/crop/p;->a:I

    iput v0, p0, Lcom/instagram/creation/photo/crop/o;->k:I

    iput-boolean v1, p0, Lcom/instagram/creation/photo/crop/o;->m:Z

    iput-boolean v1, p0, Lcom/instagram/creation/photo/crop/o;->o:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/o;->q:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/o;->r:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/o;->s:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/instagram/creation/photo/crop/o;->a:Landroid/view/View;

    return-void
.end method

.method private b(FF)V
    .registers 10

    const/16 v6, -0xa

    const/4 v5, 0x0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/o;->g()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method private static b(Landroid/graphics/Canvas;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private c(FF)V
    .registers 11

    const/high16 v2, 0x41c8

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/o;->m:Z

    if-eqz v0, :cond_11

    cmpl-float v0, p1, v6

    if-eqz v0, :cond_144

    iget v0, p0, Lcom/instagram/creation/photo/crop/o;->n:F

    div-float p2, p1, v0

    :cond_11
    :goto_11
    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    cmpg-float v0, p2, v6

    if-gez v0, :cond_17e

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v1, v7, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17e

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float v1, v0, v7

    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/o;->m:Z

    if-eqz v0, :cond_17b

    iget v0, p0, Lcom/instagram/creation/photo/crop/o;->n:F

    div-float p2, v1, v0

    move v0, p2

    :goto_43
    cmpl-float v4, v0, v6

    if-lez v4, :cond_6b

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6b

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    iget-boolean v4, p0, Lcom/instagram/creation/photo/crop/o;->m:Z

    if-eqz v4, :cond_6b

    iget v1, p0, Lcom/instagram/creation/photo/crop/o;->n:F

    mul-float/2addr v1, v0

    :cond_6b
    cmpg-float v4, v1, v6

    if-ltz v4, :cond_73

    cmpg-float v4, v0, v6

    if-gez v4, :cond_a7

    :cond_73
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v7, v1

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/instagram/creation/photo/crop/o;->g:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_8f

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, v0

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/instagram/creation/photo/crop/o;->g:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a7

    :cond_8f
    iget v0, p0, Lcom/instagram/creation/photo/crop/o;->g:I

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float v1, v0, v7

    iget v0, p0, Lcom/instagram/creation/photo/crop/o;->g:I

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    neg-float v4, v1

    neg-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    :cond_a7
    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_bf

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v0, v2, v0

    neg-float v0, v0

    div-float/2addr v0, v7

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->inset(FF)V

    :cond_bf
    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/o;->m:Z

    if-eqz v0, :cond_14c

    iget v0, p0, Lcom/instagram/creation/photo/crop/o;->n:F

    div-float v0, v2, v0

    :goto_c7
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_d9

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v7

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_d9
    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14f

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->offset(FF)V

    :cond_ed
    :goto_ed
    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_165

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_101
    :goto_101
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/instagram/creation/photo/crop/o;->g:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13e

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/instagram/creation/photo/crop/o;->g:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13e

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13e

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13e

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/o;->g()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    :cond_13e
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_144
    cmpl-float v0, p2, v6

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/instagram/creation/photo/crop/o;->n:F

    goto/16 :goto_11

    :cond_14c
    move v0, v2

    goto/16 :goto_c7

    :cond_14f
    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ed

    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_ed

    :cond_165
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_101

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_101

    :cond_17b
    move v0, p2

    goto/16 :goto_43

    :cond_17e
    move v0, p2

    move v1, p2

    goto/16 :goto_43
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object v1, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Lcom/facebook/as;->white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    return-void
.end method

.method private f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/o;->b:Z

    return v0
.end method

.method private g()Landroid/graphics/Rect;
    .registers 8

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->s:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/instagram/creation/photo/crop/o;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v6, p0, Lcom/instagram/creation/photo/crop/o;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v1, v6, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method


# virtual methods
.method public final a(FF)I
    .registers 13

    const/16 v4, 0x20

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/o;->g()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v3, 0x14

    invoke-static {v0, v3}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v6

    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/o;->o:Z

    if-eqz v0, :cond_6b

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    mul-float v3, v0, v0

    mul-float v5, v2, v2

    add-float/2addr v3, v5

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v3, v7

    iget-object v5, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v7, v3, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v7, v6

    if-gtz v6, :cond_67

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5f

    cmpg-float v0, v2, v9

    if-gez v0, :cond_5c

    const/16 v1, 0x8

    :cond_5b
    :goto_5b
    return v1

    :cond_5c
    const/16 v1, 0x10

    goto :goto_5b

    :cond_5f
    cmpg-float v0, v0, v9

    if-gez v0, :cond_65

    const/4 v1, 0x2

    goto :goto_5b

    :cond_65
    const/4 v1, 0x4

    goto :goto_5b

    :cond_67
    if-ge v3, v5, :cond_5b

    move v1, v4

    goto :goto_5b

    :cond_6b
    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_d9

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, v6

    cmpg-float v0, p2, v0

    if-gez v0, :cond_d9

    move v0, v1

    :goto_7c
    iget v3, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_8d

    iget v3, v5, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v6

    cmpg-float v3, p1, v3

    if-gez v3, :cond_8d

    move v2, v1

    :cond_8d
    iget v3, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_e0

    if-eqz v0, :cond_e0

    const/4 v3, 0x3

    :goto_9c
    iget v7, v5, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_ac

    if-eqz v0, :cond_ac

    or-int/lit8 v3, v3, 0x4

    :cond_ac
    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_bc

    if-eqz v2, :cond_bc

    or-int/lit8 v3, v3, 0x8

    :cond_bc
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_de

    if-eqz v2, :cond_de

    or-int/lit8 v3, v3, 0x10

    move v0, v3

    :goto_cd
    if-ne v0, v1, :cond_db

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_db

    move v1, v4

    goto :goto_5b

    :cond_d9
    move v0, v2

    goto :goto_7c

    :cond_db
    move v1, v0

    goto/16 :goto_5b

    :cond_de
    move v0, v3

    goto :goto_cd

    :cond_e0
    move v3, v1

    goto :goto_9c
.end method

.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/crop/o;->b:Z

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget v0, p0, Lcom/instagram/creation/photo/crop/o;->k:I

    if-eq p1, v0, :cond_b

    iput p1, p0, Lcom/instagram/creation/photo/crop/o;->k:I

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_b
    return-void
.end method

.method final a(IFF)V
    .registers 9

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/o;->g()Landroid/graphics/Rect;

    move-result-object v3

    if-ne p1, v2, :cond_a

    :goto_9
    return-void

    :cond_a
    const/16 v4, 0x20

    if-ne p1, v4, :cond_3e

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, p3

    iget v2, p0, Lcom/instagram/creation/photo/crop/o;->h:I

    if-eqz v2, :cond_3a

    iget v0, p0, Lcom/instagram/creation/photo/crop/o;->j:F

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/instagram/creation/photo/crop/o;->i:F

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/instagram/creation/photo/crop/o;->i:F

    mul-float/2addr v1, p2

    iget v2, p0, Lcom/instagram/creation/photo/crop/o;->j:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    :cond_3a
    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/photo/crop/o;->b(FF)V

    goto :goto_9

    :cond_3e
    and-int/lit8 v4, p1, 0x6

    if-nez v4, :cond_43

    move p2, v0

    :cond_43
    and-int/lit8 v4, p1, 0x18

    if-nez v4, :cond_48

    move p3, v0

    :cond_48
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    mul-float v4, p2, v0

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float v3, p3, v0

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_76

    move v0, v1

    :goto_69
    int-to-float v0, v0

    mul-float/2addr v4, v0

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_78

    move v0, v1

    :goto_70
    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-direct {p0, v4, v0}, Lcom/instagram/creation/photo/crop/o;->c(FF)V

    goto :goto_9

    :cond_76
    move v0, v2

    goto :goto_69

    :cond_78
    move v0, v2

    goto :goto_70
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .registers 13

    const/high16 v6, 0x4000

    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/o;->c:Z

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/o;->f()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->s:Landroid/graphics/Paint;

    const v1, -0x10fb2a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_25
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->s:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/o;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/as;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/o;->o:Z

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float v5, v0, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v5

    div-float/2addr v0, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v3, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :goto_67
    invoke-static {p1}, Lcom/instagram/creation/photo/crop/o;->b(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_72

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_72
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/o;->f()Z

    move-result v0

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->q:Landroid/graphics/Paint;

    :goto_7a
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/instagram/creation/photo/crop/o;->k:I

    sget v1, Lcom/instagram/creation/photo/crop/p;->b:I

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/o;->o:Z

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicHeight()I

    move-result v1

    const-wide v2, 0x3fe921fb54442d18L

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    :cond_f3
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_67

    :cond_101
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->r:Landroid/graphics/Paint;

    goto/16 :goto_7a

    :cond_105
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    sub-int v7, v0, v4

    sub-int v8, v2, v5

    add-int v9, v0, v4

    add-int v10, v2, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v6, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    sub-int v7, v1, v4

    sub-int v8, v2, v5

    add-int v9, v1, v4

    add-int/2addr v2, v5

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    sub-int v6, v0, v4

    sub-int v7, v3, v5

    add-int/2addr v0, v4

    add-int v8, v3, v5

    invoke-virtual {v2, v6, v7, v0, v8}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    sub-int v2, v1, v4

    sub-int v6, v3, v5

    add-int/2addr v1, v4

    add-int/2addr v3, v5

    invoke-virtual {v0, v2, v6, v1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6
.end method

.method public final a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)V
    .registers 11

    const/16 v4, 0x7d

    const/4 v3, 0x1

    const/16 v2, 0x32

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/o;->f:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    iput-boolean v3, p0, Lcom/instagram/creation/photo/crop/o;->m:Z

    iput p5, p0, Lcom/instagram/creation/photo/crop/o;->h:I

    iget v0, p0, Lcom/instagram/creation/photo/crop/o;->h:I

    neg-int v0, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/o;->i:F

    iget v0, p0, Lcom/instagram/creation/photo/crop/o;->h:I

    neg-int v0, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/o;->j:F

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/photo/crop/o;->n:F

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9a

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/o;->g:I

    :goto_62
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/o;->g()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->s:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v0, Lcom/instagram/creation/photo/crop/p;->a:I

    iput v0, p0, Lcom/instagram/creation/photo/crop/o;->k:I

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/o;->e()V

    return-void

    :cond_9a
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/o;->g:I

    goto :goto_62
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/crop/o;->o:Z

    return-void
.end method

.method public final c()Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final d()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/o;->g()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    return-void
.end method
