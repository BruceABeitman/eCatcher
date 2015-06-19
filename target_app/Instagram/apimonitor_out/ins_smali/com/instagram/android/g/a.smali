.class public final Lcom/instagram/android/g/a;
.super Ljava/util/Observable;
.source "BestLocationListener.java"
.implements Landroid/location/LocationListener;
.field private a:Landroid/location/Location;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/util/Observable;-><init>()V
return-void
.end method
.method public static b(Landroid/location/Location;)Z
.registers 5
if-eqz p0, :cond_29
invoke-static {p0}, Ldroidbox/android/location/Location;->hasAccuracy(Landroid/location/Location;)Z
move-result v0
if-eqz v0, :cond_29
invoke-static {p0}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v0
const/high16 v1, 0x42c8
cmpg-float v0, v0, v1
if-gtz v0, :cond_29
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-static {p0}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v2
sub-long/2addr v0, v2
const-wide/32 v2, 0x493e0
cmp-long v0, v0, v2
if-gez v0, :cond_29
const/4 v0, 0x1
:goto_28
return v0
:cond_29
const/4 v0, 0x0
goto :goto_28
.end method
.method private declared-synchronized c(Landroid/location/Location;)V
.registers 3
monitor-enter p0
:try_start_1
iput-object p1, p0, Lcom/instagram/android/g/a;->a:Landroid/location/Location;
invoke-virtual {p0}, Lcom/instagram/android/g/a;->setChanged()V
invoke-virtual {p0, p1}, Lcom/instagram/android/g/a;->notifyObservers(Ljava/lang/Object;)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method private d(Landroid/location/Location;)V
.registers 13
const-wide/32 v9, 0x493e0
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/instagram/android/g/a;->a:Landroid/location/Location;
if-nez v0, :cond_f
invoke-direct {p0, p1}, Lcom/instagram/android/g/a;->c(Landroid/location/Location;)V
:cond_e
:goto_e
return-void
:cond_f
if-eqz p1, :cond_e
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v3
invoke-static {p1}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v5
sub-long v5, v3, v5
iget-object v0, p0, Lcom/instagram/android/g/a;->a:Landroid/location/Location;
invoke-static {v0}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v7
sub-long v7, v3, v7
cmp-long v0, v5, v9
if-gtz v0, :cond_5b
move v4, v1
:goto_2d
cmp-long v0, v7, v9
if-gtz v0, :cond_5d
move v0, v1
:goto_32
invoke-static {p1}, Ldroidbox/android/location/Location;->hasAccuracy(Landroid/location/Location;)Z
move-result v3
if-nez v3, :cond_40
iget-object v3, p0, Lcom/instagram/android/g/a;->a:Landroid/location/Location;
invoke-static {v3}, Ldroidbox/android/location/Location;->hasAccuracy(Landroid/location/Location;)Z
move-result v3
if-eqz v3, :cond_5f
:cond_40
move v3, v1
:goto_41
if-eqz v3, :cond_87
invoke-static {p1}, Ldroidbox/android/location/Location;->hasAccuracy(Landroid/location/Location;)Z
move-result v5
if-eqz v5, :cond_61
iget-object v5, p0, Lcom/instagram/android/g/a;->a:Landroid/location/Location;
invoke-static {v5}, Ldroidbox/android/location/Location;->hasAccuracy(Landroid/location/Location;)Z
move-result v5
if-nez v5, :cond_61
:goto_51
:cond_51
if-eqz v3, :cond_7f
if-eqz v1, :cond_7f
if-eqz v4, :cond_7f
invoke-direct {p0, p1}, Lcom/instagram/android/g/a;->c(Landroid/location/Location;)V
goto :goto_e
:cond_5b
move v4, v2
goto :goto_2d
:cond_5d
move v0, v2
goto :goto_32
:cond_5f
move v3, v2
goto :goto_41
:cond_61
invoke-static {p1}, Ldroidbox/android/location/Location;->hasAccuracy(Landroid/location/Location;)Z
move-result v5
if-nez v5, :cond_6f
iget-object v5, p0, Lcom/instagram/android/g/a;->a:Landroid/location/Location;
invoke-static {v5}, Ldroidbox/android/location/Location;->hasAccuracy(Landroid/location/Location;)Z
move-result v5
if-nez v5, :cond_7d
:cond_6f
invoke-static {p1}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v5
iget-object v6, p0, Lcom/instagram/android/g/a;->a:Landroid/location/Location;
invoke-static {v6}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v6
cmpg-float v5, v5, v6
if-lez v5, :cond_51
:cond_7d
move v1, v2
goto :goto_51
:cond_7f
if-eqz v4, :cond_e
if-nez v0, :cond_e
invoke-direct {p0, p1}, Lcom/instagram/android/g/a;->c(Landroid/location/Location;)V
goto :goto_e
:cond_87
move v1, v2
goto :goto_51
.end method
.method public final declared-synchronized a()Landroid/location/Location;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/android/g/a;->a:Landroid/location/Location;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(Landroid/location/LocationManager;)V
.registers 9
const/4 v0, 0x1
invoke-static {p1, v0}, Ldroidbox/android/location/LocationManager;->getProviders(Landroid/location/LocationManager;Z)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_9
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2b
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {p1, v1}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_22
invoke-static {p1, v1}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/g/a;->d(Landroid/location/Location;)V
:cond_22
const-wide/16 v2, 0x0
const/4 v4, 0x0
move-object v0, p1
move-object v5, p0
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
goto :goto_9
:cond_2b
return-void
.end method
.method public final declared-synchronized a(Landroid/location/Location;)Z
.registers 7
const/4 v0, 0x1
monitor-enter p0
:try_start_2
invoke-static {p1}, Ldroidbox/android/location/Location;->getProvider(Landroid/location/Location;)Ljava/lang/String;
move-result-object v1
const-string v2, "photo"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
:try_end_b
.catchall {:try_start_2 .. :try_end_b} :catchall_27
move-result v1
if-eqz v1, :cond_10
:cond_e
:goto_e
monitor-exit p0
return v0
:cond_10
:try_start_10
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v1
invoke-static {p1}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
:try_end_1c
.catchall {:try_start_10 .. :try_end_1c} :catchall_27
move-result-wide v3
sub-long/2addr v1, v3
const-wide/32 v3, 0x493e0
cmp-long v1, v1, v3
if-lez v1, :cond_e
const/4 v0, 0x0
goto :goto_e
:catchall_27
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final b(Landroid/location/LocationManager;)V
.registers 2
invoke-static {p1, p0}, Ldroidbox/android/location/LocationManager;->removeUpdates(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
return-void
.end method
.method public final onLocationChanged(Landroid/location/Location;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/g/a;->d(Landroid/location/Location;)V
return-void
.end method
.method public final onProviderDisabled(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public final onProviderEnabled(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.registers 4
return-void
.end method