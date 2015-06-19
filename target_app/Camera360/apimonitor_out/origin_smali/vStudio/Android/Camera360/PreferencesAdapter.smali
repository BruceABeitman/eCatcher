.class public final LvStudio/Android/Camera360/PreferencesAdapter;
.super Ljava/lang/Object;
.source "PreferencesAdapter.java"


# static fields
.field private static final CAMERA_MODE_EFFECT:I = 0x2

.field private static final CAMERA_MODE_SELF_TIMER:I = 0x4

.field private static final CAMERA_MODE_SNAP_SWITCH:I = 0xe

.field private static final OLD_KEY_AUTOMATIC_ENTER_EFFECTS_MODEL:Ljava/lang/String; = "pref_camera_automatic_enter_effects_model_key"

.field private static final OLD_KEY_BACK_SAVE:Ljava/lang/String; = "pref_camera_back_save_key"

.field private static final OLD_KEY_CAMERA_MODE:Ljava/lang/String; = "pref_camera_mode_key"

.field private static final OLD_KEY_COMPOSITION_LINE:Ljava/lang/String; = "pref_camera_compositionline_key"

.field private static final OLD_KEY_DEBOUNCE:Ljava/lang/String; = "pref_camera_debounce_key"

.field private static final OLD_KEY_ENABLE_RENDER:Ljava/lang/String; = "pref_is_enable_render_key"

.field private static final OLD_KEY_FILL_IN_LIGHT_INDEX:Ljava/lang/String; = "pref_key_fill_in_light_index"

.field private static final OLD_KEY_FIRST_CLICK_ADVANCE_SETTINGS:Ljava/lang/String; = "pref_first_click_advance_settings_key"

.field private static final OLD_KEY_FIRST_CLICK_DISCUZ:Ljava/lang/String; = "pref_first_click_discuz_key"

.field private static final OLD_KEY_FIRST_CLICK_EASY:Ljava/lang/String; = "pref_first_click_easy_key"

.field private static final OLD_KEY_FIRST_CLICK_OTHER_SETTING:Ljava/lang/String; = "pref_key_first_in_other_settings"

.field private static final OLD_KEY_FIRST_CLICK_TIMER:Ljava/lang/String; = "pref_first_click_timer_key"

.field private static final OLD_KEY_FIRST_START_FLAG:Ljava/lang/String; = "pref_first_start_flag_key_20130427"

.field private static final OLD_KEY_FIRST_START_FLAG_OLD:Ljava/lang/String; = "pref_first_start_flag_key"

.field private static final OLD_KEY_FRONT_MIRROR:Ljava/lang/String; = "pref_camera_frontmirror_key"

.field private static final OLD_KEY_HAS_CAPTURE_IN_TOUCH_MODE:Ljava/lang/String; = "key_has_capture_in_touch_mode"

.field private static final OLD_KEY_IS_SAVE_ORG_PIC:Ljava/lang/String; = "pref_camera_saveorg_key"

.field private static final OLD_KEY_JPEG_QUALITY:Ljava/lang/String; = "pref_camera_jpegquality_key"

.field private static final OLD_KEY_NEED_UPDATE_DISPATCH:Ljava/lang/String; = "pref_key_need_update_dispatch"

.field private static final OLD_KEY_NEW_USER_FEEDBACK_POST:Ljava/lang/String; = "pref_key_new_user_feedback_post"

.field private static final OLD_KEY_NEW_USER_FEEDBACK_POST_TIME:Ljava/lang/String; = "pref_key_new_user_feedback_post_time"

.field private static final OLD_KEY_NEW_USER_TIME:Ljava/lang/String; = "pref_key_new_user_time"

.field private static final OLD_KEY_NOISE_REMOVAL:Ljava/lang/String; = "pref_camera_noiseremovel_key"

.field private static final OLD_KEY_PICTRUE_C36_SUM:Ljava/lang/String; = "key_picture_c360_sum"

.field private static final OLD_KEY_PICTRUE_SYSTEM_SUM:Ljava/lang/String; = "key_picture_system_sum"

.field private static final OLD_KEY_PICTURE_AUTO_SAVE_MODE:Ljava/lang/String; = "pref_camera_pictureautosavemode_key"

.field private static final OLD_KEY_PIC_SAVE_PATH:Ljava/lang/String; = "pref_camera_save_path_key"

.field private static final OLD_KEY_PIC_SAVE_TYPE:Ljava/lang/String; = "pref_camera_save_type_key"

.field private static final OLD_KEY_RECORD_LOCATION:Ljava/lang/String; = "pref_camera_recordlocation_key"

.field private static final OLD_KEY_RENDER_ABILITY:Ljava/lang/String; = "pref_render_ability_key"

.field private static final OLD_KEY_SHOT_SOUND:Ljava/lang/String; = "pref_camera_shotsound_key"

.field private static final OLD_KEY_SHOT_SOUND_FIRST_SHOW:Ljava/lang/String; = "pref_camera_shotsound_firstshown_key"

