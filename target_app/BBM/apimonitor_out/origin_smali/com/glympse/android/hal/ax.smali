.class Lcom/glympse/android/hal/ax;
.super Ljava/lang/Object;
.source "LocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic cv:Lcom/glympse/android/hal/at;

.field protected cw:Z


# direct methods
.method private constructor <init>(Lcom/glympse/android/hal/at;)V
    .registers 3

    iput-object p1, p0, Lcom/glympse/android/hal/ax;->cv:Lcom/glympse/android/hal/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/hal/ax;->cw:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/hal/at;Lcom/glympse/android/hal/at$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/glympse/android/hal/ax;-><init>(Lcom/glympse/android/hal/at;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/location/LocationManager;)V
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/glympse/android/hal/ax;->cw:Z

    if-eqz v0, :cond_a

    :try_start_5
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_b

    :goto_8
    iput-boolean v1, p0, Lcom/glympse/android/hal/ax;->cw:Z

    :cond_a
    return-void

    :catch_b
    move-exception v0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_8
.end method

.method protected a(Landroid/location/LocationManager;II)Z
    .registers 11

    const/4 v6, 0x0

    :try_start_1
    iget-boolean v0, p0, Lcom/glympse/android/hal/ax;->cw:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/hal/ax;->cw:Z

    const-string v1, "passive"

    int-to-long v2, p2

    int-to-float v4, p3

    move-object v0, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_14

    :cond_11
    :goto_11
    iget-boolean v0, p0, Lcom/glympse/android/hal/ax;->cw:Z

    return v0

    :catch_14
    move-exception v0

    iput-boolean v6, p0, Lcom/glympse/android/hal/ax;->cw:Z

    invoke-static {v0, v6}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_11
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    if-eqz p1, :cond_9

    :try_start_2
    iget-object v0, p0, Lcom/glympse/android/hal/ax;->cv:Lcom/glympse/android/hal/at;

    const-string v1, "PASSIVE"

    invoke-virtual {v0, v1, p1}, Lcom/glympse/android/hal/at;->a(Ljava/lang/String;Landroid/location/Location;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_9
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ProviderPassive::onProviderDisabled] - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ProviderPassive::onProviderEnabled] - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7

    const/4 v2, 0x3

    if-nez p2, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ProviderPassive::onStatusChanged] - OUT_OF_SERVICE, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :goto_15
    return-void

    :cond_16
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ProviderPassive::onStatusChanged] - TEMPORARILY_UNAVAILABLE, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_15

    :cond_2c
    const/4 v0, 0x2

    if-ne v0, p2, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ProviderPassive::onStatusChanged] - AVAILABLE, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_15

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ProviderPassive::onStatusChanged] - UNKNOWN("

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

    goto :goto_15
.end method
