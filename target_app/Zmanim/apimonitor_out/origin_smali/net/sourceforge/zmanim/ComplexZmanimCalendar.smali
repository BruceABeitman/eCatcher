.class public Lnet/sourceforge/zmanim/ComplexZmanimCalendar;
.super Lnet/sourceforge/zmanim/ZmanimCalendar;
.source "ComplexZmanimCalendar.java"


# static fields
.field protected static final ZENITH_10_POINT_2:D = 100.2

.field protected static final ZENITH_11_DEGREES:D = 101.0

.field protected static final ZENITH_11_POINT_5:D = 101.5

.field protected static final ZENITH_13_DEGREES:D = 103.0

.field protected static final ZENITH_19_POINT_8:D = 109.8

.field protected static final ZENITH_26_DEGREES:D = 116.0

.field protected static final ZENITH_3_POINT_65:D = 93.65

.field protected static final ZENITH_3_POINT_7:D = 93.7

.field protected static final ZENITH_4_POINT_37:D = 94.37

.field protected static final ZENITH_4_POINT_61:D = 94.61

.field protected static final ZENITH_4_POINT_8:D = 94.8

.field protected static final ZENITH_5_POINT_88:D = 95.88

.field protected static final ZENITH_5_POINT_95:D = 95.95

.field protected static final ZENITH_7_POINT_083:D = 97.0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ateretTorahSunsetOffset:D


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;-><init>()V

    const-wide/high16 v0, 0x4044

    iput-wide v0, p0, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->ateretTorahSunsetOffset:D

    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V
    .registers 4

    invoke-direct {p0, p1}, Lnet/sourceforge/zmanim/ZmanimCalendar;-><init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V

    const-wide/high16 v0, 0x4044

    iput-wide v0, p0, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->ateretTorahSunsetOffset:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_6

    move v2, v5

    :goto_5
    return v2

    :cond_6
    instance-of v2, p1, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;

    if-nez v2, :cond_c

    move v2, v4

    goto :goto_5

    :cond_c
    move-object v0, p1

    check-cast v0, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;

    move-object v1, v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sourceforge/zmanim/util/GeoLocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

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

.method public getAlos120()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x6ddd00

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos120Zmanis()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_b
    return-object v2

    :cond_c
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v2

    const-wide/16 v3, -0x2

    mul-long/2addr v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    goto :goto_b
.end method

.method public getAlos16Point1Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x405a866666666666L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos18Degrees()Ljava/util/Date;
    .registers 3

    const-wide/high16 v0, 0x405b

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos19Point8Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x405b733333333333L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos26Degrees()Ljava/util/Date;
    .registers 3

    const-wide/high16 v0, 0x405d

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos60()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x36ee80

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos72Zmanis()Ljava/util/Date;
    .registers 8

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_b
    return-object v2

    :cond_c
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v2

    long-to-double v3, v0

    const-wide v5, -0x400ccccccccccccdL

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    goto :goto_b
.end method

.method public getAlos90()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x5265c0

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos90Zmanis()Ljava/util/Date;
    .registers 8

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_b
    return-object v2

    :cond_c
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v2

    long-to-double v3, v0

    const-wide/high16 v5, -0x4008

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    goto :goto_b
.end method

.method public getAlos96()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x57e400

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos96Zmanis()Ljava/util/Date;
    .registers 8

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_b
    return-object v2

    :cond_c
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v2

    long-to-double v3, v0

    const-wide v5, -0x4006666666666666L

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    goto :goto_b
.end method

.method public getAteretTorahSunsetOffset()D
    .registers 3

    iget-wide v0, p0, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->ateretTorahSunsetOffset:D

    return-wide v0
.end method

