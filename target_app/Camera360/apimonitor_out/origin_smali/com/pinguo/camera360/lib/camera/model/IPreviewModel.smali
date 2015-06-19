.class public interface abstract Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
.super Ljava/lang/Object;
.source "IPreviewModel.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getSurfaceHolder()Landroid/view/SurfaceHolder;
.end method

.method public abstract init(Landroid/view/SurfaceView;Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V
.end method

.method public abstract onPreviewFrame([BLandroid/hardware/Camera;)V
.end method

.method public abstract preStartPreview()V
.end method

.method public abstract setSurfaceVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
.end method

.method public abstract startPreview(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
.end method

.method public abstract stopPreview(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
.end method
