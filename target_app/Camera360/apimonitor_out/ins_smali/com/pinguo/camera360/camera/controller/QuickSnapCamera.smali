.class public Lcom/pinguo/camera360/camera/controller/QuickSnapCamera;
.super Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.source "QuickSnapCamera.java"
.method public constructor <init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
return-void
.end method
.method public onEffectTypeChange(Ljava/lang/String;Z)V
.registers 3
return-void
.end method
.method public onModeFunctionClick()V
.registers 1
return-void
.end method
.method public onShutter()V
.registers 1
return-void
.end method
.method public onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/camera/controller/QuickSnapCamera; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/QuickSnapCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
const-string v1, " - Lcom/pinguo/camera360/camera/controller/QuickSnapCamera; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/QuickSnapCamera; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStop()V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/QuickSnapCamera; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSwitchCamera(Z)V
.registers 2
return-void
.end method