.method public getBainHasmashosRT13Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x4059c00000000000L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosRT13Point5MinutesBefore7Point083Degrees()Ljava/util/Date;
    .registers 4

    const-wide v0, 0x4058400000000000L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    const-wide v1, -0x3ed747e000000000L

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosRT2Stars()Ljava/util/Date;
    .registers 8

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v1

    if-eqz v0, :cond_c

    if-nez v1, :cond_e

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return-object v2

    :cond_e
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide v5, 0x3fd1c71c71c71c72L

    mul-double/2addr v3, v5

    invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    goto :goto_d
.end method

.method public getBainHasmashosRT58Point5Minutes()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    const-wide v1, 0x414ac77800000000L

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFixedLocalChatzos()Ljava/util/Date;
    .registers 7

    const-wide/high16 v0, 0x4028

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    long-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLocalMeanTimeOffset()J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedola16Point1Degrees()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis16Point1Degrees()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x401a

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedola30Minutes()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x1b7740

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedola72Minutes()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis72Minutes()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x401a

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedolaAteretTorah()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisAteretTorah()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x401a

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedolaGreaterThan30()Ljava/util/Date;
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getMinchaGedola()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getMinchaGedola()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    goto :goto_d

    :cond_21
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getMinchaGedola()Ljava/util/Date;

    move-result-object v0

    goto :goto_d
.end method

