.class public Lcom/pinguo/camera360/PgCameraApplication;
.super Landroid/app/Application;
.source "PgCameraApplication.java"

# interfaces
.implements Lcom/pinguo/album/PGAlbumApp;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sAppInstance:Lcom/pinguo/camera360/PgCameraApplication;


# instance fields
.field private appCrashHandler:Lcom/pinguo/camera360/AppCrashHandler;

.field private mAblumDataManager:Lcom/pinguo/album/data/AlbumDataManager;

.field private mAlbumThreadPool:Lcom/pinguo/album/AlbumThreadPool;

.field private mBlobCacheService:Lcom/pinguo/album/data/cache/BlobCacheService;

.field private mDataManager:Lcom/pinguo/camera360/gallery/data/DataManager;

.field private mImageCacheService:Lcom/pinguo/camera360/gallery/data/ImageCacheService;

.field private mLock:Ljava/lang/Object;

.field private mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;

.field private orientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/PgCameraApplication;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/camera360/PgCameraApplication;->sAppInstance:Lcom/pinguo/camera360/PgCameraApplication;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->orientation:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 2

    sget-object v0, Lcom/pinguo/camera360/PgCameraApplication;->sAppInstance:Lcom/pinguo/camera360/PgCameraApplication;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "App getInstance not create or be terminated"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    sget-object v0, Lcom/pinguo/camera360/PgCameraApplication;->sAppInstance:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v0}, Lcom/pinguo/camera360/PgCameraApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInstance()Lcom/pinguo/camera360/PgCameraApplication;
    .registers 2

    sget-object v0, Lcom/pinguo/camera360/PgCameraApplication;->sAppInstance:Lcom/pinguo/camera360/PgCameraApplication;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "App getInstance not create or be terminated"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    sget-object v0, Lcom/pinguo/camera360/PgCameraApplication;->sAppInstance:Lcom/pinguo/camera360/PgCameraApplication;

    return-object v0
.end method

