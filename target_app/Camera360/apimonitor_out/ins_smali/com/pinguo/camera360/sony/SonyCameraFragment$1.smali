.class  Lcom/pinguo/camera360/sony/SonyCameraFragment$1;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$1;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSonyTimerSwitchState()Z
move-result v1
if-eqz v1, :cond_33
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$1;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$0(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
move-result-object v1
if-eqz v1, :cond_33
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$1;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$0(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->isTimerRunning()Z
move-result v1
if-eqz v1, :cond_33
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$1;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyTimerControl:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$0(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->stopTimer()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$1;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$1(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->reset()V
:goto_32
return-void
:cond_33
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$1;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->onShutterBtnClick()V
goto :goto_32
.end method