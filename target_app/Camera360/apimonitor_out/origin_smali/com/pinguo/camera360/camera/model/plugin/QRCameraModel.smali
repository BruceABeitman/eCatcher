.class public Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;
.super Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.source "QRCameraModel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V

    return-void
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public destroyMode()V
    .registers 5

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v1

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z

    move-result v0

    sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-eq v1, v2, :cond_22

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraDevice()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->setPreviewCallBack(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_22
    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V

    return-void
.end method

.method public getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "QR mode"

    return-object v0
.end method

.method public initMode()V
    .registers 5

    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V

    sget-object v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v2, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->setSubEffect(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCameraCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_43

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraDevice()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v2

    if-nez v2, :cond_44

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCurCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->switchCamera(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_43

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v2

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setCameraId(ILandroid/content/Context;)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    sget-object v2, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "change camera to FACING_FRONT"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4c
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->switchCamera(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_57} :catch_58

    goto :goto_43

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43
.end method

.method public pauseModel()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->pauseModel()V

    return-void
.end method

.method public preResumeModel()V
    .registers 4

    sget-object v1, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "preResumeModel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCameraCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_41

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraDevice()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_41

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCurCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->switchCamera(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_41

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v1

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setCameraId(ILandroid/content/Context;)V

    :cond_41
    return-void
.end method

.method public resumeModel()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->resumeModel()V

    return-void
.end method