.method public getMinchaKetana16Point1Degrees()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis16Point1Degrees()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x4023

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaKetana72Minutes()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis72Minutes()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x4023

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaKetanaAteretTorah()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisAteretTorah()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x4023

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMisheyakir10Point2Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x40590ccccccccccdL

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMisheyakir11Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x4059400000000000L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMisheyakir11Point5Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x4059600000000000L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagAlos16Point1ToTzaisGeonim7Point083Degrees()Ljava/util/Date;
    .registers 8

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzaisGeonim7Point083Degrees()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    long-to-double v3, v0

    const-wide v5, 0x4025800000000000L

    mul-double/2addr v3, v5

    invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getPlagAlosToSunset()Ljava/util/Date;
    .registers 8

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    long-to-double v3, v0

    const-wide v5, 0x4025800000000000L

    mul-double/2addr v3, v5

    invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getPlagHamincha120Minutes()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos120()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis120Minutes()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha120MinutesZmanis()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos120Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis120MinutesZmanis()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha16Point1Degrees()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis16Point1Degrees()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha18Degrees()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos18Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis18Degrees()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha19Point8Degrees()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis19Point8Degrees()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha26Degrees()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos26Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis26Degrees()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha60Minutes()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos60()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis60Minutes()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha72Minutes()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis72Minutes()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha72MinutesZmanis()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis72MinutesZmanis()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha90Minutes()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis90Minutes()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha90MinutesZmanis()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis90MinutesZmanis()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha96Minutes()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis96Minutes()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha96MinutesZmanis()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis96MinutesZmanis()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHaminchaAteretTorah()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisAteretTorah()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4025800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getShaahZmanis120Minutes()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos120()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais120()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis120MinutesZmanis()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos120Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais120Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis16Point1Degrees()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais16Point1Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis18Degrees()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos18Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais18Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis19Point8Degrees()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais19Point8Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis26Degrees()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos26Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais26Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis60Minutes()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos60()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais60()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis72Minutes()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisMGA()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis72MinutesZmanis()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais72Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis90Minutes()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais90()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis90MinutesZmanis()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais90Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis96Minutes()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais96()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis96MinutesZmanis()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais96Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanisAteretTorah()J
    .registers 3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzaisAteretTorah()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSofZmanShma3HoursBeforeChatzos()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0xa4cb80

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaAlos16Point1ToSunset()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    const-wide/16 v3, 0x3

    mul-long/2addr v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSofZmanShmaAlos16Point1ToTzaisGeonim7Point083Degrees()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzaisGeonim7Point083Degrees()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    const-wide/16 v3, 0x3

    mul-long/2addr v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSofZmanShmaAteretTorah()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisAteretTorah()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaFixedLocal()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0xa4cb80

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaKolEliyahu()Ljava/util/Date;
    .registers 8

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_e

    :cond_c
    const/4 v3, 0x0

    :goto_d
    return-object v3

    :cond_e
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long v1, v3, v5

    neg-long v3, v1

    invoke-virtual {p0, v0, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v3

    goto :goto_d
.end method

.method public getSofZmanShmaMGA120Minutes()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos120()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis120Minutes()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA16Point1Degrees()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis16Point1Degrees()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA19Point8Degrees()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis19Point8Degrees()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA72Minutes()Ljava/util/Date;
    .registers 2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSofZmanShmaMGA()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA72MinutesZmanis()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis72MinutesZmanis()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA90Minutes()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis90Minutes()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA90MinutesZmanis()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis90MinutesZmanis()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA96Minutes()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis96Minutes()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA96MinutesZmanis()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis96MinutesZmanis()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfila2HoursBeforeChatzos()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x6ddd00

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaFixedLocal()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x6ddd00

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA120Minutes()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos120()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis120Minutes()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA16Point1Degrees()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis16Point1Degrees()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA19Point8Degrees()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis19Point8Degrees()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA72Minutes()Ljava/util/Date;
    .registers 2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSofZmanTfilaMGA()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA72MinutesZmanis()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis72MinutesZmanis()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA90Minutes()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis90Minutes()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA90MinutesZmanis()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis90MinutesZmanis()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA96Minutes()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis96Minutes()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA96MinutesZmanis()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis96MinutesZmanis()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilahAteretTorah()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisAteretTorah()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais120()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x6ddd00

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais120Zmanis()Ljava/util/Date;
    .registers 8

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_b
    return-object v2

    :cond_c
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v2

    long-to-double v3, v0

    const-wide/high16 v5, 0x4000

    mul-double/2addr v3, v5

    invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    goto :goto_b
.end method

.method public getTzais16Point1Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x405a866666666666L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais18Degrees()Ljava/util/Date;
    .registers 3

    const-wide/high16 v0, 0x405b

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais19Point8Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x405b733333333333L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais26Degrees()Ljava/util/Date;
    .registers 3

    const-wide/high16 v0, 0x405d

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais60()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x36ee80

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais72Zmanis()Ljava/util/Date;
    .registers 8

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_b
    return-object v2

    :cond_c
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v2

    long-to-double v3, v0

    const-wide v5, 0x3ff3333333333333L

    mul-double/2addr v3, v5

    invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    goto :goto_b
.end method

.method public getTzais90()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x5265c0

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais90Zmanis()Ljava/util/Date;
    .registers 8

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_b
    return-object v2

    :cond_c
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v2

    long-to-double v3, v0

    const-wide/high16 v5, 0x3ff8

    mul-double/2addr v3, v5

    invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    goto :goto_b
.end method

.method public getTzais96()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x57e400

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais96Zmanis()Ljava/util/Date;
    .registers 8

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_b
    return-object v2

    :cond_c
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v2

    long-to-double v3, v0

    const-wide v5, 0x3ff999999999999aL

    mul-double/2addr v3, v5

    invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    goto :goto_b
.end method

.method public getTzaisAteretTorah()Ljava/util/Date;
    .registers 6

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAteretTorahSunsetOffset()D

    move-result-wide v1

    const-wide v3, 0x40ed4c0000000000L

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim3Point65Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x405769999999999aL

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim4Point37Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x405797ae147ae148L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim4Point61Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x4057a70a3d70a3d7L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim4Point8Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x4057b33333333333L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim5Point88Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x4057f851eb851eb8L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim5Point95Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x4057fccccccccccdL

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim7Point083Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x4058400000000000L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim8Point5Degrees()Ljava/util/Date;
    .registers 3

    const-wide v0, 0x4058a00000000000L

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/GeoLocation;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public setAteretTorahSunsetOffset(D)V
    .registers 3

    iput-wide p1, p0, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->ateretTorahSunsetOffset:D

    return-void
.end method
