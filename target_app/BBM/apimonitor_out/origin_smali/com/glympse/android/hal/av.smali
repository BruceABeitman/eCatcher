.class Lcom/glympse/android/hal/av;
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

    iput-object p1, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/hal/av;->cw:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/hal/at;Lcom/glympse/android/hal/at$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/glympse/android/hal/av;-><init>(Lcom/glympse/android/hal/at;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/location/LocationManager;)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/glympse/android/hal/av;->cw:Z

    if-eqz v0, :cond_16

    :try_start_5
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x3

    const-string v1, "[ProviderGps::stop] Updates removed"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_21

    :goto_e
    iput-boolean v2, p0, Lcom/glympse/android/hal/av;->cw:Z

    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glympse/android/hal/at;->b(Lcom/glympse/android/hal/at;I)I

    :cond_16
    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    invoke-virtual {v0}, Lcom/glympse/android/hal/at;->I()V

    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    invoke-static {v0, v2}, Lcom/glympse/android/hal/at;->a(Lcom/glympse/android/hal/at;Z)Z

    return-void

    :catch_21
    move-exception v0

    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_e
.end method

.method protected a(Landroid/location/LocationManager;JF)Z
    .registers 12

    const/4 v6, 0x0

    :try_start_1
    iget-boolean v0, p0, Lcom/glympse/android/hal/av;->cw:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/hal/av;->cw:Z

    const-string v1, "gps"

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_14

    :cond_11
    :goto_11
    iget-boolean v0, p0, Lcom/glympse/android/hal/av;->cw:Z

    return v0

    :catch_14
    move-exception v0

    iput-boolean v6, p0, Lcom/glympse/android/hal/av;->cw:Z

    invoke-static {v0, v6}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_11
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    if-eqz p1, :cond_22

    :try_start_2
    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    const-string v1, "GPS"

    invoke-virtual {v0, v1, p1}, Lcom/glympse/android/hal/at;->a(Ljava/lang/String;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/at;->e(I)V

    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    invoke-virtual {v0}, Lcom/glympse/android/hal/at;->I()V

    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glympse/android/hal/at;->a(Lcom/glympse/android/hal/at;Z)Z

    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    invoke-virtual {v0}, Lcom/glympse/android/hal/at;->C()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_22
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ProviderGps::onProviderDisabled] - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/glympse/android/hal/av;->cw:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    invoke-virtual {v0}, Lcom/glympse/android/hal/at;->H()V

    :cond_1c
    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/at;->e(I)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ProviderGps::onProviderEnabled] - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/at;->e(I)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 10

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x3

    if-nez p2, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ProviderGps::onStatusChanged] - OUT_OF_SERVICE, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    invoke-virtual {v0, v5}, Lcom/glympse/android/hal/at;->e(I)V

    :goto_1d
    if-eq v4, p2, :cond_2d

    const-string v0, "[ProviderGps::onStatusChanged] Not AVAILABLE"

    invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/glympse/android/hal/av;->cw:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    invoke-virtual {v0}, Lcom/glympse/android/hal/at;->H()V

    :cond_2d
    return-void

    :cond_2e
    if-ne v3, p2, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ProviderGps::onStatusChanged] - TEMPORARILY_UNAVAILABLE, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    invoke-virtual {v0, v5}, Lcom/glympse/android/hal/at;->e(I)V

    goto :goto_1d

    :cond_48
    if-ne v4, p2, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ProviderGps::onStatusChanged] - AVAILABLE, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/hal/av;->cv:Lcom/glympse/android/hal/at;

    invoke-virtual {v0, v3}, Lcom/glympse/android/hal/at;->e(I)V

    goto :goto_1d

    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ProviderGps::onStatusChanged] - UNKNOWN("

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

    goto :goto_1d
.end method
