.class Lcom/glympse/android/hal/bc;
.super Ljava/lang/Object;
.source "ProximityProvider.java"

# interfaces
.implements Lcom/glympse/android/core/GProximityProvider;


# static fields
.field private static final cK:Ljava/lang/String; = "com.glympse.android.hal.proximity.REGION"


# instance fields
.field private cL:Lcom/glympse/android/core/GProximityListener;

.field private cM:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/glympse/android/core/GRegion;",
            "Lcom/glympse/android/hal/bd;",
            ">;"
        }
    .end annotation
.end field

.field private ca:Landroid/location/LocationManager;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/hal/bc;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/glympse/android/hal/bc;->e:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/glympse/android/hal/bc;->ca:Landroid/location/LocationManager;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/hal/bc;->cM:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic a(Lcom/glympse/android/hal/bc;)Lcom/glympse/android/core/GProximityListener;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/bc;->cL:Lcom/glympse/android/core/GProximityListener;

    return-object v0
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

    iget-object v0, p0, Lcom/glympse/android/hal/bc;->cM:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    iget-object v0, p0, Lcom/glympse/android/hal/bc;->cM:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    goto :goto_11

    :cond_1f
    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GRegion;

    invoke-virtual {p0, v0}, Lcom/glympse/android/hal/bc;->stopMonitoring(Lcom/glympse/android/core/GRegion;)V

    goto :goto_23

    :cond_33
    return-object v1
.end method

.method public locationChanged(Lcom/glympse/android/core/GLocation;)V
    .registers 2

    return-void
.end method

.method public setProximityListener(Lcom/glympse/android/core/GProximityListener;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/hal/bc;->cL:Lcom/glympse/android/core/GProximityListener;

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

    invoke-virtual {p0, v0}, Lcom/glympse/android/hal/bc;->startMonitoring(Lcom/glympse/android/core/GRegion;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public startMonitoring(Lcom/glympse/android/core/GRegion;)V
    .registers 12

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/glympse/android/hal/bc;->cM:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.glympse.android.hal.proximity.REGION_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/bc;->e:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v9, Lcom/glympse/android/hal/bd;

    invoke-direct {v9, p0, v8, p1}, Lcom/glympse/android/hal/bd;-><init>(Lcom/glympse/android/hal/bc;Landroid/app/PendingIntent;Lcom/glympse/android/core/GRegion;)V

    iget-object v1, p0, Lcom/glympse/android/hal/bc;->e:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/glympse/android/hal/bc;->ca:Landroid/location/LocationManager;

    invoke-interface {p1}, Lcom/glympse/android/core/GRegion;->getLatitude()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/glympse/android/core/GRegion;->getLongitude()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/glympse/android/core/GRegion;->getRadius()D

    move-result-wide v5

    double-to-float v5, v5

    const-wide/16 v6, -0x1

    invoke-virtual/range {v0 .. v8}, Landroid/location/LocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/glympse/android/hal/bc;->cM:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public stopMonitoring(Lcom/glympse/android/core/GRegion;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/hal/bc;->cM:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/bd;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/glympse/android/hal/bc;->ca:Landroid/location/LocationManager;

    invoke-virtual {v0}, Lcom/glympse/android/hal/bd;->L()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/glympse/android/hal/bc;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/glympse/android/hal/bc;->cM:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method
