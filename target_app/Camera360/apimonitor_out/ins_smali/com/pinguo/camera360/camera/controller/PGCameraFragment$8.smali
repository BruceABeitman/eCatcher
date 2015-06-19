.class  Lcom/pinguo/camera360/camera/controller/PGCameraFragment$8;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$8;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$8;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$12(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isFrontCamera()Z
move-result v0
return v0
.end method