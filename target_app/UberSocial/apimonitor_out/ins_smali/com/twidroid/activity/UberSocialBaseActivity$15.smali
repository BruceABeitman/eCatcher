.class  Lcom/twidroid/activity/UberSocialBaseActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/twidroid/activity/UberSocialBaseActivity;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$15;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iput-object p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$15;->a:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
const/high16 v2, 0x3f80
new-instance v0, Landroid/view/animation/ScaleAnimation;
const/4 v1, 0x0
invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V
const-wide/16 v1, 0x1f4
invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$15;->a:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$15;->a:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
new-instance v1, Lcom/twidroid/activity/UberSocialBaseActivity$15$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$15$1;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity$15;)V
invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
return-void
.end method