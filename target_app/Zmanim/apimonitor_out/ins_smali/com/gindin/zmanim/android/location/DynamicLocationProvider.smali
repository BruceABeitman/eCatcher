.class  Lcom/gindin/zmanim/android/location/DynamicLocationProvider;
.super Lcom/gindin/zmanim/android/location/LocationProvider;
.source "DynamicLocationProvider.java"
.field private static final MIN_UPDATE_INTERVAL_MINUTES:I = 0x124f80
.field private cancelFirstFixesTimer:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;
.field private final lastFixedLocationFactory:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;
.field private final locationListeners:Ljava/util/List;
.field private final locationManager:Landroid/location/LocationManager;
.field private ourLastFix:Landroid/location/Location;
.field private preferGPS:Z
.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
.registers 6
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Lcom/gindin/zmanim/android/location/LocationProvider;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationListeners:Ljava/util/List;
iput-object v1, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->cancelFirstFixesTimer:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;
iput-object v1, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->ourLastFix:Landroid/location/Location;
const-string v0, "location"
invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
iput-object v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationManager:Landroid/location/LocationManager;
new-instance v0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;
sget-object v1, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->LAST_LOCATION:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->name()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
invoke-direct {v0, v1}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;-><init>(Landroid/content/SharedPreferences;)V
iput-object v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->lastFixedLocationFactory:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;
sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;->PREFER_GPS:Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;
invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;->name()Ljava/lang/String;
move-result-object v0
invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->preferGPS:Z
return-void
.end method
.method static synthetic access$000(Lcom/gindin/zmanim/android/location/DynamicLocationProvider;)Landroid/location/LocationManager;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationManager:Landroid/location/LocationManager;
return-object v0
.end method
.method private isLocationEnabled()Z
.registers 6
const/4 v4, 0x0
iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationManager:Landroid/location/LocationManager;
if-nez v2, :cond_11
new-instance v2, Lcom/gindin/zmanim/android/location/LocationError;
sget-object v3, Lcom/gindin/zmanim/android/location/LocationError$Code;->NO_LOCATION_MANAGER_SERVICE:Lcom/gindin/zmanim/android/location/LocationError$Code;
invoke-direct {v2, v3}, Lcom/gindin/zmanim/android/location/LocationError;-><init>(Lcom/gindin/zmanim/android/location/LocationError$Code;)V
invoke-virtual {p0, v2}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->fireError(Lcom/gindin/zmanim/android/location/LocationError;)V
move v2, v4
:goto_10
return v2
:cond_11
const-string v2, "network"
invoke-direct {p0, v2}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->isProviderEnabled(Ljava/lang/String;)Z
move-result v1
const-string v2, "gps"
invoke-direct {p0, v2}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->isProviderEnabled(Ljava/lang/String;)Z
move-result v0
if-nez v1, :cond_2d
if-nez v0, :cond_2d
new-instance v2, Lcom/gindin/zmanim/android/location/LocationError;
sget-object v3, Lcom/gindin/zmanim/android/location/LocationError$Code;->NO_PROVIDERS:Lcom/gindin/zmanim/android/location/LocationError$Code;
invoke-direct {v2, v3}, Lcom/gindin/zmanim/android/location/LocationError;-><init>(Lcom/gindin/zmanim/android/location/LocationError$Code;)V
invoke-virtual {p0, v2}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->fireError(Lcom/gindin/zmanim/android/location/LocationError;)V
move v2, v4
goto :goto_10
:cond_2d
const/4 v2, 0x1
goto :goto_10
.end method
.method private isProviderEnabled(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationManager:Landroid/location/LocationManager;
invoke-static {v0, p1}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method private startListeningToLocations()V
.registers 8
invoke-direct {p0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->isLocationEnabled()Z
move-result v5
if-nez v5, :cond_7
:cond_6
return-void
:cond_7
iget-object v5, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->activity:Landroid/app/Activity;
const v6, 0x7f050038
invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p0, v5}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->fireLocationProgress(Ljava/lang/String;)V
iget-object v5, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->cancelFirstFixesTimer:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;
if-eqz v5, :cond_1c
iget-object v5, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->cancelFirstFixesTimer:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;
invoke-virtual {v5}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;->cancel()V
:cond_1c
const-string v5, "gps"
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->isProviderEnabled(Ljava/lang/String;)Z
move-result v0
new-instance v5, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;
invoke-direct {v5, p0, v0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;-><init>(Lcom/gindin/zmanim/android/location/DynamicLocationProvider;Z)V
iput-object v5, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->cancelFirstFixesTimer:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;
iget-object v5, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationManager:Landroid/location/LocationManager;
const/4 v6, 0x1
invoke-static {v5, v6}, Ldroidbox/android/location/LocationManager;->getProviders(Landroid/location/LocationManager;Z)Ljava/util/List;
move-result-object v4
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_34
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_6
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
new-instance v2, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;
invoke-direct {v2, p0, v3}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;-><init>(Lcom/gindin/zmanim/android/location/DynamicLocationProvider;Ljava/lang/String;)V
iget-object v5, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationListeners:Ljava/util/List;
invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_34
.end method
.method private stopListeningToLocations()V
.registers 4
iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->cancelFirstFixesTimer:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;
if-eqz v2, :cond_9
iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->cancelFirstFixesTimer:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;
invoke-virtual {v2}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;->cancel()V
:cond_9
iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationListeners:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1f
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->cancel()V
goto :goto_f
:cond_1f
iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationListeners:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->clear()V
return-void
.end method
.method public declared-synchronized addListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z
.registers 4
const/4 v1, 0x1
monitor-enter p0
:try_start_2
invoke-super {p0, p1}, Lcom/gindin/zmanim/android/location/LocationProvider;->addListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->listeners:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ne v1, v0, :cond_13
invoke-direct {p0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->startListeningToLocations()V
:cond_13
:try_end_13
.catchall {:try_start_2 .. :try_end_13} :catchall_18
move v0, v1
:goto_14
monitor-exit p0
return v0
:cond_16
const/4 v0, 0x0
goto :goto_14
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected declared-synchronized fireError(Lcom/gindin/zmanim/android/location/LocationError;)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->getLastKnownLocation()Landroid/location/Location;
move-result-object v0
invoke-super {p0, p1}, Lcom/gindin/zmanim/android/location/LocationProvider;->fireError(Lcom/gindin/zmanim/android/location/LocationError;)V
iget-object v1, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->lastFixedLocationFactory:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;
invoke-virtual {v1, v0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->save(Landroid/location/Location;)V
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_f
monitor-exit p0
return-void
:catchall_f
move-exception v1
monitor-exit p0
throw v1
.end method
.method protected declared-synchronized fireNewLocation(Landroid/location/Location;)V
.registers 3
monitor-enter p0
:try_start_1
iput-object p1, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->ourLastFix:Landroid/location/Location;
invoke-super {p0, p1}, Lcom/gindin/zmanim/android/location/LocationProvider;->fireNewLocation(Landroid/location/Location;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->lastFixedLocationFactory:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;
invoke-virtual {v0, p1}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->save(Landroid/location/Location;)V
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_d
monitor-exit p0
return-void
:catchall_d
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected getLastKnownLocation()Landroid/location/Location;
.registers 8
const/4 v0, 0x0
const-string v3, "gps"
invoke-direct {p0, v3}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->isProviderEnabled(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_11
iget-object v3, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationManager:Landroid/location/LocationManager;
const-string v4, "gps"
invoke-static {v3, v4}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
:cond_11
const/4 v2, 0x0
const-string v3, "network"
invoke-direct {p0, v3}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->isProviderEnabled(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_22
iget-object v3, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationManager:Landroid/location/LocationManager;
const-string v4, "network"
invoke-static {v3, v4}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v2
:cond_22
if-eqz v0, :cond_36
if-eqz v2, :cond_36
invoke-static {v0}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v3
invoke-static {v2}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v5
cmp-long v3, v3, v5
if-lez v3, :cond_34
move-object v1, v0
:goto_33
return-object v1
:cond_34
move-object v1, v2
goto :goto_33
:cond_36
if-eqz v0, :cond_3a
move-object v1, v0
goto :goto_33
:cond_3a
if-eqz v2, :cond_3e
move-object v1, v2
goto :goto_33
:cond_3e
iget-object v3, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->lastFixedLocationFactory:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;
invoke-virtual {v3}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->get()Landroid/location/Location;
move-result-object v3
iput-object v3, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->ourLastFix:Landroid/location/Location;
iget-object v1, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->ourLastFix:Landroid/location/Location;
goto :goto_33
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/gindin/zmanim/android/location/DynamicLocationProvider; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->stopListeningToLocations()V
invoke-super {p0}, Lcom/gindin/zmanim/android/location/LocationProvider;->onDestroy()V
const-string v1, " - Lcom/gindin/zmanim/android/location/DynamicLocationProvider; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method  onFailedToGetAnyFixes()V
.registers 5
iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationListeners:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_16
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->cancelFirstFix()V
goto :goto_6
:cond_16
new-instance v2, Lcom/gindin/zmanim/android/location/LocationError;
sget-object v3, Lcom/gindin/zmanim/android/location/LocationError$Code;->CANNOT_DETERMINE_LOCATION:Lcom/gindin/zmanim/android/location/LocationError$Code;
invoke-direct {v2, v3}, Lcom/gindin/zmanim/android/location/LocationError;-><init>(Lcom/gindin/zmanim/android/location/LocationError$Code;)V
invoke-virtual {p0, v2}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->fireError(Lcom/gindin/zmanim/android/location/LocationError;)V
return-void
.end method
.method public onLocationProvidersChanged()V
.registers 1
invoke-direct {p0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->stopListeningToLocations()V
invoke-direct {p0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->startListeningToLocations()V
return-void
.end method
.method  onReceivedFix(Landroid/location/Location;Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;)V
.registers 18
iget-object v11, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->cancelFirstFixesTimer:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;
invoke-virtual {v11}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;->cancel()V
const-string v11, "gps"
invoke-direct {p0, v11}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->isProviderEnabled(Ljava/lang/String;)Z
move-result v1
iget-boolean v11, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->preferGPS:Z
if-eqz v11, :cond_1e
const-string v11, "gps"
move-object/from16 v0, p2
iget-object v0, v0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->providerName:Ljava/lang/String;
move-object v12, v0
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-nez v11, :cond_1e
if-nez v1, :cond_34
:cond_1e
iget-object v11, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationListeners:Ljava/util/List;
invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_24
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-eqz v11, :cond_34
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;
invoke-virtual {v6}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->cancelFirstFix()V
goto :goto_24
:cond_34
const/4 v7, 0x0
iget-object v11, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->ourLastFix:Landroid/location/Location;
if-nez v11, :cond_40
const/4 v7, 0x1
:cond_3a
:goto_3a
if-eqz v7, :cond_3f
invoke-virtual/range {p0 .. p1}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->fireNewLocation(Landroid/location/Location;)V
:cond_3f
return-void
:cond_40
iget-object v11, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->ourLastFix:Landroid/location/Location;
invoke-static {v11}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v3
invoke-static/range {p1 .. p1}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v9
sub-long v11, v9, v3
const-wide/32 v13, 0x124f80
cmp-long v11, v11, v13
if-lez v11, :cond_55
const/4 v7, 0x1
goto :goto_3a
:cond_55
const-string v11, "gps"
iget-object v12, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->ourLastFix:Landroid/location/Location;
invoke-static {v12}, Ldroidbox/android/location/Location;->getProvider(Landroid/location/Location;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
const-string v11, "gps"
invoke-static/range {p1 .. p1}, Ldroidbox/android/location/Location;->getProvider(Landroid/location/Location;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_3a
if-nez v5, :cond_3a
const/4 v7, 0x1
goto :goto_3a
.end method
.method public declared-synchronized removeListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z
.registers 3
monitor-enter p0
:try_start_1
invoke-super {p0, p1}, Lcom/gindin/zmanim/android/location/LocationProvider;->removeListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->listeners:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_12
invoke-direct {p0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->stopListeningToLocations()V
:cond_12
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_17
const/4 v0, 0x1
:goto_13
monitor-exit p0
return v0
:cond_15
const/4 v0, 0x0
goto :goto_13
:catchall_17
move-exception v0
monitor-exit p0
throw v0
.end method