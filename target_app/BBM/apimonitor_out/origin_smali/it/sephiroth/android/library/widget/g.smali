.class final Lit/sephiroth/android/library/widget/g;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lit/sephiroth/android/library/widget/ao;

.field final b:Ljava/lang/Runnable;

.field final synthetic c:Lit/sephiroth/android/library/widget/AbsHListView;

.field private d:I


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 4

    iput-object p1, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lit/sephiroth/android/library/widget/h;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/h;-><init>(Lit/sephiroth/android/library/widget/g;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Ljava/lang/Runnable;

    new-instance v0, Lit/sephiroth/android/library/widget/ao;

    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lit/sephiroth/android/library/widget/ao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/g;)Lit/sephiroth/android/library/widget/ao;
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    return-object v0
.end method


# virtual methods
.method final a()V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    iput v0, v2, Lit/sephiroth/android/library/widget/ao;->a:I

    iget-object v4, v2, Lit/sephiroth/android/library/widget/ao;->b:Lit/sephiroth/android/library/widget/ap;

    invoke-virtual {v4, v3}, Lit/sephiroth/android/library/widget/ap;->a(I)Z

    move-result v3

    iget-object v2, v2, Lit/sephiroth/android/library/widget/ao;->c:Lit/sephiroth/android/library/widget/ap;

    invoke-virtual {v2, v1}, Lit/sephiroth/android/library/widget/ap;->a(I)Z

    move-result v2

    if-nez v3, :cond_1c

    if-eqz v2, :cond_30

    :cond_1c
    :goto_1c
    if-eqz v0, :cond_32

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x6

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    :goto_2f
    return-void

    :cond_30
    move v0, v1

    goto :goto_1c

    :cond_32
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v2, -0x1

    iput v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V

    goto :goto_2f
.end method

.method final a(I)V
    .registers 9

    const v5, 0x7fffffff

    const/4 v3, 0x0

    if-gez p1, :cond_23

    move v1, v5

    :goto_7
    iput v1, p0, Lit/sephiroth/android/library/widget/g;->d:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    const/4 v2, 0x0

    iput-object v2, v0, Lit/sephiroth/android/library/widget/ao;->d:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    move v2, p1

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lit/sephiroth/android/library/widget/ao;->a(IIIIII)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x4

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_23
    move v1, v3

    goto :goto_7
.end method

.method final a(IIZ)V
    .registers 8

    const/4 v1, 0x0

    if-gez p1, :cond_2b

    const v0, 0x7fffffff

    :goto_6
    iput v0, p0, Lit/sephiroth/android/library/widget/g;->d:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    if-eqz p3, :cond_2d

    sget-object v2, Lit/sephiroth/android/library/widget/AbsHListView;->T:Landroid/view/animation/Interpolator;

    :goto_e
    iput-object v2, v3, Lit/sephiroth/android/library/widget/ao;->d:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    iput v1, v2, Lit/sephiroth/android/library/widget/ao;->a:I

    iget-object v3, v2, Lit/sephiroth/android/library/widget/ao;->b:Lit/sephiroth/android/library/widget/ap;

    invoke-virtual {v3, v0, p1, p2}, Lit/sephiroth/android/library/widget/ap;->a(III)V

    iget-object v0, v2, Lit/sephiroth/android/library/widget/ao;->c:Lit/sephiroth/android/library/widget/ap;

    invoke-virtual {v0, v1, v1, p2}, Lit/sephiroth/android/library/widget/ap;->a(III)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x4

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_2b
    move v0, v1

    goto :goto_6

    :cond_2d
    const/4 v2, 0x0

    goto :goto_e
.end method

