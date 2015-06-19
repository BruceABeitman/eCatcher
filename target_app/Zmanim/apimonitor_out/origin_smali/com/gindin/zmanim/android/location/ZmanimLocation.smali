.class public Lcom/gindin/zmanim/android/location/ZmanimLocation;
.super Lnet/sourceforge/zmanim/util/GeoLocation;
.source "ZmanimLocation.java"


# instance fields
.field public final accuracy:F

.field public final locationTime:J

.field public final providerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 7

    const-wide/16 v3, 0x0

    invoke-direct {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;-><init>()V

    const-string v0, "Zmanim"

    iput-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocation;->providerName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocation;->locationTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocation;->accuracy:F

    const-string v0, "Unknown"

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setLocationName(Ljava/lang/String;)V

    const/16 v1, 0x2f

    const/16 v2, 0x25

    const-string v5, "N"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setLatitude(IIDLjava/lang/String;)V

    const/16 v1, 0x7a

    const/16 v2, 0x14

    const-string v5, "W"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setLongitude(IIDLjava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setElevation(D)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;Ljava/lang/String;Ljava/util/TimeZone;)V
    .registers 8

    invoke-direct {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocation;->providerName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocation;->locationTime:J

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    iput v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocation;->accuracy:F

    :goto_1b
    invoke-virtual {p0, p2}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setLocationName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setLatitude(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setLongitude(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_3c

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3e

    :cond_3c
    const-wide/16 v0, 0x0

    :cond_3e
    invoke-virtual {p0, v0, v1}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setElevation(D)V

    if-nez p3, :cond_50

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_4a
    return-void

    :cond_4b
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocation;->accuracy:F

    goto :goto_1b

    :cond_50
    invoke-virtual {p0, p3}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_4a
.end method

.method public constructor <init>(Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
    .registers 4

    invoke-direct {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;-><init>()V

    iget-object v0, p1, Lcom/gindin/zmanim/android/location/ZmanimLocation;->providerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocation;->providerName:Ljava/lang/String;

    iget-wide v0, p1, Lcom/gindin/zmanim/android/location/ZmanimLocation;->locationTime:J

    iput-wide v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocation;->locationTime:J

    iget v0, p1, Lcom/gindin/zmanim/android/location/ZmanimLocation;->accuracy:F

    iput v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocation;->accuracy:F

    invoke-virtual {p1}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getLocationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setLocationName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setLatitude(D)V

    invoke-virtual {p1}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setLongitude(D)V

    invoke-virtual {p1}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getElevation()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setElevation(D)V

    invoke-virtual {p1}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    const v0, 0x36ee80

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Location Name:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getLocationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\nLatitude:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " deg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\nLongitude:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " deg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\nElevation:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getElevation()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " Meters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\nTZ Name:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\nTZ GMT Offset:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "\nTZ DST Offset:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    div-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "\nProvider:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/gindin/zmanim/android/location/ZmanimLocation;->providerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\nTime:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/gindin/zmanim/android/location/ZmanimLocation;->locationTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "\nAccuacy:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/gindin/zmanim/android/location/ZmanimLocation;->accuracy:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
