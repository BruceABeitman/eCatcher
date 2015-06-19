.class public Lcom/pinguo/camera360/camera/businessPrefSetting/IntentCameraBusinessSettingModel;
.super Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
.source "IntentCameraBusinessSettingModel.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddMoreEffectTipsVisibility()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBackSavePicture()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCameraMode()Ljava/lang/String;
    .registers 3

    invoke-super {p0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "7b3b6b04486f12d95690f533f5253a74"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v0, "c205e3582b514d6fb5c21a953e1e901e"

    :cond_10
    return-object v0
.end method

.method public getPicAutoSaveState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
