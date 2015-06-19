.class public Lcom/google/android/gms/location/LocationClient;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;
.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "com.google.android.location.LOCATION"
.field public static final KEY_MOCK_LOCATION:Ljava/lang/String; = "mockLocation"
.field private final UR:Lcom/google/android/gms/internal/jh;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/jh;
const-string v1, "location"
invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/jh;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
return-void
.end method
.method public static getErrorCode(Landroid/content/Intent;)I
.registers 3
const-string v0, "gms_error_code"
const/4 v1, -0x1
invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public static getGeofenceTransition(Landroid/content/Intent;)I
.registers 4
const/4 v0, -0x1
const-string v1, "com.google.android.location.intent.extra.transition"
invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
if-ne v1, v0, :cond_a
:cond_9
:goto_9
return v0
:cond_a
const/4 v2, 0x1
if-eq v1, v2, :cond_13
const/4 v2, 0x2
if-eq v1, v2, :cond_13
const/4 v2, 0x4
if-ne v1, v2, :cond_9
:cond_13
move v0, v1
goto :goto_9
.end method
.method public static getTriggeringGeofences(Landroid/content/Intent;)Ljava/util/List;
.registers 4
const-string v0, "com.google.android.location.intent.extra.geofence_list"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
new-instance v1, Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v2
invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_19
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
invoke-static {v0}, Lcom/google/android/gms/internal/ji;->h([B)Lcom/google/android/gms/internal/ji;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_19
:cond_2d
move-object v0, v1
goto :goto_b
.end method
.method public static getTriggeringLocation(Landroid/content/Intent;)Landroid/location/Location;
.registers 2
const-string v0, "com.google.android.location.intent.extra.triggering_location"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/location/Location;
return-object v0
.end method
.method public static hasError(Landroid/content/Intent;)Z
.registers 2
const-string v0, "gms_error_code"
invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
.registers 9
const/4 v0, 0x0
if-eqz p1, :cond_26
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/location/Geofence;
instance-of v3, v0, Lcom/google/android/gms/internal/ji;
const-string v4, "Geofence must be created using Geofence.Builder."
invoke-static {v3, v4}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V
check-cast v0, Lcom/google/android/gms/internal/ji;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_c
:cond_25
move-object v0, v1
:cond_26
:try_start_26
iget-object v1, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v1, v0, p2, p3}, Lcom/google/android/gms/internal/jh;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
:try_end_2b
.catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
return-void
:catch_2c
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public connect()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0}, Lcom/google/android/gms/internal/jh;->connect()V
return-void
.end method
.method public disconnect()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0}, Lcom/google/android/gms/internal/jh;->disconnect()V
return-void
.end method
.method public getLastLocation()Landroid/location/Location;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0}, Lcom/google/android/gms/internal/jh;->getLastLocation()Landroid/location/Location;
move-result-object v0
return-object v0
.end method
.method public isConnected()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0}, Lcom/google/android/gms/internal/jh;->isConnected()Z
move-result v0
return v0
.end method
.method public isConnecting()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0}, Lcom/google/android/gms/internal/jh;->isConnecting()Z
move-result v0
return v0
.end method
.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
move-result v0
return v0
.end method
.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
move-result v0
return v0
.end method
.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
return-void
.end method
.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
return-void
.end method
.method public removeGeofences(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jh;->removeGeofences(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jh;->removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->removeLocationUpdates(Landroid/app/PendingIntent;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jh;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jh;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/jh;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public setMockLocation(Landroid/location/Location;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->setMockLocation(Landroid/location/Location;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public setMockMode(Z)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->setMockMode(Z)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
return-void
.end method
.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
return-void
.end method