.method public static getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static startCameraActivity(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAlbumDataManager()Lcom/pinguo/album/data/AlbumDataManager;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mAblumDataManager:Lcom/pinguo/album/data/AlbumDataManager;

    if-nez v0, :cond_11

    new-instance v0, Lcom/pinguo/album/data/AlbumDataManager;

    invoke-direct {v0, p0}, Lcom/pinguo/album/data/AlbumDataManager;-><init>(Lcom/pinguo/album/PGAlbumApp;)V

    iput-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mAblumDataManager:Lcom/pinguo/album/data/AlbumDataManager;

    iget-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mAblumDataManager:Lcom/pinguo/album/data/AlbumDataManager;

    invoke-virtual {v0}, Lcom/pinguo/album/data/AlbumDataManager;->initializeSourceMap()V

    :cond_11
    iget-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mAblumDataManager:Lcom/pinguo/album/data/AlbumDataManager;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlbumThreadPool()Lcom/pinguo/album/AlbumThreadPool;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mAlbumThreadPool:Lcom/pinguo/album/AlbumThreadPool;

    if-nez v0, :cond_c

    new-instance v0, Lcom/pinguo/album/AlbumThreadPool;

    invoke-direct {v0}, Lcom/pinguo/album/AlbumThreadPool;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mAlbumThreadPool:Lcom/pinguo/album/AlbumThreadPool;

    :cond_c
    iget-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mAlbumThreadPool:Lcom/pinguo/album/AlbumThreadPool;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAndroidContext()Landroid/content/Context;
    .registers 1

    return-object p0
.end method

.method public getBlobImageCacheService()Lcom/pinguo/album/data/cache/BlobCacheService;
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/PgCameraApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mBlobCacheService:Lcom/pinguo/album/data/cache/BlobCacheService;

    if-nez v0, :cond_e

    new-instance v0, Lcom/pinguo/album/data/cache/BlobCacheService;

    invoke-direct {v0, p0}, Lcom/pinguo/album/data/cache/BlobCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mBlobCacheService:Lcom/pinguo/album/data/cache/BlobCacheService;

    :cond_e
    iget-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mBlobCacheService:Lcom/pinguo/album/data/cache/BlobCacheService;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public declared-synchronized getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mDataManager:Lcom/pinguo/camera360/gallery/data/DataManager;

    if-nez v0, :cond_c

    new-instance v0, Lcom/pinguo/camera360/gallery/data/DataManager;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/data/DataManager;-><init>(Lcom/pinguo/camera360/PgCameraApplication;)V

    iput-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mDataManager:Lcom/pinguo/camera360/gallery/data/DataManager;

    :cond_c
    iget-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mDataManager:Lcom/pinguo/camera360/gallery/data/DataManager;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageCacheService()Lcom/pinguo/camera360/gallery/data/ImageCacheService;
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/PgCameraApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mImageCacheService:Lcom/pinguo/camera360/gallery/data/ImageCacheService;

    if-nez v0, :cond_e

    new-instance v0, Lcom/pinguo/camera360/gallery/data/ImageCacheService;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/data/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mImageCacheService:Lcom/pinguo/camera360/gallery/data/ImageCacheService;

    :cond_e
    iget-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mImageCacheService:Lcom/pinguo/camera360/gallery/data/ImageCacheService;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getOrientation()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->orientation:I

    return v0
.end method

.method public declared-synchronized getThreadPool()Lcom/pinguo/camera360/gallery/util/ThreadPool;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;

    if-nez v0, :cond_c

    new-instance v0, Lcom/pinguo/camera360/gallery/util/ThreadPool;

    invoke-direct {v0}, Lcom/pinguo/camera360/gallery/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;

    :cond_c
    iget-object v0, p0, Lcom/pinguo/camera360/PgCameraApplication;->mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initImageLoader(Landroid/content/Context;)V
    .registers 5

    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeDebugLogs()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/imagedownloader/C360BaseImageDownloader;

    invoke-direct {v2, p1}, Lcom/pinguo/camera360/imagedownloader/C360BaseImageDownloader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    return-void
.end method

.method public onCreate()V
    .registers 5

    sget-object v2, Lcom/pinguo/camera360/PgCameraApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v2, Lcom/pinguo/camera360/AppCrashHandler;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/AppCrashHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/pinguo/camera360/PgCameraApplication;->appCrashHandler:Lcom/pinguo/camera360/AppCrashHandler;

    iget-object v2, p0, Lcom/pinguo/camera360/PgCameraApplication;->appCrashHandler:Lcom/pinguo/camera360/AppCrashHandler;

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-object p0, Lcom/pinguo/camera360/PgCameraApplication;->sAppInstance:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->initInApp()V

    invoke-static {p0}, Lcom/pinguo/lib/util/SystemUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    const-string/jumbo v2, "vStudio.Android.Camera360"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    const/4 v0, 0x0

    :goto_2c
    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/pinguo/camera360/PgCameraApplication;->onCreateByMainProcess()V

    :cond_31
    return-void

    :cond_32
    const/4 v0, 0x1

    goto :goto_2c
.end method

.method public onCreateByMainProcess()V
    .registers 3

    invoke-virtual {p0, p0}, Lcom/pinguo/camera360/PgCameraApplication;->initImageLoader(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->setContext(Landroid/content/Context;)V

    :try_start_a
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->updateOnlineConfig(Landroid/content/Context;)V

    new-instance v0, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHurlStack;

    invoke-direct {v0}, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/Camera360Lib/network/HttpRequestQueue;->setInstance(Lcom/android/volley/RequestQueue;)V

    invoke-static {p0}, Lcom/pinguo/camera360/adv/AdvertisementModel;->createInstance(Landroid/content/Context;)Lcom/pinguo/camera360/adv/AdvertisementModel;

    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_26} :catch_2d

    :goto_26
    invoke-static {p0}, Lcom/pinguo/album/utils/PGAlbumUtils;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/sony/model/ServerDeviceInstance;->clear()V

    return-void

    :catch_2d
    move-exception v1

    goto :goto_26
.end method

.method public setOrientation(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/PgCameraApplication;->orientation:I

    return-void
.end method
