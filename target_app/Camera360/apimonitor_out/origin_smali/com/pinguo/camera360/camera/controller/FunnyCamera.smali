.class public Lcom/pinguo/camera360/camera/controller/FunnyCamera;
.super Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.source "FunnyCamera.java"


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V

    return-void
.end method


# virtual methods
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
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/FunnyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/FunnyCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/FunnyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setTextIndicator(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/FunnyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onStop()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/FunnyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/FunnyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStop()V

    return-void
.end method
