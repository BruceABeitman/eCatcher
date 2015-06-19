.class public LvStudio/Android/Camera360/activity/CameraActivity;
.super Lcom/pinguo/camera360/base/BaseActivity;
.source "CameraActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/camera/controller/ModePickerFragment$ModePickerResult;


# static fields
.field private static final BUNDLE_KEY_EFFECT:Ljava/lang/String; = "bundle_key_effect"

.field public static final BUNDLE_KEY_MODE:Ljava/lang/String; = "bundle_key_mode"

.field private static final EXIT_INTERVAL:I = 0x3e8

.field protected static final FEEDBACK_LOG_FILE_NAME:Ljava/lang/String; = "feedback_common.log"

.field protected static final FEEDBACK_LOG_GZIP_NAME:Ljava/lang/String; = "feedback_common.log.gz"

.field private static final MSG_ON_UERACTION:I = 0xb

.field public static final NO_USER_ACTION_DELTA_MILLIS:I = 0x15f90

.field private static final ON_SAVE_INSTANCE_STATE:Ljava/lang/String; = "on_save_instance_state"

.field private static final PREF_INDEPENDENT:Ljava/lang/String; = "independent_settings"

.field private static final PREF_KEY_GRADE_SHOWN_VERSION:Ljava/lang/String; = "independent_settings"

.field private static final REQUEST_CODE_SONY_GUIDE:I = 0x3e8

.field private static final START_ALL_BG_TASK_MSG:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CameraActivity"


# instance fields
.field private mAdController:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;

.field private mAdvanceSettingFragment:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

.field private mAppLink:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field protected mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

.field private mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

.field private mExitMillis:J

.field private mGuideViewFragment:LvStudio/Android/Camera360/activity/GuideViewFragment;

.field private mHandler:Landroid/os/Handler;

.field protected mIsShowPartnerAd:Z

.field private mIsStartAllBgTask:Z

.field private mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

.field private mOldVersionCode:I

.field private mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

.field private mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

.field private mSceneSelectFragment:Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;

.field protected mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

.field private mUserType:I

.field private mVersionCode:I

.field protected mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

.field private mWelcomeAdsFragment:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseActivity;-><init>()V

    new-instance v0, LvStudio/Android/Camera360/activity/CameraActivity$1;

    invoke-direct {v0, p0}, LvStudio/Android/Camera360/activity/CameraActivity$1;-><init>(LvStudio/Android/Camera360/activity/CameraActivity;)V

    iput-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mIsShowPartnerAd:Z

    iput v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVersionCode:I

    iput v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOldVersionCode:I

    iput-boolean v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mIsStartAllBgTask:Z

    iput-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mExitMillis:J

    const-string/jumbo v0, ""

    iput-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAppName:Ljava/lang/String;

    iput-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAppLink:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(LvStudio/Android/Camera360/activity/CameraActivity;)V
    .registers 1

    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->initAllBgTaskAfterStartPreview()V

    return-void
.end method

