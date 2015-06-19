.class  Lcom/twidroid/activity/UberSocialBaseActivity$15$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic a:Lcom/twidroid/activity/UberSocialBaseActivity$15;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity$15;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$15$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$15;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$15$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$15;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$15;->a:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method