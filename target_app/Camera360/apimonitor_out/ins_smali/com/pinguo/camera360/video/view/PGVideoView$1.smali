.class  Lcom/pinguo/camera360/video/view/PGVideoView$1;
.super Ljava/lang/Object;
.source "PGVideoView.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$0:Lcom/pinguo/camera360/video/view/PGVideoView;
.method constructor <init>(Lcom/pinguo/camera360/video/view/PGVideoView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/video/view/PGVideoView$1;->this$0:Lcom/pinguo/camera360/video/view/PGVideoView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView$1;->this$0:Lcom/pinguo/camera360/video/view/PGVideoView;
#getter for: Lcom/pinguo/camera360/video/view/PGVideoView;->mTakePictureMask:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/video/view/PGVideoView;->access$0(Lcom/pinguo/camera360/video/view/PGVideoView;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView$1;->this$0:Lcom/pinguo/camera360/video/view/PGVideoView;
const/4 v1, 0x1
#calls: Lcom/pinguo/camera360/video/view/PGVideoView;->showOperationView(Z)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/video/view/PGVideoView;->access$1(Lcom/pinguo/camera360/video/view/PGVideoView;Z)V
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