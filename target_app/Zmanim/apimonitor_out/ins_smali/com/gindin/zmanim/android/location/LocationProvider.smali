.class abstract Lcom/gindin/zmanim/android/location/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"
.field protected final activity:Landroid/app/Activity;
.field protected final geocoder:Landroid/location/Geocoder;
.field protected final listeners:Ljava/util/List;
.field protected final locationManagementPrefs:Landroid/content/SharedPreferences;
.method protected constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/gindin/zmanim/android/location/LocationProvider;->listeners:Ljava/util/List;
iput-object p1, p0, Lcom/gindin/zmanim/android/location/LocationProvider;->activity:Landroid/app/Activity;
iput-object p2, p0, Lcom/gindin/zmanim/android/location/LocationProvider;->locationManagementPrefs:Landroid/content/SharedPreferences;
new-instance v0, Landroid/location/Geocoder;
invoke-static {p1}, Ldroidbox/android/location/Geocoder;->droidbox_cons(Landroid/content/Context;)V
invoke-direct {v0, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/gindin/zmanim/android/location/LocationProvider;->geocoder:Landroid/location/Geocoder;
return-void
.end method
.method public declared-synchronized addListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/gindin/zmanim/android/location/LocationProvider;->listeners:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
invoke-static {}, Lcom/gindin/util/Version;->isDevelopment()Z
move-result v0
if-eqz v0, :cond_1a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Listener already listening!"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_17
:try_end_17
.catchall {:try_start_1 .. :try_end_17} :catchall_17
move-exception v0
monitor-exit p0
throw v0
:cond_1a
const/4 v0, 0x0
:goto_1b
monitor-exit p0
return v0
:try_start_1d
:cond_1d
iget-object v0, p0, Lcom/gindin/zmanim/android/location/LocationProvider;->listeners:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_22
.catchall {:try_start_1d .. :try_end_22} :catchall_17
const/4 v0, 0x1
goto :goto_1b
.end method
.method protected declared-synchronized fireError(Lcom/gindin/zmanim/android/location/LocationError;)V
.registers 7
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/gindin/zmanim/android/location/LocationProvider;->getLastKnownLocation()Landroid/location/Location;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/gindin/zmanim/android/location/LocationProvider;->lookupLocationName(Landroid/location/Location;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/gindin/zmanim/android/location/LocationProvider;->listeners:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_22
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/gindin/zmanim/android/location/LocationProvider$Listener;
invoke-interface {v1, p1, v2, v3}, Lcom/gindin/zmanim/android/location/LocationProvider$Listener;->onError(Lcom/gindin/zmanim/android/location/LocationError;Landroid/location/Location;Ljava/lang/String;)V
:try_end_1e
.catchall {:try_start_1 .. :try_end_1e} :catchall_1f
goto :goto_f
:catchall_1f
move-exception v4
monitor-exit p0
throw v4
:cond_22
monitor-exit p0
return-void
.end method
.method protected declared-synchronized fireLocationProgress(Ljava/lang/String;)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v2, p0, Lcom/gindin/zmanim/android/location/LocationProvider;->listeners:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_7
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1a
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/gindin/zmanim/android/location/LocationProvider$Listener;
invoke-interface {v1, p1}, Lcom/gindin/zmanim/android/location/LocationProvider$Listener;->onProgress(Ljava/lang/String;)V
:try_end_16
.catchall {:try_start_1 .. :try_end_16} :catchall_17
goto :goto_7
:catchall_17
move-exception v2
monitor-exit p0
throw v2
:cond_1a
monitor-exit p0
return-void
.end method
.method protected declared-synchronized fireNewLocation(Landroid/location/Location;)V
.registers 6
monitor-enter p0
:try_start_1
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/location/LocationProvider;->lookupLocationName(Landroid/location/Location;)Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lcom/gindin/zmanim/android/location/LocationProvider;->listeners:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/gindin/zmanim/android/location/LocationProvider$Listener;
invoke-interface {v2, p1, v0}, Lcom/gindin/zmanim/android/location/LocationProvider$Listener;->onLocationChanged(Landroid/location/Location;Ljava/lang/String;)V
:try_end_1a
.catchall {:try_start_1 .. :try_end_1a} :catchall_1b
goto :goto_b
:catchall_1b
move-exception v3
monitor-exit p0
throw v3
:cond_1e
monitor-exit p0
return-void
.end method
.method protected abstract getLastKnownLocation()Landroid/location/Location;
.end method
.method protected lookupLocationName(Landroid/location/Location;)Ljava/lang/String;
.registers 7
if-nez p1, :cond_5
const-string v3, ""
:goto_4
return-object v3
:cond_5
new-instance v2, Lcom/gindin/zmanim/android/location/LocationProvider$1;
invoke-direct {v2, p0, p1}, Lcom/gindin/zmanim/android/location/LocationProvider$1;-><init>(Lcom/gindin/zmanim/android/location/LocationProvider;Landroid/location/Location;)V
const/4 v3, 0x1
new-array v3, v3, [Landroid/location/Location;
const/4 v4, 0x0
aput-object p1, v3, v4
invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:try_start_13
invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
:goto_19
:try_end_19
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_1b
move-object v3, v1
goto :goto_4
:catch_1b
move-exception v3
move-object v0, v3
const/4 v1, 0x0
goto :goto_19
.end method
.method protected onDestroy()V
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/location/LocationProvider;->listeners:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
return-void
.end method
.method public abstract onLocationProvidersChanged()V
.end method
.method public declared-synchronized removeListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/gindin/zmanim/android/location/LocationProvider;->listeners:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/gindin/zmanim/android/location/LocationProvider;->listeners:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_1f
const/4 v0, 0x1
:goto_f
monitor-exit p0
return v0
:cond_11
:try_start_11
invoke-static {}, Lcom/gindin/util/Version;->isDevelopment()Z
move-result v0
if-eqz v0, :cond_22
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Listener isn\'t listening!"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_1f
.catchall {:try_start_11 .. :try_end_1f} :catchall_1f
:catchall_1f
move-exception v0
monitor-exit p0
throw v0
:cond_22
const/4 v0, 0x0
goto :goto_f
.end method