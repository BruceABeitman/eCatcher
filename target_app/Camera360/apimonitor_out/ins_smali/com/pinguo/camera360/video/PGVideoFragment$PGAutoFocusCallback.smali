.class final Lcom/pinguo/camera360/video/PGVideoFragment$PGAutoFocusCallback;
.super Ljava/lang/Object;
.source "PGVideoFragment.java"
.implements Landroid/hardware/Camera$AutoFocusCallback;
.field final synthetic this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
.method private constructor <init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$PGAutoFocusCallback;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/video/PGVideoFragment;Lcom/pinguo/camera360/video/PGVideoFragment$PGAutoFocusCallback;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/video/PGVideoFragment$PGAutoFocusCallback;-><init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V
return-void
.end method
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
.registers 7
iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$PGAutoFocusCallback;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
invoke-virtual {v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->getCameraModel()Lcom/pinguo/camera360/video/VideoModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/video/VideoModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "state in PGAutoFocusCallback ="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-eq v0, v1, :cond_27
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-ne v0, v1, :cond_28
:goto_27
:cond_27
return-void
:cond_28
iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$PGAutoFocusCallback;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
iget-object v1, v1, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFocusManager:Lcom/pinguo/camera360/video/util/VideoFocusManager;
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->onAutoFocus(Z)V
goto :goto_27
.end method