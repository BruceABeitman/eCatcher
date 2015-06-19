.class public interface abstract Lcom/pinguo/camera360/lib/camera/model/ICameraModel;
.super Ljava/lang/Object;
.source "ICameraModel.java"
.method public abstract addCallbackBuffer([B)V
.end method
.method public abstract autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
.end method
.method public abstract cancelAutoFocus()V
.end method
.method public abstract cancelTakePicture()V
.end method
.method public abstract getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
.end method
.method public abstract makePreviewPicture([BLandroid/hardware/Camera;)V
.end method
.method public abstract openCamera(I)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
.end method
.method public abstract releaseCamera()V
.end method
.method public abstract setCameraState(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;)V
.end method
.method public abstract setDisplayOrientation(I)V
.end method
.method public abstract setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
.end method
.method public abstract startPreview()V
.end method
.method public abstract stopPreview()V
.end method
.method public abstract switchCamera(Landroid/content/Context;)V
.end method
.method public abstract takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;)V
.end method