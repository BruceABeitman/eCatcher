.class public Lorg/pinguo/cloudshare/support/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static ACTIVE_SERVER_ADDRESS:Ljava/lang/String; = null

.field public static final ACTIVE_SERVER_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final APP_KEY:Ljava/lang/String; = "5dab06e7a53740ea9b78"

.field public static final APP_KEY_SECRET:Ljava/lang/String; = "0faad539032ef265da08056228d05641"

.field public static final CAMERA360_SANDBOX_PATH:Ljava/lang/String; = null

.field public static CLIENT_SIG:Ljava/lang/String; = null

.field public static final EFFEXT_PICTURE_FLAG:Ljava/lang/String; = "100"

.field public static final FILE_SUPPORT_PATH:Ljava/lang/String; = null

.field public static final MAIN_SERVER_ADDRESS:Ljava/lang/String; = "https://cloudapi.camera360.com"

.field public static final MAX_TRY_SEND_COUNT:I = 0x3

.field public static final MD5_KEY:Ljava/lang/String; = "PINGUOSOFT"

.field public static final ORG_PICTURE_FLAG:Ljava/lang/String; = "100"

.field public static OS:Ljava/lang/String; = null

.field public static final ROOT_PATH:Ljava/lang/String; = null

.field public static final ROOT_SERVER_ADDRESS:Ljava/lang/String; = "https://cloudapi.camera360.com"

.field public static SET_AUTO_UPLOAD:Z = false

.field public static SET_BATTY_INFORMATION:Z = false

.field public static SET_MOBILE_INFORMATION:Z = false

.field public static SET_WIFI_INFORMATION:Z = false

.field public static final SLEEP_TIME:I = 0x2710

.field public static final SOUND_PICTURE_FLAG:Ljava/lang/String; = "104"

.field public static final SPACE_SIZE:I = 0xc00000

.field public static final SUB_PATH:Ljava/lang/String; = "/Camera360/CloudShare"

.field public static final SUCCESS:Ljava/lang/String; = "200"

.field public static final TEMP_PICTURE_PATH:Ljava/lang/String; = null

.field public static final THREAD_BUFFER_SIZE:I = 0x1000

.field public static final TIME_OUT_COUNT_MAX:I = 0x3

.field public static final UPLOAD_THREAD_COUNT:I = 0x1

.field public static final USER_ID_INVALID:Ljava/lang/String; = ""

.field public static final ZOOM_IN_QUALITY:I = 0x5a

.field public static mActivity:Landroid/app/Activity;

.field public static mUploadActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/pinguo/cloudshare/support/Config;->ROOT_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/pinguo/cloudshare/support/Config;->ROOT_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/Camera360/CloudShare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/pinguo/cloudshare/support/Config;->FILE_SUPPORT_PATH:Ljava/lang/String;

    sput-object v3, Lorg/pinguo/cloudshare/support/Config;->mActivity:Landroid/app/Activity;

    sput-object v3, Lorg/pinguo/cloudshare/support/Config;->mUploadActivity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/pinguo/cloudshare/support/Config;->ROOT_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/Camera360/CloudShare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/.cloud_share_tmp_dir"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/pinguo/cloudshare/support/Config;->TEMP_PICTURE_PATH:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lorg/pinguo/cloudshare/support/Config;->CLIENT_SIG:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lorg/pinguo/cloudshare/support/Config;->OS:Ljava/lang/String;

    sput-boolean v2, Lorg/pinguo/cloudshare/support/Config;->SET_AUTO_UPLOAD:Z

    sput-boolean v2, Lorg/pinguo/cloudshare/support/Config;->SET_WIFI_INFORMATION:Z

    sput-boolean v2, Lorg/pinguo/cloudshare/support/Config;->SET_MOBILE_INFORMATION:Z

    sput-boolean v2, Lorg/pinguo/cloudshare/support/Config;->SET_BATTY_INFORMATION:Z

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/pinguo/cloudshare/support/Config;->ROOT_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/Camera360/TempData/.sandbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/pinguo/cloudshare/support/Config;->CAMERA360_SANDBOX_PATH:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/pinguo/cloudshare/support/Config;->ACTIVE_SERVER_LIST:Ljava/util/List;

    const-string/jumbo v0, "https://cloudapi.camera360.com"

    sput-object v0, Lorg/pinguo/cloudshare/support/Config;->ACTIVE_SERVER_ADDRESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCloudShareDirectory()V
    .registers 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/pinguo/cloudshare/support/Config;->ROOT_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/Camera360/CloudShare"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_30

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Create dir failed!"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_46

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Delete file failed!"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_30

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Create dir failed!"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method
