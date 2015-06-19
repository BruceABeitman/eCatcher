.class  Lcom/umeng/newxp/view/ah;
.super Ljava/lang/Object;
.source "Hypertextlink.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic a:Lcom/umeng/newxp/view/af;
.method constructor <init>(Lcom/umeng/newxp/view/af;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/ah;->a:Lcom/umeng/newxp/view/af;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 3
iget-object v0, p0, Lcom/umeng/newxp/view/ah;->a:Lcom/umeng/newxp/view/af;
invoke-virtual {v0}, Lcom/umeng/newxp/view/af;->a()V
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