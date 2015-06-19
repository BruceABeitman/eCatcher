.class Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;
.super Ljava/lang/Object;
.source "DynamicLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/android/location/DynamicLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastFixedLocationFactory"
.end annotation


# static fields
.field private static final ACCURACY:Ljava/lang/String; = "lastFixAccuracy"

.field private static final ALTITUDE:Ljava/lang/String; = "lastfixAltitude"

.field private static final BEARING:Ljava/lang/String; = "lastfixBearing"

.field private static final HAS_ACCURACY:Ljava/lang/String; = "lastFixHasAccuracy"

.field private static final HAS_ALTITUDE:Ljava/lang/String; = "lastfixHasAltitude"

.field private static final HAS_BEARING:Ljava/lang/String; = "lastfixHasBearing"

.field private static final HAS_SPEED:Ljava/lang/String; = "lastfixHasSpeed"

.field private static final LATITUDE:Ljava/lang/String; = "lastfixLatitude"

.field private static final LONGITUDE:Ljava/lang/String; = "lastfixLongitude"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "lastFixProviderName"

.field private static final SPEED:Ljava/lang/String; = "lastfixSpeed"

.field private static final TIME:Ljava/lang/String; = "lastfixTime"


# instance fields
.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method get()Landroid/location/Location;
    .registers 8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "lastFixProviderName"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    move-object v2, v4

    :goto_e
    return-object v2

    :cond_f
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "lastFixHasAccuracy"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "lastFixAccuracy"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/location/Location;->setAccuracy(F)V

    :cond_29
    iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "lastfixHasAltitude"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "lastfixAltitude"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    :cond_44
    iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "lastfixHasBearing"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "lastfixBearing"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/location/Location;->setBearing(F)V

    :cond_59
    iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "lastfixLatitude"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "lastfixLongitude"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "lastfixHasSpeed"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "lastfixSpeed"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/location/Location;->setSpeed(F)V

    :cond_90
    iget-object v2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "lastfixTime"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    move-object v2, v1

    goto/16 :goto_e
.end method

.method save(Landroid/location/Location;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$LastFixedLocationFactory;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastFixHasAccuracy"

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastFixAccuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastfixHasAltitude"

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastfixAltitude"

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastfixHasBearing"

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastfixBearing"

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastfixLatitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastfixLongitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastFixProviderName"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastfixHasSpeed"

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastfixSpeed"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastfixTime"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2
.end method
