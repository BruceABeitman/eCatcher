.class public Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
.super Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;
.source "PGCameraFragment.java"
.implements Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;
.implements Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
.implements Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;
.implements Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;
.field private static final HIDE_DELAY_ZOOM_VIEW_MILL:I = 0xbb8
.field private static final LOG_CLOUD_MSG:I = 0x2
.field private static final MIN_TAKE_SPACE:I = 0xa00000
.field private static final RESTORE_TIME_INDICATOR_MSG:I = 0x1
.field private static final SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x0
.field private static final START_LOCATION_SERVICE_MSG:I = 0x3
.field private static final TAG:Ljava/lang/String;
.field protected static redressJpeg:Z
.field protected static redressJpegDegree:I
.field protected static redressMirror:Z
.field private canLoginCloud:Z
.field private canShowAdvaceParamSetting:Z
.field private final mAutoFocusCallback:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$PGAutoFocusCallback;
.field private mCurrentMode:Ljava/lang/String;
.field private mEffectSelectVisibility:I
.field private mFocusViewUIManager:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
.field private mHandler:Landroid/os/Handler;
.field private mIsLiveEffectOn:Z
.field private mLastZoomControlViewVisibility:Z
.field private mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.field private mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.field private mOrientation:I
.field private mPreviewBuffer:[B
.field private mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
.field private mScaledSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
.field private mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
.field private mUpdateSet:I
.field private mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
.field  mVolumePressDelayHandler:Landroid/os/Handler;
.field  mVolumePressDelayRunnable:Ljava/lang/Runnable;
.field private receiver:Landroid/content/BroadcastReceiver;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const-class v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
sput-boolean v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressJpeg:Z
sput v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressJpegDegree:I
sput-boolean v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressMirror:Z
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;-><init>()V
new-instance v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$PGAutoFocusCallback;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$PGAutoFocusCallback;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;Lcom/pinguo/camera360/camera/controller/PGCameraFragment$PGAutoFocusCallback;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mAutoFocusCallback:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$PGAutoFocusCallback;
iput v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mOrientation:I
iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mLastZoomControlViewVisibility:Z
const/16 v0, 0x8
iput v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mEffectSelectVisibility:I
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mVolumePressDelayHandler:Landroid/os/Handler;
new-instance v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$1;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mVolumePressDelayRunnable:Ljava/lang/Runnable;
iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canLoginCloud:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canShowAdvaceParamSetting:Z
new-instance v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$2;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$2;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->receiver:Landroid/content/BroadcastReceiver;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateMyCenterNewMsgView()V
return-void
.end method
.method static synthetic access$1()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canLoginCloud:Z
return-void
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startLocationService()V
return-void
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
return-object v0
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
return v0
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Z
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->isAdvanceParametersSupport()Z
move-result v0
return v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Z
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->hideAdvanceParameterUI()Z
move-result v0
return v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canShowAdvaceParamSetting:Z
return v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Z
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->isCanShowZoomControlView()Z
move-result v0
return v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/lib/camera/model/CameraModel;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
return-object v0
.end method
.method private adapterCameraPermission()V
.registers 18
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->IS_XIAO_MI_CAMERA_PERMISSION:Z
if-nez v1, :cond_8
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEI_ZU_CAMERA_PERMISSION:Z
if-eqz v1, :cond_36
:cond_8
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->haveShowAdapterCameraPermissionDialog()Z
move-result v12
if-nez v12, :cond_36
const v3, 0x7f080188
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEI_ZU_CAMERA_PERMISSION:Z
if-eqz v1, :cond_1c
const v3, 0x7f080189
:cond_1c
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0802cf
const v4, 0x7f08018a
const v5, 0x7f080002
new-instance v6, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$13;
move-object/from16 v0, p0
invoke-direct {v6, v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$13;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
const/4 v7, 0x0
const/4 v8, 0x3
invoke-static/range {v1 .. v8}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogHaveTitle(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
:cond_35
:goto_35
return-void
:cond_36
invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;
move-result-object v16
sget-boolean v1, Lcom/pinguo/lib/ApiHelper;->AFTER_KITKAT:Z
if-eqz v1, :cond_35
invoke-virtual/range {v16 .. v16}, Lcom/pinguo/lib/util/UtilStorage;->isHasExternalSdCard()Z
move-result v1
if-eqz v1, :cond_35
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->haveShowKitkatExtSdcardDialog()Z
move-result v13
if-nez v13, :cond_35
invoke-virtual/range {v16 .. v16}, Lcom/pinguo/lib/util/UtilStorage;->getExternalSdCardPath()Ljava/lang/String;
move-result-object v14
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v15
if-eqz v14, :cond_35
if-eqz v15, :cond_35
invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_35
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const v5, 0x7f0802cf
const v6, 0x7f080181
const v7, 0x7f0802c5
const/16 v8, -0x3e7
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x3
invoke-static/range {v4 .. v11}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogHaveTitle(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->getSystemPhotoPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setPictureSavePath(Ljava/lang/String;)V
goto :goto_35
.end method
.method private changeEffect(Ljava/lang/String;)V
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v2, p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->setSubEffect(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v2
invoke-virtual {v2, p1}, Lcom/pinguo/camera360/effect/model/EffectModel;->clearEffectNewFlag(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->getAdapter()Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->setSelectEffect(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->notifyDataSetChanged()V
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v2
invoke-virtual {v2, p1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v2
iget-object v3, v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v2, v3, p1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setPreferredEffect(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private changeParentEffect(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
const/4 v1, 0x1
invoke-virtual {v0, p1, v1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onEffectTypeChange(Ljava/lang/String;Z)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showRenderTipsView()V
return-void
.end method
.method private disablePreviewCallback()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewBuffer:[B
if-eqz v0, :cond_7
iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewBuffer:[B
:cond_7
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "disablePreviewCallback"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
return-void
.end method
.method private enablePreviewCallback()V
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v2
sget-object v3, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-eq v2, v3, :cond_1c
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v2
sget-object v3, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-ne v2, v3, :cond_9f
:cond_1c
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
sget-object v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "previewSize.getWidth() = "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " previewSize.getHeight() = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "previewLength ="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewBuffer:[B
if-eqz v2, :cond_6b
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewBuffer:[B
array-length v2, v2
if-ge v2, v0, :cond_72
:cond_6b
const/4 v2, 0x0
iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewBuffer:[B
new-array v2, v0, [B
iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewBuffer:[B
:cond_72
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v2
if-eqz v2, :cond_8b
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
instance-of v2, v2, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
if-eqz v2, :cond_8b
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v2, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewBuffer:[B
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setBuffer([B)V
:cond_8b
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewBuffer:[B
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->addCallbackBuffer([B)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
:cond_9f
return-void
.end method
.method private hideAdvanceParameterUI()Z
.registers 5
const/4 v1, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
const-string/jumbo v3, "f4ab1ced32e2092c35bfa10cae9e836c"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d
:goto_c
return v1
:cond_d
new-instance v0, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;-><init>()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v2, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setVisibility(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateTimerAndAntiShakeView()V
iget-boolean v1, v0, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;->interrupt:Z
goto :goto_c
.end method
.method private hideCompositionView()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CompositionView;->getVisibility()I
move-result v0
if-nez v0, :cond_19
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/CompositionView;->setVisibility(I)V
:cond_19
return-void
.end method
.method private hideTouchTap()V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->haveTouchScreen()Z
move-result v1
if-eqz v1, :cond_1c
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setHaveTouchScreen(Z)V
:cond_1c
return-void
.end method
.method private initPreviewModel()V
.registers 6
const/4 v4, 0x1
const/4 v3, 0x0
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsLiveEffectOn:Z
if-eqz v0, :cond_62
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z
if-eqz v0, :cond_3f
new-instance v0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
:goto_11
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
instance-of v0, v0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;
if-eqz v0, :cond_47
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_SCENE:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setRenderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
const/4 v1, 0x2
new-array v2, v1, [Ljava/lang/Object;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
check-cast v1, Lcom/pinguo/camera360/camera/model/SceneCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getScenePath()Ljava/lang/String;
move-result-object v1
aput-object v1, v2, v3
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
check-cast v1, Lcom/pinguo/camera360/camera/model/SceneCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getSceneParam()Ljava/lang/String;
move-result-object v1
aput-object v1, v2, v4
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setEffect([Ljava/lang/Object;)V
:goto_3e
return-void
:cond_3f
new-instance v0, Lcom/pinguo/camera360/camera/model/LivePreviewModel;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/model/LivePreviewModel;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
goto :goto_11
:cond_47
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setRenderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
new-array v1, v4, [Ljava/lang/Object;
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setEffect([Ljava/lang/Object;)V
goto :goto_3e
:cond_62
new-instance v0, Lcom/pinguo/camera360/lib/camera/model/PreviewModel;
invoke-direct {v0}, Lcom/pinguo/camera360/lib/camera/model/PreviewModel;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
goto :goto_3e
.end method
.method private initRedressDegree()I
.registers 6
const/4 v4, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z
move-result v1
if-eqz v1, :cond_29
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFrontRedress()Z
move-result v1
sput-boolean v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressJpeg:Z
sget-boolean v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressJpeg:Z
if-eqz v1, :cond_24
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFrontRedressDegree()I
move-result v1
sput v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressJpegDegree:I
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFrontRedressMirror()Z
move-result v1
sput-boolean v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressMirror:Z
:goto_23
return v4
:cond_24
sput v4, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressJpegDegree:I
sput-boolean v4, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressMirror:Z
goto :goto_23
:cond_29
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBackRedress()Z
move-result v1
sput-boolean v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressJpeg:Z
sget-object v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "redressJpeg = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-boolean v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressJpeg:Z
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-boolean v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressJpeg:Z
if-eqz v1, :cond_51
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBackRedressDegree()I
move-result v1
sput v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressJpegDegree:I
goto :goto_23
:cond_51
sput v4, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressJpegDegree:I
goto :goto_23
.end method
.method private initSensorFocus()V
.registers 4
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "initSensorFocus mFocusManager= "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mScaledSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mScaledSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->initializeFocusParameters(II)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->startFirstFocusAfterStartPreview()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->resetSensorValue()V
:cond_36
return-void
.end method
.method private isAdvanceParametersSupport()Z
.registers 3
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSharpnessSupported()Z
move-result v1
if-nez v1, :cond_1e
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupportISO()Z
move-result v1
if-nez v1, :cond_1e
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isWhiteBalanceSupported()Z
move-result v1
if-nez v1, :cond_1e
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isExposureSupported()Z
move-result v1
if-nez v1, :cond_1e
const/4 v1, 0x0
:goto_1d
return v1
:cond_1e
const/4 v1, 0x1
goto :goto_1d
.end method
.method private isCanShowZoomControlView()Z
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
if-eqz v1, :cond_27
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
const-string/jumbo v2, "23382e49b7f64d5fb822aba5a29e927f"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_26
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
const-string/jumbo v2, "f4ab1ced32e2092c35bfa10cae9e836c"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_26
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
const-string/jumbo v2, "e46227d3cf94f4bbab8edb68d0c8d68e"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_27
:goto_26
:cond_26
return v0
:cond_27
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isZoomSupported()Z
move-result v1
if-eqz v1, :cond_26
const/4 v0, 0x1
goto :goto_26
.end method
.method private isSupportTouchFocus()Z
.registers 3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
const-string/jumbo v1, "23382e49b7f64d5fb822aba5a29e927f"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_15
const/4 v1, 0x0
:goto_14
return v1
:cond_15
const/4 v1, 0x1
goto :goto_14
.end method
.method private showCompositionView()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;
if-nez v0, :cond_17
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;
const v2, 0x7f0a03f4
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/view/CompositionView;
iput-object v0, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;
:cond_17
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/CompositionView;->setVisibility(I)V
return-void
.end method
.method private showRenderTipsView()V
.registers 6
const/16 v4, 0x8
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderRealEnable()Z
move-result v3
if-eqz v3, :cond_3e
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v0
const/4 v2, 0x1
if-eqz v0, :cond_21
invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/entity/Effect;->havePreCmd()Z
move-result v2
:cond_21
if-nez v2, :cond_36
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceFlagView:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v3
if-eqz v3, :cond_36
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mRenderTipsView:Landroid/widget/TextView;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
:goto_35
return-void
:cond_36
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mRenderTipsView:Landroid/widget/TextView;
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_35
:cond_3e
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mRenderTipsView:Landroid/widget/TextView;
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_35
.end method
.method private showTouchTap()V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->haveTouchScreen()Z
move-result v1
if-nez v1, :cond_1c
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setHaveTouchScreen(Z)V
:cond_1c
return-void
.end method
.method private startAntiShakeTakePicture()V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canShowAdvaceParamSetting:Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->startAntiShake(Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;)V
return-void
.end method
.method private startLocationService()V
.registers 6
sget-object v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v3, "startLocationService start"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v2
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/lib/location/PGLocationManager;->init(Landroid/content/Context;)V
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/lib/location/PGLocationManager;->start()V
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/lib/location/PGLocationManager;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v0
if-eqz v0, :cond_57
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v0}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLatitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {v0}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLongitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCachedGeoLocation(Ljava/lang/String;)V
:cond_57
sget-object v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v3, "startLocationService end"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private startTimerTakePicture()V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canShowAdvaceParamSetting:Z
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "startTimerTakePicture"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->show()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->getCountDownLimit()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->setTimeCount(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->startTimerTake(Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;)V
return-void
.end method
.method private stopAntiShakeTakePicture()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canShowAdvaceParamSetting:Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->stopAntiShake()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setCameraState(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;)V
return-void
.end method
.method private stopTimerTakePic()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canShowAdvaceParamSetting:Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->stopTimerTake()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->reset()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setCameraState(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;)V
return-void
.end method
.method private updateCompositionView()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCompositionLineState()Z
move-result v1
if-eqz v1, :cond_34
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z
move-result v1
if-eqz v1, :cond_1a
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->hideCompositionView()V
:goto_19
return-void
:cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
instance-of v1, v1, Lcom/pinguo/camera360/camera/model/SceneCameraModel;
if-nez v1, :cond_2c
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
instance-of v1, v1, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;
if-nez v1, :cond_2c
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
instance-of v1, v1, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;
if-eqz v1, :cond_30
:cond_2c
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->hideCompositionView()V
goto :goto_19
:cond_30
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showCompositionView()V
goto :goto_19
:cond_34
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->hideCompositionView()V
goto :goto_19
.end method
.method private updateMyCenterNewMsgView()V
.registers 10
const/4 v8, 0x1
sget-object v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "updateMyCenterNewMsgView flag = "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getNewFlagInMyCenter()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->instance()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;
move-result-object v5
const-string/jumbo v6, "key_camera_show_new"
invoke-virtual {v5, v6, v8}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->getBoolean(Ljava/lang/String;Z)Z
move-result v5
if-eqz v5, :cond_31
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
invoke-virtual {v5, v8}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->updateTopMenuBarCloudPopView(I)V
:goto_30
return-void
:cond_31
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getUnreadFeedbackCount()I
move-result v1
if-lez v1, :cond_41
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
invoke-virtual {v5, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->updateTopMenuBarCloudPopView(I)V
goto :goto_30
:cond_41
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-static {v5}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z
move-result v0
if-eqz v0, :cond_5f
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getNewOrderCount()I
move-result v3
if-lez v3, :cond_5f
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
invoke-virtual {v5, v3}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->updateTopMenuBarCloudPopView(I)V
goto :goto_30
:cond_5f
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getNewMessageCount()I
move-result v2
if-lez v2, :cond_6f
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
invoke-virtual {v5, v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->updateTopMenuBarCloudPopView(I)V
goto :goto_30
:cond_6f
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->updateTopMenuBarCloudPopView(I)V
goto :goto_30
.end method
.method private updateTopMenuBar()V
.registers 24
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x8
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
move-result-object v14
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
move-result-object v19
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x5
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
move-result-object v7
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->couldSwitchCamera()Z
move-result v20
if-eqz v20, :cond_235
invoke-virtual {v14}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-result-object v20
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V
:goto_45
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->initFlashMode()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
move-object/from16 v20, v0
invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isFrontCamera()Z
move-result v20
if-eqz v20, :cond_240
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableFlashMode(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableFocusMode(Z)V
:goto_86
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z
move-result v20
if-eqz v20, :cond_9e
const/16 v20, 0x1
invoke-virtual/range {v19 .. v20}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V
sget-object v20, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->sOtherSettingSwitchImgRes:[I
const/16 v21, 0x1
aget v20, v20, v21
invoke-virtual/range {v19 .. v20}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V
:cond_9e
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
move-result-object v20
const-string/jumbo v21, "key_camera_focusmode"
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v11
if-eqz v11, :cond_ee
invoke-virtual {v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;
move-result-object v20
move-object/from16 v0, v20
array-length v0, v0
move/from16 v20, v0
if-lez v20, :cond_ee
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v11, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry(Landroid/content/Context;)Ljava/lang/String;
move-result-object v17
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getResources()Landroid/content/res/Resources;
move-result-object v20
const-string/jumbo v21, "string"
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;
move-result-object v22
move-object/from16 v0, v20
move-object/from16 v1, v17
move-object/from16 v2, v21
move-object/from16 v3, v22
invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v16
move-object/from16 v15, v17
if-eqz v16, :cond_eb
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getResources()Landroid/content/res/Resources;
move-result-object v20
move-object/from16 v0, v20
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v15
:cond_eb
invoke-virtual {v7, v15}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setText(Ljava/lang/String;)V
:cond_ee
const-string/jumbo v20, "auto"
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getSupportedFocusModes()Ljava/util/List;
move-result-object v21
invoke-static/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z
move-result v6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
move-object/from16 v0, v20
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableFocusMode(Z)V
invoke-virtual {v10}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundState()Z
move-result v20
if-eqz v20, :cond_138
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x1
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
move-result-object v13
const/16 v20, 0x1
move/from16 v0, v20
invoke-virtual {v13, v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V
sget-object v20, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->sOtherSettingSwitchImgRes:[I
const/16 v21, 0x1
aget v20, v20, v21
move/from16 v0, v20
invoke-virtual {v13, v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V
:cond_138
invoke-virtual {v10}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z
move-result v9
invoke-virtual {v10}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isAntiShakeOn()Z
move-result v8
sget-object v20, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v21, Ljava/lang/StringBuilder;
const-string/jumbo v22, "isAntiShakeOn = "
invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v21
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v21
const-string/jumbo v22, " isOpenTimer = "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
move-object/from16 v0, v21
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-static/range {v20 .. v21}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v9, :cond_27c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x1
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->updateTimerCamera(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->updateAvoidShake(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enablemAvoidShake(Z)V
:goto_199
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x2
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getSwichView()Landroid/view/View;
move-result-object v20
new-instance v21, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$5;
move-object/from16 v0, v21
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$5;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x3
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
move-result-object v12
invoke-virtual {v12}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getSwichView()Landroid/view/View;
move-result-object v20
new-instance v21, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$6;
move-object/from16 v0, v21
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$6;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x5
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getSwichView()Landroid/view/View;
move-result-object v20
new-instance v21, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$7;
move-object/from16 v0, v21
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$7;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x9
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-result-object v20
new-instance v21, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$8;
move-object/from16 v0, v21
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$8;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
invoke-virtual {v10}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundState()Z
move-result v21
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->updateSoundState(Z)V
return-void
:cond_235
invoke-virtual {v14}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-result-object v20
const/16 v21, 0x4
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V
goto/16 :goto_45
:cond_240
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x9
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
move-result-object v4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->isEnabled()Z
move-result v21
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableFlashMode(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x1
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableFocusMode(Z)V
goto/16 :goto_86
:cond_27c
if-eqz v8, :cond_2b3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x1
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->updateAvoidShake(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->updateTimerCamera(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableTimerCamera(Z)V
goto/16 :goto_199
:cond_2b3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->updateTimerCamera(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->updateAvoidShake(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x1
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableTimerCamera(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
move-object/from16 v20, v0
const/16 v21, 0x1
invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enablemAvoidShake(Z)V
goto/16 :goto_199
.end method
.method private updateZoomControlView()V
.registers 7
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isZoomSupported()Z
move-result v1
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getMaxZoom()I
move-result v2
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getZoom()I
move-result v0
new-instance v4, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$11;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$11;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-virtual {v5, v1, v2, v0, v4}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->updateView(ZIILcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;)V
return-void
.end method
.method public autoFocus()V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mAutoFocusCallback:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$PGAutoFocusCallback;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
goto :goto_4
.end method
.method public cancelAutoFocus()V
.registers 4
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v1, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
const-string/jumbo v2, "f4ab1ced32e2092c35bfa10cae9e836c"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_4
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-eq v0, v1, :cond_4
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-eq v0, v1, :cond_4
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->cancelAutoFocus()V
goto :goto_4
.end method
.method public capture()Z
.registers 11
const/4 v9, 0x0
const/4 v8, 0x3
const/4 v4, 0x0
const/4 v5, 0x1
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v6, v5}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->setPreviewPause(Z)V
iget-boolean v6, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v6, :cond_e
:goto_d
return v4
:cond_e
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v6, v8}, Landroid/os/Handler;->hasMessages(I)Z
move-result v6
if-eqz v6, :cond_1e
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startLocationService()V
:cond_1e
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z
move-result v6
if-eqz v6, :cond_30
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->hideTouchTap()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startTimerTakePicture()V
move v4, v5
goto :goto_d
:cond_30
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isAntiShakeOn()Z
move-result v6
if-eqz v6, :cond_3e
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->hideTouchTap()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startAntiShakeTakePicture()V
move v4, v5
goto :goto_d
:cond_3e
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->preTakePicture()V
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v6, p0, p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->takePicture(Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
const-string/jumbo v7, "bc833a31761642e78dc09c16e4366dd8"
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_6c
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFillInLightIndex()I
move-result v6
if-eq v6, v8, :cond_6a
move v1, v5
:goto_5a
if-eqz v1, :cond_6c
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraFacing()I
move-result v6
if-ne v6, v5, :cond_6c
move v4, v5
goto :goto_d
:cond_6a
move v1, v4
goto :goto_5a
:cond_6c
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->needShowPreview()Z
move-result v6
if-eqz v6, :cond_9b
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v6, v9, v9, v4}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v2
new-instance v0, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->canReplaceEffectAfterTaken()Z
move-result v4
invoke-direct {v0, v2, v9, v5, v4}, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;-><init>(Lcom/pinguo/camera360/photoedit/PictureInfo;[BZZ)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Lcom/pinguo/lib/eventbus/BaseEvent;->setFromTag(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v4
invoke-virtual {v4, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
:cond_9b
move v4, v5
goto/16 :goto_d
.end method
.method public changeMode(Ljava/lang/String;)V
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->closeModePickerBtn()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-static {p1, v0}, Lcom/pinguo/camera360/camera/controller/ModeCameraFactory;->isModeChanged(Ljava/lang/String;Lcom/pinguo/camera360/camera/controller/ModeCameraController;)Z
move-result v0
if-eqz v0, :cond_ea
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->createModeCameraModel(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStop()V
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->createModeCamera(Ljava/lang/String;)Lcom/pinguo/camera360/camera/controller/ModeCameraController;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
invoke-virtual {v0, v1, p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->isIgnoreAutoFocus()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->closeSensorFocus(Z)V
:cond_3f
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateTopMenuBar()V
const-string/jumbo v0, "Test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Set render type on item click 555:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "Test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "PGCameraFragment change mode:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateCompositionView()V
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsLiveEffectOn:Z
if-eqz v0, :cond_132
const-string/jumbo v0, "23382e49b7f64d5fb822aba5a29e927f"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_eb
const-string/jumbo v0, "Test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Set render type on item click 666:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "Test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Set render type mode:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_SCENE:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setRenderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
const/4 v1, 0x2
new-array v2, v1, [Ljava/lang/Object;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
check-cast v1, Lcom/pinguo/camera360/camera/model/SceneCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getScenePath()Ljava/lang/String;
move-result-object v1
aput-object v1, v2, v3
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
check-cast v1, Lcom/pinguo/camera360/camera/model/SceneCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getSceneParam()Ljava/lang/String;
move-result-object v1
aput-object v1, v2, v4
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setEffect([Ljava/lang/Object;)V
:goto_d1
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->resetRenderParams(Z)V
:goto_de
:cond_de
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->isCanShowZoomControlView()Z
move-result v0
if-eqz v0, :cond_15e
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showZoomControl()V
:goto_e7
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showRenderTipsView()V
:cond_ea
return-void
:cond_eb
const-string/jumbo v0, "Test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Set render type on item click 777:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "Test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Set render type mode:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setRenderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
new-array v1, v4, [Ljava/lang/Object;
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setEffect([Ljava/lang/Object;)V
goto :goto_d1
:cond_132
const-string/jumbo v0, "23382e49b7f64d5fb822aba5a29e927f"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_144
const-string/jumbo v0, "c0d064951ba5413391b702dcc44580f0"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_148
:cond_144
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->enablePreviewCallback()V
goto :goto_de
:cond_148
const-string/jumbo v0, "f4ab1ced32e2092c35bfa10cae9e836c"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_de
const-string/jumbo v0, "Test"
const-string/jumbo v1, "disablePreviewCallback:"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->disablePreviewCallback()V
goto :goto_de
:cond_15e
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->hideZoomControl()V
goto :goto_e7
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusViewUIManager:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->clearFocus()V
return-void
.end method
.method public couldSwitchCamera()Z
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
const-string/jumbo v2, "f4ab1ced32e2092c35bfa10cae9e836c"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_17
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
const-string/jumbo v2, "e46227d3cf94f4bbab8edb68d0c8d68e"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_18
:cond_17
:goto_17
return v0
:cond_18
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraUtils;->getCameraNumber()I
move-result v1
const/4 v2, 0x2
if-lt v1, v2, :cond_17
const/4 v0, 0x1
goto :goto_17
.end method
.method public createModeCamera(Ljava/lang/String;)Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-static {p1, v0, v1}, Lcom/pinguo/camera360/camera/controller/ModeCameraFactory;->create(Ljava/lang/String;Landroid/app/Activity;Lcom/pinguo/camera360/camera/model/ModeCameraModel;)Lcom/pinguo/camera360/camera/controller/ModeCameraController;
move-result-object v0
return-object v0
.end method
.method public createModeCameraModel(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {p1, v0, v1}, Lcom/pinguo/camera360/camera/controller/ModeCameraModelFactory;->create(Ljava/lang/String;Lcom/pinguo/camera360/camera/model/PGCameraBase;Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;
move-result-object v0
return-object v0
.end method
.method public createViewHolder(Landroid/view/View;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
.registers 3
new-instance v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
invoke-direct {v0, p0, p1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;Landroid/view/View;)V
return-object v0
.end method
.method public getCurrentMode()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
return-object v0
.end method
.method public getFocusSize()Landroid/graphics/Point;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusViewUIManager:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->getFocusSize()Landroid/graphics/Point;
move-result-object v0
return-object v0
.end method
.method public getModeCameraModel()Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
return-object v0
.end method
.method public getOrientation()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mOrientation:I
return v0
.end method
.method public handleKeyBack(Landroid/view/KeyEvent;)Z
.registers 11
const/16 v8, 0x18
const/4 v5, 0x0
const/4 v6, 0x1
iget-boolean v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v7, :cond_a
move v6, v5
:goto_9
:cond_9
return v6
:cond_a
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v1
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v7, v1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onKeyDown(I)Z
move-result v7
if-nez v7, :cond_9
const/4 v7, 0x4
if-ne v1, v7, :cond_8d
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->vibrate()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v4
sget-object v7, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-ne v4, v7, :cond_39
const-string/jumbo v7, "STATE_FOCUSING_SNAP_ON_FINISH"
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getState()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_73
:cond_39
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z
move-result v7
if-eqz v7, :cond_56
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isTimerRunning()Z
move-result v7
if-eqz v7, :cond_56
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->stopTimerTakePic()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
goto :goto_9
:cond_56
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isAntiShakeOn()Z
move-result v7
if-eqz v7, :cond_73
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isAntiShakeRunning()Z
move-result v7
if-eqz v7, :cond_73
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->stopAntiShakeTakePicture()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
goto :goto_9
:cond_73
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v7, v7, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->isMenuBarActivated()Z
move-result v7
if-eqz v7, :cond_ad
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideOtherSettingPopMenu()V
goto/16 :goto_9
:cond_8d
const/16 v7, 0x19
if-eq v1, v7, :cond_93
if-ne v1, v8, :cond_ad
:cond_93
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundKeyMode()Ljava/lang/String;
move-result-object v3
const-class v7, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
invoke-static {v7, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v2
if-ne v8, v1, :cond_a8
move v5, v6
:cond_a8
invoke-virtual {p0, v0, v5, v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->soundKeyAction(Ljava/lang/Enum;ZI)V
goto/16 :goto_9
:cond_ad
move v6, v5
goto/16 :goto_9
.end method
.method public hideZoomControl()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->getVisibility()I
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->hide()V
:cond_17
return-void
.end method
.method protected initCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
.registers 2
new-instance v0, Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;-><init>()V
return-object v0
.end method
.method protected needEnablePreviewCallback()Z
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v0
if-nez v0, :cond_14
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->needEnablePreviewCallback()Z
move-result v1
if-nez v1, :cond_14
const/4 v1, 0x0
:goto_13
return v1
:cond_14
const/4 v1, 0x1
goto :goto_13
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onActivityCreated(Landroid/os/Bundle;)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onActivityCreated"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getSurfaceView()Landroid/view/SurfaceView;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;
move-result-object v2
invoke-interface {v0, v1, v2, p0}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->init(Landroid/view/SurfaceView;Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V
return-void
.end method
.method public onAdvanceClick()V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideOtherSettingPopMenu()V
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public onAvoidShakeSwitch(Z)V
.registers 5
const/16 v2, 0x8
const/4 v1, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setAntiShake(Z)V
if-eqz p1, :cond_32
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->openAntiShakeFunction()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceFlagView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mRenderTipsView:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->updateTimerCamera(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableTimerCamera(Z)V
:goto_31
return-void
:cond_32
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->closeAntiShakeFunction()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceFlagView:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showRenderTipsView()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableTimerCamera(Z)V
goto :goto_31
.end method
.method public onBottomMenuClick()V
.registers 5
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;
const/4 v2, 0x1
const/4 v3, 0x0
invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;-><init>(ZZ)V
invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/event/HideSceneSelectEvent;
invoke-direct {v1}, Lcom/pinguo/camera360/camera/event/HideSceneSelectEvent;-><init>()V
invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method public onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
.registers 7
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v1, p1, p2}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->isIgnoreAutoFocus()Z
move-result v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->closeSensorFocus(Z)V
:cond_17
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v0
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsLiveEffectOn:Z
if-eq v1, v0, :cond_33
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsLiveEffectOn:Z
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->initPreviewModel()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->setPreviewModel(Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;)V
:cond_33
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateTopMenuBar()V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraUtils;->getCameraNumber()I
move-result v1
const/4 v2, 0x2
if-ge v1, v2, :cond_44
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->disableSwithCameraView()V
:cond_44
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateZoomControlView()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateCompositionView()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateTimerAndAntiShakeView()V
sget-object v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "isCanShowZoomControlView() ="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->isCanShowZoomControlView()Z
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->isCanShowZoomControlView()Z
move-result v1
if-eqz v1, :cond_b5
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showZoomControl()V
:goto_6f
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v1
const/4 v2, -0x1
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateParameters(I)V
sget-object v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v2, "start setSurfaceVisibility"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getSurfaceView()Landroid/view/SurfaceView;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;
move-result-object v3
invoke-interface {v1, v2, v3, p0}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->init(Landroid/view/SurfaceView;Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getSurfaceView()Landroid/view/SurfaceView;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->setSurfaceVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->setFocusCallBack(Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->initRedressDegree()I
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showRenderTipsView()V
return-void
:cond_b5
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->hideZoomControl()V
goto :goto_6f
.end method
.method public onCameraSoundSwitch(Z)V
.registers 7
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setSoundState(Z)V
if-nez p1, :cond_24
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getShowSoundCloseTips()Z
move-result v1
if-eqz v1, :cond_24
new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const v3, 0x7f08030f
iget v4, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mOrientation:I
invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setShowSoundCloseTips(Z)V
:cond_24
return-void
.end method
.method public onCameraTimerSwitch(Z)V
.registers 4
const/4 v1, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setTimerSwitchState(Z)V
if-eqz p1, :cond_19
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->updateAvoidShake(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enablemAvoidShake(Z)V
:goto_18
return-void
:cond_19
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enablemAvoidShake(Z)V
goto :goto_18
.end method
.method public onCloudHomeClick()V
.registers 4
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canLoginCloud:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideOtherSettingPopMenu()V
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lcom/pinguo/camera360/mycenter/MyCenterActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startActivity(Landroid/content/Intent;)V
goto :goto_4
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/pinguo/camera360/camera/controller/PGCameraFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "onCreate"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onCreate(Landroid/os/Bundle;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
invoke-virtual {v1, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V
new-instance v0, Landroid/content/IntentFilter;
const-string/jumbo v1, "com.pinguo.camear360.feedback.update.mycenter"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->receiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->createModeCameraModel(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->createModeCamera(Ljava/lang/String;)Lcom/pinguo/camera360/camera/controller/ModeCameraController;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v1
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsLiveEffectOn:Z
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->initPreviewModel()V
new-instance v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$MainHandler;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$MainHandler;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->setPreviewModel(Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;)V
sget-object v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "onCreate end"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/PGCameraFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
sget-object v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v2, "onCreateView"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0300e9
const/4 v3, 0x0
invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->createViewHolder(Landroid/view/View;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->setController(Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->setListener(Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
new-instance v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$3;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$3;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V
new-instance v1, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
invoke-direct {v1}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusViewUIManager:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusViewUIManager:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->initFocusView(Landroid/view/View;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isClickPreviewAdjustIcon()Z
move-result v1
if-nez v1, :cond_55
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->IS_NOT_SUPPORT_PREVIEW_ADJUST:Z
if-eqz v1, :cond_6e
:cond_55
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdjustPreviewOriIcon:Landroid/widget/ImageView;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_5e
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
invoke-virtual {v1, v2, p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
sget-object v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v2, "onCreateView end"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
:cond_6e
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdjustPreviewOriIcon:Landroid/widget/ImageView;
new-instance v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_5e
.end method
.method public onDestroy()V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/camera/controller/PGCameraFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onDestroy"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onDestroy()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mVolumePressDelayHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mVolumePressDelayRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->receiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStop()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewBuffer:[B
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/SoundManager;->release()V
iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
:cond_59
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->setPreviewModel(Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/PGCameraFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDown(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public onEffectTypeChangeEvent(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
const/4 v2, 0x0
invoke-static {p2}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getPreviewFrame(Ljava/lang/String;)I
move-result v3
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->changePreviewRation(ZI)I
move-result v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setPreviewFrame(I)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setLiveEffectPreviewFrame(I)V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/AdvanceParameterClickEvent;)V
.registers 3
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setCameraParametersWhenIdle(I)V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;)V
.registers 4
const-string/jumbo v0, "WO"
const-string/jumbo v1, "ShowSubEffectSelectorEvent 2"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;->getFromTag()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_20
:goto_1f
return-void
:cond_20
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;->getVisibility()I
move-result v0
if-nez v0, :cond_31
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hide()V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mEffectSelectVisibility:I
goto :goto_1f
:cond_31
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->show()V
const/16 v0, 0x8
iput v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mEffectSelectVisibility:I
goto :goto_1f
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/HideModePickerViewEvent;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->closeModePickerBtn()V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;)V
.registers 6
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;->getFromTag()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_30
sget-object v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Not my event, ignore! From:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;->getFromTag()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:goto_2f
return-void
:cond_30
const-string/jumbo v1, "JTest12"
const-string/jumbo v2, "\u62cd\u540e\u6062\u590d\u9884\u89c8"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MTK:Z
if-eqz v1, :cond_57
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v1
if-nez v1, :cond_4d
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
instance-of v1, v1, Lcom/pinguo/camera360/camera/model/SceneCameraModel;
if-eqz v1, :cond_57
:cond_4d
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->releaseCamera()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->openCamera()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startPreview()V
goto :goto_2f
:cond_57
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraAdapt()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;
move-result-object v0
if-eqz v0, :cond_76
sget-object v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "adapt  = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:cond_76
invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->unSupportStopPreview()Z
move-result v1
if-nez v1, :cond_87
if-eqz v0, :cond_84
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->isUnSupStop()Z
move-result v1
if-nez v1, :cond_87
:cond_84
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->stopPreview()V
:cond_87
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startPreview()V
goto :goto_2f
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;)V
.registers 5
sget-object v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v2, "onEvent:OnEffectSelectEvent"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->getFromTag()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2a
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_2a
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->getEffect()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->changeParentEffect(Ljava/lang/String;)V
:cond_2a
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/OnMyCenterNewMsgEvent;)V
.registers 4
const-string/jumbo v0, "PGM"
const-string/jumbo v1, "onEvent OnMyCenterNewMsgEvent"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateMyCenterNewMsgView()V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/OnSceneSelectEvent;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/OnSceneSelectEvent;->getSceneTemplate()Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onSceneTypeChange(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/OnSubEffectSelectEvent;)V
.registers 4
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/OnSubEffectSelectEvent;->getFromTag()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1f
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_1f
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/OnSubEffectSelectEvent;->getEffect()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->changeEffect(Ljava/lang/String;)V
:cond_1f
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/ShowIDPhotoFaceDetectEvent;)V
.registers 4
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "receive the event of ShowPicturePreviewEvent"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->getInstance()Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;
move-result-object v0
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/ShowIDPhotoFaceDetectEvent;->getPictureData()[B
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->setJpegData([B)V
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->getInstance()Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;
move-result-object v0
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/ShowIDPhotoFaceDetectEvent;->getPictureInfo()Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->setPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity;->startActivity(Landroid/content/Context;)V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/ShowSubEffectSelectorEvent;)V
.registers 4
const-string/jumbo v0, "WO"
const-string/jumbo v1, "ShowSubEffectSelectorEvent"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setVisibility(I)V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;)V
.registers 10
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v5
if-eqz v5, :cond_13
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v6
const/4 v7, 0x1
invoke-virtual {v5, v6, v7}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->setThumbNail(Landroid/graphics/Bitmap;Z)V
:goto_12
return-void
:cond_13
:try_start_13
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getLastPhotoTakenTime()J
move-result-wide v3
const-wide/16 v5, 0x0
cmp-long v5, v3, v5
if-lez v5, :cond_38
sget-object v5, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-static {v5, v3, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v1
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v5, v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->setThumbNail(Landroid/graphics/Bitmap;)V
:try_end_32
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_32} :catch_33
goto :goto_12
:catch_33
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_12
:cond_38
:try_start_38
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->setThumbNail(Landroid/graphics/Bitmap;)V
:try_end_40
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_40} :catch_33
goto :goto_12
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/UpdateTimerAndAntiShakeViewEvent;)V
.registers 4
const-string/jumbo v0, "test"
const-string/jumbo v1, "UpdateTimerAndAntiShakeViewEvent"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateTimerAndAntiShakeView()V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/lib/camera/event/TurnOnOffAntiShakeEvent;)V
.registers 6
const/16 v3, 0x8
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/event/TurnOnOffAntiShakeEvent;->isAntiShakeOn()Z
move-result v0
if-eqz v0, :cond_18
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceFlagView:Landroid/view/View;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mRenderTipsView:Landroid/widget/TextView;
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V
:goto_17
return-void
:cond_18
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceFlagView:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showRenderTipsView()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/DebounceView;->hide()V
goto :goto_17
.end method
.method public onEvent(Lcom/pinguo/camera360/lib/camera/event/TurnOnOffTimerEvent;)V
.registers 5
sget-object v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v2, "onEvent TurnOnOffTimerEvent"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/event/TurnOnOffTimerEvent;->isTimerOn()Z
move-result v0
if-eqz v0, :cond_16
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->show()V
:goto_15
return-void
:cond_16
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->hide()V
goto :goto_15
.end method
.method public onEvent(Lcom/pinguo/camera360/shop/event/CameraProductChangeEvent;)V
.registers 6
invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getCameraModeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
move-result-object v0
if-nez v0, :cond_26
invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getCameraModeList()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v2
if-lez v2, :cond_26
const/4 v2, 0x0
invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
iget-object v2, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->changeMode(Ljava/lang/String;)V
:cond_26
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/shop/event/EffectProductChangeEvent;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onEffectTypeUnInstall(Ljava/lang/String;)V
return-void
.end method
.method public onFlashModeClick()V
.registers 2
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setCameraParametersWhenIdle(I)V
return-void
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 6
const/4 v0, 0x0
return v0
.end method
.method public onFocusModeChange(Ljava/lang/String;)V
.registers 5
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setCameraParametersWhenIdle(I)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onFocusModeChange = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " CameraSettingModel.instance().getFocusMode() = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getFocusMode()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public onGalleryEnterClick()V
.registers 10
const/4 v8, 0x0
invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;
move-result-object v2
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v0
const-wide/16 v4, 0x0
invoke-virtual {v2, v0}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J
move-result-wide v6
cmp-long v4, v4, v6
if-nez v4, :cond_27
new-instance v3, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const v5, 0x7f0802f5
invoke-direct {v3, v4, v5, v8}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
:goto_26
return-void
:cond_27
new-instance v4, Ljava/io/File;
sget-object v5, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;->SAND_B0X_DB_PATH:Ljava/lang/String;
invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v4
if-nez v4, :cond_44
new-instance v3, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const v5, 0x7f080339
invoke-direct {v3, v4, v5, v8}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto :goto_26
:cond_44
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->vibrate()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v4
sget-object v5, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-eq v4, v5, :cond_71
new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f080247
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getOrientation()I
move-result v6
invoke-direct {v1, v4, v5, v6}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto :goto_26
:cond_71
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/camera/event/EnterGalleryEvent;
invoke-direct {v5}, Lcom/pinguo/camera360/camera/event/EnterGalleryEvent;-><init>()V
invoke-virtual {v4, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v4, v4, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v4, v4, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideOtherSettingPopMenu()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;
const/4 v6, 0x1
invoke-direct {v5, v6, v8}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;-><init>(ZZ)V
invoke-virtual {v4, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;
invoke-direct {v5}, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;-><init>()V
invoke-virtual {v4, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
goto/16 :goto_26
.end method
.method public onLongPress(Landroid/view/MotionEvent;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/controller/PGCameraFragment; onLongPress "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/PGCameraFragment; onLongPress"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onMenuBarActivated(Z)V
.registers 8
const-wide/16 v4, 0xbb8
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->isCanShowZoomControlView()Z
move-result v3
if-eqz v3, :cond_1b
if-eqz p1, :cond_1e
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->getVisibility()I
move-result v3
if-nez v3, :cond_1c
:goto_16
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mLastZoomControlViewVisibility:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->hideZoomControl()V
:goto_1b
:cond_1b
return-void
:cond_1c
move v1, v2
goto :goto_16
:cond_1e
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z
move-result v0
if-eqz v0, :cond_32
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-virtual {v1, v2, v4, v5}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setAutoVisible(ZJ)V
:goto_2f
:cond_2f
iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mLastZoomControlViewVisibility:Z
goto :goto_1b
:cond_32
iget-boolean v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mLastZoomControlViewVisibility:Z
if-eqz v3, :cond_2f
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-virtual {v3, v1, v4, v5}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setAutoVisible(ZJ)V
goto :goto_2f
.end method
.method public onModeFunctionClick()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->vibrate()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onModeFunctionClick()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideOtherSettingPopMenu()V
return-void
.end method
.method public onPause()V
.registers 9
const-string v1, " + Lcom/pinguo/camera360/camera/controller/PGCameraFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x3
const/4 v6, 0x1
sget-object v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "onPause"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iput-boolean v6, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canShowAdvaceParamSetting:Z
const/4 v3, 0x0
iput-boolean v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canLoginCloud:Z
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
const/4 v4, 0x2
invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
instance-of v3, v3, LvStudio/Android/Camera360/activity/CameraActivity;
if-eqz v3, :cond_38
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
check-cast v3, LvStudio/Android/Camera360/activity/CameraActivity;
invoke-virtual {v3, p0}, LvStudio/Android/Camera360/activity/CameraActivity;->unRegisterOrientationEvent(Lcom/pinguo/camera360/base/BaseFragment;)V
:cond_38
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;
move-result-object v3
invoke-virtual {v3}, Lus/pinguo/androidsdk/PGGLSurfaceView;->onPause()V
iput-boolean v6, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
sget-object v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "getCameraModel().getCameraState()"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v3
sget-object v4, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->SNAP_IN_PROGRESS:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_86
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->needShowPreview()Z
move-result v3
if-eqz v3, :cond_86
new-instance v0, Lcom/pinguo/camera360/camera/event/CloseCameraEvent;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/event/CloseCameraEvent;-><init>()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v3
invoke-virtual {v3, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
:cond_86
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v3
sget-object v4, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setCameraState(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z
move-result v3
if-eqz v3, :cond_a8
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isTimerRunning()Z
move-result v3
if-eqz v3, :cond_a8
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->stopTimerTakePic()V
:cond_a8
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isAntiShakeOn()Z
move-result v3
if-eqz v3, :cond_bd
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isAntiShakeRunning()Z
move-result v3
if-eqz v3, :cond_bd
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->stopAntiShakeTakePicture()V
:cond_bd
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPause()V
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;
move-result-object v1
const-string/jumbo v3, "5d5bf5c848d112287903b26d5f388eaa"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_e0
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->isSupportKeepCamera2Video()Z
move-result v3
if-eqz v3, :cond_e0
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->keep()V
:cond_e0
invoke-super {p0}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onPause()V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->pauseModel()V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/camera360/camera/model/SoundManager;->getSoundManager(Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/SoundManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/SoundManager;->restoreSysRingerMode()V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z
move-result v3
if-eqz v3, :cond_128
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V
:goto_107
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v3
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->unBind(Landroid/content/Context;)V
sget-object v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "onPause end"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/PGCameraFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_128
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/lib/location/PGLocationManager;->stop()V
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/lib/location/PGLocationManager;->destroy()V
goto :goto_107
.end method
.method public onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
.registers 22
const/4 v1, 0x1
move-object/from16 v0, p0
iput-boolean v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canShowAdvaceParamSetting:Z
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
move-object/from16 v0, p0
iget-boolean v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v1, :cond_f
:goto_e
:cond_e
return-void
:cond_f
const-string/jumbo v1, "taketimetest"
const-string/jumbo v2, "onPictureTaken"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z
move-result v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraTakePicture(Z)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraModeUsed(Ljava/lang/String;)V
const/4 v13, 0x0
sget-boolean v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressJpeg:Z
if-eqz v1, :cond_31
sget v13, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressJpegDegree:I
:cond_31
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v14
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z
move-result v1
if-eqz v1, :cond_18e
invoke-virtual {v14}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "23382e49b7f64d5fb822aba5a29e927f"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_ed
invoke-virtual {v14}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFrontCameraMirrorState()Z
move-result v1
if-nez v1, :cond_b3
sget-boolean v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressMirror:Z
if-nez v1, :cond_8b
move v6, v13
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getOrientation()I
move-result v15
rem-int/lit16 v1, v15, 0xb4
if-nez v1, :cond_61
add-int/lit16 v6, v6, 0xb4
:cond_61
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
rem-int/lit16 v6, v6, 0x168
move-object/from16 v2, p1
move-object/from16 v3, p2
move-object/from16 v4, p3
move-object/from16 v5, p4
invoke-virtual/range {v1 .. v6}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
:cond_72
:goto_72
invoke-virtual {v14}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z
move-result v1
if-eqz v1, :cond_e
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
const/4 v2, 0x1
const-wide/16 v3, 0xa
invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
goto :goto_e
:cond_8b
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
const/4 v2, 0x0
move-object/from16 v0, p1
invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->setCameraMirror([BI)[B
move-result-object p1
move v6, v13
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getOrientation()I
move-result v15
rem-int/lit16 v1, v15, 0xb4
if-nez v1, :cond_a1
add-int/lit16 v6, v6, 0xb4
:cond_a1
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
rem-int/lit16 v6, v6, 0x168
move-object/from16 v2, p1
move-object/from16 v3, p2
move-object/from16 v4, p3
move-object/from16 v5, p4
invoke-virtual/range {v1 .. v6}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
goto :goto_72
:cond_b3
sget-boolean v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressMirror:Z
if-nez v1, :cond_d5
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
const/16 v2, 0x5a
move-object/from16 v0, p1
invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->setCameraMirror([BI)[B
move-result-object p1
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
rem-int/lit16 v6, v13, 0x168
move-object/from16 v2, p1
move-object/from16 v3, p2
move-object/from16 v4, p3
move-object/from16 v5, p4
invoke-virtual/range {v1 .. v6}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
goto :goto_72
:cond_d5
rsub-int v1, v13, 0xb4
add-int/lit16 v1, v1, 0x168
rem-int/lit16 v6, v1, 0x168
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
rem-int/lit16 v6, v6, 0x168
move-object/from16 v2, p1
move-object/from16 v3, p2
move-object/from16 v4, p3
move-object/from16 v5, p4
invoke-virtual/range {v1 .. v6}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
goto :goto_72
:cond_ed
invoke-virtual {v14}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFrontCameraMirrorState()Z
move-result v1
if-eqz v1, :cond_139
sget-boolean v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressMirror:Z
if-nez v1, :cond_11d
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
const/16 v2, 0x5a
move-object/from16 v0, p1
invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->setCameraMirror([BI)[B
move-result-object p1
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
add-int/lit8 v2, v13, 0x5a
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getOrientation()I
move-result v3
add-int/2addr v2, v3
rem-int/lit16 v6, v2, 0x168
move-object/from16 v2, p1
move-object/from16 v3, p2
move-object/from16 v4, p3
move-object/from16 v5, p4
invoke-virtual/range {v1 .. v6}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
goto/16 :goto_72
:cond_11d
rsub-int v1, v13, 0x10e
add-int/lit16 v6, v1, 0x168
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getOrientation()I
move-result v1
add-int/2addr v1, v6
rem-int/lit16 v6, v1, 0x168
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
move-object/from16 v2, p1
move-object/from16 v3, p2
move-object/from16 v4, p3
move-object/from16 v5, p4
invoke-virtual/range {v1 .. v6}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
goto/16 :goto_72
:cond_139
invoke-virtual {v14}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFrontCameraMirrorState()Z
move-result v1
if-nez v1, :cond_72
sget-boolean v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->redressMirror:Z
if-nez v1, :cond_15f
move-object/from16 v0, p0
iget-object v7, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
add-int/lit16 v1, v13, 0x10e
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getOrientation()I
move-result v2
sub-int/2addr v1, v2
add-int/lit16 v1, v1, 0x168
rem-int/lit16 v12, v1, 0x168
move-object/from16 v8, p1
move-object/from16 v9, p2
move-object/from16 v10, p3
move-object/from16 v11, p4
invoke-virtual/range {v7 .. v12}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
goto/16 :goto_72
:cond_15f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
const/4 v2, 0x0
move-object/from16 v0, p1
invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->setCameraMirror([BI)[B
move-result-object p1
add-int/lit8 v6, v13, 0x5a
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getOrientation()I
move-result v15
rem-int/lit16 v1, v15, 0xb4
if-nez v1, :cond_176
add-int/lit16 v6, v6, 0xb4
:cond_176
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getOrientation()I
move-result v1
add-int/2addr v1, v6
rem-int/lit16 v6, v1, 0x168
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
move-object/from16 v2, p1
move-object/from16 v3, p2
move-object/from16 v4, p3
move-object/from16 v5, p4
invoke-virtual/range {v1 .. v6}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
goto/16 :goto_72
:cond_18e
invoke-virtual {v14}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "23382e49b7f64d5fb822aba5a29e927f"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1ae
move-object/from16 v0, p0
iget-object v7, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
rem-int/lit16 v12, v13, 0x168
move-object/from16 v8, p1
move-object/from16 v9, p2
move-object/from16 v10, p3
move-object/from16 v11, p4
invoke-virtual/range {v7 .. v12}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
goto/16 :goto_72
:cond_1ae
move-object/from16 v0, p0
iget-object v7, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getOrientation()I
move-result v1
add-int/2addr v1, v13
add-int/lit8 v1, v1, 0x5a
rem-int/lit16 v12, v1, 0x168
move-object/from16 v8, p1
move-object/from16 v9, p2
move-object/from16 v10, p3
move-object/from16 v11, p4
invoke-virtual/range {v7 .. v12}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
goto/16 :goto_72
.end method
.method public onPictureTakenFail()V
.registers 9
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canShowAdvaceParamSetting:Z
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onPictureTakenFail,\u62cd\u7167\u5931\u8d25\uff0c\u91cd\u542f\u76f8\u673a"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f080255
const v2, 0x7f080300
const/16 v3, -0x3e7
new-instance v4, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$12;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$12;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
const/4 v5, 0x0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->needShowPreview()Z
move-result v0
if-eqz v0, :cond_34
new-instance v7, Lcom/pinguo/camera360/camera/event/TakePictureOverTimeEvent;
invoke-direct {v7}, Lcom/pinguo/camera360/camera/event/TakePictureOverTimeEvent;-><init>()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, v7}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
:cond_34
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->releaseCamera()V
:try_start_3d
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCurCameraId()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->openCamera(I)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
:try_end_50
.catch Ljava/lang/Exception; {:try_start_3d .. :try_end_50} :catch_51
:goto_50
return-void
:catch_51
move-exception v6
invoke-virtual {p0, v6}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->onCameraOpenFail(Ljava/lang/Exception;)V
invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_50
.end method
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
.registers 5
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsLiveEffectOn:Z
invoke-virtual {v0, p1, p2, v1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPreviewFrame([BLandroid/hardware/Camera;Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewBuffer:[B
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->addCallbackBuffer([B)V
goto :goto_4
.end method
.method public onPreviewFunClick()V
.registers 10
const/4 v6, 0x1
const/4 v8, 0x0
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
const-string/jumbo v5, "e46227d3cf94f4bbab8edb68d0c8d68e"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_60
invoke-static {}, Lcom/pinguo/lib/util/Util;->isFastDoubleClick()Z
move-result v4
if-eqz v4, :cond_14
:goto_13
return-void
:cond_14
invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;
move-result-object v2
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v0
const-wide/16 v4, 0x0
invoke-virtual {v2, v0}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J
move-result-wide v6
cmp-long v4, v4, v6
if-nez v4, :cond_3a
new-instance v3, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const v5, 0x7f0802f5
invoke-direct {v3, v4, v5, v8}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto :goto_13
:cond_3a
const/4 v4, 0x3
invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v4, v4, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v4, v4, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideOtherSettingPopMenu()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-static {v4}, Lcom/pinguo/camera360/camera/activity/IdCameraPictureActivity;->startActivity(Landroid/content/Context;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;
invoke-direct {v5}, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;-><init>()V
invoke-virtual {v4, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
goto :goto_13
:cond_60
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;
invoke-direct {v5, v6, v8}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;-><init>(ZZ)V
invoke-virtual {v4, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;
invoke-direct {v5}, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;-><init>()V
invoke-virtual {v4, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v4, v4, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v4, v6, v8}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->changePreviewRation(ZI)I
move-result v1
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v4, v4, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
invoke-virtual {v4, v1}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setPreviewFrame(I)V
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setLiveEffectPreviewFrame(I)V
goto :goto_13
.end method
.method public onReleaseCamera()V
.registers 3
const/4 v1, 0x4
invoke-super {p0}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onReleaseCamera()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getSurfaceView()Landroid/view/SurfaceView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;
move-result-object v0
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->setVisibility(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mScaledSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
invoke-interface {v0}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->destroy()V
:cond_26
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onReleaseCamera()V
:cond_2f
return-void
.end method
.method public onResetFocusArea()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "reset the focus area"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusViewUIManager:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->resetFocus()V
return-void
.end method
.method public onResume()V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/camera/controller/PGCameraFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canShowAdvaceParamSetting:Z
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onResume"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->preResumeModel()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
instance-of v0, v0, LvStudio/Android/Camera360/activity/CameraActivity;
if-eqz v0, :cond_2f
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, LvStudio/Android/Camera360/activity/CameraActivity;
invoke-virtual {v0, p0}, LvStudio/Android/Camera360/activity/CameraActivity;->registerOrientationEvent(Lcom/pinguo/camera360/base/BaseFragment;)V
:cond_2f
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateMyCenterNewMsgView()V
new-instance v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$LoadThumbnailTask;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$LoadThumbnailTask;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
new-array v1, v3, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v0
if-eqz v0, :cond_51
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;
move-result-object v0
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->onResume()V
:cond_51
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->resume()V
iput-boolean v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/SoundManager;->getSoundManager(Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/SoundManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/SoundManager;->saveSysRingerMode()V
invoke-super {p0}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onResume()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->resumeModel()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->isIgnoreAutoFocus()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->closeSensorFocus(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onResume()V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->resetZoomValue()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x3
const-wide/16 v2, 0x5dc
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x2
const-wide/16 v2, 0x3e8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->start(Landroid/content/Context;)V
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->bind(Landroid/content/Context;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isClickPreviewAdjustIcon()Z
move-result v0
if-nez v0, :cond_b6
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_NOT_SUPPORT_PREVIEW_ADJUST:Z
if-eqz v0, :cond_bf
:cond_b6
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdjustPreviewOriIcon:Landroid/widget/ImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_bf
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onResume end"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/PGCameraFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/controller/PGCameraFragment; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/camera/controller/PGCameraFragment; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onSetFocusArea(IIII)V
.registers 11
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusViewUIManager:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
move v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->setFocusArea(Landroid/app/Activity;IIII)V
return-void
.end method
.method public onSetFocusSize(II)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusViewUIManager:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->setFocusSize(II)V
return-void
.end method
.method public onShowModeClick()V
.registers 6
sget-object v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v2, "onShowModeClick"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->updateEachDay()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->vibrate()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onShowModeClick()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/camera/event/HideSceneSelectEvent;
invoke-direct {v2}, Lcom/pinguo/camera360/camera/event/HideSceneSelectEvent;-><init>()V
invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;
const/4 v3, 0x1
const/4 v4, 0x0
invoke-direct {v2, v3, v4}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;-><init>(ZZ)V
invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideOtherSettingPopMenu()V
new-instance v0, Lcom/pinguo/camera360/camera/event/ShowModePickerEvent;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/event/ShowModePickerEvent;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/event/ShowModePickerEvent;->setFromTag(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->hideNewCameraFlag()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->showOrHideNewCameraFlag()V
return-void
.end method
.method public onShowPress(Landroid/view/MotionEvent;)V
.registers 2
return-void
.end method
.method public onShutterBtnClick()V
.registers 12
const/4 v10, 0x1
const/4 v9, 0x0
iget-boolean v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v7, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->isCanTakePicture()Z
move-result v7
if-eqz v7, :cond_6
invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;
move-result-object v5
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J
move-result-wide v1
const-wide/16 v7, 0x0
cmp-long v7, v7, v1
if-nez v7, :cond_35
new-instance v6, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v7
const v8, 0x7f080245
invoke-direct {v6, v7, v8, v9}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto :goto_6
:cond_35
const-wide/32 v7, 0xa00000
cmp-long v7, v7, v1
if-lez v7, :cond_4c
new-instance v6, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v7
const v8, 0x7f0800e4
invoke-direct {v6, v7, v8, v9}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto :goto_6
:cond_4c
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->canProcessPicture()Z
move-result v7
if-nez v7, :cond_66
new-instance v6, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v7
const v8, 0x7f080247
invoke-direct {v6, v7, v8, v9}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto :goto_6
:cond_66
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v7
new-instance v8, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;
invoke-direct {v8, v10, v9}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;-><init>(ZZ)V
invoke-virtual {v7, v8}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v7
new-instance v8, Lcom/pinguo/camera360/camera/event/OnShutterBtnClickEvent;
invoke-direct {v8}, Lcom/pinguo/camera360/camera/event/OnShutterBtnClickEvent;-><init>()V
invoke-virtual {v7, v8}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v7, v7, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v7, v7, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideOtherSettingPopMenu()V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->vibrate()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v4
sget-object v7, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "onShutterBtnClick state = "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, " mFocusManager.getState() = "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getState()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v7, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-ne v4, v7, :cond_d9
const-string/jumbo v7, "STATE_FOCUSING_SNAP_ON_FINISH"
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getState()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_107
:cond_d9
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z
move-result v7
if-eqz v7, :cond_f0
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isTimerRunning()Z
move-result v7
if-eqz v7, :cond_f0
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->stopTimerTakePic()V
goto/16 :goto_6
:cond_f0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isAntiShakeOn()Z
move-result v7
if-eqz v7, :cond_6
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isAntiShakeRunning()Z
move-result v7
if-eqz v7, :cond_6
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->stopAntiShakeTakePicture()V
goto/16 :goto_6
:cond_107
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onShutter()V
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v7, v10}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->setPreviewPause(Z)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v7
sget-object v8, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->SNAP_IN_PROGRESS:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
invoke-virtual {v7, v8}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setCameraState(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z
move-result v7
if-nez v7, :cond_133
const-string/jumbo v7, "auto"
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getSupportedFocusModes()Ljava/util/List;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z
move-result v7
if-nez v7, :cond_138
:cond_133
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->capture()Z
goto/16 :goto_6
:cond_138
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->doCapture()V
goto/16 :goto_6
.end method
.method public onShutterBtnLongClick()V
.registers 5
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onShutterBtnLongClick"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z
move-result v0
if-eqz v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-ne v0, v1, :cond_10
const-string/jumbo v0, "STATE_FOCUSING_SNAP_ON_FINISH"
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getState()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->onShutterDown()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;
const/4 v2, 0x1
const/4 v3, 0x0
invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;-><init>(ZZ)V
invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
goto :goto_10
.end method
.method public onShutterBtnMoving()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z
move-result v0
if-eqz v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->onShutterUp()V
goto :goto_8
.end method
.method public onShutterButtonFocus(Z)V
.registers 6
const/4 v3, 0x0
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v0, :cond_6
:goto_5
:cond_5
return-void
:cond_6
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onShutterButtonFocus getCameraModel().getCameraState() = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z
move-result v0
if-nez v0, :cond_5
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
const-string/jumbo v1, "f4ab1ced32e2092c35bfa10cae9e836c"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_5
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-eq v0, v1, :cond_4a
if-nez p1, :cond_5
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
#calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->showOperationView(Z)V
invoke-static {v0, v3}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Z)V
goto :goto_5
:cond_4a
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "isShutterDown="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p1, :cond_70
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
#calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->hideOperationView(Z)V
invoke-static {v0, v3}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$1(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->onShutterDown()V
goto :goto_5
:cond_70
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
#calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->showOperationView(Z)V
invoke-static {v0, v3}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->onShutterUp()V
goto :goto_5
.end method
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
.registers 16
const/4 v13, 0x0
const/4 v9, 0x1
const-string/jumbo v10, "Test"
const-string/jumbo v11, "onSingleTapUp!!!"
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v10, :cond_10
:cond_f
:goto_f
return v9
:cond_10
iget-object v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v10, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onSingleTapUp(Landroid/view/MotionEvent;)Z
move-result v3
if-nez v3, :cond_f
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->hideAdvanceParameterUI()Z
move-result v10
if-nez v10, :cond_f
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v5
sget-object v10, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "onSingleTapUp state = "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, " mFocusManager.getState() = "
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
iget-object v12, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v12}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getState()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v10, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-ne v5, v10, :cond_63
const-string/jumbo v10, "STATE_FOCUSING_SNAP_ON_FINISH"
iget-object v11, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v11}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getState()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_96
:cond_63
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z
move-result v10
if-eqz v10, :cond_7c
iget-object v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v10}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isTimerRunning()Z
move-result v10
if-eqz v10, :cond_7c
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->stopTimerTakePic()V
goto :goto_f
:cond_7c
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isAntiShakeOn()Z
move-result v10
if-eqz v10, :cond_f
iget-object v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v10}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isAntiShakeRunning()Z
move-result v10
if-eqz v10, :cond_f
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->stopAntiShakeTakePicture()V
goto/16 :goto_f
:cond_96
iget-object v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v10, v10, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V
iget-object v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v10, v10, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideOtherSettingPopMenu()V
iget v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mEffectSelectVisibility:I
if-nez v10, :cond_bd
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v10
new-instance v11, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;
invoke-direct {v11, v13, v13}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;-><init>(ZZ)V
invoke-virtual {v10, v11}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
const/16 v10, 0x8
iput v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mEffectSelectVisibility:I
goto/16 :goto_f
:cond_bd
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->isCanShowZoomControlView()Z
move-result v10
if-eqz v10, :cond_c6
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showZoomControl()V
:cond_c6
sget-object v10, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "mModeCameraModel.isFrontCamera() = "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v12, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v12}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z
move-result v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v10}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z
move-result v10
if-nez v10, :cond_fa
const-string/jumbo v10, "auto"
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getSupportedFocusModes()Ljava/util/List;
move-result-object v11
invoke-static {v10, v11}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z
move-result v10
if-nez v10, :cond_113
:cond_fa
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z
move-result v10
if-eqz v10, :cond_f
iget-object v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v10, v9}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->setPreviewPause(Z)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v10
sget-object v11, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->SNAP_IN_PROGRESS:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
invoke-virtual {v10, v11}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setCameraState(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->capture()Z
goto/16 :goto_f
:cond_113
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z
move-result v10
if-eqz v10, :cond_181
invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;
move-result-object v6
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v6, v4}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J
move-result-wide v1
const-wide/16 v10, 0x0
cmp-long v10, v10, v1
if-nez v10, :cond_140
new-instance v8, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v10
const v11, 0x7f080245
invoke-direct {v8, v10, v11, v13}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto/16 :goto_f
:cond_140
const-wide/32 v10, 0xa00000
cmp-long v10, v10, v1
if-lez v10, :cond_158
new-instance v8, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v10
const v11, 0x7f0800e4
invoke-direct {v8, v10, v11, v13}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto/16 :goto_f
:cond_158
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->canProcessPicture()Z
move-result v10
if-nez v10, :cond_173
new-instance v8, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v10
const v11, 0x7f080247
invoke-direct {v8, v10, v11, v13}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto/16 :goto_f
:cond_173
iget-object v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v10, v9}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->setPreviewPause(Z)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v9
sget-object v10, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->SNAP_IN_PROGRESS:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setCameraState(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;)V
:cond_181
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->isSupportTouchFocus()Z
move-result v7
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
instance-of v9, v9, Lcom/pinguo/camera360/camera/model/TiltShiftCameraModel;
if-eqz v9, :cond_198
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
new-instance v10, Landroid/graphics/Point;
invoke-direct {v10, v13, v13}, Landroid/graphics/Point;-><init>(II)V
invoke-virtual {v9, v10, p1, v7}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->onTouch(Landroid/graphics/Point;Landroid/view/MotionEvent;Z)Z
move-result v9
goto/16 :goto_f
:cond_198
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
iget-object v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v10, v10, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
invoke-virtual {v10}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->getTouchViewLeftPoint()Landroid/graphics/Point;
move-result-object v10
invoke-virtual {v9, v10, p1, v7}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->onTouch(Landroid/graphics/Point;Landroid/view/MotionEvent;Z)Z
move-result v9
goto/16 :goto_f
.end method
.method public onStartPreview()V
.registers 13
const/4 v11, 0x0
invoke-super {p0}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onStartPreview()V
sget-object v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v9, "onStartPreview"
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v8, v11}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->setPreviewPause(Z)V
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
if-eqz v8, :cond_1a
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStartPreview()V
:cond_1a
new-instance v4, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v8
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v9
invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v9
invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v9
invoke-direct {v4, v8, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
const-string/jumbo v8, "test"
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "previewSize:"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v5
const-string/jumbo v8, "test"
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "screenSize:"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v4, v5}, Lcom/pinguo/lib/util/MathUtils;->scaleSizeToBound(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v8
iput-object v8, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mScaledSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
const-string/jumbo v8, "test"
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "mScaledSize:"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mScaledSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Camera Parameters Preview Size scaledSize= "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v10, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mScaledSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v8, v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mScaledSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-virtual {v8, v5, v9}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setAllSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
invoke-static {}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getPreviewFrame()I
move-result v3
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v8, v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
invoke-virtual {v8, v3}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setPreviewFrame(I)V
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setLiveEffectPreviewFrame(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->initSensorFocus()V
sget-boolean v8, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HTC_G11_ALL:Z
if-nez v8, :cond_ca
sget-boolean v8, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEITU_KISS:Z
if-eqz v8, :cond_dd
:cond_ca
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isOpenFlashLight()Z
move-result v8
if-eqz v8, :cond_dd
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v8
const/16 v9, 0x8
invoke-virtual {v8, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateParameters(I)V
:cond_dd
invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;
move-result-object v6
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v6, v2}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J
move-result-wide v0
const-wide/16 v8, 0x0
cmp-long v8, v8, v0
if-nez v8, :cond_127
new-instance v7, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v8
const v9, 0x7f080245
invoke-direct {v7, v8, v9, v11}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
:goto_102
:cond_102
sget-boolean v8, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU:Z
if-eqz v8, :cond_10d
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v8
invoke-virtual {v8, v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateParameters(I)V
:cond_10d
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v8
instance-of v8, v8, LvStudio/Android/Camera360/activity/CameraActivity;
if-eqz v8, :cond_11e
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v8
check-cast v8, LvStudio/Android/Camera360/activity/CameraActivity;
invoke-virtual {v8}, LvStudio/Android/Camera360/activity/CameraActivity;->startAllBgTask()V
:cond_11e
sget-object v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v9, "onStartPreview end"
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_127
const-wide/32 v8, 0xa00000
cmp-long v8, v8, v0
if-lez v8, :cond_102
new-instance v7, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v8
const v9, 0x7f0800e4
invoke-direct {v7, v8, v9, v11}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto :goto_102
.end method
.method public onStopPreview()V
.registers 3
invoke-super {p0}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onStopPreview()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->setPreviewPause(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStopPreview()V
:cond_12
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->needEnablePreviewCallback()Z
move-result v0
if-eqz v0, :cond_1b
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->disablePreviewCallback()V
:cond_1b
return-void
.end method
.method public onSwitchCamera(Z)V
.registers 5
const/4 v2, 0x0
if-eqz p1, :cond_20
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableFlashMode(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableFocusMode(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->resetTouchFocus()V
:goto_1a
:cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onSwitchCamera(Z)V
return-void
:cond_20
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
const/16 v2, 0x9
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->isEnabled()Z
move-result v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableFlashMode(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableFocusMode(Z)V
goto :goto_1a
.end method
.method public onSwitchCameraClick()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onSwitchCameraClick"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v0, :cond_d
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->switchCamera(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->isCanShowZoomControlView()Z
move-result v0
if-eqz v0, :cond_23
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showZoomControl()V
:cond_23
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideOtherSettingPopMenu()V
goto :goto_c
.end method
.method public onTopMenuClick()V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onTopMenuItemClick()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/event/HideSceneSelectEvent;
invoke-direct {v1}, Lcom/pinguo/camera360/camera/event/HideSceneSelectEvent;-><init>()V
invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->hideAdvanceParameterUI()Z
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showTouchTap()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;
const/4 v2, 0x1
const/4 v3, 0x0
invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;-><init>(ZZ)V
invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z
move-result v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isTimerRunning()Z
move-result v0
if-eqz v0, :cond_3e
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->stopTimerTakePic()V
:cond_3e
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isAntiShakeOn()Z
move-result v0
if-eqz v0, :cond_57
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->isAntiShakeRunning()Z
move-result v0
if-eqz v0, :cond_57
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->stopAntiShakeTakePicture()V
:cond_57
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V
return-void
.end method
.method public onTouchShotSwitch(Z)V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setTouchScreenTakePicState(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setHaveTouchScreen(Z)V
return-void
.end method
.method public preStartPreview()V
.registers 3
invoke-super {p0}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->preStartPreview()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
if-eqz v1, :cond_c
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->preStartPreview()V
:cond_c
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z
move-result v1
if-eqz v1, :cond_3f
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFrontPreviewAdjustDegree()I
move-result v0
:goto_1c
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraDevice()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->setDisplayOrientation(I)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
if-eqz v1, :cond_32
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
invoke-interface {v1}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->preStartPreview()V
:cond_32
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->needEnablePreviewCallback()Z
move-result v1
if-eqz v1, :cond_3b
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->enablePreviewCallback()V
:cond_3b
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->adapterCameraPermission()V
return-void
:cond_3f
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBackPreviewAdjustDegree()I
move-result v0
goto :goto_1c
.end method
.method public setCameraParametersWhenIdle(I)V
.registers 6
const/4 v3, 0x0
iget v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mUpdateSet:I
or-int/2addr v0, p1
iput v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mUpdateSet:I
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-ne v0, v1, :cond_2d
const-string/jumbo v0, "STATE_FOCUSING"
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getState()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_2d
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mUpdateSet:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateParameters(I)V
iput v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mUpdateSet:I
:cond_2c
:goto_2c
return-void
:cond_2d
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z
move-result v0
if-nez v0, :cond_2c
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mHandler:Landroid/os/Handler;
const-wide/16 v1, 0x3e8
invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
goto :goto_2c
.end method
.method public setFocusParameters()V
.registers 1
return-void
.end method
.method public setLiveEffectPreviewFrame(I)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
instance-of v0, v0, Lcom/pinguo/camera360/camera/controller/EffectCamera;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
instance-of v0, v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setPreviewFrame(I)V
:cond_13
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
instance-of v0, v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setPreviewFrame(I)V
goto :goto_13
.end method
.method public setOrientation(IZ)V
.registers 6
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->setOrientation(IZ)V
iput p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mOrientation:I
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->setOrientation(I)V
:cond_e
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
instance-of v0, v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
check-cast v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->setOrientation(I)V
:cond_1b
const-string/jumbo v0, "Test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Set orientation:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public showFail(Z)V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusViewUIManager:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->showFocusFail(Z)V
goto :goto_4
.end method
.method public showStart()V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusViewUIManager:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->showFocusStart(Landroid/content/Context;)V
goto :goto_4
.end method
.method public showSuccess(Z)V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusViewUIManager:Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->showFocusSuccess(Z)V
goto :goto_4
.end method
.method public showZoomControl()V
.registers 7
const-wide/16 v4, 0xbb8
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
if-eqz v1, :cond_2f
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z
move-result v0
sget-object v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "isEnableTouchShot ="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v0, :cond_30
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
const/4 v2, 0x0
invoke-virtual {v1, v2, v4, v5}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setAutoVisible(ZJ)V
:goto_2f
:cond_2f
return-void
:cond_30
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
const/4 v2, 0x1
invoke-virtual {v1, v2, v4, v5}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setAutoVisible(ZJ)V
goto :goto_2f
.end method
.method protected soundKeyAction(Ljava/lang/Enum;ZI)V
.registers 8
sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->SHOT:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
if-ne v0, p1, :cond_17
if-nez p3, :cond_17
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mVolumePressDelayHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mVolumePressDelayRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mVolumePressDelayHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mVolumePressDelayRunnable:Ljava/lang/Runnable;
const-wide/16 v2, 0xc8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_16
:goto_16
return-void
:cond_17
sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->ZOOM:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
if-ne v0, p1, :cond_1f
invoke-virtual {p0, p2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->soundKeyZoom(Z)V
goto :goto_16
:cond_1f
sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->NONE:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
if-ne v0, p1, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
if-nez v0, :cond_31
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/SoundManager;->getSoundManager(Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/SoundManager;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
:cond_31
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/camera/model/SoundManager;->volumeAdjustment(Z)V
goto :goto_16
.end method
.method protected soundKeyZoom(Z)V
.registers 6
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->isCanShowZoomControlView()Z
move-result v3
if-nez v3, :cond_7
:goto_6
return-void
:cond_7
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getMaxZoom()I
move-result v1
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getZoom()I
move-result v0
if-eqz p1, :cond_28
add-int/lit8 v3, v1, -0x1
if-ge v0, v3, :cond_26
add-int/lit8 v0, v0, 0x2
:goto_1b
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-virtual {v3, v0}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setZoomIndex(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->showZoomControl()V
goto :goto_6
:cond_26
move v0, v1
goto :goto_1b
:cond_28
const/4 v3, 0x1
if-le v0, v3, :cond_2e
add-int/lit8 v0, v0, -0x2
goto :goto_1b
:cond_2e
const/4 v0, 0x0
goto :goto_1b
.end method
.method public updateTimerAndAntiShakeView()V
.registers 6
iget-boolean v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
if-eqz v3, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z
move-result v1
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerShotLimit()I
move-result v2
if-eqz v1, :cond_28
if-lez v2, :cond_28
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->show()V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerShotLimit()I
move-result v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setCountDownLimit(I)V
goto :goto_4
:cond_28
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isAntiShakeOn()Z
move-result v3
if-eqz v3, :cond_4
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->openAntiShakeFunction()V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceFlagView:Landroid/view/View;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mRenderTipsView:Landroid/widget/TextView;
const/16 v4, 0x8
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_4
.end method