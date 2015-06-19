.class final Landroid/support/v4/widget/ai;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/support/v4/widget/SwipeRefreshLayout;
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->h(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
iget-object v0, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->e(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/ac;
move-result-object v0
if-eqz v0, :cond_5a
iget-object v0, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-object v1, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->k(Landroid/support/v4/widget/SwipeRefreshLayout;)F
move-result v1
invoke-static {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout;F)F
iget-object v0, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->m(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->l(Landroid/support/v4/widget/SwipeRefreshLayout;)I
move-result v1
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v0, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->m(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->n(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v0, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->m(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation;
move-result-object v0
invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V
iget-object v0, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->m(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->o(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/DecelerateInterpolator;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
iget-object v0, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-object v1, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->m(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAnimation(Landroid/view/animation/Animation;)V
:cond_5a
iget-object v0, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-object v1, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->i(Landroid/support/v4/widget/SwipeRefreshLayout;)I
move-result v1
iget-object v2, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-virtual {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I
move-result v2
add-int/2addr v1, v2
iget-object v2, p0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->j(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout;ILandroid/view/animation/Animation$AnimationListener;)V
return-void
.end method