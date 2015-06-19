.class  Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$3;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$3;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$3;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTakePictureMask:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$3;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
const/4 v1, 0x1
#calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->showOperationView(Z)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Z)V
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