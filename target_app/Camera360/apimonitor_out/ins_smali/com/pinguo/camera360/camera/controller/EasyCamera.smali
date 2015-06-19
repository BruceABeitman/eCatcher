.class public Lcom/pinguo/camera360/camera/controller/EasyCamera;
.super Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.source "EasyCamera.java"
.implements Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;
.field private static final TAG:Ljava/lang/String; = "EasyCamera"
.field private mIsRTRecognizeSupported:Z
.field private mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
.field private mViewController:Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;
.method public constructor <init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mViewController:Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mIsRTRecognizeSupported:Z
check-cast p1, Lcom/pinguo/camera360/camera/model/EasyCameraModel;
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->setEffectChangeCallback(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getRenderEasyCameraEnable()Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mIsRTRecognizeSupported:Z
return-void
.end method
.method private initViewController()V
.registers 3
new-instance v0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mViewController:Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mViewController:Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mIsRTRecognizeSupported:Z
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->init(Z)V
return-void
.end method
.method private releaseViewController()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mViewController:Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mViewController:Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mIsRTRecognizeSupported:Z
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->release(Z)V
goto :goto_4
.end method
.method private removeLastMode()V
.registers 3
const/4 v1, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setAntiShake(Z)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setTimerSwitchState(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method private restoreLastMode()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method private setCurrentSubEffect(II)V
.registers 9
invoke-static {p1, p2}, Lcom/pinguo/camera360/effect/model/EffectParamFactory;->getSmartSubParamByContext(II)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "EasyCamera"
const-string/jumbo v2, "RequestEffectChangeTo: context:%s, light:%s%n%s"
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->getName(I)Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
invoke-static {p2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->getName(I)Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x2
aput-object v0, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->setSubEffect(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mViewController:Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;
if-eqz v1, :cond_33
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mViewController:Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;
invoke-virtual {v1, p1, p2}, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->switchContextIcon(II)V
:cond_33
return-void
.end method
.method private setDefaultSubEffect()V
.registers 5
const/4 v3, 0x0
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v1, v3, v3, v2}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->getCurEffectIds([BLandroid/hardware/Camera$Size;I)[I
move-result-object v0
aget v1, v0, v2
const/4 v2, 0x1
aget v2, v0, v2
invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/camera/controller/EasyCamera;->setCurrentSubEffect(II)V
return-void
.end method
.method public effectChangeCallback(II)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/controller/EasyCamera;->setCurrentSubEffect(II)V
return-void
.end method
.method public onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
.registers 5
const-string/jumbo v0, "EasyCamera"
const-string/jumbo v1, "EasyCamera onCameraOpen"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->updateCameraType()V
return-void
.end method
.method public onEffectTypeChange(Ljava/lang/String;Z)V
.registers 5
const-string/jumbo v0, "EasyCamera"
const-string/jumbo v1, "EasyCamera onEffectTypeChange"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;)V
.registers 4
const-string/jumbo v0, "EasyCamera"
const-string/jumbo v1, "EasyCamera UpdateThumbImageEvent"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->startRecognize()V
return-void
.end method
.method public onModeFunctionClick()V
.registers 3
const-string/jumbo v0, "EasyCamera"
const-string/jumbo v1, "EasyCamera onModeFunctionClick"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
.registers 15
const/4 v8, 0x4
const-string/jumbo v3, "EasyCamera"
const-string/jumbo v4, "jpg data[length:%d, width:%d, height:%d, ori:%d]"
new-array v5, v8, [Ljava/lang/Object;
const/4 v6, 0x0
array-length v7, p1
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x1
invoke-virtual {p4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x2
invoke-virtual {p4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x3
invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v3, p1, p4, p5}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v1
invoke-virtual {v1, p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->getRTRecSupport()Z
move-result v3
if-nez v3, :cond_5e
new-instance v2, Landroid/hardware/Camera$Size;
invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
invoke-virtual {p4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v3
invoke-virtual {p4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v4
invoke-direct {v2, p3, v3, v4}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v3, v2, p5}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->setJpgDataInfos(Landroid/hardware/Camera$Size;I)V
invoke-virtual {v1, v8}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPictureType(I)V
:cond_5e
new-instance v0, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->needShowPreview()Z
move-result v3
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->canReplaceEffectAfterTaken()Z
move-result v4
invoke-direct {v0, v1, p1, v3, v4}, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;-><init>(Lcom/pinguo/camera360/photoedit/PictureInfo;[BZZ)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/pinguo/lib/eventbus/BaseEvent;->setFromTag(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v3
invoke-virtual {v3, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method public onPreviewFrame([BLandroid/hardware/Camera;Z)V
.registers 7
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
if-nez v1, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
if-eqz v1, :cond_4
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v1
sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-eq v1, v2, :cond_4
invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPreviewFrame([BLandroid/hardware/Camera;Z)V
:try_start_1e
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v1, p1, p2}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->processPreviewFrame([BLandroid/hardware/Camera;)V
:try_end_23
.catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_23} :catch_24
goto :goto_4
:catch_24
move-exception v0
const-string/jumbo v1, "EasyCamera"
const-string/jumbo v2, "Failed to get camera\'s parameters"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/EasyCamera; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onResume()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/EasyCamera; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onShutter()V
.registers 3
const-string/jumbo v0, "EasyCamera"
const-string/jumbo v1, "EasyCamera onShutter"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->stopRecognize()V
return-void
.end method
.method public onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
.registers 6
const-string v1, " + Lcom/pinguo/camera360/camera/controller/EasyCamera; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string/jumbo v0, "EasyCamera"
const-string/jumbo v1, "EasyCamera onStart"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setTextIndicator(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EasyCamera;->removeLastMode()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EasyCamera;->initViewController()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EasyCamera;->setDefaultSubEffect()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->startRecognize()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/EasyCamera; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStartPreview()V
.registers 3
const-string/jumbo v0, "EasyCamera"
const-string/jumbo v1, "EasyCamera onStartPreview"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStartPreview()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->startRecognize()V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/EasyCamera; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string/jumbo v0, "EasyCamera"
const-string/jumbo v1, "EasyCamera onStop"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EasyCamera;->releaseViewController()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EasyCamera;->restoreLastMode()V
invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStop()V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/EasyCamera; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStopPreview()V
.registers 3
const-string/jumbo v0, "EasyCamera"
const-string/jumbo v1, "EasyCamera onStopPreview"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStopPreview()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->stopRecognize()V
return-void
.end method
.method public setOrientation(I)V
.registers 3
invoke-super {p0, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->setOrientation(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCamera;->mModel:Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;->setPreviewOrientation(I)V
return-void
.end method