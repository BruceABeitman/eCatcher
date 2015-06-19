.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"


# static fields
.field private static final s:[I


# instance fields
.field private a:Landroid/support/v4/widget/ac;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Landroid/support/v4/widget/ak;

.field private e:Landroid/view/MotionEvent;

.field private f:I

.field private g:Z

.field private h:I

.field private i:F

.field private j:F

.field private k:I

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:Z

.field private final q:Landroid/view/animation/DecelerateInterpolator;

.field private final r:Landroid/view/animation/AccelerateInterpolator;

.field private final t:Landroid/view/animation/Animation;

.field private u:Landroid/view/animation/Animation;

.field private final v:Landroid/view/animation/Animation$AnimationListener;

.field private final w:Landroid/view/animation/Animation$AnimationListener;

.field private final x:Ljava/lang/Runnable;

.field private final y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:Z

    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:F

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:F

    new-instance v0, Landroid/support/v4/widget/ad;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ad;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Landroid/view/animation/Animation;

    new-instance v0, Landroid/support/v4/widget/ae;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ae;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Landroid/view/animation/Animation;

    new-instance v0, Landroid/support/v4/widget/af;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/af;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Landroid/support/v4/widget/ag;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ag;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Landroid/support/v4/widget/ah;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ah;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v4/widget/ai;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ai;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:I

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    new-instance v0, Landroid/support/v4/widget/ac;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ac;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/ac;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Landroid/view/animation/AccelerateInterpolator;

    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;F)F
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:F

    return p1
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:I

    return v0
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SwipeRefreshLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    :cond_2d
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6b

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_6b

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f19999a

    mul-float/2addr v0, v2

    const/high16 v2, 0x42f0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    :cond_6b
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 6

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:I

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    return v0
.end method

