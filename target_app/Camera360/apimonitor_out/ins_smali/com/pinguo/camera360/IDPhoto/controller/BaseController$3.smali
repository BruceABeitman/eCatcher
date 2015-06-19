.class  Lcom/pinguo/camera360/IDPhoto/controller/BaseController$3;
.super Ljava/lang/Object;
.source "BaseController.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/BaseController;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/BaseController;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x2
invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
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