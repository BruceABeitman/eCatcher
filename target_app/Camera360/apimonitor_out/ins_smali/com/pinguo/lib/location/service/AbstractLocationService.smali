.class public abstract Lcom/pinguo/lib/location/service/AbstractLocationService;
.super Ljava/lang/Object;
.source "AbstractLocationService.java"
.field public static final LOC_FAIL:I = 0x1
.field public static final LOC_OK:I = 0x0
.field public static final MIN_LOCATION_SCAN_SPAN:I = 0xea60
.field public static final MIN_LOCATION_UPDATE_DISTANCE:I = 0x5
.field public static final REQUEST_ADDRESS_FAIL:I = 0x3
.field public static final REQUEST_ADDRESS_OUT_OF_TIME:I = 0x2
.field public static final REQUEST_ADDRESS_TIME_OUT_MILLISECOND:I = 0x7d0
.field private static final TAG:Ljava/lang/String;
.field protected mAddressCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;
.field protected mGeocodingTask:Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;
.field protected mLocation:Lcom/pinguo/lib/location/data/PGLocation;
.field protected mName:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/lib/location/service/AbstractLocationService;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mName:Ljava/lang/String;
iput-object v1, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mLocation:Lcom/pinguo/lib/location/data/PGLocation;
iput-object v1, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mAddressCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;
iput-object v1, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mGeocodingTask:Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;
return-void
.end method
.method static synthetic access$0()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/lib/location/service/AbstractLocationService;->TAG:Ljava/lang/String;
return-object v0
.end method
.method protected cancelRunningTask()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mAddressCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mGeocodingTask:Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mGeocodingTask:Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;->cancel(Z)Z
iput-object v2, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mGeocodingTask:Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;
:cond_11
iput-object v2, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mAddressCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;
:cond_13
return-void
.end method
.method public clear()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mLocation:Lcom/pinguo/lib/location/data/PGLocation;
return-void
.end method
.method public abstract destroy()V
.end method
.method protected doCallback(ILjava/lang/String;Lcom/pinguo/lib/location/data/PGLocation;)V
.registers 4
if-nez p1, :cond_6
if-eqz p3, :cond_6
iput-object p3, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mLocation:Lcom/pinguo/lib/location/data/PGLocation;
:cond_6
return-void
.end method
.method public getLocation()Lcom/pinguo/lib/location/data/PGLocation;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mLocation:Lcom/pinguo/lib/location/data/PGLocation;
return-object v0
.end method
.method public getServiceName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mName:Ljava/lang/String;
return-object v0
.end method
.method public abstract init(Landroid/content/Context;)V
.end method
.method public abstract isStarted()Z
.end method
.method public requestAddress(Lcom/pinguo/lib/location/data/PGLocation;Lcom/pinguo/lib/location/IPGLocationManager$Callback;)V
.registers 7
invoke-virtual {p1}, Lcom/pinguo/lib/location/data/PGLocation;->getAddress()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1b
invoke-virtual {p1}, Lcom/pinguo/lib/location/data/PGLocation;->getAddress()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_1b
invoke-interface {p2}, Lcom/pinguo/lib/location/IPGLocationManager$Callback;->preLocExecute()V
invoke-virtual {p1}, Lcom/pinguo/lib/location/data/PGLocation;->getAddress()Ljava/lang/String;
move-result-object v1
invoke-interface {p2, v1}, Lcom/pinguo/lib/location/IPGLocationManager$Callback;->postLocExecute(Ljava/lang/Object;)V
:goto_1a
return-void
:cond_1b
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/pinguo/lib/location/service/AbstractLocationService$1;
invoke-direct {v1, p0}, Lcom/pinguo/lib/location/service/AbstractLocationService$1;-><init>(Lcom/pinguo/lib/location/service/AbstractLocationService;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
sget-object v1, Lcom/pinguo/lib/location/service/AbstractLocationService;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "execute geocoding task to request address according to loc="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/lib/location/data/PGLocation;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mGeocodingTask:Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;
const/4 v2, 0x1
new-array v2, v2, [Landroid/location/Location;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-virtual {v1, v2}, Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
goto :goto_1a
.end method
.method public abstract start()V
.end method
.method public abstract stop()V
.end method