.field private static final OLD_KEY_SMART_RESOLUTION_IMPROVEMENT:Ljava/lang/String; = "pref_camera_smartresolutionimprovement_key"

.field private static final OLD_KEY_TIMER:Ljava/lang/String; = "pref_camera_timer_key"

.field private static final OLD_KEY_TIME_WATERMARK:Ljava/lang/String; = "pref_camera_timewatermake_key"

.field private static final OLD_KEY_TOUCH_SHOT:Ljava/lang/String; = "pref_camera_touchshot_key"

.field private static final OLD_KEY_VERSION_CODE:Ljava/lang/String; = "pref_version_code"

.field private static final OLD_KEY_VIBRATION_FEEDBACK:Ljava/lang/String; = "pref_camera_vibrationfeedback_key"

.field private static final OLD_KEY_VOLUME_KEYS:Ljava/lang/String; = "pref_camera_volumekeys_key"

.field private static final PREF_OFF:Ljava/lang/String; = "off"

.field private static final PREF_ON:Ljava/lang/String; = "on"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adapterPreferences(Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;)I
    .registers 50

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v46, "pref_version_code"

    const/16 v47, -0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    const/16 v46, 0xa

    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_1e

    :goto_1d
    return v30

    :cond_1e
    const-string/jumbo v46, "pref_camera_mode_key"

    const/16 v47, 0x2

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v46, "pref_camera_mode_key"

    invoke-static {v11}, LvStudio/Android/Camera360/PreferencesAdapter;->getNewModeKey(I)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v46, "pref_camera_smartresolutionimprovement_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_56

    const-string/jumbo v46, "pref_camera_smartresolutionimprovement_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    const-string/jumbo v46, "pref_camera_noiseremovel_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_71

    const-string/jumbo v46, "pref_camera_noiseremovel_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    const-string/jumbo v46, "pref_camera_compositionline_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8a

    const-string/jumbo v46, "pref_camera_compositionline_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v12}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    const-string/jumbo v46, "pref_camera_automatic_enter_effects_model_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a3

    const-string/jumbo v46, "pref_camera_automatic_enter_effects_model_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    const-string/jumbo v46, "pref_camera_volumekeys_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    if-eqz v41, :cond_be

    const-string/jumbo v46, "pref_camera_volumekeys_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    const-string/jumbo v46, "pref_camera_back_save_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d7

    const-string/jumbo v46, "pref_camera_back_save_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d7
    const-string/jumbo v46, "pref_camera_jpegquality_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_102

    const-string/jumbo v46, "100"

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_f6

    const-string/jumbo v32, "95"

    :cond_f6
    const-string/jumbo v46, "pref_camera_jpegquality_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_102
    const-string/jumbo v46, "pref_camera_timewatermake_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_11d

    const-string/jumbo v46, "pref_camera_timewatermake_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11d
    const-string/jumbo v46, "pref_camera_recordlocation_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_138

    const-string/jumbo v46, "pref_camera_recordlocation_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_138
    const-string/jumbo v46, "pref_camera_saveorg_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_153

    const-string/jumbo v46, "pref_camera_saveorg_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_153
    const-string/jumbo v46, "pref_camera_frontmirror_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_16e

    const-string/jumbo v46, "pref_camera_frontmirror_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16e
    const-string/jumbo v46, "pref_camera_vibrationfeedback_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    if-eqz v45, :cond_189

    const-string/jumbo v46, "pref_camera_vibrationfeedback_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_189
    const-string/jumbo v46, "pref_camera_save_type_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_1d0

    const-string/jumbo v46, "pref_camera_save_type_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v46, "pref_camera_save_path_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_1d0

    sget-boolean v46, Lcom/pinguo/lib/ApiHelper;->AFTER_KITKAT:Z

    if-eqz v46, :cond_1c4

    const-string/jumbo v46, "sdcard"

    move-object/from16 v0, v46

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_1d0

    :cond_1c4
    const-string/jumbo v46, "pref_camera_save_path_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d0
    const-string/jumbo v46, "pref_key_fill_in_light_index"

    const/16 v47, -0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/16 v46, -0x1

    move/from16 v0, v46

    if-eq v14, v0, :cond_1ed

    const-string/jumbo v46, "pref_key_fill_in_light_index"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v14}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    :cond_1ed
    const-string/jumbo v46, "pref_camera_timer_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    if-eqz v43, :cond_217

    const-string/jumbo v46, "off"

    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_48f

    const-string/jumbo v46, "pref_camera_timer_key"

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_217
    :goto_217
    const-string/jumbo v46, "pref_camera_touchshot_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    if-eqz v44, :cond_241

    const-string/jumbo v46, "on"

    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_49f

    const-string/jumbo v46, "key_camera_touch_shot_enable"

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_241
    :goto_241
    const-string/jumbo v46, "pref_camera_shotsound_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_26b

    const-string/jumbo v46, "on"

    move-object/from16 v0, v46

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_4af

    const-string/jumbo v46, "pref_camera_shotsound_key"

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_26b
    :goto_26b
    const-string/jumbo v46, "pref_camera_debounce_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_293

    const-string/jumbo v46, "on"

    move-object/from16 v0, v46

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_4bf

    const-string/jumbo v46, "pref_camera_debounce_key"

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_293
    :goto_293
    const-string/jumbo v46, "pref_camera_pictureautosavemode_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_2be

    const-string/jumbo v46, "confirmsave"

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2be

    const-string/jumbo v46, "pref_camera_pictureautosavemode_key"

    const-string/jumbo v47, "confirmsave"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2be
    const-string/jumbo v46, "pref_render_ability_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    if-eqz v36, :cond_2f2

    const-string/jumbo v46, "pref_is_enable_render_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2e6

    const-string/jumbo v46, "pref_is_enable_render_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v13}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e6
    const-string/jumbo v46, "pref_render_ability_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_2f2
    const-string/jumbo v46, "pref_camera_shotsound_firstshown_key"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_31c

    const-string/jumbo v46, "true"

    move-object/from16 v0, v46

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_31c

    const-string/jumbo v46, "pref_camera_shotsound_firstshown_key"

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_31c
    const-string/jumbo v46, "pref_key_need_update_dispatch"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_337

    const-string/jumbo v46, "pref_key_need_update_dispatch"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_337
    const-string/jumbo v46, "pref_first_click_discuz_key"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_352

    const-string/jumbo v46, "pref_first_click_discuz_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_352
    const-string/jumbo v46, "pref_first_click_easy_key"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_36d

    const-string/jumbo v46, "pref_first_click_easy_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_36d
    const-string/jumbo v46, "pref_first_click_timer_key"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_388

    const-string/jumbo v46, "pref_first_click_timer_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_388
    const-string/jumbo v46, "pref_first_click_advance_settings_key"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_3a1

    const-string/jumbo v46, "pref_first_click_advance_settings_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v15}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_3a1
    const-string/jumbo v46, "pref_key_first_in_other_settings"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_3bc

    const-string/jumbo v46, "pref_key_first_in_other_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_3bc
    const-string/jumbo v46, "key_has_capture_in_touch_mode"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3d5

    const-string/jumbo v46, "key_has_capture_in_touch_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_3d5
    const-string/jumbo v46, "key_picture_c360_sum"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3ee

    const-string/jumbo v46, "key_picture_c360_sum"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3ee
    const-string/jumbo v46, "key_picture_system_sum"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    if-eqz v42, :cond_409

    const-string/jumbo v46, "key_picture_system_sum"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_409
    const-string/jumbo v46, "pref_key_new_user_time"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_424

    const-string/jumbo v46, "pref_key_new_user_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_424
    const-string/jumbo v46, "pref_key_new_user_feedback_post_time"

    const-wide/16 v47, -0x1

    move-object/from16 v0, v46

    move-wide/from16 v1, v47

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v26

    const-wide/16 v46, -0x1

    cmp-long v46, v26, v46

    if-nez v46, :cond_45e

    const-string/jumbo v46, "pref_key_new_user_feedback_post"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_45e

    const-string/jumbo v46, "pref_key_new_user_feedback_post"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v46, "pref_key_new_user_feedback_post_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putLong(Ljava/lang/String;J)V

    :cond_45e
    const-string/jumbo v46, "pref_first_start_flag_key_20130427"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    const-string/jumbo v46, "pref_first_start_flag_key"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v21, :cond_47c

    if-nez v22, :cond_48a

    :cond_47c
    const-string/jumbo v46, "pref_first_start_flag_key"

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_48a
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->commit()Z

    goto/16 :goto_1d

    :cond_48f
    const-string/jumbo v46, "pref_camera_timer_key"

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_217

    :cond_49f
    const-string/jumbo v46, "key_camera_touch_shot_enable"

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_241

    :cond_4af
    const-string/jumbo v46, "pref_camera_shotsound_key"

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_26b

    :cond_4bf
    const-string/jumbo v46, "pref_camera_debounce_key"

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_293
.end method

.method private static getNewModeKey(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_14

    const-string/jumbo v0, "c205e3582b514d6fb5c21a953e1e901e"

    :goto_6
    return-object v0

    :sswitch_7
    const-string/jumbo v0, "c205e3582b514d6fb5c21a953e1e901e"

    goto :goto_6

    :sswitch_b
    const-string/jumbo v0, "bc833a31761642e78dc09c16e4366dd8"

    goto :goto_6

    :sswitch_f
    const-string/jumbo v0, "c0d064951ba5413391b702dcc44580f0"

    goto :goto_6

    nop

    :sswitch_data_14
    .sparse-switch
        0x2 -> :sswitch_7
        0x4 -> :sswitch_b
        0xe -> :sswitch_f
    .end sparse-switch
.end method
