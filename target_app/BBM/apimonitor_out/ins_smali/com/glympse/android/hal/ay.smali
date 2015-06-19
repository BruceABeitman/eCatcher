.class  Lcom/glympse/android/hal/ay;
.super Ljava/lang/Object;
.source "LocationProviderFuse.java"
.implements Lcom/glympse/android/core/GLocationProvider;
.implements Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Lcom/glympse/android/hal/gms/location/LocationListener;
.field private bZ:Lcom/glympse/android/core/GLocationListener;
.field private cb:I
.field private cx:Lcom/glympse/android/hal/gms/location/LocationClient;
.field private cy:Lcom/glympse/android/hal/gms/location/LocationRequest;
.field private e:Landroid/content/Context;
.field private v:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/hal/ay;->e:Landroid/content/Context;
const/4 v0, 0x1
iput v0, p0, Lcom/glympse/android/hal/ay;->cb:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/hal/ay;->v:Z
const/4 v0, 0x3
invoke-static {v0}, Lcom/glympse/android/hal/at;->b(I)Lcom/glympse/android/core/GLocationProfile;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/glympse/android/hal/ay;->applyProfile(Lcom/glympse/android/core/GLocationProfile;)V
return-void
.end method
.method private K()Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x13
if-lt v2, v3, :cond_1a
:try_start_8
iget-object v2, p0, Lcom/glympse/android/hal/ay;->e:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
const-string v3, "location_mode"
invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
:try_end_13
.catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_13} :catch_19
move-result v2
if-nez v2, :cond_17
:cond_16
:goto_16
return v0
:cond_17
move v0, v1
goto :goto_16
:catch_19
move-exception v2
:cond_1a
iget-object v2, p0, Lcom/glympse/android/hal/ay;->e:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
const-string v3, "location_providers_allowed"
invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "gps"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_16
move v0, v1
goto :goto_16
.end method
.method public static isSupported(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x0
:try_start_1
invoke-static {p0}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->isSupported(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_8
:goto_7
:cond_7
return v0
:cond_8
const v1, 0x3d0900
invoke-static {p0, v1}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->isVersionSupported(Landroid/content/Context;I)Z
move-result v1
if-eqz v1, :cond_7
invoke-static {p0}, Lcom/glympse/android/hal/gms/location/LocationClient;->isLocationSupported(Landroid/content/Context;)Z
:try_end_14
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_19
move-result v1
if-eqz v1, :cond_7
const/4 v0, 0x1
goto :goto_7
:catch_19
move-exception v1
goto :goto_7
.end method
.method protected J()V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/hal/ay;->v:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/glympse/android/hal/ay;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;
iget-object v1, p0, Lcom/glympse/android/hal/ay;->cy:Lcom/glympse/android/hal/gms/location/LocationRequest;
invoke-virtual {v0, v1, p0}, Lcom/glympse/android/hal/gms/location/LocationClient;->requestLocationUpdates(Lcom/glympse/android/hal/gms/location/LocationRequest;Lcom/glympse/android/hal/gms/location/LocationListener;)V
:cond_b
return-void
.end method
.method protected a(Lcom/glympse/android/core/GLocationProfile;)Lcom/glympse/android/hal/gms/location/LocationRequest;
.registers 5
invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationRequest;->create()Lcom/glympse/android/hal/gms/location/LocationRequest;
move-result-object v0
invoke-interface {p1}, Lcom/glympse/android/core/GLocationProfile;->getPriority()I
move-result v1
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/gms/location/LocationRequest;->setPriority(I)V
invoke-interface {p1}, Lcom/glympse/android/core/GLocationProfile;->getFrequency()I
move-result v1
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Lcom/glympse/android/hal/gms/location/LocationRequest;->setInterval(J)V
return-object v0
.end method
.method public applyProfile(Lcom/glympse/android/core/GLocationProfile;)V
.registers 3
if-nez p1, :cond_7
const/4 v0, 0x3
invoke-static {v0}, Lcom/glympse/android/hal/at;->b(I)Lcom/glympse/android/core/GLocationProfile;
move-result-object p1
:cond_7
invoke-virtual {p0, p1}, Lcom/glympse/android/hal/ay;->a(Lcom/glympse/android/core/GLocationProfile;)Lcom/glympse/android/hal/gms/location/LocationRequest;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/hal/ay;->cy:Lcom/glympse/android/hal/gms/location/LocationRequest;
invoke-virtual {p0}, Lcom/glympse/android/hal/ay;->J()V
return-void
.end method
.method protected c(I)V
.registers 4
iget v0, p0, Lcom/glympse/android/hal/ay;->cb:I
if-eq p1, v0, :cond_11
iput p1, p0, Lcom/glympse/android/hal/ay;->cb:I
iget-object v0, p0, Lcom/glympse/android/hal/ay;->bZ:Lcom/glympse/android/core/GLocationListener;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/hal/ay;->bZ:Lcom/glympse/android/core/GLocationListener;
iget v1, p0, Lcom/glympse/android/hal/ay;->cb:I
invoke-interface {v0, v1}, Lcom/glympse/android/core/GLocationListener;->stateChanged(I)V
:cond_11
return-void
.end method
.method public getLastKnownLocation()Lcom/glympse/android/core/GLocation;
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/glympse/android/hal/ay;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;
if-eqz v1, :cond_9
iget-boolean v1, p0, Lcom/glympse/android/hal/ay;->v:Z
if-nez v1, :cond_a
:cond_9
:goto_9
return-object v0
:cond_a
iget-object v1, p0, Lcom/glympse/android/hal/ay;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;
invoke-virtual {v1}, Lcom/glympse/android/hal/gms/location/LocationClient;->getLastLocation()Landroid/location/Location;
move-result-object v1
if-eqz v1, :cond_9
invoke-static {v1}, Lcom/glympse/android/hal/at;->a(Landroid/location/Location;)Lcom/glympse/android/core/GLocation;
move-result-object v0
goto :goto_9
.end method
.method public isStarted()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/ay;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public onConnected(Landroid/os/Bundle;)V
.registers 4
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/hal/ay;->v:Z
iget-object v0, p0, Lcom/glympse/android/hal/ay;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;
iget-object v1, p0, Lcom/glympse/android/hal/ay;->cy:Lcom/glympse/android/hal/gms/location/LocationRequest;
invoke-virtual {v0, v1, p0}, Lcom/glympse/android/hal/gms/location/LocationClient;->requestLocationUpdates(Lcom/glympse/android/hal/gms/location/LocationRequest;Lcom/glympse/android/hal/gms/location/LocationListener;)V
invoke-direct {p0}, Lcom/glympse/android/hal/ay;->K()Z
move-result v0
if-nez v0, :cond_14
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/glympse/android/hal/ay;->c(I)V
:cond_14
return-void
.end method
.method public onConnectionFailed(Lcom/glympse/android/hal/gms/common/ConnectionResult;)V
.registers 2
return-void
.end method
.method public onDisconnected()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/hal/ay;->v:Z
return-void
.end method
.method public onLocationChanged(Landroid/location/Location;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/hal/ay;->bZ:Lcom/glympse/android/core/GLocationListener;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-static {p1}, Lcom/glympse/android/hal/at;->a(Landroid/location/Location;)Lcom/glympse/android/core/GLocation;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {p0, v1}, Lcom/glympse/android/hal/ay;->c(I)V
iget-object v1, p0, Lcom/glympse/android/hal/ay;->bZ:Lcom/glympse/android/core/GLocationListener;
invoke-interface {v1, v0}, Lcom/glympse/android/core/GLocationListener;->locationChanged(Lcom/glympse/android/core/GLocation;)V
goto :goto_4
.end method
.method public setLocationListener(Lcom/glympse/android/core/GLocationListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/hal/ay;->bZ:Lcom/glympse/android/core/GLocationListener;
return-void
.end method
.method public start()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/hal/ay;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;
if-nez v0, :cond_12
new-instance v0, Lcom/glympse/android/hal/gms/location/LocationClient;
iget-object v1, p0, Lcom/glympse/android/hal/ay;->e:Landroid/content/Context;
invoke-direct {v0, v1, p0, p0}, Lcom/glympse/android/hal/gms/location/LocationClient;-><init>(Landroid/content/Context;Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
iput-object v0, p0, Lcom/glympse/android/hal/ay;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;
iget-object v0, p0, Lcom/glympse/android/hal/ay;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;
invoke-virtual {v0}, Lcom/glympse/android/hal/gms/location/LocationClient;->connect()V
:cond_12
return-void
.end method
.method public stop()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/ay;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/glympse/android/hal/ay;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;
invoke-virtual {v0}, Lcom/glympse/android/hal/gms/location/LocationClient;->disconnect()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/ay;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/hal/ay;->v:Z
:cond_f
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 2
const-string v0, "com.glympse.android.hal.LocationProviderFuse"
return-object v0
.end method