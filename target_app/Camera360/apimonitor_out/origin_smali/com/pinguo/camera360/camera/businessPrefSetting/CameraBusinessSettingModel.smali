.class public Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
.super Ljava/lang/Object;
.source "CameraBusinessSettingModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;,
        Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
    }
.end annotation


# static fields
.field private static CAMERA_SETTING_MODEL:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel; = null

.field private static final DEFAULT_JPEG_QUALITY:Ljava/lang/String; = "90"

.field public static final HIGH_LEVEL_GPU:I = 0x1

.field public static final LOW_LEVEL_GPU:I = 0x3

.field public static final MIDDLE_LEVEL_GPU:I = 0x2

.field public static final MY_CENTER_CLOUD_ALBUM_FLAG:I = 0x4

.field public static final MY_CENTER_NEW_FEED_BACK_FLAG:I = 0x2

.field public static final MY_CENTER_NEW_MSG_FLAG:I = 0x1

.field public static final MY_CENTER_NEW_ORDER_FLAG:I = 0x8

.field private static final PREF_NONE:Ljava/lang/String; = "none"

.field private static final PREF_OFF:Ljava/lang/String; = "off"

.field private static final PREF_ON:Ljava/lang/String; = "on"

.field public static final SAVE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final SAVE_MODE_CONFIRM:Ljava/lang/String; = "confirmsave"


# instance fields
.field private mCameraPreviewAdapter:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;

.field private multiPref:Landroid/content/SharedPreferences;

.field private preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->CAMERA_SETTING_MODEL:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->multiPref:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    return-void
.end method

