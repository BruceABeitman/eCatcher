.class public Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;
.super Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.source "SelfShootCameraModel.java"


# static fields
.field private static final FILLIN_DELAY_MILLIS:J = 0x12cL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFillInDelayHandler:Landroid/os/Handler;

.field private mFillInDelayRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->mFillInDelayHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->realTakePicture(Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V

    return-void
.end method

.method private realTakePicture(Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->takePicture(Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V

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

    sget-object v0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "destroyMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->getSubEffect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setEffectToSelfShoot(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V

    return-void
.end method

.method public getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f080330

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraModeIndex()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public initMode()V
    .registers 6

    sget-object v3, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "initMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getEffectOfSelfShoot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->setSubEffect(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_4c

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCameraCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_4c

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraDevice()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v3

    if-nez v3, :cond_4d

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCurCameraId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->switchCamera(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4c

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v3

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setCameraId(ILandroid/content/Context;)V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    sget-object v3, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "change camera to FACING_FRONT"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_55
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v3

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->switchCamera(Landroid/content/Context;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_4c

    :catch_61
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c
.end method

.method public pauseModel()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->mFillInDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->mFillInDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->mFillInDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->pauseModel()V

    return-void
.end method

.method public takePicture(Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V
    .registers 8

    const/4 v1, 0x1

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFillInLightIndex()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2a

    move v0, v1

    :goto_d
    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraFacing()I

    move-result v2

    if-ne v2, v1, :cond_2c

    new-instance v1, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel$1;-><init>(Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->mFillInDelayRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->mFillInDelayHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->mFillInDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_29
    return-void

    :cond_2a
    const/4 v0, 0x0

    goto :goto_d

    :cond_2c
    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->realTakePicture(Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V

    goto :goto_29
.end method
