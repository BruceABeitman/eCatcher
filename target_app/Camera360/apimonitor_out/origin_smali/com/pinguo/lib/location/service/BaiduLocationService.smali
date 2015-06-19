.class public Lcom/pinguo/lib/location/service/BaiduLocationService;
.super Lcom/pinguo/lib/location/service/AbstractLocationService;
.source "BaiduLocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/lib/location/service/BaiduLocationService$PGLocationListener;,
        Lcom/pinguo/lib/location/service/BaiduLocationService$ReverseGeocodingTask;
    }
.end annotation


# static fields
.field private static final ACCESS_KEY:Ljava/lang/String; = "F0a4780a7b6c2f0716ca79eda1dc547f"

.field private static final JSON_HEADER:Ljava/lang/String; = "renderReverse&&renderReverse("

.field public static final KEY_LOCATION_LAT:Ljava/lang/String; = "lat"

.field public static final KEY_LOCATION_LON:Ljava/lang/String; = "lon"

.field public static final LAST_KNOWN_LOCATION:Ljava/lang/String; = "pref_last_known_location"

.field private static final REQUEST_ADDRESS_URL:Ljava/lang/String; = "http://api.map.baidu.com/geocoder/v2/?"

.field public static final TAG:Ljava/lang/String;

.field private static sService:Lcom/pinguo/lib/location/service/BaiduLocationService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mListener:Lcom/baidu/location/BDLocationListener;

.field private mLocationClient:Lcom/baidu/location/LocationClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/lib/location/service/BaiduLocationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/lib/location/service/BaiduLocationService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/lib/location/service/BaiduLocationService;->sService:Lcom/pinguo/lib/location/service/BaiduLocationService;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/pinguo/lib/location/service/AbstractLocationService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mInitialized:Z

    iput-object v1, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    iput-object v1, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mListener:Lcom/baidu/location/BDLocationListener;

    sget-object v0, Lcom/pinguo/lib/location/service/BaiduLocationService;->TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/lib/location/service/BaiduLocationService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/pinguo/lib/location/service/BaiduLocationService;
    .registers 2

    const-class v1, Lcom/pinguo/lib/location/service/BaiduLocationService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pinguo/lib/location/service/BaiduLocationService;->sService:Lcom/pinguo/lib/location/service/BaiduLocationService;

    if-nez v0, :cond_e

    new-instance v0, Lcom/pinguo/lib/location/service/BaiduLocationService;

    invoke-direct {v0}, Lcom/pinguo/lib/location/service/BaiduLocationService;-><init>()V

    sput-object v0, Lcom/pinguo/lib/location/service/BaiduLocationService;->sService:Lcom/pinguo/lib/location/service/BaiduLocationService;

    :cond_e
    sget-object v0, Lcom/pinguo/lib/location/service/BaiduLocationService;->sService:Lcom/pinguo/lib/location/service/BaiduLocationService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/pinguo/lib/location/service/BaiduLocationService;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mInitialized:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mInitialized:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/pinguo/lib/location/service/BaiduLocationService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "BaiduLocationService already initialized"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_50

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    iput-object p1, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/baidu/location/LocationClient;

    iget-object v2, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    new-instance v1, Lcom/pinguo/lib/location/service/BaiduLocationService$PGLocationListener;

    invoke-direct {v1, p0}, Lcom/pinguo/lib/location/service/BaiduLocationService$PGLocationListener;-><init>(Lcom/pinguo/lib/location/service/BaiduLocationService;)V

    iput-object v1, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mListener:Lcom/baidu/location/BDLocationListener;

    iget-object v1, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v2, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    const-string/jumbo v1, "all"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setAddrType(Ljava/lang/String;)V

    const-string/jumbo v1, "gcj02"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->disableCache(Z)V

    iget-object v1, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mInitialized:Z
    :try_end_4f
    .catchall {:try_start_f .. :try_end_4f} :catchall_50

    goto :goto_d

    :catchall_50
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isStarted()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public requestAddress(Lcom/pinguo/lib/location/data/PGLocation;Lcom/pinguo/lib/location/IPGLocationManager$Callback;)V
    .registers 6

    sget-object v0, Lcom/pinguo/lib/location/service/BaiduLocationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestAddress enter, loc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/lib/location/data/PGLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/lib/location/service/BaiduLocationService;->cancelRunningTask()V

    iput-object p2, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mAddressCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;

    new-instance v0, Lcom/pinguo/lib/location/service/BaiduLocationService$ReverseGeocodingTask;

    invoke-direct {v0, p0}, Lcom/pinguo/lib/location/service/BaiduLocationService$ReverseGeocodingTask;-><init>(Lcom/pinguo/lib/location/service/BaiduLocationService;)V

    iput-object v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mGeocodingTask:Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;

    invoke-super {p0, p1, p2}, Lcom/pinguo/lib/location/service/AbstractLocationService;->requestAddress(Lcom/pinguo/lib/location/data/PGLocation;Lcom/pinguo/lib/location/IPGLocationManager$Callback;)V

    return-void
.end method

.method protected setLocationClient(Lcom/baidu/location/LocationClient;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    return-void
.end method

.method public start()V
    .registers 3

    sget-object v0, Lcom/pinguo/lib/location/service/BaiduLocationService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start enter"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    iget-object v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestLocation()I

    sget-object v0, Lcom/pinguo/lib/location/service/BaiduLocationService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "service start and begin to request location"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public stop()V
    .registers 3

    sget-object v0, Lcom/pinguo/lib/location/service/BaiduLocationService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop enter"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/pinguo/lib/location/service/BaiduLocationService;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    :cond_19
    return-void
.end method
