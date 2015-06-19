.class public abstract Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.super Ljava/lang/Object;
.source "ModeCameraController.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraProcessCallback;
.implements Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

.field protected mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

.field protected mOrientation:I

.field protected pgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mOrientation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->pgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    return-void
.end method

.method private updateEffectList()V
    .registers 9

    const/4 v7, 0x1

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    invoke-virtual {v6}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getSubEffect()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;

    move-result-object v4

    if-eqz v4, :cond_6d

    iget-object v5, v4, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;

    sget-object v6, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;

    iget-object v6, v6, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v5

    iget-object v6, v4, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByTypeKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_2e
    array-length v5, v1

    if-lt v3, v5, :cond_60

    array-length v5, v1

    if-le v5, v7, :cond_5f

    new-instance v0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v4, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v5, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setAdapter(Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v5}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->showDownEffectIndicatorIcon()V

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v5, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_6d
    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v5}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V

    goto :goto_5f
.end method


# virtual methods
.method public initEffectSelectBtn()V
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public isCanTakePicture()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isIgnoreAutoFocus()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
    .registers 3

    return-void
.end method

.method public onCameraOpenFail(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onEffectTypeChange(Ljava/lang/String;Z)V
.end method

.method public onEffectTypeUnInstall(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public abstract onModeFunctionClick()V
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V

    return-void
.end method

.method public onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
    .registers 10

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    invoke-virtual {v2, p1, p4, p5}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)Lcom/pinguo/camera360/photoedit/PictureInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V

    new-instance v0, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->needShowPreview()Z

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->canReplaceEffectAfterTaken()Z

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;-><init>(Lcom/pinguo/camera360/photoedit/PictureInfo;[BZZ)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pinguo/lib/eventbus/BaseEvent;->setFromTag(Ljava/lang/String;)V

    sget-object v2, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "start ShowPicturePreviewEvent"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method public onPreReleaseCamera()V
    .registers 1

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;Z)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getPreviewModel()Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->onPreviewFrame([BLandroid/hardware/Camera;)V

    return-void
.end method

.method public onReleaseCamera()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->showOrHideNewCameraFlag()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderRealEnable()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V

    :goto_27
    return-void

    :cond_28
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->updateEffectList()V

    goto :goto_27
.end method

.method public onSceneTypeChange(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onShowModeClick()V
    .registers 1

    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public abstract onShutter()V
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
    .registers 6

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->pgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->initEffectSelectBtn()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setTextIndicator(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderRealEnable()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V

    :goto_31
    return-void

    :cond_32
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->updateEffectList()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V

    goto :goto_31
.end method

.method public onStartPreview()V
    .registers 1

    return-void
.end method

.method public onStartPreviewFail(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onStop()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->pgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    return-void
.end method

.method public onStopPreview()V
    .registers 1

    return-void
.end method

.method public onSwitchCamera(Z)V
    .registers 2

    return-void
.end method

.method public onTopMenuItemClick()V
    .registers 1

    return-void
.end method

.method public preCameraOpen()V
    .registers 1

    return-void
.end method

.method public preStartPreview()V
    .registers 1

    return-void
.end method

.method public preTakePicture()V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundState()Z

    move-result v0

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->needShowPreview()Z

    move-result v2

    if-nez v2, :cond_21

    sget-boolean v2, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MTK:Z

    if-nez v2, :cond_21

    sget-boolean v2, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S5830:Z

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->doTakeAnimation()V

    :cond_21
    if-nez v0, :cond_2f

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/camera360/camera/model/SoundManager;->getSoundManager(Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/SoundManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/model/SoundManager;->setRingerMode(I)V

    :cond_2f
    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->mOrientation:I

    return-void
.end method