.method public static backupCameraSettings()V
    .registers 12

    const/4 v7, 0x0

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;

    move-result-object v8

    const-string/jumbo v9, "key_camera_picture_size"

    invoke-virtual {v8, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "camera_pref_backup_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v9

    array-length v10, v9

    move v8, v7

    :goto_46
    if-lt v8, v10, :cond_9f

    const-string/jumbo v8, ";"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "BACK_UP_PICTURE_SIZE_ENTRY"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    :goto_66
    if-lt v7, v9, :cond_af

    const-string/jumbo v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "BACK_UP_PICTURE_SIZE_ENTRY_VALUE"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v7, "BACK_UP_PICTURE_SIZE_VALUE"

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v7, "BACK_UP_PICTURE_SIZE_TITLE"

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v7, "BACK_UP_PICTURE_SIZE_ENABLE"

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->isEnabled()Z

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_7

    :cond_9f
    aget-object v4, v9, v8

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, ";"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    :cond_af
    aget-object v4, v8, v7

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_66
.end method

.method private getBooleanFromString(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getStringFromBoolean(Z)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "off"

    if-eqz p1, :cond_9

    const-string/jumbo v0, "on"

    :goto_8
    return-object v0

    :cond_9
    const-string/jumbo v0, "off"

    goto :goto_8
.end method

.method public static instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->CAMERA_SETTING_MODEL:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    return-object v0
.end method

.method public static setInstance(Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
    .registers 1

    sput-object p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->CAMERA_SETTING_MODEL:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    return-object p0
.end method


# virtual methods
.method public IsShowTipsForSamsungS5360()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "tips_for_samsung_s5360"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public addNewFlagInMyCenter(I)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getNewFlagInMyCenter()I

    move-result v1

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string/jumbo v3, "process"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "key_new_flag_of_personal_center"

    or-int v5, v1, p1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/camera/event/OnMyCenterNewMsgEvent;

    invoke-direct {v4}, Lcom/pinguo/camera360/camera/event/OnMyCenterNewMsgEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    :cond_30
    return-void
.end method

.method public clearNewFlagInMyCenter()V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string/jumbo v2, "process"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "key_new_flag_of_personal_center"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1f
    return-void
.end method

.method public commitAllChange()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->commit()Z

    return-void
.end method

.method public getAddMoreEffectTipsVisibility()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_add_more_effect_tips"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAnimationEnable()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_enable_animation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBackPreviewAdjustDegree()I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_back_preview_adjust_degree"

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBackRedress()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_back_redress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBackRedressDegree()I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_back_redress_degree"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBackSavePicture()Z
    .registers 5

    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v2, "pref_camera_back_save_key"

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBtnVibrationFeedBackState()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_vibrationfeedback_key"

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCachedGeoLocation()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_cached_geo_location"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraAdapt()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->mCameraPreviewAdapter:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;

    return-object v0
.end method

.method public getCameraMode()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_mode_key"

    const-string/jumbo v2, "c205e3582b514d6fb5c21a953e1e901e"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckUpdateNewVersionCode()I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_check_update_new"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getClickTimerTipsVisibility()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_first_click_timer_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCompositionLineState()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_compositionline_key"

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEffectForEffectMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_saved_effect_effect_mode"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectOfColorShift()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_saved_effect_color_shift_mode"

    const-string/jumbo v2, "C360_ShiftColor_Other_Red1"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectOfFunny()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_saved_effect_funny_mode"

    const-string/jumbo v2, "C360_Funny_Other_TopMirror"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectOfSelfShoot()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_saved_effect_self_shoot_mode"

    const-string/jumbo v2, "C360_Skin_Other_Soft"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFillInLightIndex()I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_fill_in_light_index"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFirstClickCloudBackup()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_first_click_cld_bkp_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFirstClickDiscus()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_first_click_discuz_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFirstHideAlbumList()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "first_hide_album_list"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFirstShowAdsTime()J
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "first_show_ads_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstUploadPicInfoTime()J
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "first_upload_pic_info_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrontCameraMirrorState()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_frontmirror_key"

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFrontPreviewAdjustDegree()I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_front_preview_adjust_degree"

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFrontRedress()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_front_redress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFrontRedressDegree()I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_front_redress_degree"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFrontRedressMirror()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_front_mirror"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getGPUlevel()I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_level_gpu"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGpsState()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_recordlocation_key"

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHideAlbumList()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "hide_album_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdPassportOpenState()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_id_passport"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsChangedPicDesciribe()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "is_changed_pic_describe"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsEnableQRTips()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_enable_qr_tips"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsIgnoreXiaomiFlashBlackProblem()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "ignore_xiaomi_flash_black"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsNeedShowTouchShotTips()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_need_show_touch_shot_tip"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastEffectShopUpdateTime()J
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_last_effect_shop_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSceneTemplateParam()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_last_scene_template_param_key"

    const-string/jumbo v2, "type=0;cutscale=512:371;cutdirect=5;pos=126,40,634,40,634,409,125,409;effect=sketch_class,4;rotate=1"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSceneTemplatePath()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_last_scene_template_path_key"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "20121218145945.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSceneUpdateTime()J
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_last_scene_update_time_key"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUsingSubEffect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key_camera_saved_effect_last_parent_effect"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinSensorValue()F
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_min_sensor_value"

    const v2, 0x3e4ccccd

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getNewFlagInMyCenter()I
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return v1

    :cond_8
    const-string/jumbo v3, "process"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string/jumbo v3, "key_new_flag_of_personal_center"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_7
.end method

.method public getPicAutoSaveState()Z
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v2, "pref_camera_pictureautosavemode_key"

    const-string/jumbo v3, "auto"

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getPicEditCompatibilityMode()I
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_2
    iget-object v5, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->multiPref:Landroid/content/SharedPreferences;

    if-nez v5, :cond_16

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string/jumbo v5, "multi_pref"

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->multiPref:Landroid/content/SharedPreferences;

    :cond_16
    iget-object v5, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->multiPref:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->multiPref:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "key_pic_edit_compatibility_mode"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_29

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2a

    :cond_29
    :goto_29
    return v2

    :cond_2a
    iget-object v5, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    if-eqz v5, :cond_41

    iget-object v5, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v6, "key_pic_edit_compatibility_mode"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setPicEditCompatibilityMode(I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3e} :catch_40

    move v2, v3

    goto :goto_29

    :catch_40
    move-exception v3

    :cond_41
    move v2, v4

    goto :goto_29
.end method

.method public getPicQuality()I
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v2, "pref_camera_jpegquality_key"

    const-string/jumbo v3, "90"

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_16

    const/16 v0, 0x5f

    :cond_16
    return v0
.end method

.method public getPictureSavePath()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_save_path_key"

    invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->getSystemPhotoPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreCameraMode()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_pre_mode_key"

    const-string/jumbo v2, "c205e3582b514d6fb5c21a953e1e901e"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredEffect(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key_preferred_effect_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredLanguage()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_preferred_language"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRenderBackPreviewAdjustDegree()I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_render_back_preview_adjust_degree"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRenderEasyCameraEnable()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_enable_easy_camera_render_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRenderFrontPreviewAdjustDegree()I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_render_front_preview_adjust_degree"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSaveOrgPicState()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_saveorg_key"

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSharpness()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_smartresolutionimprovement_key"

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getShowSoundCloseTips()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_shotsound_firstshown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSonyTimerSwitchState()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_sony_camera_timer_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSoundKeyMode()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_volumekeys_key"

    sget-object v2, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->NONE:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundState()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_shotsound_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTiltShitTipsOn()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_tiltshift_on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTimeWaterMarkState()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_timewatermake_key"

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getTimerShotLimit()I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_timer_value"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTimerSwitchState()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_timer_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTouchScreenTakePic()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_touch_shot_enable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUnreadFeedbackCount()I
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return v1

    :cond_8
    const-string/jumbo v3, "process"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string/jumbo v3, "key_unread_feedback_count"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x63

    if-le v1, v3, :cond_7

    const/16 v1, 0x63

    goto :goto_7
.end method

.method public getUpdatePicGroupDataTime()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "update_pic_group_data_time"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_version_code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasUseAdvanceParameter()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_has_use_advance_parameter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public haveShowAdapterCameraPermissionDialog()Z
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v2, "key_show_camera_permission_dialog"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v2, "key_show_camera_permission_dialog"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_15
    return v0
.end method

.method public haveShowKitkatExtSdcardDialog()Z
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v2, "key_show_kitkat_extcard_dialog"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v2, "key_show_kitkat_extcard_dialog"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_15
    return v0
.end method

.method public hideNewCameraFlag()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "camera_mode_new_camera_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public hideShowMoreCameraNewPoint()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "more_camera_new_point"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public initUnSupportStopPreviewParam(Landroid/content/Context;)V
    .registers 12

    iget-object v7, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->mCameraPreviewAdapter:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;

    if-eqz v7, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v6, 0x0

    :try_start_6
    const-string/jumbo v7, "camera_unSupStopPreview_list"

    invoke-static {p1, v7}, Lcom/umeng/analytics/MobclickAgent;->getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "PGCameraFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "camera_unSupStopPreview_list = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    new-instance v7, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$1;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$1;-><init>(Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)V

    invoke-virtual {v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/List;

    move-object v6, v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3f} :catch_69

    :goto_3f
    if-eqz v6, :cond_48

    const/4 v5, 0x0

    :goto_42
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lt v5, v7, :cond_6e

    :cond_48
    iget-object v7, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->mCameraPreviewAdapter:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;

    if-eqz v7, :cond_4

    const-string/jumbo v7, "PGCameraFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "mCameraPreviewAdapter = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->mCameraPreviewAdapter:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;

    invoke-virtual {v9}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_69
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f

    :cond_6e
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;

    sget-object v7, Lcom/pinguo/camera360/adapter/GAdapter;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->getModel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_92

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->getMin()I

    move-result v8

    if-lt v7, v8, :cond_92

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->getMax()I

    move-result v8

    if-gt v7, v8, :cond_92

    iput-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->mCameraPreviewAdapter:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;

    :cond_92
    add-int/lit8 v5, v5, 0x1

    goto :goto_42
.end method

.method public isAntiShakeOn()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_debounce_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isClickPictureAdjustIcon()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_first_adjust_flag_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isClickPreviewAdjustIcon()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_preview_adjust_tips"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isClothesToastShown()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_clothes_toast_shown"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstEnterIdPhoto()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_first_enter_id_photo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstShowPictureSize()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_first_show_picture_size_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstStartPreviewIDCamera()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "first_start_preview_idcamera"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNeedShowUninstallHintToastCamera()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_need_show_uninstall_hint_toast_camera"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNeedShowUninstallHintToastEffect()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_need_show_uninstall_hint_toast_effect"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNewFlagInShop()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_new_flag_of_shop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRenderEnable()Z
    .registers 5

    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v2, "pref_is_enable_render_key"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S5360:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public isRenderRealEnable()Z
    .registers 5

    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v2, "pref_is_enable_render_key"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShowMoreCameraNewPoint()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "more_camera_new_point"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowNewCameraFlag()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public needForceRefresh()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_need_force_refresh"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAddMoreEffectTipsVisibility(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_add_more_effect_tips"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAnimationEnable(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_enable_animation"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAntiShake(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_debounce_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/lib/camera/event/TurnOnOffAntiShakeEvent;

    invoke-direct {v1, p1}, Lcom/pinguo/camera360/lib/camera/event/TurnOnOffAntiShakeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method public setBackPreviewAdjust(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_back_preview_adjust"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBackPreviewAdjustDegree(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_back_preview_adjust_degree"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setBackRedress(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_back_redress"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBackRedressDegree(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_back_redress_degree"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setCachedGeoLocation(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_cached_geo_location"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraMode(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "7b3b6b04486f12d95690f533f5253a74"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v2, "pref_camera_pre_mode_key"

    invoke-virtual {v1, v2, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v2, "pref_camera_mode_key"

    invoke-virtual {v1, v2, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCheckUpdateNewVersionCode(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_check_update_new"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setClickPictureAdjustIcon(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_first_adjust_flag_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setClickPreviewAdjustIcon(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_preview_adjust_tips"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setClickTimerTipsVisibility(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_first_click_timer_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setClothesToastShown(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_clothes_toast_shown"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEffectForEffectMode(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_saved_effect_effect_mode"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEffectToColorShift(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_saved_effect_color_shift_mode"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEffectToFunny(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_saved_effect_funny_mode"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEffectToSelfShoot(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_saved_effect_self_shoot_mode"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFillInLightIndex(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_fill_in_light_index"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setFirstClickDiscus(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_first_click_discuz_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFirstHideAlbumList(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "first_hide_album_list"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFirstShowAdsTime(J)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "first_show_ads_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setFirstShowPictureSize(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_first_show_picture_size_dialog"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFirstStartIDCameraPreview(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "first_start_preview_idcamera"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFirstUploadPicInfoTime(J)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "first_upload_pic_info_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setFrontPreviewAdjust(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_front_preview_adjust"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFrontPreviewAdjustDegree(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_front_preview_adjust_degree"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setFrontRedress(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_front_redress"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFrontRedressDegree(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_front_redress_degree"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setFrontRedressMirror(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_front_mirror"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHasUseAdvanceParameter(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_has_use_advance_parameter"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHideAlbumList(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "hide_album_list"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIdPassportOpen(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_id_passport"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsChangedPicDesciribe(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "is_changed_pic_describe"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsEnableQRTips(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_enable_qr_tips"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsFirstEnterIdPhoto(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_first_enter_id_photo"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsIgnoreXiaomiFlashBlackProblem(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "ignore_xiaomi_flash_black"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsShowTipsForSamsungS5360(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "tips_for_samsung_s5360"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLastEffectShopUpdateTime(J)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_last_effect_shop_update_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setLastSceneTemplateParam(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_last_scene_template_param_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastSceneTemplatePath(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_last_scene_template_path_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastSceneUpdateTime(J)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_last_scene_update_time_key"

    invoke-virtual {v0, v1, p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setLevelForGPU(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_level_gpu"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setMinSensorValue(F)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_min_sensor_value"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setNeedForceRefresh(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_need_force_refresh"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNeedShowTouchShotTips(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_need_show_touch_shot_tip"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNeedShowUninstallHintToastCamera(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_need_show_uninstall_hint_toast_camera"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNeedShowUninstallHintToastEffect(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_need_show_uninstall_hint_toast_effect"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNewFlagInShop(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_new_flag_of_shop"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPicEditCompatibilityMode(I)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->multiPref:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1f

    if-ltz p1, :cond_1f

    const/4 v1, 0x2

    if-gt p1, v1, :cond_1f

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->multiPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "key_pic_edit_compatibility_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "effect_failed_count"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1f
    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    if-eqz v1, :cond_2e

    if-nez p1, :cond_2e

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v2, "key_pic_edit_compatibility_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_2e
    return-void
.end method

.method public setPicEditCompatibilityModeFailedCount(Z)I
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v7, -0x1

    const/4 v3, 0x0

    :try_start_2
    iget-object v4, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->multiPref:Landroid/content/SharedPreferences;

    if-nez v4, :cond_16

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string/jumbo v4, "multi_pref"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->multiPref:Landroid/content/SharedPreferences;

    :cond_16
    iget-object v4, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->multiPref:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->multiPref:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "effect_failed_count"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_28

    move v1, v3

    :cond_27
    :goto_27
    return v1

    :cond_28
    if-eqz p1, :cond_42

    if-lez v1, :cond_27

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->multiPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "effect_failed_count"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_27

    :catch_3f
    move-exception v4

    :cond_40
    move v1, v3

    goto :goto_27

    :cond_42
    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->multiPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "effect_failed_count"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v4, 0x6

    if-lt v1, v4, :cond_5a

    const-string/jumbo v4, "effect_failed_count"

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_5a
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5d} :catch_3f

    goto :goto_27
.end method

.method public setPictureSavePath(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_save_path_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPreferredEffect(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key_preferred_effect_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPreferredLanguage(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_preferred_language"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRenderAbility(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_render_ability_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRenderBackPreviewAdjustDegree(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_render_back_preview_adjust_degree"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setRenderEasyCameraEnable(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_enable_easy_camera_render_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRenderEnable(Z)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v2, "pref_is_enable_render_key"

    if-eqz p1, :cond_e

    const-string/jumbo v0, "on"

    :goto_a
    invoke-virtual {v1, v2, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const-string/jumbo v0, "off"

    goto :goto_a
.end method

.method public setRenderFrontPreviewAdjustDegree(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_key_render_front_preview_adjust_degree"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setSharpness(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_smartresolutionimprovement_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setShouldShowHome(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "should_show_home"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShowSoundCloseTips(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_shotsound_firstshown_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSonyTimerSwitchState(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_sony_camera_timer_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/lib/camera/event/TurnOnOffTimerEvent;

    invoke-direct {v1, p1}, Lcom/pinguo/camera360/lib/camera/event/TurnOnOffTimerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method public setSoundKeyMode(Ljava/lang/Enum;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<",
            "Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_volumekeys_key"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSoundState(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_shotsound_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSubEffectForEffectMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key_camera_saved_effect_last_parent_effect"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTiltShitTipsOn(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_tiltshift_on"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTimerSwitchState(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_timer_key"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/lib/camera/event/TurnOnOffTimerEvent;

    invoke-direct {v1, p1}, Lcom/pinguo/camera360/lib/camera/event/TurnOnOffTimerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method public setTimerValueLimit(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "pref_camera_timer_value"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setTouchScreenTakePicState(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_touch_shot_enable"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUnreadFeedbackCount(I)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string/jumbo v2, "process"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "key_unread_feedback_count"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1e
    return-void
.end method

.method public setUpdatePicGroupDataTime(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "update_pic_group_data_time"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVersionCode(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_version_code"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public shouldShowHome()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "should_show_home"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
