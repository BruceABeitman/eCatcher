.class Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;
.end annotation


# instance fields
.field final synthetic a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;Z)Z

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->e(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Lcom/ubermedia/ui/widgets/b;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->h(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->b(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;F)F

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->i(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->k(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->l(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->j(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5b
    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->f(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-virtual {v2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$6;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->g(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;ILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
