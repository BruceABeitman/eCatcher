.class public Lcom/pinguo/camera360/camera/model/EasyCameraModel;
.super Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.source "EasyCameraModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EasyCameraModel"


# instance fields
.field private mIsFront:Z

.field private mIsRTRecognizeSupported:Z

.field private mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

.field private mStopped:Z


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsRTRecognizeSupported:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsFront:Z

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mStopped:Z

    return-void
.end method

.method private initRecognizer(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    if-nez v0, :cond_b

    new-instance v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    :cond_b
    return-void
.end method

.method private releaseRecognizer()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->setEffectChangeCallback(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->stopFaceDetecters()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->stopRecognize()V

    :cond_12
    return-void
.end method

.method private setCameraType(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsFront:Z

    return-void
.end method


# virtual methods
.method public canReplaceEffectAfterTaken()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public destroyMode()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V

    const-string/jumbo v0, "EasyCameraModel"

    const-string/jumbo v1, "EasyCameraModel onModeDestroy"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->releaseRecognizer()V

    return-void
.end method

.method public getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f080336

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraModeIndex()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public getCurEffectIds([BLandroid/hardware/Camera$Size;I)[I
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getCurEffectIds([BLandroid/hardware/Camera$Size;)[I

    move-result-object v0

    return-object v0
.end method

.method public getRTRecSupport()Z
    .registers 2

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getRenderEasyCameraEnable()Z

    move-result v0

    return v0
.end method

.method public initMode()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V

    const-string/jumbo v0, "EasyCameraModel"

    const-string/jumbo v1, "EasyCameraModel onModeInit"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getRenderEasyCameraEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsRTRecognizeSupported:Z

    const-string/jumbo v0, "C360_EasyCamera_Other_SN"

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->setSubEffect(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->initRecognizer(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->isFrontCamera()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->setCameraType(Z)V

    return-void
.end method

.method public needEnablePreviewCallback()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsFront:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public needShowPreview()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public pauseModel()V
    .registers 3

    const-string/jumbo v0, "EasyCameraModel"

    const-string/jumbo v1, "EasyCameraModel pauseModel"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->pauseModel()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->stopRecognize()V

    :cond_15
    return-void
.end method

.method public processPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    if-nez v1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->isFaceDetectersInit()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setPreviewSize(Landroid/hardware/Camera$Size;)V

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsRTRecognizeSupported:Z

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setIsJpgSource(Z)V

    :cond_24
    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->initFaceDetecters()V

    goto :goto_4

    :cond_2a
    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsFront:Z

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->isCameraTypeSetted()Z

    move-result v1

    if-nez v1, :cond_45

    :cond_3e
    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    iget-boolean v2, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsFront:Z

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setIsFrontCamera(Z)V

    :cond_45
    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsFront:Z

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_59

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->isCameraTypeSetted()Z

    move-result v1

    if-nez v1, :cond_60

    :cond_59
    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    iget-boolean v2, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsFront:Z

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setIsFrontCamera(Z)V

    :cond_60
    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsFront:Z

    if-nez v1, :cond_6c

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mStopped:Z

    if-nez v1, :cond_6c

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsRTRecognizeSupported:Z

    if-nez v1, :cond_7a

    :cond_6c
    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->stopRecognize()V

    goto :goto_4

    :cond_7a
    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setPreviewData([B)V

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setPreviewSize(Landroid/hardware/Camera$Size;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->startRecognize()V

    goto/16 :goto_4
.end method

.method public resumeModel()V
    .registers 3

    const-string/jumbo v0, "EasyCameraModel"

    const-string/jumbo v1, "EasyCameraModel pauseModel"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->resumeModel()V

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsFront:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->startRecognize()V

    :cond_13
    return-void
.end method

.method public setEffectChangeCallback(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsRTRecognizeSupported:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setContextRecognizerCallback(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;)V

    :cond_d
    return-void
.end method

.method public setJpgDataInfos(Landroid/hardware/Camera$Size;I)V
    .registers 3

    invoke-static {p1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setJpgDataInfos(Landroid/hardware/Camera$Size;)V

    return-void
.end method

.method public setPreviewOrientation(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setOrientation(I)V

    :cond_9
    return-void
.end method

.method public startRecognize()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mStopped:Z

    return-void
.end method

.method public stopRecognize()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mStopped:Z

    return-void
.end method

.method public updateCameraType()V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->isFrontCamera()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->setCameraType(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->mIsFront:Z

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setIsFrontCamera(Z)V

    :cond_12
    return-void
.end method
