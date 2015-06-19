.class final Lcom/ubermedia/ui/widgets/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = -0x4d000000

.field private static final b:I = -0x80000000

.field private static final c:I = 0x4d000000

.field private static final d:I = 0x1a000000

.field private static final e:I = 0x7d0

.field private static final f:I = 0x3e8

.field private static final g:Landroid/view/animation/Interpolator;


# instance fields
.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/RectF;

.field private j:F

.field private k:J

.field private l:J

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/view/View;

.field private s:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/ubermedia/ui/widgets/a;->a()Lcom/ubermedia/ui/widgets/a;

    move-result-object v0

    sput-object v0, Lcom/ubermedia/ui/widgets/b;->g:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/b;->h:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/b;->i:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/b;->s:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/ubermedia/ui/widgets/b;->r:Landroid/view/View;

    const/high16 v0, -0x4d00

    iput v0, p0, Lcom/ubermedia/ui/widgets/b;->n:I

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/ubermedia/ui/widgets/b;->o:I

    const/high16 v0, 0x4d00

    iput v0, p0, Lcom/ubermedia/ui/widgets/b;->p:I

    const/high16 v0, 0x1a00

    iput v0, p0, Lcom/ubermedia/ui/widgets/b;->q:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFIF)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/b;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, Lcom/ubermedia/ui/widgets/b;->g:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .registers 8

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/b;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ubermedia/ui/widgets/b;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p2

    iget v3, p0, Lcom/ubermedia/ui/widgets/b;->j:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/ubermedia/ui/widgets/b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    iget-boolean v0, p0, Lcom/ubermedia/ui/widgets/b;->m:Z

    if-nez v0, :cond_15

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubermedia/ui/widgets/b;->j:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubermedia/ui/widgets/b;->k:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubermedia/ui/widgets/b;->m:Z

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/b;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_15
    return-void
.end method

.method a(F)V
    .registers 4

    iput p1, p0, Lcom/ubermedia/ui/widgets/b;->j:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ubermedia/ui/widgets/b;->k:J

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/b;->r:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method a(IIII)V
    .registers 5

    iput p1, p0, Lcom/ubermedia/ui/widgets/b;->n:I

    iput p2, p0, Lcom/ubermedia/ui/widgets/b;->o:I

    iput p3, p0, Lcom/ubermedia/ui/widgets/b;->p:I

    iput p4, p0, Lcom/ubermedia/ui/widgets/b;->q:I

    return-void
.end method

