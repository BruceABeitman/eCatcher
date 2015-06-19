.class public interface abstract Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;
.super Ljava/lang/Object;
.source "CameraModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/camera/model/CameraModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraProcessCallback"
.end annotation


# virtual methods
.method public abstract onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
.end method

.method public abstract onCameraOpenFail(Ljava/lang/Exception;)V
.end method

.method public abstract onPreReleaseCamera()V
.end method

.method public abstract onReleaseCamera()V
.end method

.method public abstract onStartPreview()V
.end method

.method public abstract onStartPreviewFail(Ljava/lang/Exception;)V
.end method

.method public abstract onStopPreview()V
.end method

.method public abstract onSwitchCamera(Z)V
.end method

.method public abstract preCameraOpen()V
.end method

.method public abstract preStartPreview()V
.end method