.method static synthetic access$1(LvStudio/Android/Camera360/activity/CameraActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(LvStudio/Android/Camera360/activity/CameraActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAppLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(LvStudio/Android/Camera360/activity/CameraActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, LvStudio/Android/Camera360/activity/CameraActivity;->startDownLoadAppOldMethod(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(LvStudio/Android/Camera360/activity/CameraActivity;)V
    .registers 1

    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->startPartnerAppDownLoad()V

    return-void
.end method

.method private createPGCamera()V
    .registers 4

    const/4 v1, 0x0

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createPGCameraFragment()Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    move-result-object v1

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a02d8

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private createPGVideo()V
    .registers 4

    const/4 v1, 0x0

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createPGVideoFragment()Lcom/pinguo/camera360/video/PGVideoFragment;

    move-result-object v1

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a02d8

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private createSonyCamera()V
    .registers 4

    const/4 v1, 0x0

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createSonyCameraFragment()Lcom/pinguo/camera360/sony/SonyCameraFragment;

    move-result-object v1

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a02d8

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private getVersionUpdateType()I
    .registers 8

    const/16 v6, 0x222

    const/4 v2, 0x1

    iget v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVersionCode:I

    if-ne v4, v6, :cond_19

    iget v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOldVersionCode:I

    const/16 v5, 0x221

    if-ne v4, v5, :cond_19

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v4

    const-string/jumbo v5, "key_version_code"

    invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    move v3, v2

    :goto_18
    return v3

    :cond_19
    iget v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVersionCode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_52

    iget v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOldVersionCode:I

    const/16 v5, 0xa

    if-gt v4, v5, :cond_6f

    const/4 v2, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "yyyyMMdd-HH:mm:ss"

    invoke-static {v6}, Lcom/pinguo/lib/util/TimeUtils;->getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v1

    :try_start_34
    const-string/jumbo v4, "newUserTime"

    const-string/jumbo v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_34 .. :try_end_41} :catch_6a

    :goto_41
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v4

    const-string/jumbo v5, "pref_key_new_user_time"

    invoke-virtual {v4, v5, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->commit()Z

    :cond_52
    :goto_52
    const-string/jumbo v4, "version"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "userType:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    goto :goto_18

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_41

    :cond_6f
    iget v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOldVersionCode:I

    iget v5, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVersionCode:I

    if-ge v4, v5, :cond_52

    const/4 v2, 0x0

    goto :goto_52
.end method

.method private getmOldVersionCode()I
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v0

    const-string/jumbo v1, "key_version_code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getmVersionCode()I
    .registers 6

    :try_start_0
    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return v2

    :catch_10
    move-exception v0

    const/4 v2, -0x1

    goto :goto_f
.end method

.method private hasExitApp(Landroid/os/Bundle;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    const-string/jumbo v1, "on_save_instance_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return v0
.end method

.method private hidePGCameraFragmentForSony(Z)V
    .registers 4

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    if-nez p1, :cond_1f

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_1b
    const/4 v1, 0x0

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    :cond_1e
    return-void

    :cond_1f
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1b
.end method

.method private initAllBgTaskAfterStartPreview()V
    .registers 8

    iget-boolean v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mIsStartAllBgTask:Z

    if-eqz v4, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string/jumbo v4, "CameraActivity"

    const-string/jumbo v5, "initAllBgTaskAfterStartPreview"

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mIsStartAllBgTask:Z

    invoke-static {}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getInstance()Lcom/pinguo/camera360/adv/AdvertisementModel;

    move-result-object v0

    const v4, 0x15180

    invoke-virtual {v0, v4}, Lcom/pinguo/camera360/adv/AdvertisementModel;->update(I)V

    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v4

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->startAlarmManager(Landroid/content/Context;)V

    sget-object v4, Lcom/pinguo/lib/util/FileUtils;->CAMERA360_ROOT:Ljava/lang/String;

    invoke-static {v4}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/pinguo/lib/util/FileUtils;->CAMERA360_ROOT:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5b

    :try_start_58
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_99

    :cond_5b
    :goto_5b
    invoke-static {p0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v4

    const-string/jumbo v5, "pref_key_new_user_feedback_post"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v3}, LvStudio/Android/Camera360/activity/CameraActivity;->startPostFeedBackData(Z)V

    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->setLunchTime()V

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->update(Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v4

    new-instance v5, Lcom/pinguo/camera360/camera/event/OnSurfaceShownEvent;

    invoke-direct {v5}, Lcom/pinguo/camera360/camera/event/OnSurfaceShownEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getGpsInfo()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->initUnSupportStopPreviewParam(Landroid/content/Context;)V

    const-string/jumbo v4, "CameraActivity"

    const-string/jumbo v5, "initAllBgTaskAfterStartPreview end"

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_99
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b
.end method

.method private initGuideViewFragment(Landroid/support/v4/app/FragmentTransaction;)V
    .registers 6

    const v3, 0x7f0a02d4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "userType"

    iget v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mUserType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "mVersionCode"

    iget v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVersionCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "mOldVersionCode"

    iget v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOldVersionCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "mIsShowPartnerAd"

    iget-boolean v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mIsShowPartnerAd:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, LvStudio/Android/Camera360/activity/GuideViewFragment;

    invoke-direct {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;-><init>()V

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mGuideViewFragment:LvStudio/Android/Camera360/activity/GuideViewFragment;

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mGuideViewFragment:LvStudio/Android/Camera360/activity/GuideViewFragment;

    invoke-virtual {v1, v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, LvStudio/Android/Camera360/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mGuideViewFragment:LvStudio/Android/Camera360/activity/GuideViewFragment;

    invoke-virtual {p1, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    return-void
.end method

.method private initMainFragment(Landroid/support/v4/app/FragmentTransaction;)V
    .registers 13

    const-string/jumbo v7, "CameraActivity"

    const-string/jumbo v8, "initMainFragment"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPreferredLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_90

    invoke-virtual {v6, v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setPreferredLanguage(Ljava/lang/String;)V

    :cond_22
    :goto_22
    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "bundle_key_mode"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "bundle_key_effect"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_41

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCameraMode(Ljava/lang/String;)V

    :cond_41
    invoke-virtual {p0, p1}, LvStudio/Android/Camera360/activity/CameraActivity;->onCreateCameraOrVideoFragment(Landroid/support/v4/app/FragmentTransaction;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_77

    iget-object v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v7, :cond_77

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->clearEffectTypeNewFlag(Ljava/lang/String;)V

    new-instance v3, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;

    const-class v7, LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->setFromTag(Ljava/lang/String;)V

    iget-object v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    new-instance v8, LvStudio/Android/Camera360/activity/CameraActivity$6;

    invoke-direct {v8, p0, v3}, LvStudio/Android/Camera360/activity/CameraActivity$6;-><init>(LvStudio/Android/Camera360/activity/CameraActivity;Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;)V

    const-wide/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_77
    new-instance v7, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    invoke-direct {v7}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;-><init>()V

    iput-object v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAdvanceSettingFragment:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    const v7, 0x7f0a02d9

    iget-object v8, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAdvanceSettingFragment:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    invoke-virtual {p1, v7, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v7

    iget-object v8, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAdvanceSettingFragment:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    invoke-virtual {v7, v8}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    return-void

    :cond_90
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/pinguo/camera360/effect/model/EffectModel;->invalidEffectDict(Z)V

    invoke-virtual {v6, v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setPreferredLanguage(Ljava/lang/String;)V

    goto :goto_22
.end method

.method private setLunchTime()V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/push/utils/PushPreference;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/push/utils/PushPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "key_last_lunch_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/push/utils/PushPreference;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/push/utils/PushPreference;->commit()V

    return-void
.end method

.method private showRateAlertDialog()V
    .registers 9

    const/4 v7, 0x0

    const v1, 0x7f08029d

    const v2, 0x7f08029f

    const v3, 0x7f08029e

    new-instance v4, LvStudio/Android/Camera360/activity/CameraActivity$4;

    invoke-direct {v4, p0}, LvStudio/Android/Camera360/activity/CameraActivity$4;-><init>(LvStudio/Android/Camera360/activity/CameraActivity;)V

    new-instance v5, LvStudio/Android/Camera360/activity/CameraActivity$5;

    invoke-direct {v5, p0}, LvStudio/Android/Camera360/activity/CameraActivity$5;-><init>(LvStudio/Android/Camera360/activity/CameraActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v6, v7, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V

    return-void
.end method

.method public static startActivityFromStore(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivityFromStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startActivityFromStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v2, "23382e49b7f64d5fb822aba5a29e927f"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v2, LvStudio/Android/Camera360/activity/CameraActivity$2;

    invoke-direct {v2, p1, p0}, LvStudio/Android/Camera360/activity/CameraActivity$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0, v2}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->initDefaultScene(Landroid/content/Context;Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;)Z

    move-result v1

    if-eqz v1, :cond_15

    :goto_14
    return-void

    :cond_15
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCameraMode(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "bundle_key_mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "bundle_key_effect"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_14
.end method

.method private startDownLoadAppOldMethod(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v1, "CameraActivity"

    invoke-static {v1, p1}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/push/business/update/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "download_title"

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, LvStudio/Android/Camera360/activity/CameraActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->finish()V

    return-void
.end method

.method private startPartnerAppDownLoad()V
    .registers 8

    const/4 v6, 0x0

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "pref_appdownload"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/lib/network/NetworkUtils;->currentNetType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_26

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "pref_appdownload_done"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_25
    :goto_25
    return-void

    :cond_26
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, LvStudio/Android/Camera360/activity/CameraActivity$3;

    invoke-direct {v3, p0}, LvStudio/Android/Camera360/activity/CameraActivity$3;-><init>(LvStudio/Android/Camera360/activity/CameraActivity;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string/jumbo v3, "pref_appdownload_done"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_25

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherPartnerAppDownLoad(I)V

    const-string/jumbo v3, "pref_appdownload_appname"

    const-string/jumbo v4, "newApp"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAppName:Ljava/lang/String;

    const-string/jumbo v3, "pref_appdownload_link"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAppLink:Ljava/lang/String;

    const-string/jumbo v3, "CameraActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mAppName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAppName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "CameraActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mAppLink: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAppLink:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAppLink:Ljava/lang/String;

    if-nez v3, :cond_97

    const-string/jumbo v3, "CameraActivity"

    const-string/jumbo v4, "appLink is null"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_97
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "pref_appdownload_done"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_25
.end method

.method private startPostFeedBackData(Z)V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LvStudio/Android/Camera360/activity/CameraActivity$7;

    invoke-direct {v1, p0, p1}, LvStudio/Android/Camera360/activity/CameraActivity$7;-><init>(LvStudio/Android/Camera360/activity/CameraActivity;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public changeCameraOrVideo(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCameraMode(Ljava/lang/String;)V

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    if-eqz v0, :cond_18

    const-string/jumbo v0, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createPGCamera()V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v0, :cond_17

    const-string/jumbo v0, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createPGVideo()V

    goto :goto_17
.end method

.method public createEffectSelectFragment()Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;-><init>()V

    return-object v0
.end method

.method public createModePickerFragment()Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;-><init>()V

    return-object v0
.end method

.method public createPGCameraFragment()Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;-><init>()V

    return-object v0
.end method

.method public createPGVideoFragment()Lcom/pinguo/camera360/video/PGVideoFragment;
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-direct {v0}, Lcom/pinguo/camera360/video/PGVideoFragment;-><init>()V

    return-object v0
.end method

.method public createPicturePreviewFragment()Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
    .registers 3

    const-string/jumbo v0, "CameraActivity"

    const-string/jumbo v1, "createPicturePreviewFragment"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;-><init>()V

    return-object v0
.end method

.method public createSonyCameraFragment()Lcom/pinguo/camera360/sony/SonyCameraFragment;
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-direct {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;-><init>()V

    return-object v0
.end method

.method public finish()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->finish()V

    invoke-static {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->clearPrefInAdvanceParameter(Landroid/app/Activity;)V

    return-void
.end method

.method public getAdsPath()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;

    invoke-direct {v0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;-><init>()V

    iput-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAdController:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAdController:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->create(Landroid/content/Context;)V

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAdController:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;

    invoke-virtual {v0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->checkAd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGpsInfo()V
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v2, "pref_last_known_location"

    invoke-virtual {p0, v2, v5}, LvStudio/Android/Camera360/activity/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "lat"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "pref_last_known_location"

    invoke-virtual {p0, v2, v5}, LvStudio/Android/Camera360/activity/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "lon"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->getGPSInfor(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public needChangeCameraOrVideo(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    if-eqz v1, :cond_10

    const-string/jumbo v1, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v1, :cond_f

    const-string/jumbo v1, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const-string/jumbo v3, "CameraActivity"

    const-string/jumbo v4, "onActivityResult onActivityResult"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_2b

    const-string/jumbo v2, "7b3b6b04486f12d95690f533f5253a74"

    const/4 v3, -0x1

    if-eq p2, v3, :cond_2f

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPreCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCameraMode(Ljava/lang/String;)V

    :goto_1e
    invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "bundle_key_mode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2b
    invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_2f
    const-string/jumbo v3, "CameraActivity"

    const-string/jumbo v4, "hide and remove"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, LvStudio/Android/Camera360/activity/CameraActivity;->hidePGCameraFragmentForSony(Z)V

    goto :goto_1e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v7, "CameraActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onCreate start"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v7, 0x7f03007f

    invoke-virtual {p0, v7}, LvStudio/Android/Camera360/activity/CameraActivity;->setContentView(I)V

    invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraStart()V

    const/4 v7, 0x0

    iput-boolean v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mIsStartAllBgTask:Z

    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getmOldVersionCode()I

    move-result v7

    iput v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOldVersionCode:I

    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getmVersionCode()I

    move-result v7

    iput v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVersionCode:I

    invoke-static {p0}, Lcom/pinguo/lib/UIContants;->loadUIContants(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, LvStudio/Android/Camera360/activity/CameraActivity;->hasExitApp(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-static {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->clearPrefInAdvanceParameter(Landroid/app/Activity;)V

    :cond_3d
    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getVersionUpdateType()I

    move-result v7

    iput v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mUserType:I

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getAdsPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v4

    iget-boolean v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mIsShowPartnerAd:Z

    if-eqz v7, :cond_76

    iget v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mUserType:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_60

    iget v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mUserType:I

    if-nez v7, :cond_65

    :cond_60
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFirstShowAdsTime(J)V

    :cond_65
    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFirstShowAdsTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_fe

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFirstShowAdsTime(J)V

    :cond_76
    :goto_76
    const-string/jumbo v7, "CameraActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "mOldVersionCode ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOldVersionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "mVersionCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVersionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "userType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mUserType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x1

    iget v8, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mUserType:I

    if-eq v7, v8, :cond_b1

    iget v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mUserType:I

    if-nez v7, :cond_10f

    :cond_b1
    const-string/jumbo v7, "GuideViewFragment"

    const-string/jumbo v8, " CameraActivity "

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, LvStudio/Android/Camera360/activity/CameraActivity;->initGuideViewFragment(Landroid/support/v4/app/FragmentTransaction;)V

    :goto_bd
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-static {p0}, Lcom/pinguo/lib/util/Util;->initialize(Landroid/content/Context;)V

    const-string/jumbo v7, "app://pinguo.android.team.cameraView"

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "app://pinguo.android.team.cameraView"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_df

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushOpenCamera(I)V

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushSimple(I)V

    :cond_df
    const-string/jumbo v7, "CameraActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onCreate end"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, -0x3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setFormat(I)V

    return-void

    :cond_fe
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v9, 0x19bfcc00

    cmp-long v7, v7, v9

    if-ltz v7, :cond_76

    const/4 v7, 0x0

    iput-boolean v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mIsShowPartnerAd:Z

    goto/16 :goto_76

    :cond_10f
    if-eqz v2, :cond_154

    if-nez v3, :cond_117

    iget-boolean v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mIsShowPartnerAd:Z

    if-eqz v7, :cond_154

    :cond_117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "mAdsImagePath"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "mIsShowPartnerAd"

    iget-boolean v8, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mIsShowPartnerAd:Z

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v7, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;

    invoke-direct {v7}, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;-><init>()V

    iput-object v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mWelcomeAdsFragment:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;

    iget-object v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mWelcomeAdsFragment:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;

    invoke-virtual {v7, v0}, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v7, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAdController:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;

    invoke-virtual {v7}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->getAreaId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->CamerastartGuideShowSuccess(Ljava/lang/String;)V

    const v7, 0x7f0a02d5

    invoke-virtual {p0, v7}, LvStudio/Android/Camera360/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const v7, 0x7f0a02d5

    iget-object v8, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mWelcomeAdsFragment:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;

    invoke-virtual {v1, v7, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_bd

    :cond_154
    invoke-direct {p0, v1}, LvStudio/Android/Camera360/activity/CameraActivity;->initMainFragment(Landroid/support/v4/app/FragmentTransaction;)V

    goto/16 :goto_bd
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .registers 3

    return-void
.end method

.method public onCreateCameraOrVideoFragment(Landroid/support/v4/app/FragmentTransaction;)V
    .registers 7

    const v4, 0x7f0a02d8

    const/4 v3, 0x0

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createPGVideoFragment()Lcom/pinguo/camera360/video/PGVideoFragment;

    move-result-object v1

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v1, :cond_2e

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iput-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    :cond_2e
    iput-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {p1, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_35
    :goto_35
    return-void

    :cond_36
    const-string/jumbo v1, "7b3b6b04486f12d95690f533f5253a74"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    if-nez v1, :cond_35

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_35

    :cond_50
    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    if-eqz v1, :cond_5b

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iput-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    :cond_5b
    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createPGCameraFragment()Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    move-result-object v1

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {p1, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_35
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/base/BaseActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 4

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onDestroy()V

    const-string/jumbo v0, "CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDestroy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    :cond_31
    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    :cond_3e
    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSceneSelectFragment:Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSceneSelectFragment:Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    :cond_4b
    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAdvanceSettingFragment:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    if-eqz v0, :cond_58

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAdvanceSettingFragment:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    :cond_58
    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    if-eqz v0, :cond_65

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    :cond_65
    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/EnterGalleryEvent;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/pinguo/camera360/gallery/GalleryActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/HideWelcomeFragment;)V
    .registers 5

    const-string/jumbo v1, "CameraActivity"

    const-string/jumbo v2, "HideWelcomeFragment"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mWelcomeAdsFragment:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;

    if-eqz v1, :cond_1d

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mWelcomeAdsFragment:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v1, 0x0

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mWelcomeAdsFragment:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;

    :cond_1d
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/OnSurfaceShownEvent;)V
    .registers 7

    const-string/jumbo v3, "CameraActivity"

    const-string/jumbo v4, "onEvent OnSurfaceShownEvent"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    if-nez v3, :cond_2e

    const/4 v2, 0x1

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createModePickerFragment()Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    move-result-object v3

    iput-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    const v3, 0x7f0a02dd

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v3

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    invoke-virtual {v3, v4}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    :cond_2e
    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    if-nez v3, :cond_77

    const/4 v2, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "arguments_name_from_activity"

    const-class v4, LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createEffectSelectFragment()Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    move-result-object v3

    iput-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    const v4, 0x7f0a02d7

    invoke-virtual {p0, v4}, LvStudio/Android/Camera360/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->setBottomMarginView(Landroid/view/View;)V

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->setArguments(Landroid/os/Bundle;)V

    const v3, 0x7f0a02db

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v3

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-virtual {v3, v4}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    if-eqz v3, :cond_77

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->register(Lcom/pinguo/camera360/lib/ui/Rotatable;)V

    :cond_77
    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    if-nez v3, :cond_a9

    const/4 v2, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createPicturePreviewFragment()Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    move-result-object v3

    iput-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    const-string/jumbo v3, "arguments_name_from_activity"

    const-class v4, LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->setArguments(Landroid/os/Bundle;)V

    const v3, 0x7f0a02da

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v3

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    invoke-virtual {v3, v4}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    :cond_a9
    if-eqz v2, :cond_ae

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_ae
    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/ShowCameraFragmentEvent;)V
    .registers 6

    const-string/jumbo v2, "CameraActivity"

    const-string/jumbo v3, "ShowCameraFragmentEvent"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mGuideViewFragment:LvStudio/Android/Camera360/activity/GuideViewFragment;

    if-eqz v2, :cond_35

    const v2, 0x7f0a02d4

    invoke-virtual {p0, v2}, LvStudio/Android/Camera360/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2d
    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mGuideViewFragment:LvStudio/Android/Camera360/activity/GuideViewFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v2, 0x0

    iput-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mGuideViewFragment:LvStudio/Android/Camera360/activity/GuideViewFragment;

    :cond_35
    invoke-direct {p0, v0}, LvStudio/Android/Camera360/activity/CameraActivity;->initMainFragment(Landroid/support/v4/app/FragmentTransaction;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;)V
    .registers 6

    const-string/jumbo v2, "CameraActivity"

    const-string/jumbo v3, "onEvent ShowEffectSelectEvent"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    if-nez v2, :cond_5c

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "arguments_name_from_activity"

    const-class v3, LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createEffectSelectFragment()Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    move-result-object v2

    iput-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    const v3, 0x7f0a02d7

    invoke-virtual {p0, v3}, LvStudio/Android/Camera360/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->setBottomMarginView(Landroid/view/View;)V

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->setArguments(Landroid/os/Bundle;)V

    const v2, 0x7f0a02db

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v2

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-virtual {v2, v3}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    if-eqz v2, :cond_5c

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->register(Lcom/pinguo/camera360/lib/ui/Rotatable;)V

    :cond_5c
    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->showEffectFragment(Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;)V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/ShowModePickerEvent;)V
    .registers 5

    const-string/jumbo v1, "CameraActivity"

    const-string/jumbo v2, "onEvent ShowModePickerEvent"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    if-nez v1, :cond_2f

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createModePickerFragment()Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    move-result-object v1

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    const v1, 0x7f0a02dd

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v1

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    :cond_2f
    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->showModePickerFragment()V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;)V
    .registers 6

    const-string/jumbo v2, "CameraActivity"

    const-string/jumbo v3, "onEvent ShowModePickerEvent"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    if-nez v2, :cond_45

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createPicturePreviewFragment()Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    move-result-object v2

    iput-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    const-string/jumbo v2, "arguments_name_from_activity"

    const-class v3, LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->setArguments(Landroid/os/Bundle;)V

    const v2, 0x7f0a02da

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v2

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    invoke-virtual {v2, v3}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    :cond_45
    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->updateViewForSony()V

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->showPicturePreviewFragment(Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;)V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/ShowSceneSelectEvent;)V
    .registers 6

    const v3, 0x7f0a02dc

    const-string/jumbo v1, "CameraActivity"

    const-string/jumbo v2, "onEvent ShowSceneSelectEvent"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSceneSelectFragment:Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;

    if-nez v1, :cond_39

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;

    invoke-direct {v1}, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;-><init>()V

    iput-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSceneSelectFragment:Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;

    invoke-virtual {p0, v3}, LvStudio/Android/Camera360/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSceneSelectFragment:Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v1

    iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSceneSelectFragment:Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;

    invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    :goto_38
    return-void

    :cond_39
    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSceneSelectFragment:Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->showSceneFragment()V

    goto :goto_38
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v2, 0x0

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mGuideViewFragment:LvStudio/Android/Camera360/activity/GuideViewFragment;

    if-eqz v4, :cond_c

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mGuideViewFragment:LvStudio/Android/Camera360/activity/GuideViewFragment;

    invoke-virtual {v4, p1, p2}, LvStudio/Android/Camera360/activity/GuideViewFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    :goto_b
    return v4

    :cond_c
    sparse-switch p1, :sswitch_data_1c6

    :cond_f
    :goto_f
    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_b

    :sswitch_14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    if-eqz v4, :cond_26

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {v4, p2}, Lcom/pinguo/camera360/video/PGVideoFragment;->handleKeyBack(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_26
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v4, :cond_32

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v4, p2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->handleKeyBack(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_32
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_f

    :sswitch_3d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v4, :cond_f

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->onShutterButtonFocus(Z)V

    goto :goto_f

    :sswitch_4e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_6b

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    if-eqz v4, :cond_5e

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    invoke-virtual {v4, p1}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->handleHardKeyEvent(I)Z

    move-result v2

    :cond_5e
    if-eqz v2, :cond_62

    const/4 v4, 0x1

    goto :goto_b

    :cond_62
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v4, :cond_6d

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->onShutterBtnClick()V

    :cond_6b
    :goto_6b
    const/4 v4, 0x1

    goto :goto_b

    :cond_6d
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    if-eqz v4, :cond_77

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {v4}, Lcom/pinguo/camera360/video/PGVideoFragment;->onShutterBtnClick()V

    goto :goto_6b

    :cond_77
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    if-eqz v4, :cond_6b

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-virtual {v4}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->onShutterBtnClick()V

    goto :goto_6b

    :sswitch_81
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v4, :cond_90

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v4, p2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->handleKeyBack(Landroid/view/KeyEvent;)Z

    move-result v2

    :goto_8b
    if-eqz v2, :cond_a8

    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_90
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    if-eqz v4, :cond_9b

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {v4, p2}, Lcom/pinguo/camera360/video/PGVideoFragment;->handleKeyBack(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_8b

    :cond_9b
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    if-eqz v4, :cond_a6

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-virtual {v4, p1, p2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->handleKeyEventDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_8b

    :cond_a6
    const/4 v2, 0x0

    goto :goto_8b

    :cond_a8
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAdvanceSettingFragment:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    if-eqz v4, :cond_b2

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAdvanceSettingFragment:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    invoke-virtual {v4, p1}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->handleKeyBack(I)Z

    move-result v2

    :cond_b2
    if-eqz v2, :cond_c9

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v4, :cond_bd

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateTimerAndAntiShakeView()V

    :cond_bd
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    if-eqz v4, :cond_c6

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {v4}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateTimerView()V

    :cond_c6
    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_c9
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    if-eqz v4, :cond_d3

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    invoke-virtual {v4, p1}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->handleHardKeyEvent(I)Z

    move-result v2

    :cond_d3
    if-eqz v2, :cond_d8

    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_d8
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    if-eqz v4, :cond_e2

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-virtual {v4, p1}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->handleHardKeyEvent(I)Z

    move-result v2

    :cond_e2
    if-eqz v2, :cond_e7

    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_e7
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSceneSelectFragment:Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;

    if-eqz v4, :cond_f1

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSceneSelectFragment:Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;

    invoke-virtual {v4, p1}, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->handleHardKeyEvent(I)Z

    move-result v2

    :cond_f1
    if-eqz v2, :cond_f6

    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_f6
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    if-eqz v4, :cond_105

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    invoke-virtual {v4, p1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->handleHardKeyEvent(I)Z

    move-result v2

    if-eqz v2, :cond_105

    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    iget-wide v6, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mExitMillis:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_138

    iget-wide v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mExitMillis:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gtz v4, :cond_138

    invoke-virtual {p0, p0}, LvStudio/Android/Camera360/activity/CameraActivity;->shouldShowGradeDialogInThisVersion(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_127

    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->showRateAlertDialog()V

    :goto_124
    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_127
    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->startPartnerAppDownLoad()V

    invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraExit()V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->stop()V

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->finish()V

    goto :goto_124

    :cond_138
    const-wide/16 v4, 0x0

    iput-wide v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mExitMillis:J

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v4, :cond_157

    const v4, 0x7f080301

    const/16 v5, 0x3e8

    iget-object v6, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v6}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getOrientation()I

    move-result v6

    invoke-static {v4, p0, v5, v6}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/app/Activity;II)V

    :cond_14e
    :goto_14e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mExitMillis:J

    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_157
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    if-eqz v4, :cond_165

    const v4, 0x7f080301

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    invoke-static {v4, p0, v5, v6}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/app/Activity;II)V

    goto :goto_14e

    :cond_165
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    if-eqz v4, :cond_14e

    const v4, 0x7f080301

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    invoke-static {v4, p0, v5, v6}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/app/Activity;II)V

    goto :goto_14e

    :sswitch_173
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    if-eqz v4, :cond_17d

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-virtual {v4, p1}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->handleHardKeyEvent(I)Z

    move-result v2

    :cond_17d
    if-eqz v2, :cond_182

    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_182
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    if-eqz v4, :cond_18c

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    invoke-virtual {v4, p1}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->handleHardKeyEvent(I)Z

    move-result v2

    :cond_18c
    if-eqz v2, :cond_191

    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_191
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    if-eqz v4, :cond_19b

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mPicturePreviewFragment:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    invoke-virtual {v4, p1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->handleHardKeyEvent(I)Z

    move-result v2

    :cond_19b
    if-eqz v2, :cond_1a0

    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_1a0
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v4, :cond_1af

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v4, p2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->handleKeyBack(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1aa
    :goto_1aa
    if-eqz v2, :cond_f

    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_1af
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    if-eqz v4, :cond_1ba

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {v4, p2}, Lcom/pinguo/camera360/video/PGVideoFragment;->handleKeyBack(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1aa

    :cond_1ba
    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    if-eqz v4, :cond_1aa

    iget-object v4, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-virtual {v4, p1, p2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->handleKeyEventDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1aa

    nop

    :sswitch_data_1c6
    .sparse-switch
        0x4 -> :sswitch_81
        0x18 -> :sswitch_173
        0x19 -> :sswitch_173
        0x1b -> :sswitch_4e
        0x50 -> :sswitch_3d
        0x52 -> :sswitch_14
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    packed-switch p1, :pswitch_data_14

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    :pswitch_8
    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->handleKeyLongPressEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7

    nop

    :pswitch_data_14
    .packed-switch 0x18
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    sparse-switch p1, :sswitch_data_26

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    :sswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v0, :cond_18

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->onShutterButtonFocus(Z)V

    :cond_18
    const/4 v0, 0x1

    goto :goto_7

    :sswitch_1a
    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mSonyCameraFragment:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->handleKeyEventUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7

    nop

    :sswitch_data_26
    .sparse-switch
        0x18 -> :sswitch_1a
        0x19 -> :sswitch_1a
        0x50 -> :sswitch_8
    .end sparse-switch
.end method

.method public onModeChanged(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v1, "CameraActivity"

    const-string/jumbo v2, "onModeChangedonModeChangedonModeChanged"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCameraMode(Ljava/lang/String;)V

    const-string/jumbo v1, "7b3b6b04486f12d95690f533f5253a74"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    invoke-direct {p0, v1}, LvStudio/Android/Camera360/activity/CameraActivity;->hidePGCameraFragmentForSony(Z)V

    invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "bundle_key_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivity(Landroid/content/Intent;)V

    :goto_2a
    return-void

    :cond_2b
    const-string/jumbo v1, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createPGVideo()V

    goto :goto_2a

    :cond_38
    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-nez v1, :cond_40

    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createPGCamera()V

    goto :goto_2a

    :cond_40
    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->changeMode(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8

    const-string/jumbo v3, "CameraActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onNewIntent:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string/jumbo v3, "bundle_key_mode"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bundle_key_effect"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5c

    const-string/jumbo v3, "7b3b6b04486f12d95690f533f5253a74"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-static {}, Lcom/pinguo/camera360/sony/model/ServerDeviceInstance;->getServerDevice()Lcom/pinguo/camera360/sony/model/ServerDevice;

    move-result-object v0

    if-nez v0, :cond_5d

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x3e8

    invoke-virtual {p0, v3, v4}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4a
    :goto_4a
    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    if-eqz v3, :cond_53

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->hide()V

    :cond_53
    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    if-eqz v3, :cond_5c

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->hide()V

    :cond_5c
    return-void

    :cond_5d
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCameraMode(Ljava/lang/String;)V

    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createSonyCamera()V

    goto :goto_4a

    :cond_68
    invoke-virtual {p0, v2}, LvStudio/Android/Camera360/activity/CameraActivity;->needChangeCameraOrVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-virtual {p0, v2}, LvStudio/Android/Camera360/activity/CameraActivity;->changeCameraOrVideo(Ljava/lang/String;)V

    goto :goto_4a

    :cond_72
    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    if-eqz v3, :cond_9f

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCurrentMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mModePickerFragment:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->refreshModePickerView()V

    :cond_87
    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->changeMode(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/camera/event/ChangeParentEffectEvent;

    invoke-direct {v4, v1}, Lcom/pinguo/camera360/camera/event/ChangeParentEffectEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    goto :goto_4a

    :cond_9f
    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    if-eqz v3, :cond_a9

    iget-object v3, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {v3}, Lcom/pinguo/camera360/video/PGVideoFragment;->closeModePicker()V

    goto :goto_4a

    :cond_a9
    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->createPGCamera()V

    goto :goto_4a
.end method

.method protected onPause()V
    .registers 4

    const/4 v1, 0x4

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onPause()V

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    const-string/jumbo v0, "CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPause "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    if-eqz v0, :cond_41

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    if-eqz v0, :cond_39

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mEffectSelectFragment:Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->unregister(Lcom/pinguo/camera360/lib/ui/Rotatable;)V

    :cond_39
    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    :cond_41
    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAdController:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;

    if-eqz v0, :cond_5a

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mAdController:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;

    invoke-virtual {v0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->pause()V

    :cond_5a
    return-void
.end method

.method protected onResume()V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v4, 0x80

    const/4 v3, 0x0

    const-string/jumbo v0, "CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onResume start"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onResume()V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/camera/event/OpenCameraEvent;

    invoke-direct {v1}, Lcom/pinguo/camera360/camera/event/OpenCameraEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->recordUserAction()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    if-nez v0, :cond_58

    new-instance v0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/PGOrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->enable()V

    :cond_58
    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    invoke-virtual {v0, v3, v3}, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->setOrientationIndicator(IZ)V

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "CameraActivity"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "on_save_instance_state"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onUserInteraction()V
    .registers 1

    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->recordUserAction()V

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onUserInteraction()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public recordUserAction()V
    .registers 5

    const/16 v3, 0xb

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x15f90

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public registerOrientationEvent(Lcom/pinguo/camera360/base/BaseFragment;)V
    .registers 3

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->register(Lcom/pinguo/camera360/lib/ui/Rotatable;)V

    :cond_9
    return-void
.end method

.method protected shouldShowGradeDialogInThisVersion(Landroid/content/Context;)Z
    .registers 13

    const/4 v6, -0x1

    :try_start_1
    invoke-virtual {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x4000

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_27

    :goto_11
    const-string/jumbo v7, "independent_settings"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v7, "independent_settings"

    const/4 v8, -0x1

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2c

    if-ne v3, v6, :cond_2c

    const/4 v7, 0x0

    :goto_26
    return v7

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_11

    :cond_2c
    invoke-static {p1}, Lcom/pinguo/lib/util/DeviceInfo;->getSnrFromIMEI(Landroid/content/Context;)J

    move-result-wide v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_89

    const-string/jumbo v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " snrNumber / 3 = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v9, 0x3

    rem-long v9, v4, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mVersionCode / 3 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    rem-int/lit8 v9, v6, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x3

    rem-long v7, v4, v7

    rem-int/lit8 v9, v6, 0x3

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_7e

    const-string/jumbo v7, ""

    const-string/jumbo v8, " OK, you now can show grade tip UI ."

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "independent_settings"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v7, 0x1

    goto :goto_26

    :cond_7e
    const-string/jumbo v7, ""

    const-string/jumbo v8, " sorry, wait for next version to show grade UI"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_26

    :cond_89
    const-string/jumbo v7, ""

    const-string/jumbo v8, " error occurs, show tip in every vision."

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_26
.end method

.method public startAllBgTask()V
    .registers 5

    const/4 v3, 0x4

    const-string/jumbo v0, "CameraActivity"

    const-string/jumbo v1, "startAllBgTask"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mIsStartAllBgTask:Z

    if-eqz v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1c
    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_e
.end method

.method public unRegisterOrientationEvent(Lcom/pinguo/camera360/base/BaseFragment;)V
    .registers 3

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity;->mOrientationListener:Lcom/pinguo/camera360/ui/PGOrientationEventListener;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->unregister(Lcom/pinguo/camera360/lib/ui/Rotatable;)V

    :cond_9
    return-void
.end method
