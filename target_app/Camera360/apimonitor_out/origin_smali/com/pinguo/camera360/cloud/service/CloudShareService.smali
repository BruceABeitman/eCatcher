.class public Lcom/pinguo/camera360/cloud/service/CloudShareService;
.super Landroid/app/Service;
.source "CloudShareService.java"


# static fields
.field private static final ERROR_LOG_FILE_NAME:Ljava/lang/String; = null

.field private static final LOG_FILE_SIZE_LIMIT:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "CloudServiceManager"

.field private static final UPLOAD_NOTIFICATION:I = 0x10003039

.field private static final nNotificationCount:I = 0x10000000


# instance fields
.field private informationTimer:Ljava/util/Timer;

.field private mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mUploadCallback:Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule$PGUploadCallback;

.field private mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;

.field private mWifiWakeLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private uploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/pinguo/cloudshare/support/Config;->FILE_SUPPORT_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".errorLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->ERROR_LOG_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->informationTimer:Ljava/util/Timer;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/pinguo/camera360/cloud/service/CloudShareService$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService$1;-><init>(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mUploadCallback:Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule$PGUploadCallback;

    new-instance v0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;-><init>(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->uploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    return-void
.end method

.method public static CSS_addUploadData(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, ""

    const-string/jumbo v2, "camera_user_id"

    const-string/jumbo v3, ""

    move-object/from16 v0, p9

    invoke-static {v0, v2, v3}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-static/range {p9 .. p9}, Lorg/pinguo/cloudshare/support/HelperConsole;->isLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static/range {p9 .. p9}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v1 .. v10}, Lorg/pinguo/cloudshare/support/FileSupport;->insertNeedUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->myStopService()V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->writeUploadErrorMessageToLogFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Lcom/pinguo/camera360/cloud/controller/UploadController;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->cleanNotificationMessage()V

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->showNotificationMessageEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->ERROR_LOG_FILE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private declared-synchronized cleanNotificationMessage()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mNotificationManager:Landroid/app/NotificationManager;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_c
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->informationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->informationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_15
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x10003039

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private myStopService()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->stopSelf()V

    return-void
.end method

.method private declared-synchronized showNotificationMesageEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    monitor-enter p0

    :try_start_1
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f0201f2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, p1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/pinguo/album/activities/PGAlbumActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, p0, p2, p3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, p4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized showNotificationMessageEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    const v0, 0x10000001

    :try_start_4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->showNotificationMesageEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startRun()V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/pinguo/cloudshare/support/HelperConsole;->isCanUpload(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->myStopService()V

    :goto_d
    return-void

    :cond_e
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->uploadProcess()V

    goto :goto_d
.end method

.method private uploadProcess()V
    .registers 8

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->myStopService()V

    :goto_d
    return-void

    :cond_e
    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    const-string/jumbo v4, "cloudService"

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mWifiWakeLock:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mWifiWakeLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_2d

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mWifiWakeLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_2d
    new-instance v0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;

    invoke-direct {v0}, Lcom/pinguo/camera360/cloud/controller/AnalysisController;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/cloud/controller/ScanController;

    invoke-direct {v1, v0}, Lcom/pinguo/camera360/cloud/controller/ScanController;-><init>(Lcom/pinguo/camera360/cloud/controller/AnalysisController;)V

    new-instance v4, Lcom/pinguo/camera360/cloud/controller/UploadController;

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->uploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    invoke-direct {v4, v5, v0, v1, v6}, Lcom/pinguo/camera360/cloud/controller/UploadController;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/cloud/controller/AnalysisController;Lcom/pinguo/camera360/cloud/controller/ScanController;Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;)V

    iput-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;

    invoke-static {}, Lorg/pinguo/cloudshare/support/Config;->createCloudShareDirectory()V

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->initCurrentStatus(Landroid/content/Context;)V

    invoke-static {}, Lorg/pinguo/cloudshare/support/_FakeX509TrustManager;->allowAllSSL()V

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/pinguo/cloudshare/support/Config;->CLIENT_SIG:Ljava/lang/String;

    invoke-static {}, Lorg/pinguo/cloudshare/support/HelperConsole;->getOSVersion()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/pinguo/cloudshare/support/Config;->OS:Ljava/lang/String;

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;

    invoke-virtual {v4}, Lcom/pinguo/camera360/cloud/controller/UploadController;->startUploadServer()V

    goto :goto_d
.end method

.method private writeUploadErrorMessageToLogFile(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/pinguo/camera360/cloud/service/CloudShareService$3;

    invoke-direct {v0, p0, p1}, Lcom/pinguo/camera360/cloud/service/CloudShareService$3;-><init>(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService$3;->start()V

    return-void
.end method


# virtual methods
.method public CSS_offLogin()V
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/cloud/service/CloudShareService$4;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService$4;-><init>(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService$4;->setStyle()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    const-string/jumbo v0, "CloudServiceManager"

    const-string/jumbo v1, "ondestroy \u505c\u6b62\u4e0a\u4f20\u670d\u52a1\u4e86"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x10003039

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1e
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mWifiWakeLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mWifiWakeLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_27
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9

    const-string/jumbo v2, "CloudServiceManager"

    const-string/jumbo v3, "-------------onStartCommand--------------------"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x190

    :try_start_b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_1e

    :goto_e
    const-string/jumbo v2, "cloud_style"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_7e

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->startRun()V

    :cond_1c
    :goto_1c
    const/4 v2, 0x2

    return v2

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_e

    :pswitch_23
    const-string/jumbo v2, "CloudServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "-------------\u5f00\u542f\u4e91\u4e0a\u4f20-----------------mIsRunning\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->startRun()V

    goto :goto_1c

    :pswitch_51
    const-string/jumbo v2, "CloudServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "-------------\u505c\u6b62\u4e91\u4e0a\u4f20-----------------mIsRunning\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->CSS_offLogin()V

    goto :goto_1c

    :cond_79
    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->myStopService()V

    goto :goto_1c

    nop

    :pswitch_data_7e
    .packed-switch 0x2
        :pswitch_23
        :pswitch_51
    .end packed-switch
.end method
