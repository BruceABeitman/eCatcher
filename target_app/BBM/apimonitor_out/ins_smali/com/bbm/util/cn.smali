.class public abstract Lcom/bbm/util/cn;
.super Ljava/lang/Object;
.source "LocationServicesUtil.java"
.implements Landroid/location/LocationListener;
.field private a:Landroid/os/Handler;
.field private b:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/util/cn;->b:Z
return-void
.end method
.method static synthetic a(Lcom/bbm/util/cn;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/util/cn;->b:Z
return v0
.end method
.method static synthetic b(Lcom/bbm/util/cn;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/util/cn;->b:Z
return v0
.end method
.method public abstract a()V
.end method
.method public final a(Landroid/content/Context;I)V
.registers 8
const/4 v3, 0x0
const-string v0, "location"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
:try_start_9
const-string v1, "gps"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_17
const-string v1, "gps"
const/4 v2, 0x0
invoke-static {v0, v1, p0, v2}, Ldroidbox/android/location/LocationManager;->requestSingleUpdate(Landroid/location/LocationManager;Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
:cond_17
const-string v1, "network"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_25
const-string v1, "network"
const/4 v2, 0x0
invoke-static {v0, v1, p0, v2}, Ldroidbox/android/location/LocationManager;->requestSingleUpdate(Landroid/location/LocationManager;Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
:cond_25
:try_end_25
.catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_25} :catch_3a
new-instance v1, Landroid/os/Handler;
invoke-direct {v1}, Landroid/os/Handler;-><init>()V
iput-object v1, p0, Lcom/bbm/util/cn;->a:Landroid/os/Handler;
iput-boolean v3, p0, Lcom/bbm/util/cn;->b:Z
iget-object v1, p0, Lcom/bbm/util/cn;->a:Landroid/os/Handler;
new-instance v2, Lcom/bbm/util/co;
invoke-direct {v2, p0, v0}, Lcom/bbm/util/co;-><init>(Lcom/bbm/util/cn;Landroid/location/LocationManager;)V
int-to-long v3, p2
invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_39
return-void
:catch_3a
move-exception v0
const-string v1, "Can\'t request Single Update from Location Manager"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_39
.end method
.method public abstract a(Landroid/location/Location;)V
.end method
.method public onLocationChanged(Landroid/location/Location;)V
.registers 3
iget-boolean v0, p0, Lcom/bbm/util/cn;->b:Z
if-nez v0, :cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/util/cn;->b:Z
invoke-virtual {p0, p1}, Lcom/bbm/util/cn;->a(Landroid/location/Location;)V
:cond_a
return-void
.end method
.method public onProviderDisabled(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public onProviderEnabled(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.registers 4
return-void
.end method