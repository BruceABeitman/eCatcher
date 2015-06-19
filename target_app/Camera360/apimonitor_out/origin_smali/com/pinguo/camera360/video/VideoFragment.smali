.class public abstract Lcom/pinguo/camera360/video/VideoFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "VideoFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mVideoFocusManager:Lcom/pinguo/camera360/video/util/VideoFocusManager;

.field protected mVideoModel:Lcom/pinguo/camera360/video/VideoModel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/video/VideoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCameraModel()Lcom/pinguo/camera360/video/VideoModel;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    return-object v0
.end method

.method protected abstract initCameraModel()Lcom/pinguo/camera360/video/VideoModel;
.end method

.method public onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->setCameraId(ILandroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->setCamera(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V

    return-void
.end method

.method public onCameraOpenFail(Ljava/lang/Exception;)V
    .registers 8

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCameraOpenFail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", at time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080246

    const v2, 0x7f0800a7

    const v3, 0x7f080002

    new-instance v4, Lcom/pinguo/camera360/video/VideoFragment$1;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/video/VideoFragment$1;-><init>(Lcom/pinguo/camera360/video/VideoFragment;)V

    new-instance v5, Lcom/pinguo/camera360/video/VideoFragment$2;

    invoke-direct {v5, p0}, Lcom/pinguo/camera360/video/VideoFragment$2;-><init>(Lcom/pinguo/camera360/video/VideoFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/VideoFragment;->initCameraModel()Lcom/pinguo/camera360/video/VideoModel;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/video/VideoModel;->setCameraProcessCallback(Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onPause()V

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/VideoFragment;->stopPreview()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/VideoFragment;->releaseCamera()V

    return-void
.end method

.method public onPreReleaseCamera()V
    .registers 1

    return-void
.end method

.method public onReleaseCamera()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReleaseCamera"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onResume()V

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/VideoFragment;->openCamera()V

    return-void
.end method

.method public onStartPreview()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartPreview"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartPreviewFail(Ljava/lang/Exception;)V
    .registers 4

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartPreviewFail"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopPreview()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopPreview"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchCamera(Z)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSwitchCamera, facingFront:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected openCamera()V
    .registers 5

    iget-object v2, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/VideoModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v2

    sget-object v3, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-ne v2, v3, :cond_17

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v0

    iget-object v2, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/video/VideoModel;->openCamera(I)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    :cond_17
    return-void
.end method

.method public preCameraOpen()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "preCameraOpen"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/camera360/video/util/VideoFocusManager;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/video/util/VideoFocusManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoFocusManager:Lcom/pinguo/camera360/video/util/VideoFocusManager;

    return-void
.end method

.method public preStartPreview()V
    .registers 4

    sget-object v1, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "preStartPreview"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/VideoModel;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFrontPreviewAdjustDegree()I

    move-result v0

    :goto_18
    iget-object v1, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/video/VideoModel;->setDisplayOrientation(I)V

    return-void

    :cond_1e
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBackPreviewAdjustDegree()I

    move-result v0

    goto :goto_18
.end method

.method protected releaseCamera()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/VideoModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/VideoModel;->releaseCamera()V

    :cond_f
    return-void
.end method

.method protected startPreview()V
    .registers 4

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startPreview state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/VideoModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/VideoModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/VideoModel;->startPreview()V

    :cond_2a
    return-void
.end method

.method protected stopPreview()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/VideoModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/VideoModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-ne v0, v1, :cond_19

    :cond_14
    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/VideoModel;->stopPreview()V

    :cond_19
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "surfaceChanged width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/VideoModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/VideoModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-eq v0, v1, :cond_3e

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/VideoModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-ne v0, v1, :cond_41

    :cond_3e
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/VideoFragment;->startPreview()V

    :cond_41
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "surfaceCreated surfaceHolder ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    sget-object v0, Lcom/pinguo/camera360/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
