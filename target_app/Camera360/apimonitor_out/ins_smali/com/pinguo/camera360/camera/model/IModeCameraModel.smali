.class public interface abstract Lcom/pinguo/camera360/camera/model/IModeCameraModel;
.super Ljava/lang/Object;
.source "IModeCameraModel.java"
.method public abstract canReplaceEffectAfterTaken()Z
.end method
.method public abstract destroyMode()V
.end method
.method public abstract getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
.end method
.method public abstract initMode()V
.end method
.method public abstract makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)Lcom/pinguo/camera360/photoedit/PictureInfo;
.end method
.method public abstract needEnablePreviewCallback()Z
.end method
.method public abstract pauseModel()V
.end method
.method public abstract resumeModel()V
.end method
.method public abstract takePicture(Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V
.end method