.class public Lcom/pinguo/camera360/lib/camera/model/CameraModel;
.super Ljava/lang/Object;
.source "CameraModel.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/camera/model/ICameraModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;,
        Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;,
        Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;
    }
.end annotation


# static fields
.field private static final HANDLER_MSG_ID_ERROR_JPEG:I = 0x2

.field private static final HANDLER_MSG_ID_TAKE_OVERTIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final TAKE_OVER_TIME:I = 0x1f40

.field private static mCurrentMsgId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

.field private mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

.field private mCurCameraId:I

.field private mHandler:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;

.field private mPictureTakenFail:Z

.field private mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

.field private mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

.field private mTakePictureFailCallBack:Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCurrentMsgId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCurCameraId:I

    sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    new-instance v0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;-><init>(Lcom/pinguo/camera360/lib/camera/model/CameraModel;Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;)V

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mHandler:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;

    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCurrentMsgId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/lib/camera/model/CameraModel;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mPictureTakenFail:Z

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mTakePictureFailCallBack:Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mHandler:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mPictureTakenFail:Z

    return v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/lib/camera/model/CameraModel;Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    return-void
.end method


# virtual methods
.method public declared-synchronized addCallbackBuffer([B)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->addCallbackBuffer([B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelAutoFocus()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->cancelAutoFocus()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelTakePicture()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getCameraDevice()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraProcessCallback()Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

    return-object v0
.end method

.method public declared-synchronized getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurCameraId()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCurCameraId:I

    :goto_6
    return v0

    :cond_7
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v0

    goto :goto_6
.end method

.method public getPreviewModel()Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    return-object v0
.end method

.method public isFrontCamera()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCurCameraId:I

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->isFrontCamera(I)Z

    move-result v0

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v1

    if-eq v1, v0, :cond_f

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public makePreviewPicture([BLandroid/hardware/Camera;)V
    .registers 3

    return-void
.end method

.method public declared-synchronized openCamera(I)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
    .registers 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    sget-object v2, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "openCamera enter!mCameraState:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", camera id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

    invoke-interface {v2}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;->preCameraOpen()V
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_58

    :try_start_29
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->openCamera(I)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_58
    .catch Lcom/pinguo/camera360/lib/camera/CameraHardwareException; {:try_start_29 .. :try_end_33} :catch_46

    :try_start_33
    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    if-nez v2, :cond_5b

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Open camera fail! null instance return"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;->onCameraOpenFail(Ljava/lang/Exception;)V
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_58

    :goto_44
    monitor-exit p0

    return-object v1

    :catch_46
    move-exception v0

    :try_start_47
    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/CameraHardwareException;->printStackTrace()V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Open camera fail! null instance return"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;->onCameraOpenFail(Ljava/lang/Exception;)V
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_58

    goto :goto_44

    :catchall_58
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_5b
    :try_start_5b
    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    iput p1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCurCameraId:I

    sget-object v1, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "openCamera exit!mCameraState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    invoke-interface {v1, p1, v2}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;->onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
    :try_end_81
    .catchall {:try_start_5b .. :try_end_81} :catchall_58

    goto :goto_44
.end method

.method public declared-synchronized releaseCamera()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mHandler:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;->removeMessages(I)V

    sget-object v0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "releaseCamera entermCameraState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

    invoke-interface {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;->onPreReleaseCamera()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->releaseCamera()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    sget-object v0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "releaseCamera exitmCameraState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

    invoke-interface {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;->onReleaseCamera()V
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_4f

    monitor-exit p0

    return-void

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCameraProcessCallback(Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

    return-void
.end method

.method public declared-synchronized setCameraState(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setCurCameraId(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCurCameraId:I

    return-void
.end method

.method public declared-synchronized setDisplayOrientation(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setDisplayOrientation orientation ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->setDisplayOrientation(I)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreviewModel(Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    return-void
.end method

.method public setTakePictureFailCallBack(Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mTakePictureFailCallBack:Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;

    return-void
.end method

.method public declared-synchronized startPreview()V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startPreview enter!mCameraState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

    invoke-interface {v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;->preStartPreview()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_4d

    :try_start_1d
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    invoke-interface {v1, v2}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->startPreview(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    sget-object v1, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startPreview exit!mCameraState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

    invoke-interface {v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;->onStartPreview()V
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_44} :catch_46

    :goto_44
    monitor-exit p0

    return-void

    :catch_46
    move-exception v0

    :try_start_47
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

    invoke-interface {v1, v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;->onStartPreviewFail(Ljava/lang/Exception;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4d

    goto :goto_44

    :catchall_4d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopPreview()V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopPreview enter!mCameraState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->stopPreview(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V

    sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    sget-object v0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopPreview exit!mCameraState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

    invoke-interface {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;->onStopPreview()V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    monitor-exit p0

    return-void

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchCamera(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "switchCamera entermCameraState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCameraCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2d

    sget-object v1, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "cannot switch Camera, camera count:cameraCount"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_8a

    :goto_2b
    monitor-exit p0

    return-void

    :cond_2d
    :try_start_2d
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->resetZoomValue()V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-ne v1, v2, :cond_3d

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->stopPreview()V

    :cond_3d
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-ne v1, v2, :cond_46

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->releaseCamera()V

    :cond_46
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v1

    iget v2, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCurCameraId:I

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->switchCamera(I)I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCurCameraId:I

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-ne v1, v2, :cond_60

    iget v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCurCameraId:I

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->openCamera(I)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    :cond_60
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-ne v1, v2, :cond_69

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->startPreview()V

    :cond_69
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mProcessCallback:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->isFrontCamera()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;->onSwitchCamera(Z)V

    sget-object v1, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "switchCamera exit!mCameraState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_2d .. :try_end_89} :catchall_8a

    goto :goto_2b

    :catchall_8a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-boolean v4, Lcom/pinguo/camera360/adapter/GAdapter;->IS_RENDER_ZOOM_INCURRECT:Z

    if-eqz v4, :cond_17

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateParameters(I)V

    :cond_17
    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundState()Z

    move-result v4

    if-nez v4, :cond_1e

    const/4 p1, 0x0

    :cond_1e
    const-string/jumbo v4, "taketimetest"

    const-string/jumbo v5, "takePicture"

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "takePicture entermCameraState:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->SNAP_IN_PROGRESS:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    iput-object v4, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mPictureTakenFail:Z

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v4, 0x1

    iput v4, v1, Landroid/os/Message;->what:I

    sget-object v4, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCurrentMsgId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    iput v4, v1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mHandler:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;

    const-wide/16 v5, 0x1f40

    invoke-virtual {v4, v1, v5, v6}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v2, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;

    invoke-direct {v2, p0, p4, v0, v3}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;-><init>(Lcom/pinguo/camera360/lib/camera/model/CameraModel;Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;ZLcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)V

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    if-eqz v4, :cond_6a

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    invoke-virtual {v4, p1, p2, p3, v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    :cond_6a
    sget-object v4, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "takePicture exitmCameraState:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_1 .. :try_end_81} :catchall_83

    monitor-exit p0

    return-void

    :catchall_83
    move-exception v4

    monitor-exit p0

    throw v4
.end method
