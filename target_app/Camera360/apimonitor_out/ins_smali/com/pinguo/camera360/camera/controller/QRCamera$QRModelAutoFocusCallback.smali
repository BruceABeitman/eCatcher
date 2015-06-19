.class final Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;
.super Ljava/lang/Object;
.source "QRCamera.java"
.implements Landroid/hardware/Camera$AutoFocusCallback;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/QRCamera;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
.registers 7
const-string/jumbo v1, "QRCamera"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "mHandler = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;
invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$2(Lcom/pinguo/camera360/camera/controller/QRCamera;)Landroid/os/Handler;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "mModel.getCameraBase().getCameraState() ="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;
invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$5(Lcom/pinguo/camera360/camera/controller/QRCamera;)Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$2(Lcom/pinguo/camera360/camera/controller/QRCamera;)Landroid/os/Handler;
move-result-object v1
if-eqz v1, :cond_84
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$5(Lcom/pinguo/camera360/camera/controller/QRCamera;)Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v1
sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_84
const-string/jumbo v1, "QRCamera"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "onAutoFocus result = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$2(Lcom/pinguo/camera360/camera/controller/QRCamera;)Landroid/os/Handler;
move-result-object v1
const/4 v2, 0x4
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$2(Lcom/pinguo/camera360/camera/controller/QRCamera;)Landroid/os/Handler;
move-result-object v1
const-wide/16 v2, 0x5dc
invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:goto_83
return-void
:cond_84
const-string/jumbo v1, "QRCamera"
const-string/jumbo v2, "Got auto-focus callback, but no handler for it"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_83
.end method