.class  Lcom/glympse/android/hal/aw;
.super Ljava/lang/Object;
.source "LocationProvider.java"
.implements Landroid/location/LocationListener;
.field final synthetic cv:Lcom/glympse/android/hal/at;
.field protected cw:Z
.method private constructor <init>(Lcom/glympse/android/hal/at;)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/hal/aw;->cv:Lcom/glympse/android/hal/at;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/hal/aw;->cw:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/hal/at;Lcom/glympse/android/hal/at$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/glympse/android/hal/aw;-><init>(Lcom/glympse/android/hal/at;)V
return-void
.end method
.method protected a(Landroid/location/LocationManager;)V
.registers 4
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/glympse/android/hal/aw;->cw:Z
if-eqz v0, :cond_10
:try_start_5
invoke-static {p1, p0}, Ldroidbox/android/location/LocationManager;->removeUpdates(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
:goto_8
:try_end_8
.catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_11
iput-boolean v1, p0, Lcom/glympse/android/hal/aw;->cw:Z
iget-object v0, p0, Lcom/glympse/android/hal/aw;->cv:Lcom/glympse/android/hal/at;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/glympse/android/hal/at;->a(Lcom/glympse/android/hal/at;I)I
:cond_10
return-void
:catch_11
move-exception v0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_8
.end method
.method protected a(Landroid/location/LocationManager;II)Z
.registers 11
const/4 v6, 0x0
:try_start_1
iget-boolean v0, p0, Lcom/glympse/android/hal/aw;->cw:Z
if-nez v0, :cond_11
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/hal/aw;->cw:Z
const-string v1, "network"
int-to-long v2, p2
int-to-float v4, p3
move-object v0, p1
move-object v5, p0
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
:try_end_11
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_14
:goto_11
:cond_11
iget-boolean v0, p0, Lcom/glympse/android/hal/aw;->cw:Z
return v0
:catch_14
move-exception v0
iput-boolean v6, p0, Lcom/glympse/android/hal/aw;->cw:Z
invoke-static {v0, v6}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_11
.end method
.method public onLocationChanged(Landroid/location/Location;)V
.registers 4
if-eqz p1, :cond_12
:try_start_2
iget-object v0, p0, Lcom/glympse/android/hal/aw;->cv:Lcom/glympse/android/hal/at;
const-string v1, "NETWORK"
invoke-virtual {v0, v1, p1}, Lcom/glympse/android/hal/at;->a(Ljava/lang/String;Landroid/location/Location;)Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/glympse/android/hal/aw;->cv:Lcom/glympse/android/hal/at;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/at;->d(I)V
:cond_12
:goto_12
:try_end_12
.catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_12
.end method
.method public onProviderDisabled(Ljava/lang/String;)V
.registers 5
const/4 v0, 0x3
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "[ProviderNetwork::onProviderDisabled] - "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/hal/aw;->cv:Lcom/glympse/android/hal/at;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/at;->d(I)V
return-void
.end method
.method public onProviderEnabled(Ljava/lang/String;)V
.registers 5
const/4 v0, 0x3
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "[ProviderNetwork::onProviderEnabled] - "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/hal/aw;->cv:Lcom/glympse/android/hal/at;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/at;->d(I)V
return-void
.end method
.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.registers 9
const/4 v4, 0x4
const/4 v3, 0x1
const/4 v2, 0x3
if-nez p2, :cond_1d
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[ProviderNetwork::onStatusChanged] - OUT_OF_SERVICE, "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/hal/aw;->cv:Lcom/glympse/android/hal/at;
invoke-virtual {v0, v4}, Lcom/glympse/android/hal/at;->d(I)V
:goto_1c
return-void
:cond_1d
if-ne v3, p2, :cond_37
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[ProviderNetwork::onStatusChanged] - TEMPORARILY_UNAVAILABLE, "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/hal/aw;->cv:Lcom/glympse/android/hal/at;
invoke-virtual {v0, v4}, Lcom/glympse/android/hal/at;->d(I)V
goto :goto_1c
:cond_37
const/4 v0, 0x2
if-ne v0, p2, :cond_52
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[ProviderNetwork::onStatusChanged] - AVAILABLE, "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/hal/aw;->cv:Lcom/glympse/android/hal/at;
invoke-virtual {v0, v3}, Lcom/glympse/android/hal/at;->d(I)V
goto :goto_1c
:cond_52
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[ProviderNetwork::onStatusChanged] - UNKNOWN("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "), "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_1c
.end method