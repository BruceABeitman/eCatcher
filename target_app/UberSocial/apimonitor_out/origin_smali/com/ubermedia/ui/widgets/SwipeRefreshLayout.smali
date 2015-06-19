.class public Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final D:[I = null

.field private static final a:Ljava/lang/String; = null

.field private static final b:J = 0x12cL

.field private static final c:F = 1.5f

.field private static final d:F = 2.0f

.field private static final e:F = 4.0f

.field private static final f:F = 0.6f

.field private static final g:I = 0x78

.field private static final h:I = -0x1


# instance fields
.field private A:Z

.field private final B:Landroid/view/animation/DecelerateInterpolator;

.field private final C:Landroid/view/animation/AccelerateInterpolator;

.field private final E:Landroid/view/animation/Animation;

.field private F:Landroid/view/animation/Animation;

.field private final G:Landroid/view/animation/Animation$AnimationListener;

.field private final H:Landroid/view/animation/Animation$AnimationListener;

.field private final I:Ljava/lang/Runnable;

.field private final J:Ljava/lang/Runnable;

.field private i:Lcom/ubermedia/ui/widgets/b;

.field private j:Landroid/view/View;

.field private k:I

.field private l:Lcom/ubermedia/ui/widgets/d;

.field private m:I

.field private n:Z

.field private o:I

.field private p:F

.field private q:I

.field private r:F

.field private s:F

.field private t:I

.field private u:I

.field private v:I

.field private w:F

.field private x:F

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->D:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->n:Z

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->p:F

    iput v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->r:F

    iput v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->s:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->z:I

    new-instance v0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;

    invoke-direct {v0, p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;-><init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    new-instance v0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$2;-><init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->F:Landroid/view/animation/Animation;

    new-instance v0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$3;-><init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->G:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$4;

    invoke-direct {v0, p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$4;-><init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->H:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$5;-><init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->I:Ljava/lang/Runnable;

    new-instance v0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;

    invoke-direct {v0, p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;-><init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->J:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->o:I

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->q:I

    invoke-virtual {p0, v2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->setWillNotDraw(Z)V

    new-instance v0, Lcom/ubermedia/ui/widgets/b;

    invoke-direct {v0, p0}, Lcom/ubermedia/ui/widgets/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->i:Lcom/ubermedia/ui/widgets/b;

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->t:I

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->B:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->C:Landroid/view/animation/AccelerateInterpolator;

    sget-object v0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->D:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;F)F
    .registers 2

    iput p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->s:F

    return p1
.end method

.method static synthetic a(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)I
    .registers 2

    iget v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->m:I

    return v0
.end method

.method private a(I)V
    .registers 5

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v1, p1

    iget v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->p:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_16

    iget v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->p:F

    float-to-int p1, v1

    :cond_10
    :goto_10
    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void

    :cond_16
    if-gez p1, :cond_10

    const/4 p1, 0x0

    goto :goto_10
.end method

.method private a(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 6

    iput p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->m:I

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->q:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->B:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->z:I

    if-ne v1, v2, :cond_1b

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_f
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->x:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->z:I

    :cond_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic a(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method static synthetic a(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic a(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->A:Z

    return p1
.end method

.method static synthetic b(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;F)F
    .registers 2

    iput p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->r:F

    return p1
.end method

.method static synthetic b(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)I
    .registers 2

    iget v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->k:I

    return v0
.end method

.method static synthetic b(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;I)I
    .registers 2

    iput p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->u:I

    return p1
.end method

.method static synthetic c(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j:Landroid/view/View;

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SwipeRefreshLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->k:I

    :cond_2d
    iget v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->p:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6b

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_6b

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

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

    iput v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->p:F

    :cond_6b
    return-void
.end method

.method static synthetic d(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)F
    .registers 2

    iget v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->r:F

    return v0
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->I:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->l:Lcom/ubermedia/ui/widgets/d;

    invoke-interface {v0}, Lcom/ubermedia/ui/widgets/d;->a()V

    return-void
.end method

.method static synthetic e(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Lcom/ubermedia/ui/widgets/b;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->i:Lcom/ubermedia/ui/widgets/b;

    return-object v0
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->J:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic f(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)I
    .registers 2

    iget v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->u:I

    return v0
.end method

.method static synthetic g(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->G:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic h(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)F
    .registers 2

    iget v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->s:F

    return v0
.end method

.method static synthetic i(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)I
    .registers 2

    iget v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->q:I

    return v0
.end method

.method static synthetic j(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/animation/Animation;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->F:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic k(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->H:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic l(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/animation/DecelerateInterpolator;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->B:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method private setTargetOffsetTopAndBottom(I)V
    .registers 3

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->u:I

    return-void
.end method

.method private setTriggerPercentage(F)V
    .registers 4

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_8

    iput v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->s:F

    :goto_7
    return-void

    :cond_8
    iput p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->s:F

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->i:Lcom/ubermedia/ui/widgets/b;

    invoke-virtual {v0, p1}, Lcom/ubermedia/ui/widgets/b;->a(F)V

    goto :goto_7
.end method


# virtual methods
.method public a(IIII)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->b(IIII)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->n:Z

    return v0
.end method

.method public b(IIII)V
    .registers 9

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->c(IIII)V

    return-void
.end method

.method public b()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_3c

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2e

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_2c

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_2e

    :cond_2c
    move v0, v1

    :goto_2d
    return v0

    :cond_2e
    move v0, v2

    goto :goto_2d

    :cond_30
    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_3a

    :goto_38
    move v0, v1

    goto :goto_2d

    :cond_3a
    move v1, v2

    goto :goto_38

    :cond_3c
    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    goto :goto_2d
.end method

.method public c(IIII)V
    .registers 6

    invoke-direct {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->c()V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->i:Lcom/ubermedia/ui/widgets/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ubermedia/ui/widgets/b;->a(IIII)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->i:Lcom/ubermedia/ui/widgets/b;

    invoke-virtual {v0, p1}, Lcom/ubermedia/ui/widgets/b;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->I:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->I:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->c()V

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    iget-boolean v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->A:Z

    if-eqz v2, :cond_12

    if-nez v1, :cond_12

    iput-boolean v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->A:Z

    :cond_12
    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-boolean v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->A:Z

    if-nez v2, :cond_22

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->b()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    :goto_22
    return v0

    :cond_23
    packed-switch v1, :pswitch_data_78

    :cond_26
    :goto_26
    :pswitch_26
    iget-boolean v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->y:Z

    goto :goto_22

    :pswitch_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->w:F

    iput v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->x:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->z:I

    iput-boolean v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->y:Z

    iput v3, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->s:F

    goto :goto_26

    :pswitch_3c
    iget v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->z:I

    if-ne v1, v4, :cond_48

    sget-object v1, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_48
    iget v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->z:I

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    if-gez v1, :cond_58

    sget-object v1, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_58
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->w:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->o:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_26

    iput v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->x:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->y:Z

    goto :goto_26

    :pswitch_6d
    invoke-direct {p0, p1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_26

    :pswitch_71
    iput-boolean v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->y:Z

    iput v3, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->s:F

    iput v4, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->z:I

    goto :goto_26

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_29
        :pswitch_71
        :pswitch_3c
        :pswitch_71
        :pswitch_26
        :pswitch_26
        :pswitch_6d
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->i:Lcom/ubermedia/ui/widgets/b;

    iget v3, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->v:I

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->v:I

    iget v6, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->t:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v7, v3, v4, v5}, Lcom/ubermedia/ui/widgets/b;->b(IIII)V

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_20

    :goto_1f
    return-void

    :cond_20
    invoke-virtual {p0, v7}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->u:I

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    add-int/2addr v0, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1f
.end method

.method public onMeasure(II)V
    .registers 8

    const/high16 v4, 0x4000

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SwipeRefreshLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_4c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    iget-boolean v3, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->A:Z

    if-eqz v3, :cond_f

    if-nez v2, :cond_f

    iput-boolean v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->A:Z

    :cond_f
    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-boolean v3, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->A:Z

    if-nez v3, :cond_1f

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->b()Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    packed-switch v2, :pswitch_data_ba

    :cond_23
    :goto_23
    :pswitch_23
    move v0, v1

    goto :goto_1f

    :pswitch_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->w:F

    iput v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->x:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->z:I

    iput-boolean v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->y:Z

    iput v4, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->s:F

    goto :goto_23

    :pswitch_38
    iget v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->z:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    if-gez v2, :cond_48

    sget-object v1, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_48
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->w:F

    sub-float v2, v0, v2

    iget-boolean v3, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->y:Z

    if-nez v3, :cond_5d

    iget v3, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->o:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5d

    iput-boolean v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->y:Z

    :cond_5d
    iget-boolean v3, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->y:Z

    if-eqz v3, :cond_23

    iget v3, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->p:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6d

    invoke-direct {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->d()V

    :goto_6a
    iput v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->x:F

    goto :goto_23

    :cond_6d
    iget-object v3, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->C:Landroid/view/animation/AccelerateInterpolator;

    iget v4, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->p:F

    div-float v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v3

    invoke-direct {p0, v3}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->setTriggerPercentage(F)V

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a(I)V

    iget v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->x:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_96

    iget-object v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    if-ne v2, v3, :cond_96

    iget-object v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_6a

    :cond_96
    invoke-direct {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->e()V

    goto :goto_6a

    :pswitch_9a
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->x:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->z:I

    goto/16 :goto_23

    :pswitch_ac
    invoke-direct {p0, p1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_23

    :pswitch_b1
    iput-boolean v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->y:Z

    iput v4, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->s:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->z:I

    goto/16 :goto_1f

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_25
        :pswitch_b1
        :pswitch_38
        :pswitch_b1
        :pswitch_23
        :pswitch_9a
        :pswitch_ac
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public setOnRefreshListener(Lcom/ubermedia/ui/widgets/d;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->l:Lcom/ubermedia/ui/widgets/d;

    return-void
.end method

.method public setProgressBarTop(I)V
    .registers 8

    iput p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->v:I

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->i:Lcom/ubermedia/ui/widgets/b;

    const/4 v1, 0x0

    iget v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->v:I

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->v:I

    iget v5, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->t:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ubermedia/ui/widgets/b;->b(IIII)V

    return-void
.end method

.method public setRefreshing(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->n:Z

    if-eq v0, p1, :cond_15

    invoke-direct {p0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->s:F

    iput-boolean p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->n:Z

    iget-boolean v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->n:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->i:Lcom/ubermedia/ui/widgets/b;

    invoke-virtual {v0}, Lcom/ubermedia/ui/widgets/b;->a()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->i:Lcom/ubermedia/ui/widgets/b;

    invoke-virtual {v0}, Lcom/ubermedia/ui/widgets/b;->b()V

    goto :goto_15
.end method
