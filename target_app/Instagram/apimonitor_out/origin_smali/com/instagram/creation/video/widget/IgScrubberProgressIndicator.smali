.class public Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;
.super Lcom/instagram/common/ui/widget/squareframelayout/SquareFrameLayout;
.source "IgScrubberProgressIndicator.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Landroid/animation/AnimatorSet;

.field private b:Z

.field private c:Z

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/common/ui/widget/squareframelayout/SquareFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b:Z

    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->c:Z

    new-instance v0, Lcom/instagram/creation/video/widget/a;

    invoke-direct {v0, p0}, Lcom/instagram/creation/video/widget/a;-><init>(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)V

    iput-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->d:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->view_ig_scrubber_progress_indicator:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b()V

    return-void
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b:Z

    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_10
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)Landroid/animation/AnimatorSet;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private b()V
    .registers 14

    const-wide/16 v7, 0xfa

    const/4 v6, 0x2

    sget v0, Lcom/facebook/av;->dot1:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->dot2:I

    invoke-virtual {p0, v1}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/av;->dot3:I

    invoke-virtual {p0, v2}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "scaleX"

    new-array v4, v6, [F

    fill-array-data v4, :array_de

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-string v5, "scaleY"

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    const-string v5, "scaleX"

    new-array v6, v6, [F

    fill-array-data v6, :array_e6

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-string v6, "scaleY"

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v11, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v12, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/instagram/creation/video/widget/b;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/widget/b;-><init>(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_de
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x71t 0x3dt 0xaat 0x3ft
    .end array-data

    :array_e6
    .array-data 0x4
        0x71t 0x3dt 0xaat 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic c(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->d:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/common/ui/widget/squareframelayout/SquareFrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->c:Z

    invoke-virtual {p0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a()V

    :cond_f
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/instagram/common/ui/widget/squareframelayout/SquareFrameLayout;->onDetachedFromWindow()V

    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->c:Z

    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b:Z

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/instagram/common/ui/widget/squareframelayout/SquareFrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->c:Z

    if-eqz v0, :cond_c

    if-nez p2, :cond_d

    invoke-direct {p0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b:Z

    goto :goto_c
.end method
