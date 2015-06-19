.class Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;
.super Lcom/gindin/zmanim/android/location/LocationProvider;
.source "LatitudeLongitudeLocationProvider.java"


# instance fields
.field private final ourLocation:Landroid/location/Location;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/gindin/zmanim/android/location/LocationProvider;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    new-instance v0, Landroid/location/Location;

    const-string v1, "Zmanim Latitude & Longitude Provider"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->ourLocation:Landroid/location/Location;

    invoke-direct {p0}, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->updateLatitudeFromPrefs()V

    invoke-direct {p0}, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->updateLongitudeFromPrefs()V

    return-void
.end method

.method private updateLatitudeFromPrefs()V
    .registers 7

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->locationManagementPrefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;->LATITUDE:Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;

    invoke-virtual {v3}, Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_e
    iget-object v2, p0, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->ourLocation:Landroid/location/Location;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->ourLocation:Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setTime(J)V
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v2

    move-object v0, v2

    new-instance v2, Lcom/gindin/zmanim/android/location/LocationError;

    sget-object v3, Lcom/gindin/zmanim/android/location/LocationError$Code;->BAD_INPUT:Lcom/gindin/zmanim/android/location/LocationError$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid latitude: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gindin/zmanim/android/location/LocationError;-><init>(Lcom/gindin/zmanim/android/location/LocationError$Code;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->fireError(Lcom/gindin/zmanim/android/location/LocationError;)V

    goto :goto_20
.end method

.method private updateLongitudeFromPrefs()V
    .registers 7

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->locationManagementPrefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;->LONGITUDE:Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;

    invoke-virtual {v3}, Lcom/gindin/zmanim/android/prefs/LocationProviders$LatitudeLongitudeProviderOptions;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_e
    iget-object v2, p0, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->ourLocation:Landroid/location/Location;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->ourLocation:Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setTime(J)V
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v2

    move-object v0, v2

    new-instance v2, Lcom/gindin/zmanim/android/location/LocationError;

    sget-object v3, Lcom/gindin/zmanim/android/location/LocationError$Code;->BAD_INPUT:Lcom/gindin/zmanim/android/location/LocationError$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid longitude: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gindin/zmanim/android/location/LocationError;-><init>(Lcom/gindin/zmanim/android/location/LocationError$Code;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->fireError(Lcom/gindin/zmanim/android/location/LocationError;)V

    goto :goto_20
.end method


# virtual methods
.method public addListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/gindin/zmanim/android/location/LocationProvider;->addListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->ourLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->ourLocation:Landroid/location/Location;

    invoke-virtual {p0, v1}, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->lookupLocationName(Landroid/location/Location;)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;->ourLocation:Landroid/location/Location;

    return-object v0
.end method

.method public onLocationProvidersChanged()V
    .registers 1

    return-void
.end method
