.class Lcom/glympse/android/hal/be;
.super Ljava/lang/Object;
.source "ProximityProviderGms.java"

# interfaces
.implements Lcom/glympse/android/core/GProximityProvider;
.implements Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListener;
.implements Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;


# instance fields
.field private D:Landroid/app/PendingIntent;

.field private cL:Lcom/glympse/android/core/GProximityListener;

.field private cM:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glympse/android/core/GRegion;",
            ">;"
        }
    .end annotation
.end field

.field private cP:Lcom/glympse/android/hal/bf;

.field private cx:Lcom/glympse/android/hal/gms/location/LocationClient;

.field private e:Landroid/content/Context;

.field private v:Z

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/hal/be;->e:Landroid/content/Context;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/hal/be;->cM:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/hal/be;->v:Z

    invoke-direct {p0, p1}, Lcom/glympse/android/hal/be;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/hal/be;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/hal/be;->w:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/glympse/android/hal/be;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/hal/be;->D:Landroid/app/PendingIntent;

    return-void
.end method

.method private M()V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/hal/be;->cM:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    iget-object v0, p0, Lcom/glympse/android/hal/be;->cM:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GRegion;

    invoke-direct {p0, v0}, Lcom/glympse/android/hal/be;->a(Lcom/glympse/android/core/GRegion;)Lcom/glympse/android/hal/gms/location/Geofence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_18

    :cond_2c
    iget-object v0, p0, Lcom/glympse/android/hal/be;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;

    iget-object v2, p0, Lcom/glympse/android/hal/be;->D:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, p0}, Lcom/glympse/android/hal/gms/location/LocationClient;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListener;)V

    goto :goto_8
.end method

.method static synthetic a(Lcom/glympse/android/hal/be;)Lcom/glympse/android/core/GProximityListener;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/be;->cL:Lcom/glympse/android/core/GProximityListener;

    return-object v0
.end method

.method private a(Lcom/glympse/android/core/GRegion;)Lcom/glympse/android/hal/gms/location/Geofence;
    .registers 9

    new-instance v0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;

    invoke-direct {v0}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;-><init>()V

    invoke-interface {p1}, Lcom/glympse/android/core/GRegion;->getLatitude()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/glympse/android/core/GRegion;->getLongitude()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/glympse/android/core/GRegion;->getRadius()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->setCircularRegion(DDF)Lcom/glympse/android/hal/gms/location/Geofence$Builder;

    invoke-interface {p1}, Lcom/glympse/android/core/GRegion;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->setRequestId(Ljava/lang/String;)Lcom/glympse/android/hal/gms/location/Geofence$Builder;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->setExpirationDuration(J)Lcom/glympse/android/hal/gms/location/Geofence$Builder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->setTransitionTypes(I)Lcom/glympse/android/hal/gms/location/Geofence$Builder;

    invoke-virtual {v0}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->build()Lcom/glympse/android/hal/gms/location/Geofence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/glympse/android/hal/be;)Ljava/util/Hashtable;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/be;->cM:Ljava/util/Hashtable;

    return-object v0
.end method

