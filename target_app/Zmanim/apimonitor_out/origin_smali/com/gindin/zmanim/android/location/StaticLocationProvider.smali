.class Lcom/gindin/zmanim/android/location/StaticLocationProvider;
.super Lcom/gindin/zmanim/android/location/LocationProvider;
.source "StaticLocationProvider.java"


# instance fields
.field private final ourLocation:Landroid/location/Location;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/gindin/zmanim/android/location/LocationProvider;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    new-instance v0, Landroid/location/Location;

    const-string v1, "Zmanim Place Provider"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gindin/zmanim/android/location/StaticLocationProvider;->ourLocation:Landroid/location/Location;

    invoke-direct {p0}, Lcom/gindin/zmanim/android/location/StaticLocationProvider;->updateLocationFromPlace()V

    return-void
.end method

.method private updateLocationFromPlace()V
    .registers 10

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/gindin/zmanim/android/location/StaticLocationProvider;->locationManagementPrefs:Landroid/content/SharedPreferences;

    sget-object v5, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;->PLACE:Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;

    invoke-virtual {v5}, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5c

    new-instance v2, Lcom/gindin/zmanim/android/location/StaticLocationProvider$1;

    invoke-direct {v2, p0}, Lcom/gindin/zmanim/android/location/StaticLocationProvider$1;-><init>(Lcom/gindin/zmanim/android/location/StaticLocationProvider;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v8

    invoke-virtual {v2, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :try_start_22
    invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_58

    :goto_28
    if-eqz v0, :cond_57

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/gindin/zmanim/android/location/StaticLocationProvider;->ourLocation:Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setTime(J)V

    iget-object v5, p0, Lcom/gindin/zmanim/android/location/StaticLocationProvider;->ourLocation:Landroid/location/Location;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    invoke-virtual {v4}, Landroid/location/Address;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    iget-object v4, p0, Lcom/gindin/zmanim/android/location/StaticLocationProvider;->ourLocation:Landroid/location/Location;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;

    invoke-virtual {p0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    :cond_57
    :goto_57
    return-void

    :catch_58
    move-exception v4

    move-object v1, v4

    const/4 v0, 0x0

    goto :goto_28

    :cond_5c
    new-instance v4, Lcom/gindin/zmanim/android/location/LocationError;

    sget-object v5, Lcom/gindin/zmanim/android/location/LocationError$Code;->BAD_INPUT:Lcom/gindin/zmanim/android/location/LocationError$Code;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid place: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/gindin/zmanim/android/location/LocationError;-><init>(Lcom/gindin/zmanim/android/location/LocationError$Code;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/gindin/zmanim/android/location/StaticLocationProvider;->fireError(Lcom/gindin/zmanim/android/location/LocationError;)V

    goto :goto_57
.end method


# virtual methods
.method public addListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/gindin/zmanim/android/location/LocationProvider;->addListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/StaticLocationProvider;->ourLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/gindin/zmanim/android/location/StaticLocationProvider;->ourLocation:Landroid/location/Location;

    invoke-virtual {p0, v1}, Lcom/gindin/zmanim/android/location/StaticLocationProvider;->lookupLocationName(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/gindin/zmanim/android/location/LocationProvider$Listener;->onLocationChanged(Landroid/location/Location;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected getLastKnownLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/StaticLocationProvider;->ourLocation:Landroid/location/Location;

    return-object v0
.end method

.method public onLocationProvidersChanged()V
    .registers 1

    return-void
.end method
