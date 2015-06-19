.class public Lcom/google/android/gms/internal/hi;
.super Lcom/google/android/gms/internal/eh;
.field private final Lk:Lcom/google/android/gms/internal/hl;
.field private final Lq:Lcom/google/android/gms/internal/hh;
.field private final Lr:Lcom/google/android/gms/internal/ib;
.field private final Ls:Ljava/lang/String;
.field private final vi:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V
.registers 9
const/4 v2, 0x0
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/String;
invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/eh;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V
new-instance v0, Lcom/google/android/gms/internal/hi$c;
invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/hi$c;-><init>(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hi$1;)V
iput-object v0, p0, Lcom/google/android/gms/internal/hi;->Lk:Lcom/google/android/gms/internal/hl;
new-instance v0, Lcom/google/android/gms/internal/hh;
iget-object v1, p0, Lcom/google/android/gms/internal/hi;->Lk:Lcom/google/android/gms/internal/hl;
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/hh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hl;)V
iput-object v0, p0, Lcom/google/android/gms/internal/hi;->Lq:Lcom/google/android/gms/internal/hh;
iput-object p4, p0, Lcom/google/android/gms/internal/hi;->Ls:Ljava/lang/String;
iput-object v2, p0, Lcom/google/android/gms/internal/hi;->vi:Ljava/lang/String;
new-instance v0, Lcom/google/android/gms/internal/ib;
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/hi;->Lk:Lcom/google/android/gms/internal/hl;
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ib;-><init>(Landroid/content/Context;Ljava/util/Locale;Lcom/google/android/gms/internal/hl;)V
iput-object v0, p0, Lcom/google/android/gms/internal/hi;->Lr:Lcom/google/android/gms/internal/ib;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/hi;)V
.registers 1
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->bm()V
return-void
.end method
.method static synthetic b(Lcom/google/android/gms/internal/hi;)Landroid/os/IInterface;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->eb()Landroid/os/IInterface;
move-result-object v0
return-object v0
.end method
.method protected Q(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hg;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/hg$a;->P(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hg;
move-result-object v0
return-object v0
.end method
.method protected a(Lcom/google/android/gms/internal/en;Lcom/google/android/gms/internal/eh$e;)V
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "client_name"
iget-object v2, p0, Lcom/google/android/gms/internal/hi;->Ls:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const v1, 0x41f6b8
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/en;->e(Lcom/google/android/gms/internal/em;ILjava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method protected aF()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"
return-object v0
.end method
.method protected aG()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
return-object v0
.end method
.method public addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
.registers 7
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->bm()V
if-eqz p1, :cond_31
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_31
const/4 v0, 0x1
:goto_c
const-string v1, "At least one geofence must be specified."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V
const-string v0, "PendingIntent must be specified."
invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnAddGeofencesResultListener not provided."
invoke-static {p3, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-nez p3, :cond_33
const/4 v0, 0x0
move-object v1, v0
:try_start_1f
:goto_1f
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/hg;
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/hg;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/hf;Ljava/lang/String;)V
return-void
:cond_31
const/4 v0, 0x0
goto :goto_c
:cond_33
new-instance v0, Lcom/google/android/gms/internal/hi$b;
invoke-direct {v0, p3, p0}, Lcom/google/android/gms/internal/hi$b;-><init>(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;Lcom/google/android/gms/internal/hi;)V
:try_end_38
.catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_38} :catch_3a
move-object v1, v0
goto :goto_1f
:catch_3a
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public disconnect()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/hi;->Lq:Lcom/google/android/gms/internal/hh;
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->isConnected()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/google/android/gms/internal/hi;->Lq:Lcom/google/android/gms/internal/hh;
invoke-virtual {v0}, Lcom/google/android/gms/internal/hh;->removeAllListeners()V
iget-object v0, p0, Lcom/google/android/gms/internal/hi;->Lq:Lcom/google/android/gms/internal/hh;
invoke-virtual {v0}, Lcom/google/android/gms/internal/hh;->gl()V
:cond_13
invoke-super {p0}, Lcom/google/android/gms/internal/eh;->disconnect()V
monitor-exit v1
:try_end_17
.catchall {:try_start_3 .. :try_end_17} :catchall_18
return-void
:catchall_18
move-exception v0
monitor-exit v1
throw v0
.end method
.method public getLastLocation()Landroid/location/Location;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hi;->Lq:Lcom/google/android/gms/internal/hh;
invoke-virtual {v0}, Lcom/google/android/gms/internal/hh;->getLastLocation()Landroid/location/Location;
move-result-object v0
return-object v0
.end method
.method protected synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hi;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hg;
move-result-object v0
return-object v0
.end method
.method public removeActivityUpdates(Landroid/app/PendingIntent;)V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->bm()V
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
:try_start_6
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/hg;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hg;->removeActivityUpdates(Landroid/app/PendingIntent;)V
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public removeGeofences(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
.registers 6
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->bm()V
const-string v0, "PendingIntent must be specified."
invoke-static {p1, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnRemoveGeofencesResultListener not provided."
invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-nez p2, :cond_23
const/4 v0, 0x0
move-object v1, v0
:try_start_11
:goto_11
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/hg;
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/hg;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/hf;Ljava/lang/String;)V
return-void
:cond_23
new-instance v0, Lcom/google/android/gms/internal/hi$b;
invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/hi$b;-><init>(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;Lcom/google/android/gms/internal/hi;)V
:try_end_28
.catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_28} :catch_2a
move-object v1, v0
goto :goto_11
:catch_2a
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
.registers 7
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->bm()V
if-eqz p1, :cond_35
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_35
const/4 v0, 0x1
:goto_d
const-string v2, "geofenceRequestIds can\'t be null nor empty."
invoke-static {v0, v2}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V
const-string v0, "OnRemoveGeofencesResultListener not provided."
invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-array v0, v1, [Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
if-nez p2, :cond_37
const/4 v1, 0x0
move-object v2, v1
:goto_23
:try_start_23
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->eb()Landroid/os/IInterface;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/hg;
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/hg;->a([Ljava/lang/String;Lcom/google/android/gms/internal/hf;Ljava/lang/String;)V
return-void
:cond_35
move v0, v1
goto :goto_d
:cond_37
new-instance v1, Lcom/google/android/gms/internal/hi$b;
invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/hi$b;-><init>(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;Lcom/google/android/gms/internal/hi;)V
:try_end_3c
.catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3c} :catch_3e
move-object v2, v1
goto :goto_23
:catch_3e
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/hi;->Lq:Lcom/google/android/gms/internal/hh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hh;->removeLocationUpdates(Landroid/app/PendingIntent;)V
return-void
.end method
.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/hi;->Lq:Lcom/google/android/gms/internal/hh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hh;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
return-void
.end method
.method public requestActivityUpdates(JLandroid/app/PendingIntent;)V
.registers 7
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->bm()V
invoke-static {p3}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
const-wide/16 v1, 0x0
cmp-long v1, p1, v1
if-ltz v1, :cond_1d
:goto_d
const-string v1, "detectionIntervalMillis must be >= 0"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V
:try_start_12
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/hg;
const/4 v1, 0x1
invoke-interface {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/hg;->a(JZLandroid/app/PendingIntent;)V
:try_end_1c
.catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_1f
return-void
:cond_1d
const/4 v0, 0x0
goto :goto_d
:catch_1f
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/hi;->Lq:Lcom/google/android/gms/internal/hh;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hh;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
return-void
.end method
.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/hi;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
return-void
.end method
.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
.registers 6
iget-object v1, p0, Lcom/google/android/gms/internal/hi;->Lq:Lcom/google/android/gms/internal/hh;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/hi;->Lq:Lcom/google/android/gms/internal/hh;
invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/hh;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_a
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public setMockLocation(Landroid/location/Location;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/hi;->Lq:Lcom/google/android/gms/internal/hh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hh;->setMockLocation(Landroid/location/Location;)V
return-void
.end method
.method public setMockMode(Z)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/hi;->Lq:Lcom/google/android/gms/internal/hh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hh;->setMockMode(Z)V
return-void
.end method