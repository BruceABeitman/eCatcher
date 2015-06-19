.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final s:[I


# instance fields
.field private a:Landroid/support/v4/widget/aa;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Landroid/support/v4/widget/ac;

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

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Landroid/view/animation/Animation;

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Landroid/view/animation/Animation;

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

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

    new-instance v0, Landroid/support/v4/widget/aa;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/aa;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/aa;

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

.method private a(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:I

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(I)V

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

.method private c()V
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

.method static synthetic d(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:F

    return v0
.end method

.method static synthetic e(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/aa;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/aa;

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


# virtual methods
.method public final a()V
    .registers 6

    const v4, 0x7f0900bc

    const v3, 0x7f090057

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()V

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/aa;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/support/v4/widget/aa;->a(IIII)V

    return-void
.end method

.method public final a(Landroid/support/v4/widget/ac;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/support/v4/widget/ac;

    return-void
.end method

.method public final a(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:Z

    if-eq v0, p1, :cond_15

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:F

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:Z

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/aa;

    invoke-virtual {v0}, Landroid/support/v4/widget/aa;->a()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/aa;

    invoke-virtual {v0}, Landroid/support/v4/widget/aa;->b()V

    goto :goto_15
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/aa;->a(Landroid/graphics/Canvas;)V

    return-void
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

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()V

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

    invoke-static {v0}, Landroid/support/v4/view/at;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_46

    :cond_68
    move v0, v1

    goto :goto_4c
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/aa;

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/widget/aa;->a(II)V

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_16

    :goto_15
    return-void

    :cond_16
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

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

    goto :goto_15
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

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_c6

    :cond_a
    :goto_a
    return v1

    :pswitch_b
    iput v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:F

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:F

    goto :goto_a

    :pswitch_1c
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float v0, v3, v0

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_a

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_51

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/support/v4/widget/ac;

    invoke-interface {v0}, Landroid/support/v4/widget/ac;->f_()V

    move v1, v2

    goto :goto_a

    :cond_51
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Landroid/view/animation/AccelerateInterpolator;

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    div-float v5, v0, v5

    invoke-virtual {v4, v5}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v4

    cmpl-float v5, v4, v6

    if-nez v5, :cond_9e

    iput v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:F

    :goto_61
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_6b

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    :cond_6b
    float-to-int v0, v0

    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v5, v0

    iget v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a6

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    float-to-int v0, v0

    :cond_7c
    :goto_7c
    sub-int/2addr v0, v4

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(I)V

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_aa

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    if-ge v0, v1, :cond_aa

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:F

    move v1, v2

    goto/16 :goto_a

    :cond_9e
    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:F

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/aa;

    invoke-virtual {v5, v4}, Landroid/support/v4/widget/aa;->a(F)V

    goto :goto_61

    :cond_a6
    if-gez v0, :cond_7c

    move v0, v1

    goto :goto_7c

    :cond_aa
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {p0, v0, v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_95

    :pswitch_b7
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/view/MotionEvent;

    goto/16 :goto_a

    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b7
        :pswitch_1c
        :pswitch_b7
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method