.method static synthetic c(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:F

    return v0
.end method

.method static synthetic e(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/ac;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/ac;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:I

    return v0
.end method

.method static synthetic g(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:F

    return v0
.end method

.method static synthetic h(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    return v0
.end method

.method static synthetic i(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:I

    return v0
.end method

.method static synthetic j(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic k(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:F

    return v0
.end method

.method static synthetic l(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:I

    return v0
.end method

.method static synthetic m(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic n(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic o(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/DecelerateInterpolator;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method private setTargetOffsetTopAndBottom(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:I

    return-void
.end method

.method private setTriggerPercentage(F)V
    .registers 4

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_8

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:F

    :goto_7
    return-void

    :cond_8
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:F

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/ac;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ac;->a(F)V

    goto :goto_7
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 21

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/ac;

    iget-object v2, v1, Landroid/support/v4/widget/ac;->l:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v1, Landroid/support/v4/widget/ac;->l:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v9, v2, 0x2

    div-int/lit8 v10, v3, 0x2

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget-object v4, v1, Landroid/support/v4/widget/ac;->l:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-boolean v4, v1, Landroid/support/v4/widget/ac;->f:Z

    if-nez v4, :cond_2f

    iget-wide v4, v1, Landroid/support/v4/widget/ac;->e:J

    const-wide/16 v11, 0x0

    cmp-long v4, v4, v11

    if-lez v4, :cond_19c

    :cond_2f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v11, v1, Landroid/support/v4/widget/ac;->d:J

    sub-long v11, v4, v11

    const-wide/16 v13, 0x7d0

    rem-long/2addr v11, v13

    iget-wide v13, v1, Landroid/support/v4/widget/ac;->d:J

    sub-long v13, v4, v13

    const-wide/16 v15, 0x7d0

    div-long/2addr v13, v15

    long-to-float v6, v11

    const/high16 v8, 0x41a0

    div-float v11, v6, v8

    iget-boolean v6, v1, Landroid/support/v4/widget/ac;->f:Z

    if-nez v6, :cond_1b4

    iget-wide v15, v1, Landroid/support/v4/widget/ac;->e:J

    sub-long v15, v4, v15

    const-wide/16 v17, 0x3e8

    cmp-long v2, v15, v17

    if-ltz v2, :cond_59

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/support/v4/widget/ac;->e:J

    :goto_58
    return-void

    :cond_59
    iget-wide v15, v1, Landroid/support/v4/widget/ac;->e:J

    sub-long/2addr v4, v15

    const-wide/16 v15, 0x3e8

    rem-long/2addr v4, v15

    long-to-float v2, v4

    const/high16 v4, 0x4120

    div-float/2addr v2, v4

    const/high16 v4, 0x42c8

    div-float/2addr v2, v4

    int-to-float v4, v9

    sget-object v5, Landroid/support/v4/widget/ac;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v4

    iget-object v4, v1, Landroid/support/v4/widget/ac;->b:Landroid/graphics/RectF;

    int-to-float v5, v9

    sub-float/2addr v5, v2

    const/4 v6, 0x0

    int-to-float v8, v9

    add-float/2addr v2, v8

    int-to-float v3, v3

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v1, Landroid/support/v4/widget/ac;->b:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    const/4 v2, 0x1

    move v8, v2

    :goto_84
    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-nez v2, :cond_155

    iget v2, v1, Landroid/support/v4/widget/ac;->g:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_91
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-ltz v2, :cond_af

    const/high16 v2, 0x41c8

    cmpg-float v2, v11, v2

    if-gtz v2, :cond_af

    const/high16 v2, 0x41c8

    add-float/2addr v2, v11

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v6, v2, v3

    int-to-float v3, v9

    int-to-float v4, v10

    iget v5, v1, Landroid/support/v4/widget/ac;->g:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/widget/ac;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_af
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-ltz v2, :cond_ca

    const/high16 v2, 0x4248

    cmpg-float v2, v11, v2

    if-gtz v2, :cond_ca

    const/high16 v2, 0x4000

    mul-float/2addr v2, v11

    const/high16 v3, 0x42c8

    div-float v6, v2, v3

    int-to-float v3, v9

    int-to-float v4, v10

    iget v5, v1, Landroid/support/v4/widget/ac;->h:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/widget/ac;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_ca
    const/high16 v2, 0x41c8

    cmpl-float v2, v11, v2

    if-ltz v2, :cond_ea

    const/high16 v2, 0x4296

    cmpg-float v2, v11, v2

    if-gtz v2, :cond_ea

    const/high16 v2, 0x41c8

    sub-float v2, v11, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v6, v2, v3

    int-to-float v3, v9

    int-to-float v4, v10

    iget v5, v1, Landroid/support/v4/widget/ac;->i:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/widget/ac;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_ea
    const/high16 v2, 0x4248

    cmpl-float v2, v11, v2

    if-ltz v2, :cond_10a

    const/high16 v2, 0x42c8

    cmpg-float v2, v11, v2

    if-gtz v2, :cond_10a

    const/high16 v2, 0x4248

    sub-float v2, v11, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v6, v2, v3

    int-to-float v3, v9

    int-to-float v4, v10

    iget v5, v1, Landroid/support/v4/widget/ac;->j:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/widget/ac;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_10a
    const/high16 v2, 0x4296

    cmpl-float v2, v11, v2

    if-ltz v2, :cond_12a

    const/high16 v2, 0x42c8

    cmpg-float v2, v11, v2

    if-gtz v2, :cond_12a

    const/high16 v2, 0x4296

    sub-float v2, v11, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v6, v2, v3

    int-to-float v3, v9

    int-to-float v4, v10

    iget v5, v1, Landroid/support/v4/widget/ac;->g:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/widget/ac;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_12a
    iget v2, v1, Landroid/support/v4/widget/ac;->c:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b2

    if-eqz v8, :cond_1b2

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, v1, Landroid/support/v4/widget/ac;->l:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v9, v10}, Landroid/support/v4/widget/ac;->a(Landroid/graphics/Canvas;II)V

    :goto_148
    iget-object v1, v1, Landroid/support/v4/widget/ac;->k:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/as;->c(Landroid/view/View;)V

    move v7, v2

    :cond_14e
    :goto_14e
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_58

    :cond_155
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-ltz v2, :cond_169

    const/high16 v2, 0x41c8

    cmpg-float v2, v11, v2

    if-gez v2, :cond_169

    iget v2, v1, Landroid/support/v4/widget/ac;->j:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_91

    :cond_169
    const/high16 v2, 0x41c8

    cmpl-float v2, v11, v2

    if-ltz v2, :cond_17e

    const/high16 v2, 0x4248

    cmpg-float v2, v11, v2

    if-gez v2, :cond_17e

    iget v2, v1, Landroid/support/v4/widget/ac;->g:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_91

    :cond_17e
    const/high16 v2, 0x4248

    cmpl-float v2, v11, v2

    if-ltz v2, :cond_193

    const/high16 v2, 0x4296

    cmpg-float v2, v11, v2

    if-gez v2, :cond_193

    iget v2, v1, Landroid/support/v4/widget/ac;->h:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_91

    :cond_193
    iget v2, v1, Landroid/support/v4/widget/ac;->i:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_91

    :cond_19c
    iget v2, v1, Landroid/support/v4/widget/ac;->c:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_14e

    iget v2, v1, Landroid/support/v4/widget/ac;->c:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_14e

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v9, v10}, Landroid/support/v4/widget/ac;->a(Landroid/graphics/Canvas;II)V

    goto :goto_14e

    :cond_1b2
    move v2, v7

    goto :goto_148

    :cond_1b4
    move v8, v2

    goto/16 :goto_84
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()V

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    :cond_11
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    if-nez v0, :cond_68

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_61

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_53

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_45

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_53

    :cond_45
    move v0, v2

    :goto_46
    if-nez v0, :cond_68

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_4c
    if-nez v0, :cond_52

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_52
    return v0

    :cond_53
    move v0, v1

    goto :goto_46

    :cond_55
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_5f

    move v0, v2

    goto :goto_46

    :cond_5f
    move v0, v1

    goto :goto_46

    :cond_61
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/as;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_46

    :cond_68
    move v0, v1

    goto :goto_4c
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/ac;

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    iget-object v4, v2, Landroid/support/v4/widget/ac;->l:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, v2, Landroid/support/v4/widget/ac;->l:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, v2, Landroid/support/v4/widget/ac;->l:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->right:I

    iget-object v2, v2, Landroid/support/v4/widget/ac;->l:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_24

    :goto_23
    return-void

    :cond_24
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:I

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    add-int/2addr v0, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_23
.end method

.method public onMeasure(II)V
    .registers 8

    const/high16 v4, 0x4000

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1a

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SwipeRefreshLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_4c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_b8

    :cond_9
    :goto_9
    return v1

    :pswitch_a
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:F

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:F

    goto :goto_9

    :pswitch_1c
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float v0, v3, v0

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_9

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4e

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/support/v4/widget/ak;

    move v1, v2

    goto :goto_9

    :cond_4e
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Landroid/view/animation/AccelerateInterpolator;

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    div-float v5, v0, v5

    invoke-virtual {v4, v5}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v4

    invoke-direct {p0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTriggerPercentage(F)V

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_65

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    :cond_65
    float-to-int v0, v0

    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v5, v0

    iget v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_98

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    float-to-int v0, v0

    :cond_76
    :goto_76
    sub-int/2addr v0, v4

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9c

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    if-ge v0, v1, :cond_9c

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_8f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:F

    move v1, v2

    goto/16 :goto_9

    :cond_98
    if-gez v0, :cond_76

    move v0, v1

    goto :goto_76

    :cond_9c
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {p0, v0, v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8f

    :pswitch_a9
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    goto/16 :goto_9

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a9
        :pswitch_1c
        :pswitch_a9
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public setColorScheme(IIII)V
    .registers 10

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()V

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/ac;

    iput v1, v4, Landroid/support/v4/widget/ac;->g:I

    iput v2, v4, Landroid/support/v4/widget/ac;->h:I

    iput v3, v4, Landroid/support/v4/widget/ac;->i:I

    iput v0, v4, Landroid/support/v4/widget/ac;->j:I

    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/ak;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/support/v4/widget/ak;

    return-void
.end method

.method public setRefreshing(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:Z

    if-eq v0, p1, :cond_26

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()V

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:F

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:Z

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/ac;

    iget-boolean v1, v0, Landroid/support/v4/widget/ac;->f:Z

    if-nez v1, :cond_26

    iput v2, v0, Landroid/support/v4/widget/ac;->c:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/support/v4/widget/ac;->d:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/ac;->f:Z

    iget-object v0, v0, Landroid/support/v4/widget/ac;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/ac;

    iget-boolean v1, v0, Landroid/support/v4/widget/ac;->f:Z

    if-eqz v1, :cond_26

    iput v2, v0, Landroid/support/v4/widget/ac;->c:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/support/v4/widget/ac;->e:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/ac;->f:Z

    iget-object v0, v0, Landroid/support/v4/widget/ac;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_26
.end method
