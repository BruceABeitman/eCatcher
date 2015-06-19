.class  Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment$1;
.super Ljava/lang/Object;
.source "AdjustOrientationFragment.java"
.implements Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;
.field final synthetic this$0:Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;
.method constructor <init>(Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment$1;->this$0:Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTimerDecrement(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment$1;->this$0:Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;
#getter for: Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-static {v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->access$1(Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;)Lcom/pinguo/camera360/camera/view/TimerCameraView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->doTimerDecrement()V
return-void
.end method
.method public onTimerFinished()V
.registers 5
const/4 v3, 0x0
invoke-static {}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->access$0()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "onTimerFinished"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment$1;->this$0:Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;
#getter for: Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPauseing:Z
invoke-static {v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->access$2(Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;)Z
move-result v0
if-eqz v0, :cond_14
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment$1;->this$0:Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;
#getter for: Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-static {v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->access$1(Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;)Lcom/pinguo/camera360/camera/view/TimerCameraView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->hide()V
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment$1;->this$0:Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;
#calls: Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
invoke-static {v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->access$3(Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;)Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment$1;->this$0:Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setTakePictureFailCallBack(Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment$1;->this$0:Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;
#calls: Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
invoke-static {v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->access$3(Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;)Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment$1;->this$0:Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;
iget-object v2, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment$1;->this$0:Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;
invoke-virtual {v0, v1, v3, v3, v2}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;)V
goto :goto_13
.end method
.method public onTimerStart()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->access$0()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "onTimerStart"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public onTimerStop()V
.registers 1
return-void
.end method