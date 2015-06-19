.class  Lcom/pinguo/camera360/video/PGVideoFragment$4;
.super Ljava/lang/Object;
.source "PGVideoFragment.java"
.implements Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;
.field final synthetic this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
.method constructor <init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$4;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTimerDecrement(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment$4;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
#getter for: Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;
invoke-static {v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$8(Lcom/pinguo/camera360/video/PGVideoFragment;)Lcom/pinguo/camera360/video/view/PGVideoView;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->doTimerDecrement()V
return-void
.end method
.method public onTimerFinished()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment$4;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
#getter for: Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;
invoke-static {v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$8(Lcom/pinguo/camera360/video/PGVideoFragment;)Lcom/pinguo/camera360/video/view/PGVideoView;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->hide()V
iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment$4;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
#calls: Lcom/pinguo/camera360/video/PGVideoFragment;->startVideoRecording()V
invoke-static {v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$9(Lcom/pinguo/camera360/video/PGVideoFragment;)V
return-void
.end method
.method public onTimerStart()V
.registers 1
return-void
.end method
.method public onTimerStop()V
.registers 1
return-void
.end method