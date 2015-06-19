.class public Lnet/sourceforge/zmanim/AstronomicalCalendar;
.super Ljava/lang/Object;
.source "AstronomicalCalendar.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ASTRONOMICAL_ZENITH:D = 108.0

.field public static final CIVIL_ZENITH:D = 96.0

.field public static final GEOMETRIC_ZENITH:D = 90.0

.field static final HOUR_MILLIS:J = 0x36ee80L

.field static final MINUTE_MILLIS:J = 0xea60L

.field public static final NAUTICAL_ZENITH:D = 102.0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private astronomicalCalculator:Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

.field private calendar:Ljava/util/Calendar;

.field private geoLocation:Lnet/sourceforge/zmanim/util/GeoLocation;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lnet/sourceforge/zmanim/util/GeoLocation;

    invoke-direct {v0}, Lnet/sourceforge/zmanim/util/GeoLocation;-><init>()V

    invoke-direct {p0, v0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;-><init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V

    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->setCalendar(Ljava/util/Calendar;)V

    invoke-virtual {p0, p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->setGeoLocation(Lnet/sourceforge/zmanim/util/GeoLocation;)V

    invoke-static {}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getDefault()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->setAstronomicalCalculator(Lnet/sourceforge/zmanim/util/AstronomicalCalculator;)V

    return-void
.end method

.method private getAdjustedSunsetDate(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .registers 6

    if-eqz p1, :cond_21

    if-eqz p2, :cond_21

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_21

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    :goto_20
    return-object v1

    :cond_21
    move-object v1, p1

    goto :goto_20
.end method

.method private getOffsetTime(D)D
    .registers 12

    const-wide/32 v7, 0x36ee80

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    int-to-long v5, v5

    div-long/2addr v5, v7

    long-to-double v3, v5

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v5

    int-to-long v5, v5

    div-long/2addr v5, v7

    long-to-double v1, v5

    :cond_39
    add-double v5, p1, v3

    add-double/2addr v5, v1

    return-wide v5
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lnet/sourceforge/zmanim/AstronomicalCalendar;

    move-object v1, v0
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_9} :catch_31

    :goto_9
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/zmanim/util/GeoLocation;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sourceforge/zmanim/util/GeoLocation;

    invoke-virtual {v1, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->setGeoLocation(Lnet/sourceforge/zmanim/util/GeoLocation;)V

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->setCalendar(Ljava/util/Calendar;)V

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    invoke-virtual {v1, p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->setAstronomicalCalculator(Lnet/sourceforge/zmanim/util/AstronomicalCalculator;)V

    return-object v1

    :catch_31
    move-exception v3

    move-object v2, v3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Required by the compiler. Should never be reached since we implement clone()"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_6

    move v2, v5

    :goto_5
    return v2

    :cond_6
    instance-of v2, p1, Lnet/sourceforge/zmanim/AstronomicalCalendar;

    if-nez v2, :cond_c

    move v2, v4

    goto :goto_5

    :cond_c
    move-object v0, p1

    check-cast v0, Lnet/sourceforge/zmanim/AstronomicalCalendar;

    move-object v1, v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sourceforge/zmanim/util/GeoLocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move v2, v5

    goto :goto_5

    :cond_3c
    move v2, v4

    goto :goto_5
.end method

.method public getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
    .registers 2

    iget-object v0, p0, Lnet/sourceforge/zmanim/AstronomicalCalendar;->astronomicalCalculator:Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    return-object v0
.end method

.method public getBeginAstronomicalTwilight()Ljava/util/Date;
    .registers 3

    const-wide/high16 v0, 0x405b

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBeginCivilTwilight()Ljava/util/Date;
    .registers 3

    const-wide/high16 v0, 0x4058

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBeginNauticalTwilight()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x4059800000000000L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lnet/sourceforge/zmanim/AstronomicalCalendar;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method protected getDateFromTime(D)Ljava/util/Date;
    .registers 16

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const-wide/high16 v8, 0x404e

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    :goto_c
    return-object v4

    :cond_d
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getOffsetTime(D)D

    move-result-wide p1

    const-wide/high16 v4, 0x406e

    add-double/2addr v4, p1

    const-wide/high16 v6, 0x4038

    rem-double p1, v4, v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v10, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v11, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v12, v4}, Ljava/util/Calendar;->set(II)V

    double-to-int v1, p1

    int-to-double v4, v1

    sub-double/2addr p1, v4

    mul-double/2addr p1, v8

    double-to-int v2, p1

    int-to-double v4, v2

    sub-double/2addr p1, v4

    mul-double/2addr p1, v8

    double-to-int v3, p1

    int-to-double v4, v3

    sub-double/2addr p1, v4

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    const-wide v5, 0x408f400000000000L

    mul-double/2addr v5, p1

    double-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    goto :goto_c
.end method

.method public getEndAstronomicalTwilight()Ljava/util/Date;
    .registers 3

    const-wide/high16 v0, 0x405b

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getEndCivilTwilight()Ljava/util/Date;
    .registers 3

    const-wide/high16 v0, 0x4058

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getEndNauticalTwilight()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x4059800000000000L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
    .registers 2

    iget-object v0, p0, Lnet/sourceforge/zmanim/AstronomicalCalendar;->geoLocation:Lnet/sourceforge/zmanim/util/GeoLocation;

    return-object v0
.end method

.method public getSeaLevelSunrise()Ljava/util/Date;
    .registers 5

    const-wide v2, 0x4056800000000000L

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getUTCSeaLevelSunrise(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    :goto_10
    return-object v2

    :cond_11
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v2

    goto :goto_10
.end method

.method public getSeaLevelSunset()Ljava/util/Date;
    .registers 5

    const-wide v2, 0x4056800000000000L

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getUTCSeaLevelSunset(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    :goto_10
    return-object v2

    :cond_11
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAdjustedSunsetDate(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    goto :goto_10
.end method

.method public getSunTransit()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getTemporalHour()J

    move-result-wide v1

    const-wide/16 v3, 0x6

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSunrise()Ljava/util/Date;
    .registers 5

    const-wide v2, 0x4056800000000000L

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getUTCSunrise(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    :goto_10
    return-object v2

    :cond_11
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v2

    goto :goto_10
.end method

.method public getSunriseOffsetByDegrees(D)Ljava/util/Date;
    .registers 6

    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getUTCSunrise(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    :goto_b
    return-object v2

    :cond_c
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v2

    goto :goto_b
.end method

.method public getSunriseSolarDipFromOffset(D)D
    .registers 11

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v4

    const-wide v5, 0x40ed4c0000000000L

    mul-double/2addr v5, p1

    neg-double v5, v5

    invoke-virtual {p0, v4, v5, v6}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v3

    new-instance v0, Ljava/math/BigDecimal;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v1, Ljava/math/BigDecimal;

    const-string v4, "0.0001"

    invoke-direct {v1, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_20
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_41

    :cond_2e
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const-wide v4, 0x4056800000000000L

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v2

    goto :goto_20

    :cond_41
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    return-wide v4
.end method

.method public getSunset()Ljava/util/Date;
    .registers 5

    const-wide v2, 0x4056800000000000L

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getUTCSunset(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    :goto_10
    return-object v2

    :cond_11
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAdjustedSunsetDate(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    goto :goto_10
.end method

.method public getSunsetOffsetByDegrees(D)Ljava/util/Date;
    .registers 7

    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getUTCSunset(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    :goto_b
    return-object v2

    :cond_c
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAdjustedSunsetDate(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    goto :goto_b
.end method

.method public getSunsetSolarDipFromOffset(D)D
    .registers 11

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v4

    const-wide v5, 0x40ed4c0000000000L

    mul-double/2addr v5, p1

    invoke-virtual {p0, v4, v5, v6}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v3

    new-instance v0, Ljava/math/BigDecimal;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v1, Ljava/math/BigDecimal;

    const-string v4, "0.0001"

    invoke-direct {v1, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_1f
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_40

    :cond_2d
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const-wide v4, 0x4056800000000000L

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v2

    goto :goto_1f

    :cond_40
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    return-wide v4
.end method

.method public getTemporalHour()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J
    .registers 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_7

    :cond_4
    const-wide/high16 v0, -0x8000

    :goto_6
    return-wide v0

    :cond_7
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc

    div-long/2addr v0, v2

    goto :goto_6
.end method

.method public getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;
    .registers 6

    double-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;
    .registers 7

    if-eqz p1, :cond_8

    const-wide/high16 v0, -0x8000

    cmp-long v0, p2, v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_9
.end method

.method public getUTCSeaLevelSunrise(D)D
    .registers 5

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getUTCSunrise(Lnet/sourceforge/zmanim/AstronomicalCalendar;DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getUTCSeaLevelSunset(D)D
    .registers 5

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getUTCSunset(Lnet/sourceforge/zmanim/AstronomicalCalendar;DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getUTCSunrise(D)D
    .registers 5

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getUTCSunrise(Lnet/sourceforge/zmanim/AstronomicalCalendar;DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getUTCSunset(D)D
    .registers 5

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getUTCSunset(Lnet/sourceforge/zmanim/AstronomicalCalendar;DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/GeoLocation;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public setAstronomicalCalculator(Lnet/sourceforge/zmanim/util/AstronomicalCalculator;)V
    .registers 2

    iput-object p1, p0, Lnet/sourceforge/zmanim/AstronomicalCalendar;->astronomicalCalculator:Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .registers 4

    iput-object p1, p0, Lnet/sourceforge/zmanim/AstronomicalCalendar;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_17
    return-void
.end method

.method public setGeoLocation(Lnet/sourceforge/zmanim/util/GeoLocation;)V
    .registers 4

    iput-object p1, p0, Lnet/sourceforge/zmanim/AstronomicalCalendar;->geoLocation:Lnet/sourceforge/zmanim/util/GeoLocation;

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->toXML(Lnet/sourceforge/zmanim/AstronomicalCalendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