.method a(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ubermedia/ui/widgets/b;->s:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v10, v3, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ubermedia/ui/widgets/b;->s:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ubermedia/ui/widgets/b;->s:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v11, v2, v4

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ubermedia/ui/widgets/b;->s:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ubermedia/ui/widgets/b;->m:Z

    if-nez v4, :cond_3a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/ubermedia/ui/widgets/b;->l:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1eb

    :cond_3a
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/ubermedia/ui/widgets/b;->k:J

    sub-long v6, v4, v6

    const-wide/16 v12, 0x7d0

    rem-long/2addr v6, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/ubermedia/ui/widgets/b;->k:J

    sub-long v12, v4, v12

    const-wide/16 v14, 0x7d0

    div-long/2addr v12, v14

    long-to-float v6, v6

    const/high16 v7, 0x41a0

    div-float v14, v6, v7

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/ubermedia/ui/widgets/b;->m:Z

    if-nez v6, :cond_209

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/ubermedia/ui/widgets/b;->l:J

    sub-long v6, v4, v6

    const-wide/16 v15, 0x3e8

    cmp-long v2, v6, v15

    if-ltz v2, :cond_6e

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/ubermedia/ui/widgets/b;->l:J

    :goto_6d
    return-void

    :cond_6e
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/ubermedia/ui/widgets/b;->l:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    long-to-float v2, v4

    const/high16 v4, 0x4120

    div-float/2addr v2, v4

    const/high16 v4, 0x42c8

    div-float/2addr v2, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget-object v4, Lcom/ubermedia/ui/widgets/b;->g:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ubermedia/ui/widgets/b;->i:Landroid/graphics/RectF;

    int-to-float v4, v10

    sub-float/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ubermedia/ui/widgets/b;->s:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    int-to-float v6, v10

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ubermedia/ui/widgets/b;->s:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ubermedia/ui/widgets/b;->i:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    const/4 v2, 0x1

    move v9, v2

    :goto_ad
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-nez v2, :cond_19c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ubermedia/ui/widgets/b;->n:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_bc
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_de

    const/high16 v2, 0x41c8

    cmpg-float v2, v14, v2

    if-gtz v2, :cond_de

    const/high16 v2, 0x41c8

    add-float/2addr v2, v14

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v7, v2, v3

    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ubermedia/ui/widgets/b;->n:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/ubermedia/ui/widgets/b;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_de
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_fd

    const/high16 v2, 0x4248

    cmpg-float v2, v14, v2

    if-gtz v2, :cond_fd

    const/high16 v2, 0x4000

    mul-float/2addr v2, v14

    const/high16 v3, 0x42c8

    div-float v7, v2, v3

    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ubermedia/ui/widgets/b;->o:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/ubermedia/ui/widgets/b;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_fd
    const/high16 v2, 0x41c8

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_121

    const/high16 v2, 0x4296

    cmpg-float v2, v14, v2

    if-gtz v2, :cond_121

    const/high16 v2, 0x41c8

    sub-float v2, v14, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v7, v2, v3

    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ubermedia/ui/widgets/b;->p:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/ubermedia/ui/widgets/b;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_121
    const/high16 v2, 0x4248

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_145

    const/high16 v2, 0x42c8

    cmpg-float v2, v14, v2

    if-gtz v2, :cond_145

    const/high16 v2, 0x4248

    sub-float v2, v14, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v7, v2, v3

    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ubermedia/ui/widgets/b;->q:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/ubermedia/ui/widgets/b;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_145
    const/high16 v2, 0x4296

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_169

    const/high16 v2, 0x42c8

    cmpg-float v2, v14, v2

    if-gtz v2, :cond_169

    const/high16 v2, 0x4296

    sub-float v2, v14, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v7, v2, v3

    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ubermedia/ui/widgets/b;->n:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/ubermedia/ui/widgets/b;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_169
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ubermedia/ui/widgets/b;->j:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_207

    if-eqz v9, :cond_207

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ubermedia/ui/widgets/b;->s:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/ubermedia/ui/widgets/b;->a(Landroid/graphics/Canvas;II)V

    :goto_18d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ubermedia/ui/widgets/b;->r:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    move v8, v2

    :cond_195
    :goto_195
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_6d

    :cond_19c
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_1b2

    const/high16 v2, 0x41c8

    cmpg-float v2, v14, v2

    if-gez v2, :cond_1b2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ubermedia/ui/widgets/b;->q:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_bc

    :cond_1b2
    const/high16 v2, 0x41c8

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_1c9

    const/high16 v2, 0x4248

    cmpg-float v2, v14, v2

    if-gez v2, :cond_1c9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ubermedia/ui/widgets/b;->n:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_bc

    :cond_1c9
    const/high16 v2, 0x4248

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_1e0

    const/high16 v2, 0x4296

    cmpg-float v2, v14, v2

    if-gez v2, :cond_1e0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ubermedia/ui/widgets/b;->o:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_bc

    :cond_1e0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ubermedia/ui/widgets/b;->p:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_bc

    :cond_1eb
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ubermedia/ui/widgets/b;->j:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_195

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ubermedia/ui/widgets/b;->j:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_195

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/ubermedia/ui/widgets/b;->a(Landroid/graphics/Canvas;II)V

    goto :goto_195

    :cond_207
    move v2, v8

    goto :goto_18d

    :cond_209
    move v9, v2

    goto/16 :goto_ad
.end method

.method b()V
    .registers 3

    iget-boolean v0, p0, Lcom/ubermedia/ui/widgets/b;->m:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubermedia/ui/widgets/b;->j:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubermedia/ui/widgets/b;->l:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubermedia/ui/widgets/b;->m:Z

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/b;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_15
    return-void
.end method

.method b(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/b;->s:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/b;->s:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/b;->s:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/b;->s:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method c()Z
    .registers 5

    iget-boolean v0, p0, Lcom/ubermedia/ui/widgets/b;->m:Z

    if-nez v0, :cond_c

    iget-wide v0, p0, Lcom/ubermedia/ui/widgets/b;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
