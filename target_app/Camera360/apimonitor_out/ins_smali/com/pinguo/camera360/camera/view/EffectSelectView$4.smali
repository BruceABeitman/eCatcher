.class  Lcom/pinguo/camera360/camera/view/EffectSelectView$4;
.super Ljava/lang/Object;
.source "EffectSelectView.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
.method constructor <init>(Lcom/pinguo/camera360/camera/view/EffectSelectView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$4;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$4;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->hide(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$4;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
#getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$4(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->setVisibility(I)V
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