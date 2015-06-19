.class  Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorICS.java"
.implements Landroid/animation/Animator$AnimatorListener;
.field final synthetic this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;
.field private final synthetic val$listener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
.method constructor <init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
.registers 3
iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;
iput-object p2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->val$listener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationCancel(Landroid/animation/Animator;)V
.registers 4
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->val$listener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
return-void
.end method
.method public onAnimationEnd(Landroid/animation/Animator;)V
.registers 4
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->val$listener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
return-void
.end method
.method public onAnimationRepeat(Landroid/animation/Animator;)V
.registers 4
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->val$listener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
return-void
.end method
.method public onAnimationStart(Landroid/animation/Animator;)V
.registers 4
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->val$listener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
return-void
.end method