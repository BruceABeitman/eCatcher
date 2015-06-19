.class public Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;
.super Ljava/lang/Object;
.source "VideoBussinessSettingModel.java"
.field public static final KEY_FRONT_DEGREE_BETWEEN_CAMERA_AND_VIDEO:Ljava/lang/String; = "pref_f_degree_between_cv_key"
.field private static final TAG:Ljava/lang/String; = null
.field public static final VIBRATE_REPEAT:I = -0x1
.field public static final VIBRATE_TIME:I = 0x23
.field private static VIDEO_SETTING_MODEL:Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;
.field private mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
.field private preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->TAG:Ljava/lang/String;
new-instance v0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;
invoke-direct {v0}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;-><init>()V
sput-object v0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->VIDEO_SETTING_MODEL:Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;
return-void
.end method
.method private constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
iput-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
return-void
.end method
.method public static instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;
.registers 1
sget-object v0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->VIDEO_SETTING_MODEL:Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;
return-object v0
.end method
.method public commitAllChange()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
return-void
.end method
.method public getFrontDiffDegreeToCamera()I
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v1, "pref_f_degree_between_cv_key"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public getVideoAdapt()Lcom/pinguo/camera360/video/settings/VideoAdapt;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
return-object v0
.end method
.method public getVideoSavePath()Ljava/lang/String;
.registers 5
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v1
sget-boolean v2, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M032:Z
if-eqz v2, :cond_38
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->getSystemPhotoPath()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "video"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:try_start_2a
new-instance v0, Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_38
invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
:try_end_38
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_38} :catch_39
:cond_38
:goto_38
return-object v1
:catch_39
move-exception v2
goto :goto_38
.end method
.method public initVideoOnlineParams(Landroid/content/Context;)V
.registers 12
iget-object v7, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
if-eqz v7, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const/4 v4, 0x0
:try_start_6
const-string/jumbo v7, "video_param_adapter"
invoke-static {p1, v7}, Lcom/umeng/analytics/MobclickAgent;->getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "PGVideoFragment"
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "video_online_param = "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-nez v7, :cond_4
new-instance v2, Lcom/google/gson/Gson;
invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V
new-instance v7, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel$1;
invoke-direct {v7, p0}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel$1;-><init>(Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;)V
invoke-virtual {v7}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel$1;->getType()Ljava/lang/reflect/Type;
move-result-object v7
invoke-virtual {v2, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v7
move-object v0, v7
check-cast v0, Ljava/util/List;
move-object v4, v0
:try_end_3f
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3f} :catch_69
:goto_3f
if-eqz v4, :cond_48
const/4 v3, 0x0
:goto_42
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v7
if-lt v3, v7, :cond_6e
:cond_48
iget-object v7, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
if-eqz v7, :cond_4
const-string/jumbo v7, "PGVideoFragment"
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "mVideoAdapt = "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v9, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
:catch_69
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_3f
:cond_6e
invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/video/settings/VideoAdapt;
sget-object v7, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;
invoke-virtual {v5}, Lcom/pinguo/camera360/video/settings/VideoAdapt;->getModel()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_92
sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
invoke-virtual {v5}, Lcom/pinguo/camera360/video/settings/VideoAdapt;->getMin()I
move-result v8
if-lt v7, v8, :cond_92
sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
invoke-virtual {v5}, Lcom/pinguo/camera360/video/settings/VideoAdapt;->getMax()I
move-result v8
if-gt v7, v8, :cond_92
iput-object v5, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
:cond_92
add-int/lit8 v3, v3, 0x1
goto :goto_42
.end method
.method public isSupportKeepCamera2Video()Z
.registers 2
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_3:Z
if-nez v0, :cond_10
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_NEXUS_5:Z
if-nez v0, :cond_10
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HUAWEI_U8950D:Z
if-nez v0, :cond_10
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MTK:Z
if-eqz v0, :cond_12
:cond_10
const/4 v0, 0x0
:goto_11
return v0
:cond_12
iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
invoke-virtual {v0}, Lcom/pinguo/camera360/video/settings/VideoAdapt;->isSupportKeepCamera()Z
move-result v0
goto :goto_11
:cond_1d
const/4 v0, 0x1
goto :goto_11
.end method
.method public isSupportKeepVideo2Camera()Z
.registers 2
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MTK:Z
if-nez v0, :cond_16
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEITU_KISS:Z
if-nez v0, :cond_16
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->isFrontCamera()Z
move-result v0
if-eqz v0, :cond_18
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_LENOVO_K900:Z
if-eqz v0, :cond_18
:cond_16
const/4 v0, 0x0
:goto_17
return v0
:cond_18
iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
invoke-virtual {v0}, Lcom/pinguo/camera360/video/settings/VideoAdapt;->isSupportKeepCamera()Z
move-result v0
goto :goto_17
:cond_23
const/4 v0, 0x1
goto :goto_17
.end method
.method public isZoomSupported(Z)Z
.registers 8
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->isZoomSupported()Z
move-result v1
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;
move-result-object v3
const-string/jumbo v4, "pref_video_quality_key"
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
if-eqz v0, :cond_27
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
const/4 v3, 0x6
if-ne v2, v3, :cond_27
sget-boolean v3, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M032:Z
if-eqz v3, :cond_27
const/4 v1, 0x0
move v3, v1
:goto_26
return v3
:cond_27
sget-boolean v3, Lcom/pinguo/camera360/adapter/GAdapter;->IS_INTEL_X86:Z
if-eqz v3, :cond_37
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->isFrontCamera()Z
move-result v3
if-eqz v3, :cond_37
const/4 v3, 0x0
goto :goto_26
:cond_37
if-eqz p1, :cond_40
if-eqz v1, :cond_40
sget-boolean v3, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z
if-nez v3, :cond_42
const/4 v1, 0x0
:goto_40
:cond_40
move v3, v1
goto :goto_26
:cond_42
iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
if-eqz v3, :cond_40
sget-object v3, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "videoAdapt isZoomSupported = "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
invoke-virtual {v5}, Lcom/pinguo/camera360/video/settings/VideoAdapt;->isZoomSupport()Z
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->mVideoAdapt:Lcom/pinguo/camera360/video/settings/VideoAdapt;
invoke-virtual {v3}, Lcom/pinguo/camera360/video/settings/VideoAdapt;->isZoomSupport()Z
move-result v1
goto :goto_40
.end method
.method public setFrontDiffDegreeToCamera(I)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v1, "pref_f_degree_between_cv_key"
invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method public vibrate()V
.registers 5
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBtnVibrationFeedBackState()Z
move-result v1
if-eqz v1, :cond_1a
const/4 v1, 0x2
new-array v0, v1, [J
const/4 v1, 0x1
const-wide/16 v2, 0x23
aput-wide v2, v0, v1
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const/4 v2, -0x1
invoke-static {v1, v0, v2}, Lcom/pinguo/camera360/base/device/DeviceController;->vibrate(Landroid/content/Context;[JI)V
:cond_1a
return-void
.end method