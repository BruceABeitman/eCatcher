.class  Lcom/pinguo/camera360/camera/focus/FocusViewUIManager$1;
.super Ljava/lang/Object;
.source "FocusViewUIManager.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
.method constructor <init>(Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager$1;->this$0:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 10
const/4 v7, 0x1
const v2, 0x3f333333
const v1, 0x3f19999a
new-instance v0, Landroid/view/animation/ScaleAnimation;
iget-object v3, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager$1;->this$0:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
#getter for: Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
invoke-static {v3}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->access$0(Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;)Lcom/pinguo/camera360/lib/ui/RotateLayout;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->getWidth()I
move-result v3
div-int/lit8 v3, v3, 0x2
int-to-float v5, v3
iget-object v3, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager$1;->this$0:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
#getter for: Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
invoke-static {v3}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->access$0(Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;)Lcom/pinguo/camera360/lib/ui/RotateLayout;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->getHeight()I
move-result v3
div-int/lit8 v3, v3, 0x2
int-to-float v6, v3
move v3, v1
move v4, v2
invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V
const-wide/16 v1, 0x64
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillEnabled(Z)V
invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager$1;->this$0:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
#getter for: Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
invoke-static {v1}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->access$0(Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;)Lcom/pinguo/camera360/lib/ui/RotateLayout;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V
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