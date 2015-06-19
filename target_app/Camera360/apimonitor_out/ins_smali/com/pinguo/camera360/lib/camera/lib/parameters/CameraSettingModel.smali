.class public Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
.super Ljava/lang/Object;
.source "CameraSettingModel.java"
.field private static CAMERA_SETTING_MODEL:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel; = null
.field private static final DEFAULT_JPEG_QUALITY:I = 0x5f
.field public static final DEFAULT_VALUE_EXPOSURE:Ljava/lang/String; = "0"
.field private static final TAG:Ljava/lang/String;
.field private aeLockSupported:Z
.field private awbLockSupported:Z
.field private cameraId:I
.field private cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
.field private cameraProxy:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
.field private continousFocusSupported:Z
.field private focusAreaSupported:Z
.field private focusAreas:Ljava/util/List;
.field private jpegOrientation:I
.field private mAeAwbLock:Z
.field private mExposureValue:I
.field private mFocusMode:Ljava/lang/String;
.field private mSupportedFocus:Ljava/util/List;
.field private meteringAreaSupported:Z
.field private meteringAreas:Ljava/util/List;
.field private pictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
.field private preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
.field private previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
.field private zoomMax:I
.field private zoomSupported:Z
.field private zoomValue:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->TAG:Ljava/lang/String;
new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
invoke-direct {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;-><init>()V
sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->CAMERA_SETTING_MODEL:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
return-void
.end method
.method private constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraProxy:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraId:I
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->pictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iput-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->focusAreaSupported:Z
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->focusAreas:Ljava/util/List;
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->mFocusMode:Ljava/lang/String;
iput-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->meteringAreaSupported:Z
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->meteringAreas:Ljava/util/List;
iput-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->aeLockSupported:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->awbLockSupported:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->mAeAwbLock:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->continousFocusSupported:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomSupported:Z
iput v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomMax:I
iput v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomValue:I
iput v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->mExposureValue:I
iput v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->jpegOrientation:I
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
return-void
.end method
.method private getDefaultAntibanding()Ljava/lang/String;
.registers 8
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x3
new-array v1, v5, [Ljava/lang/String;
const-string/jumbo v5, "auto"
aput-object v5, v1, v4
const/4 v5, 0x1
const-string/jumbo v6, "50hz"
aput-object v6, v1, v5
const/4 v5, 0x2
const-string/jumbo v6, "60hz"
aput-object v6, v1, v5
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedAntibanding()Ljava/util/List;
move-result-object v2
if-nez v2, :cond_20
move-object v0, v3
:cond_1f
:goto_1f
return-object v0
:cond_20
array-length v5, v1
:goto_21
if-lt v4, v5, :cond_25
move-object v0, v3
goto :goto_1f
:cond_25
aget-object v0, v1, v4
invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_1f
add-int/lit8 v4, v4, 0x1
goto :goto_21
.end method
.method private getSelectedPictureSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
.registers 15
const/4 v9, 0x0
iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v10, "key_camera_picture_size"
const/4 v11, 0x0
invoke-virtual {v8, v10, v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->parseSize(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v2
const-string/jumbo v8, "Test"
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "getSelectedPictureSize:"
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v8, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-nez v2, :cond_7f
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
move-result-object v8
const-string/jumbo v10, "key_camera_picture_size"
invoke-virtual {v8, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntryValues()[Ljava/lang/String;
move-result-object v5
new-instance v7, Ljava/util/LinkedList;
invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V
array-length v10, v5
move v8, v9
:goto_3d
if-lt v8, v10, :cond_80
iget v8, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraId:I
invoke-static {v7, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->getDefaultPictureSize(Ljava/util/List;I)Landroid/graphics/Point;
move-result-object v1
const-string/jumbo v8, ""
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "set picture defalut size:"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v10, v1, Landroid/graphics/Point;->x:I
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, "/"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget v10, v1, Landroid/graphics/Point;->y:I
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget v8, v1, Landroid/graphics/Point;->x:I
iget v9, v1, Landroid/graphics/Point;->y:I
invoke-direct {v2, v8, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v9, "key_camera_picture_size"
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v9, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_7f
return-object v2
:cond_80
aget-object v4, v5, v8
invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v11
const-string/jumbo v12, "x"
invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
new-instance v11, Landroid/graphics/Point;
aget-object v12, v0, v9
invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v12
const/4 v13, 0x1
aget-object v13, v0, v13
invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v13
invoke-direct {v11, v12, v13}, Landroid/graphics/Point;-><init>(II)V
invoke-virtual {v7, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
add-int/lit8 v8, v8, 0x1
goto :goto_3d
.end method
.method private initializeCapabilities()V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isFocusAreaSupportedInner()Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->focusAreaSupported:Z
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isMeteringAreaSupportedInner()Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->meteringAreaSupported:Z
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->isAutoExposureLockSupported()Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->aeLockSupported:Z
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->isAutoWhiteBalanceLockSupported()Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->awbLockSupported:Z
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->isZoomSupported()Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomSupported:Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "zoomSupported = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomSupported:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " focusAreaSupported ="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->focusAreaSupported:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomSupported:Z
if-eqz v0, :cond_55
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getMaxZoom()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomMax:I
:goto_54
return-void
:cond_55
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomMax:I
goto :goto_54
.end method
.method private initializeData()V
.registers 4
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getPreviewSize()Landroid/hardware/Camera$Size;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->parseSize(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iput-boolean v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->focusAreaSupported:Z
iput-boolean v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->meteringAreaSupported:Z
iput-boolean v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->aeLockSupported:Z
iput-boolean v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->mAeAwbLock:Z
iput-boolean v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->awbLockSupported:Z
iput-boolean v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->continousFocusSupported:Z
iput v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->mExposureValue:I
return-void
.end method
.method public static instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
.registers 1
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->CAMERA_SETTING_MODEL:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
return-object v0
.end method
.method private isFocusAreaSupportedInner()Z
.registers 4
const/4 v0, 0x1
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M032:Z
if-eqz v1, :cond_6
:goto_5
:cond_5
return v0
:cond_6
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getMaxNumFocusAreas()I
move-result v1
if-lez v1, :cond_1d
const-string/jumbo v1, "auto"
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedFocusModes()Ljava/util/List;
move-result-object v2
invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupported(Ljava/lang/String;Ljava/util/List;)Z
move-result v1
if-nez v1, :cond_5
:cond_1d
const/4 v0, 0x0
goto :goto_5
.end method
.method private isMeteringAreaSupportedInner()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getMaxNumMeteringAreas()I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private isSupported(Ljava/lang/String;Ljava/util/List;)Z
.registers 4
if-eqz p2, :cond_a
invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v0
if-ltz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private static isSupported(Ljava/lang/String;[Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x0
if-eqz p1, :cond_7
const/4 v1, 0x0
:goto_4
array-length v2, p1
if-lt v1, v2, :cond_8
:cond_7
return v0
:cond_8
aget-object v2, p1, v1
invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_13
aget-object p0, p1, v1
const/4 v0, 0x1
:cond_13
add-int/lit8 v1, v1, 0x1
goto :goto_4
.end method
.method private setAutoExposureLockIfSupported()V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->aeLockSupported:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
iget-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->mAeAwbLock:Z
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setAutoExposureLock(Z)V
:cond_b
return-void
.end method
.method private setAutoWhiteBalanceLockIfSupported()V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->awbLockSupported:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
iget-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->mAeAwbLock:Z
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setAutoWhiteBalanceLock(Z)V
:cond_b
return-void
.end method
.method private setFlashMode()V
.registers 6
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
move-result-object v3
const-string/jumbo v4, "key_camera_flashmode"
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;
if-nez v1, :cond_10
:goto_f
:cond_f
return-void
:cond_10
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getValue()Ljava/lang/String;
move-result-object v0
const-string/jumbo v3, "torch"
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getFlashMode()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_41
const-string/jumbo v3, "off"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_35
const-string/jumbo v3, "torch"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_41
:cond_35
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
const-string/jumbo v4, "off"
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setFlashMode(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateParameters(I)V
:cond_41
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedFlashModes()Ljava/util/List;
move-result-object v2
invoke-direct {p0, v0, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupported(Ljava/lang/String;Ljava/util/List;)Z
move-result v3
if-eqz v3, :cond_f
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v3, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setFlashMode(Ljava/lang/String;)V
goto :goto_f
.end method
.method private setFocusMode()V
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v3, "key_camera_focusmode"
const-string/jumbo v4, "auto"
invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "focusMode ="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedFocusModes()Ljava/util/List;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupported(Ljava/lang/String;Ljava/util/List;)Z
move-result v2
if-eqz v2, :cond_33
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v2, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setFocusMode(Ljava/lang/String;)V
:goto_32
:cond_32
return-void
:cond_33
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getFocusMode()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_32
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
const-string/jumbo v3, "auto"
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setFocusMode(Ljava/lang/String;)V
goto :goto_32
.end method
.method private updateCameraParametersInitialize()V
.registers 9
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedPreviewFrameRates()Ljava/util/List;
move-result-object v1
if-eqz v1, :cond_17
invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v6
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setPreviewFrameRate(I)V
:cond_17
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setRecordingHint(Z)V
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
const-string/jumbo v6, "video-stabilization-supported"
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "true"
invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_3a
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
const-string/jumbo v6, "video-stabilization"
const-string/jumbo v7, "false"
invoke-virtual {v5, v6, v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V
:cond_3a
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
const/16 v6, 0x5f
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setJpegQuality(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getDefaultAntibanding()Ljava/lang/String;
move-result-object v0
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getAntibanding()Ljava/lang/String;
move-result-object v3
const-string/jumbo v5, "auto"
invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_5b
if-eqz v0, :cond_5b
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v5, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setAntibanding(Ljava/lang/String;)V
:cond_5b
return-void
.end method
.method private updateCameraParametersPreference()V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setFocusAreasIfSupported()V
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setMeteringAreasIfSupported()V
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setFocusMode()V
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setFlashMode()V
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setExposure()V
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setISO()V
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setWhiteBalanced()V
:try_start_15
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setSharpness()V
:goto_18
:try_end_18
.catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19
return-void
:catch_19
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_18
.end method
.method private updateCameraParametersZoom()V
.registers 4
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "updateCameraParametersZoom zoomSupported = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomSupported:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " zoomValue = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomValue:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomSupported:Z
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
iget v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomValue:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setZoom(I)V
:cond_2f
return-void
.end method
.method public changeFlashItem(Ljava/lang/String;Z)Z
.registers 5
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0, p1, p2, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->changeFlashItem(Ljava/lang/String;ZLcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;)Z
move-result v0
return v0
.end method
.method public getArray(IIF)Ljava/util/List;
.registers 7
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
if-nez p2, :cond_f
if-nez p1, :cond_f
const/4 v2, 0x0
cmpl-float v2, v2, p3
if-nez v2, :cond_f
:cond_e
return-object v1
:cond_f
int-to-float v0, p2
:goto_10
int-to-float v2, p1
cmpg-float v2, v0, v2
if-gtz v2, :cond_e
float-to-int v2, v0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-float/2addr v0, p3
goto :goto_10
.end method
.method public getCameraId()I
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v1, "key_camera_id"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public getCurrExposure()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getExposureCompensation()I
move-result v0
return v0
.end method
.method public getCurrISO()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getIso()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getExposureCompensationStep()F
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getExposureCompensationStep()F
move-result v0
return v0
.end method
.method public getExposureCompensationSupported()Ljava/util/List;
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getMaxExposureCompensation()I
move-result v0
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getMinExposureCompensation()I
move-result v1
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getExposureCompensationStep()F
move-result v2
invoke-virtual {p0, v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getArray(IIF)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getExposureOpenState()Z
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v1, "pref_open_camera_exposure_setting"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public getFirstOpenCamera(I)Z
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "key_camera_first_open"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public getFocusMode()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v1, "key_camera_focusmode"
const-string/jumbo v2, "auto"
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getIsoSupported()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getIsoSupported()[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getJpegOrientation()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->jpegOrientation:I
return v0
.end method
.method public getMaxExposureCompensation()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getMaxExposureCompensation()I
move-result v0
return v0
.end method
.method public getMaxZoom()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomMax:I
return v0
.end method
.method public getMinExposureCompensation()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getMinExposureCompensation()I
move-result v0
return v0
.end method
.method public getPictureSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->pictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
return-object v0
.end method
.method public getPreviewFormat()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getPreviewFormat()I
move-result v0
return v0
.end method
.method public getPreviewFormatString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getPreviewFormatString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
if-nez v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getPreviewSize()Landroid/hardware/Camera$Size;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->parseSize(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v0
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
goto :goto_12
.end method
.method public getSharpness()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSharpness()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSupportedFocusModes()Ljava/util/List;
.registers 3
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedFocusModes()Ljava/util/List;
move-result-object v0
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M9:Z
if-eqz v1, :cond_16
const-string/jumbo v1, "macro"
invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
const-string/jumbo v1, "infinity"
invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
:cond_16
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->mSupportedFocus:Ljava/util/List;
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->mSupportedFocus:Ljava/util/List;
return-object v1
.end method
.method public getSupportedSharpness()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedSharpness()[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSupportedWhiteBalance()Ljava/util/List;
.registers 3
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedWhiteBalance()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getZoom()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomValue:I
return v0
.end method
.method public isExposureSupported()Z
.registers 5
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
if-nez v3, :cond_6
:cond_5
:goto_5
return v2
:cond_6
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getMaxExposureCompensation()I
move-result v0
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getMinExposureCompensation()I
move-result v1
if-nez v0, :cond_12
if-eqz v1, :cond_5
:cond_12
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getExposureCompensationSupported()Ljava/util/List;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupported(Ljava/util/List;)Z
move-result v2
goto :goto_5
.end method
.method public isFocusAreaSupported()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->focusAreaSupported:Z
return v0
.end method
.method public isMeteringAreaSupported()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->meteringAreaSupported:Z
return v0
.end method
.method public isOpenFlashLight()Z
.registers 7
const/4 v3, 0x0
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
move-result-object v4
const-string/jumbo v5, "key_camera_flashmode"
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;
if-nez v1, :cond_11
:goto_10
:cond_10
return v3
:cond_11
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedFlashModes()Ljava/util/List;
move-result-object v2
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getValue()Ljava/lang/String;
move-result-object v0
const-string/jumbo v4, "torch"
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_10
invoke-direct {p0, v0, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupported(Ljava/lang/String;Ljava/util/List;)Z
move-result v4
if-eqz v4, :cond_10
const/4 v3, 0x1
goto :goto_10
.end method
.method public isSharpnessSupported()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->isSharpnessSupported()Z
move-result v0
goto :goto_5
.end method
.method public isSupportISO()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->isIsoSupported()Z
move-result v0
goto :goto_5
.end method
.method public isSupported(Ljava/util/List;)Z
.registers 4
const/4 v0, 0x1
if-eqz p1, :cond_a
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
if-le v1, v0, :cond_a
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isWhiteBalanceSupported()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->isWhiteBalanceSupported()Z
move-result v0
goto :goto_5
.end method
.method public isZoomSupported()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomSupported:Z
return v0
.end method
.method public lockAeAwbNeeded()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->aeLockSupported:Z
if-nez v0, :cond_a
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->awbLockSupported:Z
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
const/4 v0, 0x1
goto :goto_9
.end method
.method public resetZoomValue()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomValue:I
const/4 v0, 0x0
invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setZoomScale(F)V
return-void
.end method
.method public setAeAwbLockLock(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->mAeAwbLock:Z
return-void
.end method
.method public setCamera(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
.registers 3
new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;-><init>(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setCamera(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;)V
return-void
.end method
.method public setCamera(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;)V
.registers 6
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "setCamera cameraProxy + "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->getFacing()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraProxy:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
iput-object p2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "setCamera cameraProxy + "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedFocusModes()Ljava/util/List;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->initializeData()V
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->initializeCapabilities()V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->init(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;)V
return-void
.end method
.method public setCameraId(ILandroid/content/Context;)V
.registers 5
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraId:I
if-eq v0, p1, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
invoke-virtual {v0, p2, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->setLocal(Landroid/content/Context;I)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v1, "key_camera_id"
invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V
:cond_11
iput p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraId:I
return-void
.end method
.method public setExposure()V
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isExposureSupported()Z
move-result v1
if-eqz v1, :cond_1e
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
move-result-object v1
const-string/jumbo v2, "key_camera_exposure"
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setExposureCompensation(I)V
:cond_1e
return-void
.end method
.method public setExposureOpen(Z)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v1, "pref_open_camera_exposure_setting"
invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method
.method public setFirstOpenCamera(IZ)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "key_camera_first_open"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method
.method public setFocusAreas(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->focusAreas:Ljava/util/List;
return-void
.end method
.method public setFocusAreasIfSupported()V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->focusAreaSupported:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->focusAreas:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setFocusAreas(Ljava/util/List;)V
:cond_b
return-void
.end method
.method public setISO()V
.registers 6
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v2, "pref_camera_iso_key"
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f080350
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "ISO saved in xml = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getIsoSupported()[Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupported(Ljava/lang/String;[Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_56
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "New ISO  = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
const-string/jumbo v2, "pref_camera_iso_key"
invoke-virtual {v1, v2, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V
:cond_56
return-void
.end method
.method public setJpegOrientation(I)V
.registers 8
const/4 v5, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v3, "key_camera_jpeg_redress_enable"
invoke-virtual {v2, v3, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_2d
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v2, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setRotation(I)V
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v3, "key_camera_jpeg_redress_orientation"
invoke-virtual {v2, v3, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iget v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraId:I
if-nez v2, :cond_24
add-int v2, v1, p1
rem-int/lit16 v2, v2, 0x168
iput v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->jpegOrientation:I
:cond_24
sub-int v2, v1, p1
add-int/lit16 v2, v2, 0x10e
rem-int/lit16 v2, v2, 0x168
iput v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->jpegOrientation:I
:goto_2c
return-void
:cond_2d
iget v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraId:I
invoke-static {p1, v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraUtils;->getJpegRotation(II)I
move-result v2
iput v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->jpegOrientation:I
const-string/jumbo v2, "Test"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Set jpeg orientation:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v4, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->jpegOrientation:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v2, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setRotation(I)V
goto :goto_2c
.end method
.method public setMeteringAreas(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->meteringAreas:Ljava/util/List;
return-void
.end method
.method public setMeteringAreasIfSupported()V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->meteringAreaSupported:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->meteringAreas:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setMeteringAreas(Ljava/util/List;)V
:cond_b
return-void
.end method
.method public setSharpness()V
.registers 7
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
move-result-object v4
const-string/jumbo v5, "key_camera_sharpness"
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
if-nez v0, :cond_e
:goto_d
:cond_d
return-void
:cond_e
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;
move-result-object v1
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedSharpness()[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_d
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
invoke-direct {p0, v1, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupported(Ljava/lang/String;Ljava/util/List;)Z
move-result v4
if-eqz v4, :cond_d
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v4, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setSharpness(Ljava/lang/String;)V
goto :goto_d
.end method
.method public setWhiteBalanced()V
.registers 6
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
move-result-object v3
const-string/jumbo v4, "key_camera_whitebalance"
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;
if-nez v0, :cond_10
:goto_f
:cond_f
return-void
:cond_10
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getValue()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedWhiteBalance()Ljava/util/List;
move-result-object v1
invoke-direct {p0, v2, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupported(Ljava/lang/String;Ljava/util/List;)Z
move-result v3
if-eqz v3, :cond_f
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v3, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setWhiteBalance(Ljava/lang/String;)V
goto :goto_f
.end method
.method public setZoom(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomValue:I
return-void
.end method
.method public updateCameraParametersPictureInfo()V
.registers 7
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getSelectedPictureSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v0
if-eqz v0, :cond_42
sget-object v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Camera Parameters Picture Size:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->pictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
iget v4, v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I
iget v5, v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I
invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setPictureSize(II)V
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedPreviewSizes()Ljava/util/List;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->pictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v3
int-to-float v3, v3
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->pictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v4
int-to-float v4, v4
div-float v1, v3, v4
invoke-static {v2, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->getOptimalPreviewSize(Ljava/util/List;F)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
:cond_42
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
if-eqz v3, :cond_6b
sget-object v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Camera Parameters Preview Size:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget v4, v4, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget v5, v5, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I
invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setPreviewSize(II)V
:goto_6a
return-void
:cond_6b
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getPreviewSize()Landroid/hardware/Camera$Size;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->parseSize(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
goto :goto_6a
.end method
.method public updateParameters(I)V
.registers 4
and-int/lit8 v0, p1, 0x1
if-eqz v0, :cond_7
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateCameraParametersInitialize()V
:cond_7
and-int/lit8 v0, p1, 0x2
if-eqz v0, :cond_e
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateCameraParametersZoom()V
:cond_e
and-int/lit8 v0, p1, 0x4
if-eqz v0, :cond_15
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateCameraParametersPictureInfo()V
:cond_15
and-int/lit8 v0, p1, 0x8
if-eqz v0, :cond_1c
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateCameraParametersPreference()V
:cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraProxy:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->updateParameters(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
return-void
.end method
.method public updatePictureInfoForIdPhoto()V
.registers 11
sget-object v7, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "updatePictureInfoForIdPhoton cameraParameters"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v7, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedPictureSizes()Ljava/util/List;
move-result-object v5
iget-object v7, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedPreviewSizes()Ljava/util/List;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->filterPictureSizeForIdPhoto(Ljava/util/List;Ljava/util/List;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;
move-result-object v2
const/4 v0, 0x0
if-eqz v2, :cond_2e
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->getPicSize()Landroid/hardware/Camera$Size;
move-result-object v0
:cond_2e
const/4 v1, 0x0
if-eqz v0, :cond_3a
new-instance v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget v7, v0, Landroid/hardware/Camera$Size;->width:I
iget v8, v0, Landroid/hardware/Camera$Size;->height:I
invoke-direct {v1, v7, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
:cond_3a
if-eqz v1, :cond_78
sget-object v7, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "Camera Parameters Picture Size:"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->pictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget-object v7, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
iget v8, v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I
iget v9, v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I
invoke-virtual {v7, v8, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setPictureSize(II)V
iget-object v7, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedPreviewSizes()Ljava/util/List;
move-result-object v4
iget-object v7, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->pictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v7
int-to-float v7, v7
iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->pictureSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v8
int-to-float v8, v8
div-float v3, v7, v8
invoke-static {v4, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->getOptimalPreviewSize(Ljava/util/List;F)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v7
iput-object v7, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
:cond_78
iget-object v7, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
if-eqz v7, :cond_a1
sget-object v7, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "Camera Parameters Preview Size:"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v7, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget v8, v8, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I
iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget v9, v9, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I
invoke-virtual {v7, v8, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setPreviewSize(II)V
:goto_a0
return-void
:cond_a1
iget-object v7, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getPreviewSize()Landroid/hardware/Camera$Size;
move-result-object v7
invoke-static {v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->parseSize(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v7
iput-object v7, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
goto :goto_a0
.end method
.method public updateRenderZoomParameter()V
.registers 6
:try_start_0
iget-boolean v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomSupported:Z
if-eqz v3, :cond_1e
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->cameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getZoomRatios()Ljava/util/List;
move-result-object v1
iget v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->zoomValue:I
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/Integer;
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v3
int-to-float v3, v3
const/high16 v4, 0x42c8
div-float v2, v3, v4
invoke-static {v2}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setZoomScale(F)V
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f
:goto_1e
:cond_1e
return-void
:catch_1f
move-exception v0
const/high16 v3, 0x3f80
invoke-static {v3}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setZoomScale(F)V
goto :goto_1e
.end method