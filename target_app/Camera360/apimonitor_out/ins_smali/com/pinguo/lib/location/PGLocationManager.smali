.class public Lcom/pinguo/lib/location/PGLocationManager;
.super Ljava/lang/Object;
.source "PGLocationManager.java"
.implements Lcom/pinguo/lib/location/IPGLocationManager;
.field public static final TAG:Ljava/lang/String;
.field private static sLocManager:Lcom/pinguo/lib/location/PGLocationManager;
.field private mCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;
.field private mContext:Landroid/content/Context;
.field private mErrorCode:I
.field private mErrorMsg:Ljava/lang/String;
.field private mHandler:Landroid/os/Handler;
.field private mInitialized:Z
.field protected mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/lib/location/PGLocationManager;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/lib/location/PGLocationManager;->TAG:Ljava/lang/String;
const/4 v0, 0x0
sput-object v0, Lcom/pinguo/lib/location/PGLocationManager;->sLocManager:Lcom/pinguo/lib/location/PGLocationManager;
return-void
.end method
.method private constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mInitialized:Z
iput-object v1, p0, Lcom/pinguo/lib/location/PGLocationManager;->mContext:Landroid/content/Context;
iput-object v1, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
iput-object v1, p0, Lcom/pinguo/lib/location/PGLocationManager;->mHandler:Landroid/os/Handler;
iput-object v1, p0, Lcom/pinguo/lib/location/PGLocationManager;->mCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mErrorCode:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mErrorMsg:Ljava/lang/String;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/lib/location/PGLocationManager;I)V
.registers 2
iput p1, p0, Lcom/pinguo/lib/location/PGLocationManager;->mErrorCode:I
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/lib/location/PGLocationManager;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/lib/location/PGLocationManager;->mErrorMsg:Ljava/lang/String;
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/lib/location/PGLocationManager;)Lcom/pinguo/lib/location/IPGLocationManager$Callback;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;
return-object v0
.end method
.method private clearErrInfo()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mErrorCode:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mErrorMsg:Ljava/lang/String;
return-void
.end method
.method public static declared-synchronized getInstance()Lcom/pinguo/lib/location/PGLocationManager;
.registers 2
const-class v1, Lcom/pinguo/lib/location/PGLocationManager;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager;->sLocManager:Lcom/pinguo/lib/location/PGLocationManager;
if-nez v0, :cond_e
new-instance v0, Lcom/pinguo/lib/location/PGLocationManager;
invoke-direct {v0}, Lcom/pinguo/lib/location/PGLocationManager;-><init>()V
sput-object v0, Lcom/pinguo/lib/location/PGLocationManager;->sLocManager:Lcom/pinguo/lib/location/PGLocationManager;
:cond_e
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager;->sLocManager:Lcom/pinguo/lib/location/PGLocationManager;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method private initHandler()V
.registers 2
new-instance v0, Lcom/pinguo/lib/location/PGLocationManager$1;
invoke-direct {v0, p0}, Lcom/pinguo/lib/location/PGLocationManager$1;-><init>(Lcom/pinguo/lib/location/PGLocationManager;)V
iput-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mHandler:Landroid/os/Handler;
return-void
.end method
.method public declared-synchronized destroy()V
.registers 2
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mInitialized:Z
:try_end_7
.catchall {:try_start_2 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getErrorCode()I
.registers 2
iget v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mErrorCode:I
return v0
.end method
.method public getErrorMsg()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mErrorMsg:Ljava/lang/String;
return-object v0
.end method
.method public getHandler()Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mHandler:Landroid/os/Handler;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/pinguo/lib/location/PGLocationManager;->initHandler()V
:cond_7
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method public getLocation()Lcom/pinguo/lib/location/data/PGLocation;
.registers 3
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager;->TAG:Ljava/lang/String;
const-string/jumbo v1, "getLocation enter"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
if-nez v0, :cond_e
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v0}, Lcom/pinguo/lib/location/service/AbstractLocationService;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v0
goto :goto_d
.end method
.method public getLocationService()Lcom/pinguo/lib/location/service/AbstractLocationService;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
return-object v0
.end method
.method public declared-synchronized init(Landroid/content/Context;)V
.registers 4
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mInitialized:Z
if-eqz v0, :cond_f
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager;->TAG:Ljava/lang/String;
const-string/jumbo v1, "PGLocationManager already initialized"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_18
monitor-exit p0
return-void
:cond_f
:try_start_f
iput-object p1, p0, Lcom/pinguo/lib/location/PGLocationManager;->mContext:Landroid/content/Context;
invoke-direct {p0}, Lcom/pinguo/lib/location/PGLocationManager;->initHandler()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mInitialized:Z
:try_end_17
.catchall {:try_start_f .. :try_end_17} :catchall_18
goto :goto_d
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method
.method public requestAddress(Lcom/pinguo/lib/location/data/PGLocation;Lcom/pinguo/lib/location/IPGLocationManager$Callback;)V
.registers 6
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager;->TAG:Ljava/lang/String;
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
iput-object p2, p0, Lcom/pinguo/lib/location/PGLocationManager;->mCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;
invoke-direct {p0}, Lcom/pinguo/lib/location/PGLocationManager;->clearErrInfo()V
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "request address with running service = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v2}, Lcom/pinguo/lib/location/service/AbstractLocationService;->getServiceName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "loc = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/pinguo/lib/location/data/PGLocation;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/lib/location/service/AbstractLocationService;->requestAddress(Lcom/pinguo/lib/location/data/PGLocation;Lcom/pinguo/lib/location/IPGLocationManager$Callback;)V
return-void
.end method
.method public start()V
.registers 3
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager;->TAG:Ljava/lang/String;
const-string/jumbo v1, "start enter"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/pinguo/lib/util/SystemUtils;->isMainLandUser(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_16
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;->BAIDU_LOCATION_SERVICE:Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
invoke-virtual {p0, v0}, Lcom/pinguo/lib/location/PGLocationManager;->switchLocationServiceTo(Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;)V
:goto_15
return-void
:cond_16
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;->GOOGLE_LOCATION_SERVICE:Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
invoke-virtual {p0, v0}, Lcom/pinguo/lib/location/PGLocationManager;->switchLocationServiceTo(Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;)V
goto :goto_15
.end method
.method public stop()V
.registers 3
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager;->TAG:Ljava/lang/String;
const-string/jumbo v1, "stop enter"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v0}, Lcom/pinguo/lib/location/service/AbstractLocationService;->isStarted()Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v0}, Lcom/pinguo/lib/location/service/AbstractLocationService;->stop()V
:cond_19
return-void
.end method
.method public switchLocationServiceTo(Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;)V
.registers 5
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "switchLocationServiceTo enter, service="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;->BAIDU_LOCATION_SERVICE:Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
if-ne p1, v0, :cond_4c
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v0}, Lcom/pinguo/lib/location/service/AbstractLocationService;->getServiceName()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "GoogleLocationService"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v0}, Lcom/pinguo/lib/location/service/AbstractLocationService;->isStarted()Z
move-result v0
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v0}, Lcom/pinguo/lib/location/service/AbstractLocationService;->stop()V
:cond_39
invoke-static {}, Lcom/pinguo/lib/location/service/BaiduLocationService;->getInstance()Lcom/pinguo/lib/location/service/BaiduLocationService;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
iget-object v1, p0, Lcom/pinguo/lib/location/PGLocationManager;->mContext:Landroid/content/Context;
invoke-virtual {v0, v1}, Lcom/pinguo/lib/location/service/AbstractLocationService;->init(Landroid/content/Context;)V
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v0}, Lcom/pinguo/lib/location/service/AbstractLocationService;->start()V
:goto_4b
:cond_4b
return-void
:cond_4c
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;->GOOGLE_LOCATION_SERVICE:Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
if-ne p1, v0, :cond_4b
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
if-eqz v0, :cond_70
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v0}, Lcom/pinguo/lib/location/service/AbstractLocationService;->getServiceName()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "BaiduLocationService"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_70
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v0}, Lcom/pinguo/lib/location/service/AbstractLocationService;->isStarted()Z
move-result v0
if-eqz v0, :cond_70
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v0}, Lcom/pinguo/lib/location/service/AbstractLocationService;->stop()V
:cond_70
invoke-static {}, Lcom/pinguo/lib/location/service/GoogleLocationService;->getInstance()Lcom/pinguo/lib/location/service/GoogleLocationService;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
iget-object v1, p0, Lcom/pinguo/lib/location/PGLocationManager;->mContext:Landroid/content/Context;
invoke-virtual {v0, v1}, Lcom/pinguo/lib/location/service/AbstractLocationService;->init(Landroid/content/Context;)V
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager;->mRunningService:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v0}, Lcom/pinguo/lib/location/service/AbstractLocationService;->start()V
goto :goto_4b
.end method