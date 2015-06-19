.class Lcom/pinguo/camera360/camera/controller/SoundCamera;
.super Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.source "SoundCamera.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/controller/SoundCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V

    return-void
.end method


# virtual methods
.method public needShowTakeAnimation()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onEffectTypeChange(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public onModeFunctionClick()V
    .registers 1

    return-void
.end method

.method public onShutter()V
    .registers 1

    return-void
.end method

.method public onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
    .registers 8

    const/4 v4, 0x0

    sget-object v1, Lcom/pinguo/camera360/camera/controller/SoundCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v1, v4}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setTextIndicator(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->showSoundIndicatorIcon()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setSoundState(Z)V

    invoke-virtual {v0, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setAntiShake(Z)V

    invoke-virtual {v0, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setTimerSwitchState(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onStartPreview()V
    .registers 4

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStartPreview()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setTextIndicator(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->showSoundIndicatorIcon()V

    return-void
.end method

.method public onStop()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideSoundIndicatorIcon()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SoundCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onSwitchCamera(Z)V
    .registers 2

    return-void
.end method