.method final b()V
    .registers 3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, -0x1

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->k(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ao;->d()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->l(Lit/sephiroth/android/library/widget/AbsHListView;)Z

    return-void
.end method

.method final b(I)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    const/4 v1, 0x0

    iput-object v1, v0, Lit/sephiroth/android/library/widget/ao;->d:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    const/high16 v4, -0x8000

    iget-object v2, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v6

    move v2, p1

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lit/sephiroth/android/library/widget/ao;->a(IIIIII)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x6

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .registers 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_1dc

    :pswitch_9
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/g;->b()V

    :cond_c
    :goto_c
    return-void

    :pswitch_d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ao;->a()Z

    move-result v0

    if-nez v0, :cond_c

    :pswitch_15
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V

    :cond_20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_32

    :cond_2e
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/g;->b()V

    goto :goto_c

    :cond_32
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ao;->c()Z

    move-result v5

    iget-object v0, v0, Lit/sephiroth/android/library/widget/ao;->b:Lit/sephiroth/android/library/widget/ap;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/ap;->b(Lit/sephiroth/android/library/widget/ap;)I

    move-result v6

    iget v0, p0, Lit/sephiroth/android/library/widget/g;->d:I

    sub-int/2addr v0, v6

    if-lez v0, :cond_108

    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    iput v4, v1, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v4, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_73
    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget-object v7, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v7, v7, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v4, v7

    invoke-virtual {v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1d9

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_88
    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4, v0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->b(II)Z

    move-result v8

    if-eqz v8, :cond_144

    if-eqz v0, :cond_144

    move v4, v3

    :goto_93
    if-eqz v4, :cond_164

    if-eqz v7, :cond_af

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v1, v4, v1

    sub-int v1, v0, v1

    neg-int v1, v1

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v6, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v6

    iget-object v7, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v7, v7, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    invoke-static {v4, v1, v6, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;III)Z

    :cond_af
    if-eqz v5, :cond_c

    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v4

    iget-object v5, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v5, v5, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    iget-object v1, v1, Lit/sephiroth/android/library/widget/ao;->b:Lit/sephiroth/android/library/widget/ap;

    iget v6, v1, Lit/sephiroth/android/library/widget/ap;->e:I

    if-nez v6, :cond_d1

    iput v5, v1, Lit/sephiroth/android/library/widget/ap;->c:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lit/sephiroth/android/library/widget/ap;->b:J

    iget v5, v1, Lit/sephiroth/android/library/widget/ap;->a:F

    float-to-int v5, v5

    invoke-virtual {v1, v4, v2, v2, v5}, Lit/sephiroth/android/library/widget/ap;->a(IIII)V

    :cond_d1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_e3

    if-ne v1, v3, :cond_151

    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->h(Lit/sephiroth/android/library/widget/AbsHListView;)Z

    move-result v1

    if-nez v1, :cond_151

    :cond_e3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v2, 0x6

    iput v2, v1, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ao;->b()F

    move-result v1

    float-to-int v1, v1

    if-lez v0, :cond_147

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->i(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/z;->a(I)V

    :cond_fa
    :goto_fa
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    :cond_108
    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v7, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v7, v7, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v7, v1

    iput v7, v4, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v4, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    neg-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_73

    :cond_144
    move v4, v2

    goto/16 :goto_93

    :cond_147
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->j(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/z;->a(I)V

    goto :goto_fa

    :cond_151
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, -0x1

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    goto :goto_fa

    :cond_164
    if-eqz v5, :cond_17a

    if-nez v4, :cond_17a

    if-eqz v8, :cond_16f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    :cond_16f
    iput v6, p0, Lit/sephiroth/android/library/widget/g;->d:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    :cond_17a
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/g;->b()V

    goto/16 :goto_c

    :pswitch_17f
    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ao;->c()Z

    move-result v0

    if-eqz v0, :cond_1d4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v4

    iget-object v0, v1, Lit/sephiroth/android/library/widget/ao;->b:Lit/sephiroth/android/library/widget/ap;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/ap;->b(Lit/sephiroth/android/library/widget/ap;)I

    move-result v5

    sub-int v0, v5, v4

    iget-object v6, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v7, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v7, v7, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    invoke-static {v6, v0, v4, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Lit/sephiroth/android/library/widget/AbsHListView;III)Z

    move-result v0

    if-eqz v0, :cond_1c6

    if-gtz v4, :cond_1bf

    if-lez v5, :cond_1bf

    move v0, v3

    :goto_1a6
    if-ltz v4, :cond_1ab

    if-gez v5, :cond_1ab

    move v2, v3

    :cond_1ab
    if-nez v0, :cond_1af

    if-eqz v2, :cond_1c1

    :cond_1af
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ao;->b()F

    move-result v0

    float-to-int v0, v0

    if-eqz v2, :cond_1b7

    neg-int v0, v0

    :cond_1b7
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ao;->d()V

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/g;->a(I)V

    goto/16 :goto_c

    :cond_1bf
    move v0, v2

    goto :goto_1a6

    :cond_1c1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/g;->a()V

    goto/16 :goto_c

    :cond_1c6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    :cond_1d4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/g;->b()V

    goto/16 :goto_c

    :cond_1d9
    move v1, v2

    goto/16 :goto_88

    :pswitch_data_1dc
    .packed-switch 0x3
        :pswitch_d
        :pswitch_15
        :pswitch_9
        :pswitch_17f
    .end packed-switch
.end method
