.class  Lcom/pinguo/camera360/ui/AnimUtils$2;
.super Ljava/lang/Object;
.source "AnimUtils.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field private final synthetic val$view:Landroid/view/View;
.method constructor <init>(Landroid/view/View;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/AnimUtils$2;->val$view:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/ui/AnimUtils$2;->val$view:Landroid/view/View;
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