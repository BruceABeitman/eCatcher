.class public Lcom/pinguo/lib/location/service/GoogleLocationService;
.super Lcom/pinguo/lib/location/service/AbstractLocationService;
.source "GoogleLocationService.java"
.field public static final TAG:Ljava/lang/String;
.field private static sService:Lcom/pinguo/lib/location/service/GoogleLocationService;
.field private mBestProvider:Ljava/lang/String;
.field private mContext:Landroid/content/Context;
.field private mCriteria:Landroid/location/Criteria;
.field private mInitialized:Z
.field private mIsGpsEnabled:Z
.field private mIsNetworkEnabled:Z
.field private mIsStarted:Z
.field private mLocationListener:Landroid/location/LocationListener;
.field private mLocationManager:Landroid/location/LocationManager;
.field private mSupportedProviders:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/lib/location/service/GoogleLocationService;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
const/4 v0, 0x0
sput-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->sService:Lcom/pinguo/lib/location/service/GoogleLocationService;
return-void
.end method
.method private constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Lcom/pinguo/lib/location/service/AbstractLocationService;-><init>()V
iput-boolean v2, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mInitialized:Z
iput-object v1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mContext:Landroid/content/Context;
iput-object v1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationManager:Landroid/location/LocationManager;
iput-object v1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationListener:Landroid/location/LocationListener;
iput-object v1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mCriteria:Landroid/location/Criteria;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mBestProvider:Ljava/lang/String;
iput-boolean v2, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsStarted:Z
iput-boolean v2, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsGpsEnabled:Z
iput-boolean v2, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsNetworkEnabled:Z
iput-object v1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mSupportedProviders:Ljava/util/List;
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mName:Ljava/lang/String;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/lib/location/service/GoogleLocationService;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mContext:Landroid/content/Context;
return-object v0
.end method
.method public static declared-synchronized getInstance()Lcom/pinguo/lib/location/service/GoogleLocationService;
.registers 2
const-class v1, Lcom/pinguo/lib/location/service/GoogleLocationService;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->sService:Lcom/pinguo/lib/location/service/GoogleLocationService;
if-nez v0, :cond_e
new-instance v0, Lcom/pinguo/lib/location/service/GoogleLocationService;
invoke-direct {v0}, Lcom/pinguo/lib/location/service/GoogleLocationService;-><init>()V
sput-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->sService:Lcom/pinguo/lib/location/service/GoogleLocationService;
:cond_e
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->sService:Lcom/pinguo/lib/location/service/GoogleLocationService;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public declared-synchronized destroy()V
.registers 2
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/pinguo/lib/location/service/GoogleLocationService;->clear()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mInitialized:Z
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getCurProvider()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mBestProvider:Ljava/lang/String;
return-object v0
.end method
.method public getSupportedProviders()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mSupportedProviders:Ljava/util/List;
return-object v0
.end method
.method public declared-synchronized init(Landroid/content/Context;)V
.registers 4
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mInitialized:Z
if-eqz v0, :cond_f
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
const-string/jumbo v1, "GoogleLocationService already initialized"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_54
monitor-exit p0
return-void
:cond_f
:try_start_f
iput-object p1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mContext:Landroid/content/Context;
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mContext:Landroid/content/Context;
const-string/jumbo v1, "location"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
iput-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationManager:Landroid/location/LocationManager;
new-instance v0, Lcom/pinguo/lib/location/service/GoogleLocationService$PGLocationListener;
invoke-direct {v0, p0}, Lcom/pinguo/lib/location/service/GoogleLocationService$PGLocationListener;-><init>(Lcom/pinguo/lib/location/service/GoogleLocationService;)V
iput-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationListener:Landroid/location/LocationListener;
new-instance v0, Landroid/location/Criteria;
invoke-direct {v0}, Landroid/location/Criteria;-><init>()V
iput-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mCriteria:Landroid/location/Criteria;
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mCriteria:Landroid/location/Criteria;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mCriteria:Landroid/location/Criteria;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mCriteria:Landroid/location/Criteria;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mCriteria:Landroid/location/Criteria;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mCriteria:Landroid/location/Criteria;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mCriteria:Landroid/location/Criteria;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mInitialized:Z
:try_end_53
.catchall {:try_start_f .. :try_end_53} :catchall_54
goto :goto_d
:catchall_54
move-exception v0
monitor-exit p0
throw v0
.end method
.method public isGpsEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsGpsEnabled:Z
return v0
.end method
.method public isNetworkEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsNetworkEnabled:Z
return v0
.end method
.method public isStarted()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsStarted:Z
return v0
.end method
.method public requestAddress(Lcom/pinguo/lib/location/data/PGLocation;Lcom/pinguo/lib/location/IPGLocationManager$Callback;)V
.registers 6
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
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
invoke-virtual {p0}, Lcom/pinguo/lib/location/service/GoogleLocationService;->cancelRunningTask()V
iput-object p2, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mAddressCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;
new-instance v0, Lcom/pinguo/lib/location/service/GoogleLocationService$ReverseGeocodingTask;
invoke-direct {v0, p0}, Lcom/pinguo/lib/location/service/GoogleLocationService$ReverseGeocodingTask;-><init>(Lcom/pinguo/lib/location/service/GoogleLocationService;)V
iput-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mGeocodingTask:Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;
invoke-super {p0, p1, p2}, Lcom/pinguo/lib/location/service/AbstractLocationService;->requestAddress(Lcom/pinguo/lib/location/data/PGLocation;Lcom/pinguo/lib/location/IPGLocationManager$Callback;)V
return-void
.end method
.method public start()V
.registers 9
const/4 v7, 0x1
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
const-string/jumbo v1, "start enter"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationManager:Landroid/location/LocationManager;
if-nez v0, :cond_e
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationManager:Landroid/location/LocationManager;
invoke-static {v0}, Ldroidbox/android/location/LocationManager;->getAllProviders(Landroid/location/LocationManager;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mSupportedProviders:Ljava/util/List;
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationManager:Landroid/location/LocationManager;
const-string/jumbo v1, "gps"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsGpsEnabled:Z
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationManager:Landroid/location/LocationManager;
const-string/jumbo v1, "network"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsNetworkEnabled:Z
iget-boolean v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsGpsEnabled:Z
if-nez v0, :cond_34
iget-boolean v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsNetworkEnabled:Z
if-eqz v0, :cond_9c
:cond_34
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationManager:Landroid/location/LocationManager;
iget-object v1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mCriteria:Landroid/location/Criteria;
invoke-static {v0, v1, v7}, Ldroidbox/android/location/LocationManager;->getBestProvider(Landroid/location/LocationManager;Landroid/location/Criteria;Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mBestProvider:Ljava/lang/String;
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "best provider="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mBestProvider:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mSupportedProviders:Ljava/util/List;
iget-object v1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mBestProvider:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_75
:try_start_5f
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
const-string/jumbo v1, "requestLocationUpdates begin"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationManager:Landroid/location/LocationManager;
iget-object v1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mBestProvider:Ljava/lang/String;
const-wide/32 v2, 0xea60
const/high16 v4, 0x40a0
iget-object v5, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationListener:Landroid/location/LocationListener;
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
:try_end_75
.catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_75} :catch_78
:goto_75
:cond_75
iput-boolean v7, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsStarted:Z
goto :goto_d
:catch_78
move-exception v6
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "requestLocationUpdates failed with exception message: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mBestProvider:Ljava/lang/String;
iget-boolean v1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsGpsEnabled:Z
iget-boolean v2, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsNetworkEnabled:Z
invoke-virtual {p0, v0, v1, v2}, Lcom/pinguo/lib/location/service/GoogleLocationService;->tryAnotherProvider(Ljava/lang/String;ZZ)V
goto :goto_75
:cond_9c
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
const-string/jumbo v1, "both gps and network not available, can\'t request location"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_75
.end method
.method public stop()V
.registers 3
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
const-string/jumbo v1, "stop enter"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationManager:Landroid/location/LocationManager;
iget-object v1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationListener:Landroid/location/LocationListener;
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->removeUpdates(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mIsStarted:Z
return-void
.end method
.method protected tryAnotherProvider(Ljava/lang/String;ZZ)V
.registers 12
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "tryAnotherProvider enter, curProvider="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", gpsEnabled="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", networkEnabled"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_start_2b
const-string/jumbo v0, "gps"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_53
if-eqz p3, :cond_53
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
const-string/jumbo v1, "try another provider: GPS"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationManager:Landroid/location/LocationManager;
const-string/jumbo v1, "network"
const-wide/32 v2, 0xea60
const/high16 v4, 0x40a0
iget-object v5, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationListener:Landroid/location/LocationListener;
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
const-string/jumbo v0, "network"
iput-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mBestProvider:Ljava/lang/String;
:goto_52
:cond_52
return-void
:cond_53
const-string/jumbo v0, "network"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_52
if-eqz p2, :cond_52
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
const-string/jumbo v1, "try another provider: NETWORK"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationManager:Landroid/location/LocationManager;
const-string/jumbo v1, "gps"
const-wide/32 v2, 0xea60
const/high16 v4, 0x40a0
iget-object v5, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mLocationListener:Landroid/location/LocationListener;
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
const-string/jumbo v0, "gps"
iput-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService;->mBestProvider:Ljava/lang/String;
:try_end_7a
.catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_7a} :catch_7b
goto :goto_52
:catch_7b
move-exception v6
sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
invoke-static {v0, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v7, Landroid/os/Message;
invoke-direct {v7}, Landroid/os/Message;-><init>()V
const/4 v0, 0x1
iput v0, v7, Landroid/os/Message;->what:I
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/lib/location/PGLocationManager;->getHandler()Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_52
.end method