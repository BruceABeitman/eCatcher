.class public Lcom/spotify/mobile/android/ui/prettylist/d;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/prettylist/c;


# static fields
.field private static final k:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/spotify/mobile/android/ui/prettylist/d;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

.field private final b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:F

.field private h:Z

.field private i:Z

.field private j:Landroid/animation/Animator;

.field private final l:Landroid/animation/AnimatorListenerAdapter;

.field private final m:Lcom/spotify/mobile/android/ui/prettylist/h;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/d$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "filterModeLevel"

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/prettylist/d$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/spotify/mobile/android/ui/prettylist/d;->k:Landroid/util/Property;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/d$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/prettylist/d$2;-><init>(Lcom/spotify/mobile/android/ui/prettylist/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->l:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/d$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/prettylist/d$3;-><init>(Lcom/spotify/mobile/android/ui/prettylist/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->m:Lcom/spotify/mobile/android/ui/prettylist/h;

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/ActionBarManager;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->c:I

    new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->m:Lcom/spotify/mobile/android/ui/prettylist/h;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Lcom/spotify/mobile/android/ui/prettylist/h;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    iget v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->c:I

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    iget v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->c:I

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/d;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->g()V

    return-void
.end method

.method private static a(FFFFF)F
    .registers 7

    sub-float v0, p0, p1

    sub-float v1, p4, p3

    mul-float/2addr v0, v1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/prettylist/d;)F
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->g:F

    return v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/prettylist/d;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->d:I

    return p1
.end method

.method private a(F)V
    .registers 8

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->j:Landroid/animation/Animator;

    :cond_d
    iput-boolean v5, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->i:Z

    iget v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->g:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget-object v1, Lcom/spotify/mobile/android/ui/prettylist/d;->k:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->g:F

    aput v4, v2, v3

    aput p1, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->j:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->j:Landroid/animation/Animator;

    const/high16 v2, 0x43c8

    mul-float/2addr v0, v2

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->j:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->l:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/prettylist/d;F)V
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->g:F

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->o()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->p()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->q()V

    return-void
.end method

.method private static b(F)F
    .registers 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/prettylist/d;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/prettylist/d;)Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/prettylist/d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/prettylist/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->o()V

    return-void
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/prettylist/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->p()V

    return-void
.end method

