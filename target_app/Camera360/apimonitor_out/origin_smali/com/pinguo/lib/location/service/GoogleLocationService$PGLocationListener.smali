.class public Lcom/pinguo/lib/location/service/GoogleLocationService$PGLocationListener;
.super Ljava/lang/Object;
.source "GoogleLocationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/lib/location/service/GoogleLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PGLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/lib/location/service/GoogleLocationService;


# direct methods
.method public constructor <init>(Lcom/pinguo/lib/location/service/GoogleLocationService;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService$PGLocationListener;->this$0:Lcom/pinguo/lib/location/service/GoogleLocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8

    const/4 v5, 0x0

    if-nez p1, :cond_c

    sget-object v1, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Listener get location: null, ignore"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService$PGLocationListener;->this$0:Lcom/pinguo/lib/location/service/GoogleLocationService;

    #getter for: Lcom/pinguo/lib/location/service/GoogleLocationService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/pinguo/lib/location/service/GoogleLocationService;->access$0(Lcom/pinguo/lib/location/service/GoogleLocationService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "pref_last_known_location"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "lat"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "lon"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v1, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "location changed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService$PGLocationListener;->this$0:Lcom/pinguo/lib/location/service/GoogleLocationService;

    const-string/jumbo v2, ""

    new-instance v3, Lcom/pinguo/lib/location/data/PGLocation;

    invoke-direct {v3, p1}, Lcom/pinguo/lib/location/data/PGLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v1, v5, v2, v3}, Lcom/pinguo/lib/location/service/GoogleLocationService;->doCallback(ILjava/lang/String;Lcom/pinguo/lib/location/data/PGLocation;)V

    goto :goto_b
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProviderDisabled enter, provider="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService$PGLocationListener;->this$0:Lcom/pinguo/lib/location/service/GoogleLocationService;

    invoke-virtual {v0}, Lcom/pinguo/lib/location/service/GoogleLocationService;->stop()V

    iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService$PGLocationListener;->this$0:Lcom/pinguo/lib/location/service/GoogleLocationService;

    invoke-virtual {v0}, Lcom/pinguo/lib/location/service/GoogleLocationService;->start()V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProviderEnabled enter, provider="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService$PGLocationListener;->this$0:Lcom/pinguo/lib/location/service/GoogleLocationService;

    invoke-virtual {v0}, Lcom/pinguo/lib/location/service/GoogleLocationService;->stop()V

    iget-object v0, p0, Lcom/pinguo/lib/location/service/GoogleLocationService$PGLocationListener;->this$0:Lcom/pinguo/lib/location/service/GoogleLocationService;

    invoke-virtual {v0}, Lcom/pinguo/lib/location/service/GoogleLocationService;->start()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
