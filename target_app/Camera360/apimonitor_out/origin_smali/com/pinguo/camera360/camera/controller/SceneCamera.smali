.class public Lcom/pinguo/camera360/camera/controller/SceneCamera;
.super Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.source "SceneCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;,
        Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;,
        Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_SCENE_FRAME:I = 0xb

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCameraSceneView:Lcom/pinguo/camera360/camera/view/CameraSceneView;

.field private mHandler:Landroid/os/Handler;

.field private mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

.field private mSceneBuffer:[I

.field private mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

.field private mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

.field private mStop:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/controller/SceneCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    new-instance v0, Lcom/pinguo/camera360/camera/controller/SceneCamera$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/SceneCamera$1;-><init>(Lcom/pinguo/camera360/camera/controller/SceneCamera;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHandler:Landroid/os/Handler;

    check-cast p1, Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/view/CameraSceneView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mCameraSceneView:Lcom/pinguo/camera360/camera/view/CameraSceneView;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/model/SceneCameraModel;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/camera/controller/SceneCamera;Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    return-void
.end method

.method public static initDefaultScene(Landroid/content/Context;Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;)Z
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_12
    const v6, 0x7f080268

    invoke-static {p0, v6, v5, v4}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showProgressDialog(Landroid/content/Context;IZI)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v2

    new-instance v1, Lcom/pinguo/camera360/camera/controller/SceneCamera$4;

    invoke-direct {v1, v2, p1}, Lcom/pinguo/camera360/camera/controller/SceneCamera$4;-><init>(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;)V

    new-instance v6, Lcom/pinguo/camera360/camera/controller/SceneCamera$5;

    invoke-direct {v6, v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera$5;-><init>(Lcom/pinguo/lib/os/AsyncTask;)V

    invoke-virtual {v2, v6}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v4}, Lcom/pinguo/lib/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;

    move v4, v5

    :goto_30
    return v4

    :cond_31
    new-instance v6, Lcom/pinguo/camera360/camera/controller/SceneCamera$3;

    invoke-direct {v6}, Lcom/pinguo/camera360/camera/controller/SceneCamera$3;-><init>()V

    invoke-virtual {v3, v6}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v7, 0x3

    if-lt v6, v7, :cond_12

    goto :goto_30
.end method

.method private updateSceneCameraUI()V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/camera/controller/SceneCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateSceneCameraUI state ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/view/CompositionView;->setVisibility(I)V

    :cond_36
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->updateZoomValue()V

    :cond_39
    return-void
.end method

.method private updateZoomValue()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getZoom()I

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->resetZoomValue()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setZoomIndex(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setCameraParametersWhenIdle(I)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public onEffectTypeChange(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/SceneSelectVisibilityEvent;)V
    .registers 4

    invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/SceneSelectVisibilityEvent;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_12
.end method

.method public onModeFunctionClick()V
    .registers 3

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/camera/event/ShowSceneSelectEvent;

    invoke-direct {v1}, Lcom/pinguo/camera360/camera/event/ShowSceneSelectEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method public onPause()V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    monitor-enter p0

    :try_start_c
    sget-object v0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReleaseCamera mScenePreviewThread"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->clearThreadResource()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    :cond_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_c .. :try_end_3d} :catchall_41

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPause()V

    goto :goto_a

    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;Z)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-eq v0, v1, :cond_4

    if-eqz p3, :cond_21

    invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPreviewFrame([BLandroid/hardware/Camera;Z)V

    goto :goto_4

    :cond_21
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->setData([BLandroid/hardware/Camera;)V

    goto :goto_4
.end method

.method public onResume()V
    .registers 4

    sget-object v1, Lcom/pinguo/camera360/camera/controller/SceneCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onResume()V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mCameraSceneView:Lcom/pinguo/camera360/camera/view/CameraSceneView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/camera/controller/SceneCamera$2;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/camera/controller/SceneCamera$2;-><init>(Lcom/pinguo/camera360/camera/controller/SceneCamera;)V

    invoke-static {v1, v2}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->initDefaultScene(Landroid/content/Context;Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;)Z

    move-result v0

    if-nez v0, :cond_46

    monitor-enter p0

    :try_start_1d
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    if-nez v1, :cond_45

    new-instance v1, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;-><init>(Lcom/pinguo/camera360/camera/controller/SceneCamera;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    const-string/jumbo v2, "ScenePreviewThread"

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->start()V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_45
    monitor-exit p0

    :cond_46
    return-void

    :catchall_47
    move-exception v1

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_47

    throw v1
.end method

.method public onSceneTypeChange(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getScenePngFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneXmlFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->updateScene(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getScenePngFile()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneXmlFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->parseSceneParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setLastSceneTemplatePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setLastSceneTemplateParam(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getPreviewModel()Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setEffect([Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->setSceneParam(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->setScenePath(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getChildId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->setSceneTemplateChildId(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public onShutter()V
    .registers 3

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/camera/event/HideSceneSelectEvent;

    invoke-direct {v1}, Lcom/pinguo/camera360/camera/event/HideSceneSelectEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method public onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v4, 0x0

    sget-object v3, Lcom/pinguo/camera360/camera/controller/SceneCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onStart"

    invoke-static {v3, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;

    const v5, 0x7f0a03c5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/camera/view/CameraSceneView;

    iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mCameraSceneView:Lcom/pinguo/camera360/camera/view/CameraSceneView;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mCameraSceneView:Lcom/pinguo/camera360/camera/view/CameraSceneView;

    invoke-virtual {v6}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setTextIndicator(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mCameraSceneView:Lcom/pinguo/camera360/camera/view/CameraSceneView;

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->setVisibility(I)V

    :cond_4d
    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_60

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x7f0200fc

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_60
    if-nez v1, :cond_7f

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    if-nez v3, :cond_7f

    new-instance v3, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;-><init>(Lcom/pinguo/camera360/camera/controller/SceneCamera;)V

    iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    const-string/jumbo v5, "ScenePreviewThread"

    invoke-virtual {v3, v5}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->setName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->start()V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_7f
    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    if-nez v1, :cond_9d

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v3

    if-ne v3, v0, :cond_a1

    :goto_92
    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getSceneParam()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->resetSceneParam(ZLjava/lang/String;)V

    :cond_9d
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->updateSceneCameraUI()V

    return-void

    :cond_a1
    move v0, v4

    goto :goto_92
.end method

.method public onStartPreview()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartPreview"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStartPreview()V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->updateSceneCameraUI()V

    return-void
.end method

.method public onStop()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-object v2, Lcom/pinguo/camera360/camera/controller/SceneCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onStop"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v2

    new-instance v3, Lcom/pinguo/camera360/camera/event/HideSceneSelectEvent;

    invoke-direct {v3}, Lcom/pinguo/camera360/camera/event/HideSceneSelectEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->clearThreadResource()V

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    :cond_3a
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mCameraSceneView:Lcom/pinguo/camera360/camera/view/CameraSceneView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->setVisibility(I)V

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneBuffer:[I

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mCameraSceneView:Lcom/pinguo/camera360/camera/view/CameraSceneView;

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCompositionLineState()Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;

    invoke-virtual {v2, v5}, Lcom/pinguo/camera360/camera/view/CompositionView;->setVisibility(I)V

    :cond_6c
    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStop()V

    return-void
.end method

.method public onSwitchCamera(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->refreshSceneParam(Z)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    if-nez v0, :cond_2d

    new-instance v0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;-><init>(Lcom/pinguo/camera360/camera/controller/SceneCamera;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    const-string/jumbo v1, "ScenePreviewThread"

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->start()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2d
    return-void
.end method

.method public preStartPreview()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->preStartPreview()V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getLastSceneTemplateParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->setSceneParam(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v2

    if-ne v2, v0, :cond_44

    :goto_26
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getSceneParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->resetSceneParam(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mCameraSceneView:Lcom/pinguo/camera360/camera/view/CameraSceneView;

    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->setVisibility(I)V

    :goto_36
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getLastSceneTemplatePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->setScenePath(Ljava/lang/String;)V

    return-void

    :cond_44
    move v0, v1

    goto :goto_26

    :cond_46
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera;->mCameraSceneView:Lcom/pinguo/camera360/camera/view/CameraSceneView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->setVisibility(I)V

    goto :goto_36
.end method
