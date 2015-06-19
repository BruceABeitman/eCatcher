.class public Lcom/pinguo/camera360/camera/controller/QuickSnapCamera;
.super Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.source "QuickSnapCamera.java"


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
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/QuickSnapCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStop()V

    return-void
.end method

.method public onSwitchCamera(Z)V
    .registers 2

    return-void
.end method