.method private connect()V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/hal/be;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;

    if-nez v0, :cond_12

    new-instance v0, Lcom/glympse/android/hal/gms/location/LocationClient;

    iget-object v1, p0, Lcom/glympse/android/hal/be;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/glympse/android/hal/gms/location/LocationClient;-><init>(Landroid/content/Context;Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/glympse/android/hal/be;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;

    iget-object v0, p0, Lcom/glympse/android/hal/be;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/glympse/android/hal/gms/location/LocationClient;->connect()V

    :cond_12
    iget-object v0, p0, Lcom/glympse/android/hal/be;->cP:Lcom/glympse/android/hal/bf;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/glympse/android/hal/bf;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/bf;-><init>(Lcom/glympse/android/hal/be;)V

    iput-object v0, p0, Lcom/glympse/android/hal/be;->cP:Lcom/glympse/android/hal/bf;

    iget-object v0, p0, Lcom/glympse/android/hal/be;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/glympse/android/hal/be;->cP:Lcom/glympse/android/hal/bf;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/glympse/android/hal/be;->w:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2b
    return-void
.end method

.method private disconnect()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/hal/be;->cP:Lcom/glympse/android/hal/bf;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/glympse/android/hal/be;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/glympse/android/hal/be;->cP:Lcom/glympse/android/hal/bf;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/glympse/android/hal/be;->cP:Lcom/glympse/android/hal/bf;

    :cond_e
    iget-object v0, p0, Lcom/glympse/android/hal/be;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/glympse/android/hal/be;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/glympse/android/hal/gms/location/LocationClient;->disconnect()V

    iput-object v2, p0, Lcom/glympse/android/hal/be;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/hal/be;->v:Z

    :cond_1c
    return-void
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/hal/be;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/glympse/android/hal/be;->e:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "com.glympse.android.hal.proximity.REGION"

    return-object v0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/glympse/android/hal/gms/location/LocationClient;->isGeofencingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/glympse/android/hal/t;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public detachRegions()Lcom/glympse/android/core/GArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/core/GRegion;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/glympse/android/hal/GVector;

    iget-object v0, p0, Lcom/glympse/android/hal/be;->cM:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    iget-object v0, p0, Lcom/glympse/android/hal/be;->cM:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GRegion;

    invoke-virtual {v1, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    goto :goto_15

    :cond_25
    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GRegion;

    invoke-virtual {p0, v0}, Lcom/glympse/android/hal/be;->stopMonitoring(Lcom/glympse/android/core/GRegion;)V

    goto :goto_29

    :cond_39
    return-object v1
.end method

.method public locationChanged(Lcom/glympse/android/core/GLocation;)V
    .registers 2

    return-void
.end method

.method public onAddGeofencesResult(I[Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/hal/be;->v:Z

    invoke-direct {p0}, Lcom/glympse/android/hal/be;->M()V

    return-void
.end method

.method public onConnectionFailed(Lcom/glympse/android/hal/gms/common/ConnectionResult;)V
    .registers 2

    return-void
.end method

.method public onDisconnected()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/hal/be;->v:Z

    return-void
.end method

.method public onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V
    .registers 3

    return-void
.end method

.method public onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public setProximityListener(Lcom/glympse/android/core/GProximityListener;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/hal/be;->cL:Lcom/glympse/android/core/GProximityListener;

    return-void
.end method

.method public startMonitoring(Lcom/glympse/android/core/GArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/core/GRegion;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/glympse/android/core/GArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GRegion;

    invoke-virtual {p0, v0}, Lcom/glympse/android/hal/be;->startMonitoring(Lcom/glympse/android/core/GRegion;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public startMonitoring(Lcom/glympse/android/core/GRegion;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/hal/be;->cM:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/glympse/android/hal/be;->cM:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/glympse/android/core/GRegion;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/glympse/android/hal/be;->connect()V

    iget-boolean v0, p0, Lcom/glympse/android/hal/be;->v:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/glympse/android/hal/be;->a(Lcom/glympse/android/core/GRegion;)Lcom/glympse/android/hal/gms/location/Geofence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/glympse/android/hal/be;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;

    iget-object v2, p0, Lcom/glympse/android/hal/be;->D:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2, p0}, Lcom/glympse/android/hal/gms/location/LocationClient;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListener;)V

    goto :goto_8
.end method

.method public stopMonitoring(Lcom/glympse/android/core/GRegion;)V
    .registers 4

    iget-boolean v0, p0, Lcom/glympse/android/hal/be;->v:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-interface {p1}, Lcom/glympse/android/core/GRegion;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/glympse/android/hal/be;->cx:Lcom/glympse/android/hal/gms/location/LocationClient;

    invoke-virtual {v1, v0, p0}, Lcom/glympse/android/hal/gms/location/LocationClient;->removeGeofences(Ljava/util/List;Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V

    :cond_16
    iget-object v0, p0, Lcom/glympse/android/hal/be;->cM:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/glympse/android/core/GRegion;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/glympse/android/hal/be;->cM:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_2a

    invoke-direct {p0}, Lcom/glympse/android/hal/be;->disconnect()V

    :cond_2a
    return-void
.end method
