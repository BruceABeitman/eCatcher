.class public Lnet/sourceforge/zmanim/util/NOAACalculator;
.super Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
.source "NOAACalculator.java"


# instance fields
.field private calculatorName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;-><init>()V

    const-string v0, "US National Oceanic and Atmospheric Administration Algorithm"

    iput-object v0, p0, Lnet/sourceforge/zmanim/util/NOAACalculator;->calculatorName:Ljava/lang/String;

    return-void
.end method

.method private static calcEccentricityEarthOrbit(D)D
    .registers 10

    const-wide v2, 0x3f911c11725d0380L

    const-wide v4, 0x3f060a1c525fe303L

    const-wide v6, 0x3e810160fc64d800L

    mul-double/2addr v6, p0

    add-double/2addr v4, v6

    mul-double/2addr v4, p0

    sub-double v0, v2, v4

    return-wide v0
.end method

.method private static calcEquationOfTime(D)D
    .registers 16

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcObliquityCorrection(D)D

    move-result-wide v2

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcGeomMeanLongSun(D)D

    move-result-wide v4

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcEccentricityEarthOrbit(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcGeomMeanAnomalySun(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4000

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    mul-double v12, p0, p0

    const-wide/high16 p0, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    mul-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 p0, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    mul-double/2addr p0, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v8, 0x4010

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v4, 0x4000

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v12

    const-wide/high16 v6, 0x4000

    mul-double/2addr v6, v0

    mul-double/2addr v6, v10

    sub-double/2addr v2, v6

    const-wide/high16 v6, 0x4010

    mul-double/2addr v6, v0

    mul-double/2addr v6, v12

    mul-double/2addr v6, v10

    mul-double/2addr p0, v6

    add-double/2addr p0, v2

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v2, v12

    mul-double/2addr v2, v12

    mul-double/2addr v2, v8

    sub-double/2addr p0, v2

    const-wide/high16 v2, 0x3ff4

    mul-double/2addr v2, v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4010

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private static calcGeomMeanAnomalySun(D)D
    .registers 10

    const-wide v2, 0x407658773c0c1fc9L

    const-wide v4, 0x40e193e19bf9c62aL

    const-wide v6, 0x3f242550f260db0cL

    mul-double/2addr v6, p0

    sub-double/2addr v4, v6

    mul-double/2addr v4, p0

    add-double v0, v2, v4

    return-wide v0
.end method

.method private static calcGeomMeanLongSun(D)D
    .registers 12

    const-wide v8, 0x4076800000000000L

    const-wide v2, 0x407187769ec2ce46L

    const-wide v4, 0x40e19418a272862fL

    const-wide v6, 0x3f33deda158aabc0L

    mul-double/2addr v6, p0

    add-double/2addr v4, v6

    mul-double/2addr v4, p0

    add-double v0, v2, v4

    :goto_19
    cmpl-double v2, v0, v8

    if-lez v2, :cond_1f

    sub-double/2addr v0, v8

    goto :goto_19

    :cond_1f
    :goto_1f
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_27

    add-double/2addr v0, v8

    goto :goto_1f

    :cond_27
    return-wide v0
.end method

.method private static calcHourAngleSunrise(DDD)D
    .registers 10

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    div-double/2addr p4, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->tan(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    sub-double p0, p4, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static calcHourAngleSunset(DDD)D
    .registers 10

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    div-double/2addr p4, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->tan(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    sub-double p0, p4, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    neg-double p0, p0

    return-wide p0
.end method

.method private static calcJD(Ljava/util/Calendar;)D
    .registers 14

    const/4 v8, 0x2

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-gt v5, v8, :cond_17

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, 0xc

    :cond_17
    div-int/lit8 v7, v6, 0x64

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v7, 0x4000

    sub-double/2addr v7, v0

    const-wide/high16 v9, 0x4010

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    add-double v2, v7, v9

    const-wide v7, 0x4076d40000000000L

    add-int/lit16 v9, v6, 0x126c

    int-to-double v9, v9

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    const-wide v9, 0x403e99a027525461L

    add-int/lit8 v11, v5, 0x1

    int-to-double v11, v11

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    add-double/2addr v7, v9

    int-to-double v9, v4

    add-double/2addr v7, v9

    add-double/2addr v7, v2

    const-wide v9, 0x4097d20000000000L

    sub-double/2addr v7, v9

    return-wide v7
.end method

.method private static calcJDFromJulianCent(D)D
    .registers 6

    const-wide v0, 0x40e1d5a000000000L

    mul-double/2addr v0, p0

    const-wide v2, 0x4142b42c80000000L

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static calcMeanObliquityOfEcliptic(D)D
    .registers 16

    const-wide/high16 v12, 0x404e

    const-wide v4, 0x403572b020c49ba6L

    const-wide v6, 0x40476851eb851eb8L

    const-wide v8, 0x3f4355475a31a4beL

    const-wide v10, 0x3f5db445ed4a1ad6L

    mul-double/2addr v10, p0

    sub-double/2addr v8, v10

    mul-double/2addr v8, p0

    add-double/2addr v6, v8

    mul-double/2addr v6, p0

    sub-double v2, v4, v6

    const-wide/high16 v4, 0x4037

    const-wide/high16 v6, 0x403a

    div-double v8, v2, v12

    add-double/2addr v6, v8

    div-double/2addr v6, v12

    add-double v0, v4, v6

    return-wide v0
.end method

.method private static calcObliquityCorrection(D)D
    .registers 12

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcMeanObliquityOfEcliptic(D)D

    move-result-wide v2

    const-wide v6, 0x405f428f5c28f5c3L

    const-wide v8, 0x409e388b43958106L

    mul-double/2addr v8, p0

    sub-double v4, v6, v8

    const-wide v6, 0x3f64f8b588e368f1L

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double v0, v2, v6

    return-wide v0
.end method

.method private static calcSolNoonUTC(DD)D
    .registers 10

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcJDFromJulianCent(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L

    div-double v2, p2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcTimeJulianCent(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcEquationOfTime(D)D

    move-result-wide v0

    const-wide v2, 0x4086800000000000L

    const-wide/high16 v4, 0x4010

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    sub-double v0, v2, v0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcJDFromJulianCent(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3fe0

    sub-double/2addr p0, v2

    const-wide v2, 0x4096800000000000L

    div-double/2addr v0, v2

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcTimeJulianCent(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcEquationOfTime(D)D

    move-result-wide p0

    const-wide v0, 0x4086800000000000L

    const-wide/high16 v2, 0x4010

    mul-double/2addr p2, v2

    add-double/2addr p2, v0

    sub-double p0, p2, p0

    return-wide p0
.end method

.method private static calcSunApparentLong(D)D
    .registers 14

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcSunTrueLong(D)D

    move-result-wide v2

    const-wide v6, 0x405f428f5c28f5c3L

    const-wide v8, 0x409e388b43958106L

    mul-double/2addr v8, p0

    sub-double v4, v6, v8

    const-wide v6, 0x3f774e65bea0ba1fL

    sub-double v6, v2, v6

    const-wide v8, 0x3f7394317acc4ef9L

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double v0, v6, v8

    return-wide v0
.end method

.method private static calcSunDeclination(D)D
    .registers 14

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcObliquityCorrection(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcSunApparentLong(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v4, v8, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    return-wide v6
.end method

.method private static calcSunEqOfCenter(D)D
    .registers 14

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcGeomMeanAnomalySun(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    add-double v2, v0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    add-double v6, v0, v0

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v6, 0x3ffea235b4edb2f6L

    const-wide v8, 0x3f73bafd976ff3aeL

    const-wide v10, 0x3eed5c31593e5fb7L

    mul-double/2addr v10, p0

    add-double/2addr v8, v10

    mul-double/2addr v8, p0

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    const-wide v6, 0x3f94790b84988095L

    const-wide v8, 0x3f1a79fec99f1ae3L

    mul-double/2addr p0, v8

    sub-double p0, v6, p0

    mul-double/2addr p0, v2

    add-double/2addr p0, v4

    const-wide v2, 0x3f32f09d8c6d612cL

    mul-double/2addr v0, v2

    add-double/2addr p0, v0

    return-wide p0
.end method

.method private static calcSunTrueLong(D)D
    .registers 8

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcGeomMeanLongSun(D)D

    move-result-wide v4

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcSunEqOfCenter(D)D

    move-result-wide v2

    add-double v0, v4, v2

    return-wide v0
.end method

.method private static calcSunriseUTC(DDDD)D
    .registers 18

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcTimeJulianCent(D)D

    move-result-wide v8

    invoke-static {v8, v9, p4, p5}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcSolNoonUTC(DD)D

    move-result-wide v0

    const-wide v2, 0x4096800000000000L

    div-double/2addr v0, v2

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcTimeJulianCent(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcEquationOfTime(D)D

    move-result-wide v6

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcSunDeclination(D)D

    move-result-wide v2

    move-wide v0, p2

    move-wide/from16 v4, p6

    invoke-static/range {v0 .. v5}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcHourAngleSunrise(DDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    sub-double p0, p4, p0

    const-wide/high16 v0, 0x4010

    mul-double/2addr p0, v0

    const-wide v0, 0x4086800000000000L

    add-double/2addr p0, v0

    sub-double/2addr p0, v6

    invoke-static {v8, v9}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcJDFromJulianCent(D)D

    move-result-wide v0

    const-wide v2, 0x4096800000000000L

    div-double/2addr p0, v2

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcTimeJulianCent(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcEquationOfTime(D)D

    move-result-wide v6

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcSunDeclination(D)D

    move-result-wide v2

    move-wide v0, p2

    move-wide/from16 v4, p6

    invoke-static/range {v0 .. v5}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcHourAngleSunrise(DDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    sub-double p0, p4, p0

    const-wide/high16 p2, 0x4010

    mul-double/2addr p0, p2

    const-wide p2, 0x4086800000000000L

    add-double/2addr p0, p2

    sub-double/2addr p0, v6

    return-wide p0
.end method

.method private static calcSunsetUTC(DDDD)D
    .registers 18

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcTimeJulianCent(D)D

    move-result-wide v8

    invoke-static {v8, v9, p4, p5}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcSolNoonUTC(DD)D

    move-result-wide v0

    const-wide v2, 0x4096800000000000L

    div-double/2addr v0, v2

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcTimeJulianCent(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcEquationOfTime(D)D

    move-result-wide v6

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcSunDeclination(D)D

    move-result-wide v2

    move-wide v0, p2

    move-wide/from16 v4, p6

    invoke-static/range {v0 .. v5}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcHourAngleSunset(DDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    sub-double p0, p4, p0

    const-wide/high16 v0, 0x4010

    mul-double/2addr p0, v0

    const-wide v0, 0x4086800000000000L

    add-double/2addr p0, v0

    sub-double/2addr p0, v6

    invoke-static {v8, v9}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcJDFromJulianCent(D)D

    move-result-wide v0

    const-wide v2, 0x4096800000000000L

    div-double/2addr p0, v2

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcTimeJulianCent(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcEquationOfTime(D)D

    move-result-wide v6

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcSunDeclination(D)D

    move-result-wide v2

    move-wide v0, p2

    move-wide/from16 v4, p6

    invoke-static/range {v0 .. v5}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcHourAngleSunset(DDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    sub-double p0, p4, p0

    const-wide/high16 p2, 0x4010

    mul-double/2addr p0, p2

    const-wide p2, 0x4086800000000000L

    add-double/2addr p0, p2

    sub-double/2addr p0, v6

    return-wide p0
.end method

.method private static calcTimeJulianCent(D)D
    .registers 6

    const-wide v0, 0x4142b42c80000000L

    sub-double v0, p0, v0

    const-wide v2, 0x40e1d5a000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getCalculatorName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lnet/sourceforge/zmanim/util/NOAACalculator;->calculatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getUTCSunrise(Lnet/sourceforge/zmanim/AstronomicalCalendar;DZ)D
    .registers 15

    if-eqz p4, :cond_31

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v0

    invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->adjustZenith(DD)D

    move-result-wide p2

    :goto_e
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcJD(Ljava/util/Calendar;)D

    move-result-wide v0

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v4

    neg-double v4, v4

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcSunriseUTC(DDDD)D

    move-result-wide v8

    const-wide/high16 v0, 0x404e

    div-double v0, v8, v0

    return-wide v0

    :cond_31
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->adjustZenith(DD)D

    move-result-wide p2

    goto :goto_e
.end method

.method public getUTCSunset(Lnet/sourceforge/zmanim/AstronomicalCalendar;DZ)D
    .registers 15

    if-eqz p4, :cond_31

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v0

    invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->adjustZenith(DD)D

    move-result-wide p2

    :goto_e
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcJD(Ljava/util/Calendar;)D

    move-result-wide v0

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v4

    neg-double v4, v4

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lnet/sourceforge/zmanim/util/NOAACalculator;->calcSunsetUTC(DDDD)D

    move-result-wide v8

    const-wide/high16 v0, 0x404e

    div-double v0, v8, v0

    return-wide v0

    :cond_31
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->adjustZenith(DD)D

    move-result-wide p2

    goto :goto_e
.end method
