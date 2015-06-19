.class public Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;
.super Landroid/app/Service;
.source "FeedbackUploadService.java"


# static fields
.field private static final APPID:Ljava/lang/String; = "ea8d04692735bc1f"

.field private static final FEEDBACK_LOG_FILE:Ljava/lang/String; = "feedback_common.log"

.field private static final FEEDBACK_LOG_GZIP_FILE:Ljava/lang/String; = "feedback_common.log.gz"

.field private static final KEY_APPKEY:Ljava/lang/Object; = null

.field private static final KEY_SIGN:Ljava/lang/String; = "sign"

.field private static final KEY_TIME:Ljava/lang/Object;

.field private static SECRET:Ljava/lang/String;

.field private static SECRET_TEST:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field private static URI:Ljava/lang/String;

.field private static mContent:Ljava/lang/String;

.field private static mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;


# instance fields
.field protected mFilesNeedUpload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFilesUploaded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "http://applog.camera360.com:6000"

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->URI:Ljava/lang/String;

    const-string/jumbo v0, "/appkey/"

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->KEY_APPKEY:Ljava/lang/Object;

    const-string/jumbo v0, "/time/"

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->KEY_TIME:Ljava/lang/Object;

    const-string/jumbo v0, "vCGG9QZ94tcGxTjangCc_b_VuXwmfGd2"

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->SECRET:Ljava/lang/String;

    const-string/jumbo v0, "23471983471908234710943"

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->SECRET_TEST:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mFilesNeedUpload:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mFilesUploaded:Ljava/util/List;

    return-void
.end method

