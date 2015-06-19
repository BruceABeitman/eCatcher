.class public Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;
.super Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;
.source "AdjustOrientationFragment.java"
.implements Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;
.implements Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;
.implements Landroid/hardware/Camera$ShutterCallback;
.implements Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;
.implements Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;
.field private static final TAG:Ljava/lang/String;
.field protected static redressJpegDegree:I
.field private mPauseing:Z
.field private mPhotoAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
.field private mPreviewAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;
.field private mPreviewBuffer:[B
.field private mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
.field private mPreviewView:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;
.field private mStartAdjustPreviewOri:Z
.field private mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
.field private mType:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->TAG:Ljava/lang/String;
const/4 v0, 0x0
sput v0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->redressJpegDegree:I
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;-><init>()V
iput-boolean v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mStartAdjustPreviewOri:Z
iput-boolean v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPauseing:Z
return-void
.end method
.method static synthetic access$0()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;)Lcom/pinguo/camera360/camera/view/TimerCameraView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPauseing:Z
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;)Lcom/pinguo/camera360/lib/camera/model/CameraModel;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
return-object v0
.end method
.method private disablePreviewCallback()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewBuffer:[B
if-eqz v0, :cond_7
iput-object v2, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewBuffer:[B
:cond_7
sget-object v0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "disablePreviewCallback"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
return-void
.end method
.method private enablePreviewCallback()V
.registers 5
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v2
sget-object v3, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-eq v2, v3, :cond_18
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v2
sget-object v3, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-ne v2, v3, :cond_64
:cond_18
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v2
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v3
mul-int/2addr v2, v3
mul-int/lit8 v0, v2, 0x2
iget-object v2, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewBuffer:[B
if-eqz v2, :cond_34
iget-object v2, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewBuffer:[B
array-length v2, v2
if-ge v2, v0, :cond_3b
:cond_34
const/4 v2, 0x0
iput-object v2, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewBuffer:[B
new-array v2, v0, [B
iput-object v2, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewBuffer:[B
:cond_3b
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v2
if-eqz v2, :cond_54
iget-object v2, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
instance-of v2, v2, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
if-eqz v2, :cond_54
iget-object v2, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v2, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
iget-object v3, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewBuffer:[B
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setBuffer([B)V
:cond_54
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewBuffer:[B
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->addCallbackBuffer([B)V
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
:cond_64
return-void
.end method
.method private getInitPreviewDegree()I
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v1
if-eqz v1, :cond_2e
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->isFrontCamera()Z
move-result v1
if-eqz v1, :cond_21
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getRenderFrontPreviewAdjustDegree()I
move-result v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->transMirrorToDegree(I)I
move-result v1
:goto_20
return v1
:cond_21
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getRenderBackPreviewAdjustDegree()I
move-result v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->transMirrorToDegree(I)I
move-result v1
goto :goto_20
:cond_2e
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->isFrontCamera()Z
move-result v1
if-eqz v1, :cond_41
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFrontPreviewAdjustDegree()I
move-result v1
goto :goto_20
:cond_41
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBackPreviewAdjustDegree()I
move-result v1
goto :goto_20
.end method
.method private initPreviewModel()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v0
if-eqz v0, :cond_27
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z
if-eqz v0, :cond_1f
new-instance v0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
:goto_15
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setRenderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)V
:goto_1e
return-void
:cond_1f
new-instance v0, Lcom/pinguo/camera360/camera/model/LivePreviewModel;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/model/LivePreviewModel;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
goto :goto_15
:cond_27
new-instance v0, Lcom/pinguo/camera360/lib/camera/model/PreviewModel;
invoke-direct {v0}, Lcom/pinguo/camera360/lib/camera/model/PreviewModel;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
goto :goto_1e
.end method
.method private setDisplayOrientation(I)V
.registers 5
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
invoke-direct {p0, p1}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->transRenderDegreeToMirror(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setMirror(I)V
:goto_15
:cond_15
return-void
:cond_16
sget-object v0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "setDisplayOrientation device : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-boolean v2, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z
if-eqz v0, :cond_50
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setDisplayOrientation(I)V
goto :goto_15
:cond_50
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-eq v0, v1, :cond_63
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->stopPreview()V
:cond_63
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setDisplayOrientation(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-ne v0, v1, :cond_15
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->startPreview()V
goto :goto_15
.end method
.method private transMirrorToDegree(I)I
.registers 4
const/16 v0, 0x5a
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->isFrontCamera()Z
move-result v1
if-eqz v1, :cond_1d
packed-switch p1, :pswitch_data_2e
:pswitch_f
const/16 v0, 0x5a
:goto_11
return v0
:pswitch_12
const/16 v0, 0xb4
goto :goto_11
:pswitch_15
const/16 v0, 0x5a
goto :goto_11
:pswitch_18
const/16 v0, 0x10e
goto :goto_11
:pswitch_1b
const/4 v0, 0x0
goto :goto_11
:cond_1d
packed-switch p1, :pswitch_data_3e
:pswitch_20
const/16 v0, 0x5a
goto :goto_11
:pswitch_23
const/16 v0, 0xb4
goto :goto_11
:pswitch_26
const/16 v0, 0x5a
goto :goto_11
:pswitch_29
const/16 v0, 0x10e
goto :goto_11
:pswitch_2c
const/4 v0, 0x0
goto :goto_11
:pswitch_data_2e
.packed-switch 0x2
:pswitch_12
:pswitch_1b
:pswitch_f
:pswitch_f
:pswitch_15
:pswitch_18
.end packed-switch
:pswitch_data_3e
.packed-switch 0x4
:pswitch_2c
:pswitch_23
:pswitch_20
:pswitch_26
:pswitch_29
.end packed-switch
.end method
.method private transRenderDegreeToMirror(I)I
.registers 7
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->isFrontCamera()Z
move-result v0
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->isFrontCamera()Z
move-result v2
if-eqz v2, :cond_2e
const/4 v1, 0x6
:goto_13
sget-object v2, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "degree = "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
rem-int/lit16 v2, p1, 0x168
sparse-switch v2, :sswitch_data_4a
:goto_2d
return v1
:cond_2e
const/4 v1, 0x7
goto :goto_13
:sswitch_30
if-eqz v0, :cond_34
const/4 v1, 0x3
goto :goto_2d
:cond_34
const/4 v1, 0x4
goto :goto_2d
:sswitch_36
if-eqz v0, :cond_3a
const/4 v1, 0x6
goto :goto_2d
:cond_3a
const/4 v1, 0x7
goto :goto_2d
:sswitch_3c
if-eqz v0, :cond_40
const/4 v1, 0x2
goto :goto_2d
:cond_40
const/4 v1, 0x5
goto :goto_2d
:sswitch_42
if-eqz v0, :cond_46
const/4 v1, 0x7
goto :goto_2d
:cond_46
const/16 v1, 0x8
goto :goto_2d
nop
:sswitch_data_4a
.sparse-switch
0x0 -> :sswitch_30
0x5a -> :sswitch_36
0xb4 -> :sswitch_3c
0x10e -> :sswitch_42
.end sparse-switch
.end method
.method public adjustPreview(I)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mStartAdjustPreviewOri:Z
invoke-direct {p0, p1}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->setDisplayOrientation(I)V
return-void
.end method
.method public finishAdjustPreview(ZI)V
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mStartAdjustPreviewOri:Z
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
if-eqz p1, :cond_24
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->isFrontCamera()Z
move-result v1
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v2
if-eqz v2, :cond_3a
if-nez v1, :cond_2f
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setBackPreviewAdjust(Z)V
invoke-direct {p0, p2}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->transRenderDegreeToMirror(I)I
move-result v2
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setRenderBackPreviewAdjustDegree(I)V
:goto_24
:cond_24
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V
return-void
:cond_2f
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontPreviewAdjust(Z)V
invoke-direct {p0, p2}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->transRenderDegreeToMirror(I)I
move-result v2
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setRenderFrontPreviewAdjustDegree(I)V
goto :goto_24
:cond_3a
if-nez v1, :cond_43
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setBackPreviewAdjust(Z)V
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setBackPreviewAdjustDegree(I)V
goto :goto_24
:cond_43
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontPreviewAdjust(Z)V
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontPreviewAdjustDegree(I)V
goto :goto_24
.end method
.method protected initCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
.registers 2
new-instance v0, Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;-><init>()V
return-object v0
.end method
.method protected needEnablePreviewCallback()Z
.registers 2
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v0
return v0
.end method
.method public onAdjustCancel()V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
return-void
.end method
.method public onAdjustFailed()V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
return-void
.end method
.method public onAdjustFinish(IZ)V
.registers 7
const/4 v2, 0x1
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->isFrontCamera()Z
move-result v1
if-nez v1, :cond_64
rem-int/lit16 v1, p1, 0x168
sput v1, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->redressJpegDegree:I
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setBackRedress(Z)V
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setBackRedressDegree(I)V
:goto_19
sget-object v1, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "onAdjustFinish = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "isMirror = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "redressJpegDegree = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget v3, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->redressJpegDegree:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "getCameraModel().isFrontCamera() = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->isFrontCamera()Z
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V
return-void
:cond_64
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedress(Z)V
if-eqz p2, :cond_76
rem-int/lit16 v1, p1, 0x168
sput v1, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->redressJpegDegree:I
sget v1, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->redressJpegDegree:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedressDegree(I)V
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedressMirror(Z)V
goto :goto_19
:cond_76
rem-int/lit16 v1, p1, 0x168
sput v1, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->redressJpegDegree:I
sget v1, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->redressJpegDegree:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedressDegree(I)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedressMirror(Z)V
goto :goto_19
.end method
.method public onAdjustStart()V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/model/PGCameraBase;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->setTimeCount(I)V
iget-object v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->show()V
new-instance v1, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment$1;-><init>(Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->startTimerTake(Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;)V
return-void
.end method
.method public onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
.registers 6
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
invoke-direct {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->initPreviewModel()V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v0
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateParameters(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setPreviewModel(Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;)V
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
iget-object v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewView:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;
invoke-virtual {v1}, Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;->getSurfaceView()Landroid/view/SurfaceView;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewView:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;
invoke-virtual {v2}, Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;
move-result-object v2
invoke-interface {v0, v1, v2, p0}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->init(Landroid/view/SurfaceView;Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
iget-object v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewView:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;
invoke-virtual {v1}, Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;->getSurfaceView()Landroid/view/SurfaceView;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewView:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;
invoke-virtual {v2}, Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->setSurfaceVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v1, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "onCreate savedInstanceState = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getArguments()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v2, "bundle_key_adjust_type"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mType:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getArguments()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v2, "bundle_key_adjust_camera_id"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v1
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setCameraId(ILandroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
sget-object v1, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "onCreateView savedInstanceState = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const v1, 0x7f03002a
const/4 v2, 0x0
invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a00e4
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;
iput-object v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewView:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;
const v1, 0x7f0a00e5
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/camera/view/TimerCameraView;
iput-object v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
return-object v0
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPauseing:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isTimerRunning()Z
move-result v1
if-eqz v1, :cond_12
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->stopTimerTake()V
:cond_12
iget-object v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewView:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;
invoke-virtual {v1}, Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->onPause()V
invoke-super {p0}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onPause()V
const-string v1, " - Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
.registers 8
sget-object v0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onPictureTaken"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPhotoAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->isFrontCamera()Z
move-result v1
invoke-virtual {v0, p1, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->startDirectionAdjust([BZ)V
return-void
.end method
.method public onPictureTakenFail()V
.registers 1
return-void
.end method
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
.registers 5
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-eq v0, v1, :cond_d
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
invoke-interface {v0, p1, p2}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->onPreviewFrame([BLandroid/hardware/Camera;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewBuffer:[B
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->addCallbackBuffer([B)V
goto :goto_c
.end method
.method public onReleaseCamera()V
.registers 3
const/4 v1, 0x4
invoke-super {p0}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onReleaseCamera()V
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewView:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;->getSurfaceView()Landroid/view/SurfaceView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewView:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;
move-result-object v0
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->setVisibility(I)V
return-void
.end method
.method public onResume()V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPauseing:Z
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewView:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;
move-result-object v0
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->onResume()V
invoke-super {p0}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onResume()V
iput-boolean v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mStartAdjustPreviewOri:Z
const-string/jumbo v0, "adjust_picture"
iget-object v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mType:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_58
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->getVisibility()I
move-result v0
if-nez v0, :cond_3e
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->hide()V
new-instance v0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPhotoAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPhotoAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->setOnAdjustListener(Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPhotoAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->show()V
:cond_3e
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPhotoAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
if-nez v0, :cond_57
new-instance v0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPhotoAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPhotoAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->setOnAdjustListener(Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPhotoAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->show()V
:cond_57
:goto_57
const-string v1, " - Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_58
const-string/jumbo v0, "adjust_preview"
iget-object v1, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mType:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_57
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;
if-nez v0, :cond_57
new-instance v0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getInitPreviewDegree()I
move-result v2
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->setListener(Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewAdjustDialog:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->show()V
goto :goto_57
.end method
.method public onShutter()V
.registers 1
return-void
.end method
.method public onStopPreview()V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->needEnablePreviewCallback()Z
move-result v0
if-eqz v0, :cond_9
invoke-direct {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->disablePreviewCallback()V
:cond_9
return-void
.end method
.method public preStartPreview()V
.registers 5
iget-boolean v3, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mStartAdjustPreviewOri:Z
if-nez v3, :cond_28
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->isFrontCamera()Z
move-result v2
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
const/4 v1, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v3
if-eqz v3, :cond_40
if-eqz v2, :cond_3b
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getRenderFrontPreviewAdjustDegree()I
move-result v1
:goto_21
iget-object v3, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v3, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
invoke-virtual {v3, v1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setMirror(I)V
:cond_28
:goto_28
iget-object v3, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
if-eqz v3, :cond_31
iget-object v3, p0, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
invoke-interface {v3}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->preStartPreview()V
:cond_31
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->needEnablePreviewCallback()Z
move-result v3
if-eqz v3, :cond_3a
invoke-direct {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->enablePreviewCallback()V
:cond_3a
return-void
:cond_3b
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getRenderBackPreviewAdjustDegree()I
move-result v1
goto :goto_21
:cond_40
if-eqz v2, :cond_4e
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFrontPreviewAdjustDegree()I
move-result v1
:goto_46
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setDisplayOrientation(I)V
goto :goto_28
:cond_4e
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBackPreviewAdjustDegree()I
move-result v1
goto :goto_46
.end method