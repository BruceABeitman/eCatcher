.class  Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$1;
.super Ljava/lang/Object;
.source "CameraBottomMenuView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
.method constructor <init>(Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$1;->this$0:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$1;->this$0:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
#getter for: Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mListener:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->access$0(Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;)Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;->onShowModeClick()V
return-void
.end method