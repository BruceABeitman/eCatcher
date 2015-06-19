.class final Landroid/support/v4/widget/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/view/animation/Interpolator;


# instance fields
.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/RectF;

.field private d:F

.field private e:J

.field private f:J

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/view/View;

.field private m:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/support/v4/widget/a;->a()Landroid/support/v4/widget/a;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/aa;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/aa;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/aa;->c:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/aa;->m:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v4/widget/aa;->l:Landroid/view/View;

    const/high16 v0, -0x4d00

    iput v0, p0, Landroid/support/v4/widget/aa;->h:I

    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v4/widget/aa;->i:I

    const/high16 v0, 0x4d00

    iput v0, p0, Landroid/support/v4/widget/aa;->j:I

    const/high16 v0, 0x1a00

    iput v0, p0, Landroid/support/v4/widget/aa;->k:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFIF)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/aa;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, Landroid/support/v4/widget/aa;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Landroid/support/v4/widget/aa;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/widget/aa;->b:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/aa;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p2

    iget v3, p0, Landroid/support/v4/widget/aa;->d:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/aa;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method final a()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/widget/aa;->g:Z

    if-nez v0, :cond_15

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/aa;->d:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/aa;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/aa;->g:Z

    iget-object v0, p0, Landroid/support/v4/widget/aa;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_15
    return-void
.end method

.method final a(F)V
    .registers 4

    iput p1, p0, Landroid/support/v4/widget/aa;->d:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/widget/aa;->e:J

    iget-object v0, p0, Landroid/support/v4/widget/aa;->l:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V

    return-void
.end method

.method final a(II)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/aa;->m:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/support/v4/widget/aa;->m:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/support/v4/widget/aa;->m:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/support/v4/widget/aa;->m:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method final a(IIII)V
    .registers 5

    iput p1, p0, Landroid/support/v4/widget/aa;->h:I

    iput p2, p0, Landroid/support/v4/widget/aa;->i:I

    iput p3, p0, Landroid/support/v4/widget/aa;->j:I

    iput p4, p0, Landroid/support/v4/widget/aa;->k:I

    return-void
.end method

.method final a(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/aa;->m:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/aa;->m:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/widget/aa;->m:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/v4/widget/aa;->g:Z

    if-nez v4, :cond_32

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v4/widget/aa;->f:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1d5

    :cond_32
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/widget/aa;->e:J

    sub-long v6, v4, v6

    const-wide/16 v12, 0x7d0

    rem-long/2addr v6, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/v4/widget/aa;->e:J

    sub-long v12, v4, v12

    const-wide/16 v14, 0x7d0

    div-long/2addr v12, v14

    long-to-float v6, v6

    const/high16 v7, 0x41a0

    div-float v14, v6, v7

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/support/v4/widget/aa;->g:Z

    if-nez v6, :cond_1f3

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/widget/aa;->f:J

    sub-long v6, v4, v6

    const-wide/16 v15, 0x3e8

    cmp-long v2, v6, v15

    if-ltz v2, :cond_66

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/support/v4/widget/aa;->f:J

    :goto_65
    return-void

    :cond_66
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/widget/aa;->f:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    long-to-float v2, v4

    const/high16 v4, 0x4120

    div-float/2addr v2, v4

    const/high16 v4, 0x42c8

    div-float/2addr v2, v4

    int-to-float v4, v10

    sget-object v5, Landroid/support/v4/widget/aa;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/widget/aa;->c:Landroid/graphics/RectF;

    int-to-float v5, v10

    sub-float/2addr v5, v2

    const/4 v6, 0x0

    int-to-float v7, v10

    add-float/2addr v2, v7

    int-to-float v3, v3

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/aa;->c:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    const/4 v2, 0x1

    move v9, v2

    :goto_97
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-nez v2, :cond_186

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/aa;->h:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_a6
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_c8

    const/high16 v2, 0x41c8

    cmpg-float v2, v14, v2

    if-gtz v2, :cond_c8

    const/high16 v2, 0x41c8

    add-float/2addr v2, v14

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v7, v2, v3

    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/aa;->h:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/aa;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_c8
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_e7

    const/high16 v2, 0x4248

    cmpg-float v2, v14, v2

    if-gtz v2, :cond_e7

    const/high16 v2, 0x4000

    mul-float/2addr v2, v14

    const/high16 v3, 0x42c8

    div-float v7, v2, v3

    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/aa;->i:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/aa;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_e7
    const/high16 v2, 0x41c8

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_10b

    const/high16 v2, 0x4296

    cmpg-float v2, v14, v2

    if-gtz v2, :cond_10b

    const/high16 v2, 0x41c8

    sub-float v2, v14, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v7, v2, v3

    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/aa;->j:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/aa;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_10b
    const/high16 v2, 0x4248

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_12f

    const/high16 v2, 0x42c8

    cmpg-float v2, v14, v2

    if-gtz v2, :cond_12f

    const/high16 v2, 0x4248

    sub-float v2, v14, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v7, v2, v3

    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/aa;->k:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/aa;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_12f
    const/high16 v2, 0x4296

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_153

    const/high16 v2, 0x42c8

    cmpg-float v2, v14, v2

    if-gtz v2, :cond_153

    const/high16 v2, 0x4296

    sub-float v2, v14, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v7, v2, v3

    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/aa;->h:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/aa;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_153
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/aa;->d:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1f1

    if-eqz v9, :cond_1f1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/aa;->m:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Landroid/support/v4/widget/aa;->a(Landroid/graphics/Canvas;II)V

    :goto_177
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/aa;->l:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V

    move v8, v2

    :cond_17f
    :goto_17f
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_65

    :cond_186
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_19c

    const/high16 v2, 0x41c8

    cmpg-float v2, v14, v2

    if-gez v2, :cond_19c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/aa;->k:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_a6

    :cond_19c
    const/high16 v2, 0x41c8

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_1b3

    const/high16 v2, 0x4248

    cmpg-float v2, v14, v2

    if-gez v2, :cond_1b3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/aa;->h:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_a6

    :cond_1b3
    const/high16 v2, 0x4248

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_1ca

    const/high16 v2, 0x4296

    cmpg-float v2, v14, v2

    if-gez v2, :cond_1ca

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/aa;->i:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_a6

    :cond_1ca
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/aa;->j:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_a6

    :cond_1d5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/aa;->d:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_17f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/aa;->d:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_17f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Landroid/support/v4/widget/aa;->a(Landroid/graphics/Canvas;II)V

    goto :goto_17f

    :cond_1f1
    move v2, v8

    goto :goto_177

    :cond_1f3
    move v9, v2

    goto/16 :goto_97
.end method

.method final b()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/widget/aa;->g:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/aa;->d:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/aa;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/aa;->g:Z

    iget-object v0, p0, Landroid/support/v4/widget/aa;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_15
    return-void
.end method