.method static synthetic g(Lcom/spotify/mobile/android/ui/prettylist/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->q()V

    return-void
.end method

.method private l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->i:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->h:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->i:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->h:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private n()I
    .registers 7

    const/4 v0, 0x0

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    if-nez v1, :cond_9

    :goto_8
    return v0

    :cond_9
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->d:I

    int-to-float v1, v1

    int-to-float v4, v3

    div-float/2addr v1, v4

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->l()Z

    move-result v4

    if-eqz v4, :cond_1b

    move v1, v2

    :cond_1b
    cmpg-float v4, v1, v5

    if-gtz v4, :cond_33

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/prettylist/d;->b(F)F

    move-result v0

    const v1, 0x3ecccccd

    invoke-static {v0, v2, v5, v5, v1}, Lcom/spotify/mobile/android/ui/prettylist/d;->a(FFFFF)F

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->c:I

    int-to-float v1, v1

    invoke-static {v0, v2, v5, v2, v1}, Lcom/spotify/mobile/android/ui/prettylist/d;->a(FFFFF)F

    move-result v0

    :goto_31
    float-to-int v0, v0

    goto :goto_8

    :cond_33
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->f:Landroid/view/View;

    if-eqz v1, :cond_3d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_3d
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    iget v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->d:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_31
.end method

.method private o()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->n()I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4
.end method

.method private p()V
    .registers 8

    const/4 v6, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->l()Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v2

    :goto_10
    const v1, 0x3c23d70a

    cmpg-float v1, v0, v1

    if-gez v1, :cond_80

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->h:Z

    if-nez v1, :cond_80

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_21
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    :cond_27
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    if-nez v0, :cond_35

    move v0, v1

    :goto_2c
    iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    if-nez v3, :cond_4f

    :cond_30
    :goto_30
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_10

    :cond_35
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v3, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->d:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    const/high16 v3, 0x3f40

    const v4, 0x3dcccccd

    invoke-static {v0, v3, v4, v1, v2}, Lcom/spotify/mobile/android/ui/prettylist/d;->a(FFFFF)F

    move-result v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/d;->b(F)F

    move-result v0

    goto :goto_2c

    :cond_4f
    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->h:Z

    if-nez v3, :cond_59

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->m()Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_59
    iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b()I

    move-result v4

    iget v5, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->d:I

    sub-int/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float v3, v4, v3

    const/high16 v4, 0x3fc0

    const/high16 v5, 0x3f00

    invoke-static {v3, v4, v5, v1, v2}, Lcom/spotify/mobile/android/ui/prettylist/d;->a(FFFFF)F

    move-result v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/prettylist/d;->b(F)F

    move-result v1

    iget v2, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->g:F

    mul-float/2addr v1, v2

    goto :goto_30

    :cond_80
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21
.end method

.method private q()V
    .registers 7

    const/high16 v1, 0x3f80

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->f:Landroid/view/View;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    if-nez v0, :cond_12

    move v0, v1

    :cond_e
    :goto_e
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_6

    :cond_12
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->h:Z

    if-nez v0, :cond_1e

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->m()Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v1

    goto :goto_e

    :cond_1e
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b()I

    move-result v4

    iget v5, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->d:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    const/high16 v3, 0x4000

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v1, v4}, Lcom/spotify/mobile/android/ui/prettylist/d;->a(FFFFF)F

    move-result v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/d;->b(F)F

    move-result v0

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->i:Z

    if-eqz v3, :cond_e

    iget v3, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->g:F

    sub-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_e
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    return-object v0
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(I)V

    return-void
.end method

.method public final a(Landroid/support/v4/view/ah;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/HeaderView;->a(Landroid/support/v4/view/ah;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/HeaderView;->b(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/ui/prettylist/a;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a(Lcom/spotify/mobile/android/ui/prettylist/a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b()I

    move-result v1

    if-eqz p1, :cond_14

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    :goto_13
    return-void

    :cond_14
    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_13
.end method

.method public final b()Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    return-object v0
.end method

.method public final b(Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b(Landroid/view/View;)V

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->q()V

    :cond_11
    return-void
.end method

.method public final c()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/d;->removeView(Landroid/view/View;)V

    :cond_9
    iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    if-eqz p1, :cond_16

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/prettylist/d;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->o()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->p()V

    :cond_16
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->requestLayout()V

    return-void
.end method

.method public final d()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public final e()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/HeaderView;->a()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/spotify/android/paste/widget/HeaderView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Z)V

    return-void
.end method

.method public final h()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->h:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, Lcom/spotify/mobile/android/ui/prettylist/d;->a(Z)V

    goto :goto_5

    :cond_16
    iput-boolean v4, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->h:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->f:Landroid/view/View;

    if-eqz v2, :cond_29

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_29
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    iget v3, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->c:I

    add-int/2addr v1, v3

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b(I)V

    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/d;->a(F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->n()I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0, v4}, Lcom/spotify/mobile/android/ui/prettylist/d;->a(Z)V

    goto :goto_5
.end method

.method public final i()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->h:Z

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->h:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    iget v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->c:I

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/d;->a(F)V

    goto :goto_9
.end method

.method public final j()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public final k()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c()I

    move-result v1

    const/4 v2, 0x0

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    const/4 v4, 0x0

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v2, v4, v4, v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->layout(IIII)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    if-eqz v1, :cond_1e

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->n()I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v4, v1, v0, v3}, Landroid/view/View;->layout(IIII)V

    :cond_1e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    const/high16 v4, 0x4000

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_28

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/spotify/mobile/android/ui/prettylist/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support unspecified width."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/d;->getWidth()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_47
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->measure(II)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/spotify/mobile/android/ui/prettylist/d;->setMeasuredDimension(II)V

    return-void
.end method
