.class final Landroid/support/v4/view/ViewPropertyAnimatorCompatICS$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompatICS.java"
.field final synthetic val$listener:Landroid/support/v4/view/ViewPropertyAnimatorListener;
.field final synthetic val$view:Landroid/view/View;
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorListener;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS$1;->val$listener:Landroid/support/v4/view/ViewPropertyAnimatorListener;
iput-object p2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS$1;->val$view:Landroid/view/View;
invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V
return-void
.end method
.method public onAnimationCancel(Landroid/animation/Animator;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS$1;->val$listener:Landroid/support/v4/view/ViewPropertyAnimatorListener;
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS$1;->val$view:Landroid/view/View;
invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V
return-void
.end method
.method public onAnimationEnd(Landroid/animation/Animator;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS$1;->val$listener:Landroid/support/v4/view/ViewPropertyAnimatorListener;
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS$1;->val$view:Landroid/view/View;
invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V
return-void
.end method
.method public onAnimationStart(Landroid/animation/Animator;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS$1;->val$listener:Landroid/support/v4/view/ViewPropertyAnimatorListener;
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS$1;->val$view:Landroid/view/View;
invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V
return-void
.end method