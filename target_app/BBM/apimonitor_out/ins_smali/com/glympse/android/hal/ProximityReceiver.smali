.class public Lcom/glympse/android/hal/ProximityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProximityReceiver.java"
.field public static final ACTION_APP_REGION:Ljava/lang/String; = "com.glympse.android.app.proximity.REGION"
.field public static final ACTION_HAL_REGION:Ljava/lang/String; = "com.glympse.android.hal.proximity.REGION"
.field public static final EXTRA_REGION_ID:Ljava/lang/String; = "region_id"
.field public static final EXTRA_TRANSITION:Ljava/lang/String; = "transition"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
invoke-static {}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->init()V
return-void
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;I)V
.registers 6
new-instance v0, Landroid/content/Intent;
const-string v1, "com.glympse.android.app.proximity.REGION"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "region_id"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "transition"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method private b(Landroid/content/Context;Landroid/content/Intent;)V
.registers 9
const/4 v2, 0x1
invoke-static {p2}, Lcom/glympse/android/hal/gms/location/LocationClient;->hasError(Landroid/content/Intent;)Z
move-result v0
if-eqz v0, :cond_8
:cond_7
return-void
:cond_8
invoke-static {p2}, Lcom/glympse/android/hal/gms/location/LocationClient;->getGeofenceTransition(Landroid/content/Intent;)I
move-result v3
and-int/lit8 v0, v3, 0x3
if-eqz v0, :cond_7
invoke-static {p2}, Lcom/glympse/android/hal/gms/location/LocationClient;->getTriggeringGeofences(Landroid/content/Intent;)Ljava/util/List;
move-result-object v4
const/4 v0, 0x0
move v1, v0
:goto_16
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_7
invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/hal/gms/location/Geofence;
invoke-virtual {v0}, Lcom/glympse/android/hal/gms/location/Geofence;->getRequestId()Ljava/lang/String;
move-result-object v5
if-ne v2, v3, :cond_30
move v0, v2
:goto_29
invoke-direct {p0, p1, v5, v0}, Lcom/glympse/android/hal/ProximityReceiver;->a(Landroid/content/Context;Ljava/lang/String;I)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_16
:cond_30
const/4 v0, 0x2
goto :goto_29
.end method
.method public static propagateGeofence(Landroid/content/Intent;Lcom/glympse/android/api/GGlympse;)V
.registers 5
:try_start_0
const-string v0, "com.glympse.android.app.proximity.REGION"
invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
const-string v0, "region_id"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "transition"
const/4 v2, -0x1
invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getLocationManager()Lcom/glympse/android/api/GLocationManager;
move-result-object v2
if-nez v2, :cond_20
:goto_1f
:cond_1f
return-void
:cond_20
invoke-interface {v2, v0, v1}, Lcom/glympse/android/api/GLocationManager;->handleGeofence(Ljava/lang/String;I)V
:try_end_23
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24
goto :goto_1f
:catch_24
move-exception v0
goto :goto_1f
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
:try_start_0
const-string v0, "com.glympse.android.hal.proximity.REGION"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_13
invoke-direct {p0, p1, p2}, Lcom/glympse/android/hal/ProximityReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V
:cond_13
:try_end_13
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
return-void
:catch_14
move-exception v0
goto :goto_13
.end method