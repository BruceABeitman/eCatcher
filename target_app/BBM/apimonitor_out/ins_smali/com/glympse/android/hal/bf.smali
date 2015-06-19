.class  Lcom/glympse/android/hal/bf;
.super Landroid/content/BroadcastReceiver;
.source "ProximityProviderGms.java"
.field final synthetic cQ:Lcom/glympse/android/hal/be;
.method public constructor <init>(Lcom/glympse/android/hal/be;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/hal/bf;->cQ:Lcom/glympse/android/hal/be;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 8
:try_start_0
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "com.glympse.android.hal.proximity.REGION"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/glympse/android/hal/bf;->cQ:Lcom/glympse/android/hal/be;
invoke-static {v0}, Lcom/glympse/android/hal/be;->a(Lcom/glympse/android/hal/be;)Lcom/glympse/android/core/GProximityListener;
move-result-object v0
if-nez v0, :cond_15
:cond_14
:goto_14
return-void
:cond_15
invoke-static {p2}, Lcom/glympse/android/hal/gms/location/LocationClient;->hasError(Landroid/content/Intent;)Z
move-result v0
if-nez v0, :cond_14
invoke-static {p2}, Lcom/glympse/android/hal/gms/location/LocationClient;->getGeofenceTransition(Landroid/content/Intent;)I
move-result v2
and-int/lit8 v0, v2, 0x3
if-eqz v0, :cond_14
invoke-static {p2}, Lcom/glympse/android/hal/gms/location/LocationClient;->getTriggeringGeofences(Landroid/content/Intent;)Ljava/util/List;
move-result-object v3
const/4 v0, 0x0
move v1, v0
:goto_29
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_14
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/hal/gms/location/Geofence;
invoke-virtual {v0}, Lcom/glympse/android/hal/gms/location/Geofence;->getRequestId()Ljava/lang/String;
move-result-object v0
iget-object v4, p0, Lcom/glympse/android/hal/bf;->cQ:Lcom/glympse/android/hal/be;
invoke-static {v4}, Lcom/glympse/android/hal/be;->b(Lcom/glympse/android/hal/be;)Ljava/util/Hashtable;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GRegion;
if-eqz v0, :cond_53
const/4 v4, 0x1
if-ne v4, v2, :cond_57
iget-object v4, p0, Lcom/glympse/android/hal/bf;->cQ:Lcom/glympse/android/hal/be;
invoke-static {v4}, Lcom/glympse/android/hal/be;->a(Lcom/glympse/android/hal/be;)Lcom/glympse/android/core/GProximityListener;
move-result-object v4
invoke-interface {v4, v0}, Lcom/glympse/android/core/GProximityListener;->regionEntered(Lcom/glympse/android/core/GRegion;)V
:goto_53
:cond_53
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_29
:cond_57
const/4 v4, 0x2
if-ne v4, v2, :cond_53
iget-object v4, p0, Lcom/glympse/android/hal/bf;->cQ:Lcom/glympse/android/hal/be;
invoke-static {v4}, Lcom/glympse/android/hal/be;->a(Lcom/glympse/android/hal/be;)Lcom/glympse/android/core/GProximityListener;
move-result-object v4
invoke-interface {v4, v0}, Lcom/glympse/android/core/GProximityListener;->regionLeft(Lcom/glympse/android/core/GRegion;)V
:try_end_63
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_63} :catch_64
goto :goto_53
:catch_64
move-exception v0
goto :goto_14
.end method