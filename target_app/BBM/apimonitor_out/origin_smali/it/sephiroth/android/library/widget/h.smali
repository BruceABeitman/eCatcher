.class final Lit/sephiroth/android/library/widget/h;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/g;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/g;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/h;->a:Lit/sephiroth/android/library/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const/4 v1, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/h;->a:Lit/sephiroth/android/library/widget/g;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->d(Lit/sephiroth/android/library/widget/AbsHListView;)I

    move-result v0

    iget-object v2, p0, Lit/sephiroth/android/library/widget/h;->a:Lit/sephiroth/android/library/widget/g;

    iget-object v2, v2, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/AbsHListView;->e(Lit/sephiroth/android/library/widget/AbsHListView;)Landroid/view/VelocityTracker;

    move-result-object v2

    iget-object v3, p0, Lit/sephiroth/android/library/widget/h;->a:Lit/sephiroth/android/library/widget/g;

    iget-object v3, v3, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/ao;

    if-eqz v2, :cond_1a

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1b

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const/16 v4, 0x3e8

    iget-object v5, p0, Lit/sephiroth/android/library/widget/h;->a:Lit/sephiroth/android/library/widget/g;

    iget-object v5, v5, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v5}, Lit/sephiroth/android/library/widget/AbsHListView;->f(Lit/sephiroth/android/library/widget/AbsHListView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v4, p0, Lit/sephiroth/android/library/widget/h;->a:Lit/sephiroth/android/library/widget/g;

    iget-object v4, v4, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->g(Lit/sephiroth/android/library/widget/AbsHListView;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_89

    iget-object v2, v3, Lit/sephiroth/android/library/widget/ao;->b:Lit/sephiroth/android/library/widget/ap;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/ap;->e(Lit/sephiroth/android/library/widget/ap;)I

    move-result v2

    iget-object v4, v3, Lit/sephiroth/android/library/widget/ao;->b:Lit/sephiroth/android/library/widget/ap;

    invoke-static {v4}, Lit/sephiroth/android/library/widget/ap;->d(Lit/sephiroth/android/library/widget/ap;)I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, v3, Lit/sephiroth/android/library/widget/ao;->c:Lit/sephiroth/android/library/widget/ap;

    invoke-static {v4}, Lit/sephiroth/android/library/widget/ap;->e(Lit/sephiroth/android/library/widget/ap;)I

    move-result v4

    iget-object v5, v3, Lit/sephiroth/android/library/widget/ao;->c:Lit/sephiroth/android/library/widget/ap;

    invoke-static {v5}, Lit/sephiroth/android/library/widget/ap;->d(Lit/sephiroth/android/library/widget/ap;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/ao;->a()Z

    move-result v3

    if-nez v3, :cond_87

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_87

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    int-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_87

    move v0, v1

    :goto_7b
    if-eqz v0, :cond_89

    iget-object v0, p0, Lit/sephiroth/android/library/widget/h;->a:Lit/sephiroth/android/library/widget/g;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1a

    :cond_87
    const/4 v0, 0x0

    goto :goto_7b

    :cond_89
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h;->a:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/g;->b()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/h;->a:Lit/sephiroth/android/library/widget/g;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v2, 0x3

    iput v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/h;->a:Lit/sephiroth/android/library/widget/g;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V

    goto/16 :goto_1a
.end method