.method private static allDataReady(Landroid/content/Context;)Z
    .registers 3

    if-nez p0, :cond_c

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "context: null"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private static checkGZipFile(Ljava/io/File;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method private static getCclient(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ""

    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Camera360_Android_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_25} :catch_27

    move-result-object v4

    :goto_26
    return-object v4

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_26
.end method

.method private static getContent(Landroid/content/Context;I)V
    .registers 26

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x2d

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const-string/jumbo v22, "connectivity"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-static {v6}, Lcom/pinguo/lib/network/NetworkUtils;->getNetworkType(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v12

    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x5f

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v21, "pref_last_known_location"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string/jumbo v22, "lat"

    const-string/jumbo v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v21, "pref_last_known_location"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string/jumbo v22, "lon"

    const-string/jumbo v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->getCclient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const v21, 0x7f080084

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    new-instance v21, Lcom/pinguo/camera360/push/utils/PushPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/push/utils/PushPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v22, "clientId"

    const-string/jumbo v23, "_"

    invoke-virtual/range {v21 .. v23}, Lcom/pinguo/camera360/push/utils/PushPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v15, "0"

    const-string/jumbo v16, "0"

    const-string/jumbo v19, "0"

    const-string/jumbo v18, "0"

    const-string/jumbo v14, "0"

    const-string/jumbo v13, "0"

    sget-object v21, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    if-eqz v21, :cond_104

    sget-object v21, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v22, "key_picture_c360_sum"

    const-string/jumbo v23, "0"

    invoke-virtual/range {v21 .. v23}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget-object v21, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v22, "key_picture_system_sum"

    const-string/jumbo v23, "0"

    invoke-virtual/range {v21 .. v23}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v21, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v22, "key_set_screen_height"

    const-string/jumbo v23, "0"

    invoke-virtual/range {v21 .. v23}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v21, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v22, "key_set_screen_width"

    const-string/jumbo v23, "0"

    invoke-virtual/range {v21 .. v23}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :try_start_f1
    sget-object v21, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v22, "pref_key_new_user_time"

    const-string/jumbo v23, "0"

    invoke-virtual/range {v21 .. v23}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "UTF-8"

    invoke-static/range {v21 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_103
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f1 .. :try_end_103} :catch_2c4

    move-result-object v13

    :cond_104
    :goto_104
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "?cnet="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&cdeivce="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&cclient="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&clang="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&channel="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&cuid="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&newuser="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&cid="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&count="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&syscount="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&w="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&h="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&newusertime="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&debug="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_29b

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_29b

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&clatitude="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "&clongitude="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mContent:Ljava/lang/String;

    sget-object v21, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mContent:Ljava/lang/String;

    const-string/jumbo v22, " "

    const-string/jumbo v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v21, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "mContent: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v23, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mContent:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2c4
    move-exception v8

    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_104
.end method

.method private static getSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lorg/pinguo/cloudshare/support/HelperConsole;->md5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startUpload(Landroid/content/Context;ZLcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;)Z
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_4

    sput-object p2, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    :cond_4
    const/4 v14, 0x0

    if-eqz p1, :cond_8

    const/4 v14, 0x1

    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->allDataReady(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_19

    sget-object v19, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "something not ready!"

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    :goto_18
    return v19

    :cond_19
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->getContent(Landroid/content/Context;I)V

    const/4 v6, 0x0

    :try_start_1f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_59

    move-result-object v6

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "feedback_common.log"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_64

    sget-object v19, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "feedback_common.log file not exist"

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    goto :goto_18

    :catch_59
    move-exception v7

    sget-object v19, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v19, 0x0

    goto :goto_18

    :cond_64
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "feedback_common.log.gz"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_98

    sget-object v19, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "feedback_common.log.gz file not exist"

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    goto :goto_18

    :cond_98
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v19, "r"

    move-object/from16 v0, v19

    invoke-direct {v8, v10, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v5, v0, [B

    invoke-virtual {v8, v5}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {v10}, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->checkGZipFile(Ljava/io/File;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->KEY_APPKEY:Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ea8d04692735bc1f"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v19, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->KEY_TIME:Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->SECRET:Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->getSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v19, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "sign: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->URI:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "sign"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mContent:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "feedback post uri: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v19, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v19, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct/range {v19 .. v19}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v0, v4, :cond_1be

    sget-object v19, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "feedback post result: ok"

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1a5

    const-string/jumbo v19, "pref_key_new_user_feedback_post"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v19, "pref_key_new_user_feedback_post_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->commit()Z

    :cond_1a5
    invoke-static {}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->getInstance()Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    move-result-object v19

    const-string/jumbo v20, "COMMON"

    invoke-virtual/range {v19 .. v20}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->deleteLogFileByKey(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    sget-object v19, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "file.delete: "

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    goto/16 :goto_18

    :cond_1be
    sget-object v19, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "result: error"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    goto/16 :goto_18
.end method


# virtual methods
.method protected checkForUpload()V
    .registers 13

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "check for update"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mFilesNeedUpload:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    iget-object v7, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mFilesUploaded:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    const-string/jumbo v7, "^feedback_[a-z]*.log.*"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->fileList()[Ljava/lang/String;

    move-result-object v2

    array-length v8, v2

    const/4 v7, 0x0

    :goto_1f
    if-lt v7, v8, :cond_22

    return-void

    :cond_22
    aget-object v3, v2, v7

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_76

    sget-object v9, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, " matches pattern"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-static {v9}, Lcom/pinguo/lib/util/FileUtils;->getLineNumber(Ljava/io/File;)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->isBackupLogFile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_79

    sget-object v9, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "add "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "into need upload list"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mFilesNeedUpload:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_76
    :goto_76
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_79
    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->isBackupLogFile(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d5

    const/16 v9, 0x64

    if-le v4, v9, :cond_d5

    const-string/jumbo v9, "yyyyMMdd-HH:mm:ss"

    invoke-static {v9}, Lcom/pinguo/lib/util/TimeUtils;->getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10, v1}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->getInstance()Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    move-result-object v9

    invoke-virtual {v9, v3, v6}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->copyAndClearLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "need to be uploaded"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "add "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "into need upload list"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->mFilesNeedUpload:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_76

    :cond_d5
    sget-object v9, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, " does not need upload"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76
.end method

.method protected isBackupLogFile(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    const-string/jumbo v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    array-length v2, v0

    if-lez v2, :cond_1b

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string/jumbo v3, "log"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x1

    goto :goto_1b
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
