.class public Lnet/sourceforge/zmanim/util/SunTimesCalculator;
.super Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
.source "SunTimesCalculator.java"
.field private static final DEG_PER_HOUR:D = 15.0
.field private static final TYPE_SUNRISE:I = 0x0
.field private static final TYPE_SUNSET:I = 0x1
.field public static final ZENITH:D = 90.83333333333333
.field private calculatorName:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;-><init>()V
const-string v0, "US Naval Almanac Algorithm"
iput-object v0, p0, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->calculatorName:Ljava/lang/String;
return-void
.end method
.method private static acosDeg(D)D
.registers 6
invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D
move-result-wide v0
const-wide v2, 0x4076800000000000L
mul-double/2addr v0, v2
const-wide v2, 0x401921fb54442d18L
div-double/2addr v0, v2
return-wide v0
.end method
.method private static asinDeg(D)D
.registers 6
invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D
move-result-wide v0
const-wide v2, 0x4076800000000000L
mul-double/2addr v0, v2
const-wide v2, 0x401921fb54442d18L
div-double/2addr v0, v2
return-wide v0
.end method
.method private static cosDeg(D)D
.registers 6
const-wide/high16 v0, 0x4000
mul-double/2addr v0, p0
const-wide v2, 0x400921fb54442d18L
mul-double/2addr v0, v2
const-wide v2, 0x4076800000000000L
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D
move-result-wide v0
return-wide v0
.end method
.method private static getApproxTimeDays(IDI)D
.registers 10
const-wide/high16 v4, 0x4038
if-nez p3, :cond_b
int-to-double v0, p0
const-wide/high16 v2, 0x4018
sub-double/2addr v2, p1
div-double/2addr v2, v4
add-double/2addr v0, v2
:goto_a
return-wide v0
:cond_b
int-to-double v0, p0
const-wide/high16 v2, 0x4032
sub-double/2addr v2, p1
div-double/2addr v2, v4
add-double/2addr v0, v2
goto :goto_a
.end method
.method private static getCosLocalHourAngle(DDD)D
.registers 16
const-wide v6, 0x3fd975e2046c764bL
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->sinDeg(D)D
move-result-wide v8
mul-double v4, v6, v8
invoke-static {v4, v5}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->asinDeg(D)D
move-result-wide v6
invoke-static {v6, v7}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->cosDeg(D)D
move-result-wide v0
invoke-static {p4, p5}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->cosDeg(D)D
move-result-wide v6
invoke-static {p2, p3}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->sinDeg(D)D
move-result-wide v8
mul-double/2addr v8, v4
sub-double/2addr v6, v8
invoke-static {p2, p3}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->cosDeg(D)D
move-result-wide v8
mul-double/2addr v8, v0
div-double v2, v6, v8
return-wide v2
.end method
.method private static getDayOfYear(III)I
.registers 9
mul-int/lit16 v4, p1, 0x113
div-int/lit8 v1, v4, 0x9
add-int/lit8 v4, p1, 0x9
div-int/lit8 v2, v4, 0xc
div-int/lit8 v4, p0, 0x4
mul-int/lit8 v4, v4, 0x4
sub-int v4, p0, v4
add-int/lit8 v4, v4, 0x2
div-int/lit8 v4, v4, 0x3
add-int/lit8 v3, v4, 0x1
mul-int v4, v2, v3
sub-int v4, v1, v4
add-int/2addr v4, p2
const/16 v5, 0x1e
sub-int v0, v4, v5
return v0
.end method
.method private static getHoursFromMeridian(D)D
.registers 4
const-wide/high16 v0, 0x402e
div-double v0, p0, v0
return-wide v0
.end method
.method private static getLocalMeanTime(DDD)D
.registers 10
add-double v0, p0, p2
const-wide v2, 0x3fb0d25edd052935L
mul-double/2addr v2, p4
sub-double/2addr v0, v2
const-wide v2, 0x401a7ced916872b0L
sub-double/2addr v0, v2
return-wide v0
.end method
.method private static getMeanAnomaly(IDI)D
.registers 8
const-wide v0, 0x3fef8a0902de00d2L
invoke-static {p1, p2}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getHoursFromMeridian(D)D
move-result-wide v2
invoke-static {p0, v2, v3, p3}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getApproxTimeDays(IDI)D
move-result-wide v2
mul-double/2addr v0, v2
const-wide v2, 0x400a4fdf3b645a1dL
sub-double/2addr v0, v2
return-wide v0
.end method
.method private static getSunRightAscensionHours(D)D
.registers 16
const-wide v12, 0x4056800000000000L
const-wide v8, 0x3fed5d4e8fb00bccL
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->tanDeg(D)D
move-result-wide v10
mul-double v0, v8, v10
const-wide v8, 0x404ca5dc1a63c1f8L
invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D
move-result-wide v10
mul-double v4, v8, v10
div-double v8, p0, v12
invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D
move-result-wide v8
mul-double v2, v8, v12
div-double v8, v4, v12
invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D
move-result-wide v8
mul-double v6, v8, v12
sub-double v8, v2, v6
add-double/2addr v4, v8
const-wide/high16 v8, 0x402e
div-double v8, v4, v8
return-wide v8
.end method
.method private static getSunTrueLongitude(D)D
.registers 12
const-wide v8, 0x4076800000000000L
const-wide v2, 0x3ffea7ef9db22d0eL
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->sinDeg(D)D
move-result-wide v4
mul-double/2addr v2, v4
add-double/2addr v2, p0
const-wide v4, 0x3f947ae147ae147bL
const-wide/high16 v6, 0x4000
mul-double/2addr v6, p0
invoke-static {v6, v7}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->sinDeg(D)D
move-result-wide v6
mul-double/2addr v4, v6
add-double/2addr v2, v4
const-wide v4, 0x4071aa24dd2f1aa0L
add-double v0, v2, v4
cmpl-double v2, v0, v8
if-ltz v2, :cond_2a
sub-double/2addr v0, v8
:cond_2a
const-wide/16 v2, 0x0
cmpg-double v2, v0, v2
if-gez v2, :cond_31
add-double/2addr v0, v8
:cond_31
return-wide v0
.end method
.method private static getTimeUTC(IIIDDDI)D
.registers 24
invoke-static/range {p0 .. p2}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getDayOfYear(III)I
move-result p2
move/from16 v0, p2
move-wide/from16 v1, p3
move/from16 v3, p9
invoke-static {v0, v1, v2, v3}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getMeanAnomaly(IDI)D
move-result-wide p0
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getSunTrueLongitude(D)D
move-result-wide v4
invoke-static {v4, v5}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getSunRightAscensionHours(D)D
move-result-wide v12
move-wide/from16 v6, p5
move-wide/from16 v8, p7
invoke-static/range {v4 .. v9}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getCosLocalHourAngle(DDD)D
move-result-wide p0
const-wide/16 p5, 0x0
if-nez p9, :cond_5a
const-wide/high16 p5, 0x3ff0
cmpl-double p5, p0, p5
if-lez p5, :cond_28
:cond_28
const-wide p5, 0x4076800000000000L
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->acosDeg(D)D
move-result-wide p0
sub-double p0, p5, p0
:goto_33
const-wide/high16 p5, 0x402e
div-double v6, p0, p5
invoke-static/range {p3 .. p4}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getHoursFromMeridian(D)D
move-result-wide p0
move/from16 v0, p2
move-wide v1, p0
move/from16 v3, p9
invoke-static {v0, v1, v2, v3}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getApproxTimeDays(IDI)D
move-result-wide v10
move-wide v8, v12
invoke-static/range {v6 .. v11}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getLocalMeanTime(DDD)D
move-result-wide p0
invoke-static/range {p3 .. p4}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getHoursFromMeridian(D)D
move-result-wide p2
sub-double p0, p0, p2
:goto_4f
const-wide/16 p2, 0x0
cmpg-double p2, p0, p2
if-gez p2, :cond_65
const-wide/high16 p2, 0x4038
add-double p0, p0, p2
goto :goto_4f
:cond_5a
const-wide/high16 p5, -0x4010
cmpg-double p5, p0, p5
if-gez p5, :cond_60
:cond_60
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->acosDeg(D)D
move-result-wide p0
goto :goto_33
:cond_65
:goto_65
const-wide/high16 p2, 0x4038
cmpl-double p2, p0, p2
if-ltz p2, :cond_70
const-wide/high16 p2, 0x4038
sub-double p0, p0, p2
goto :goto_65
:cond_70
return-wide p0
.end method
.method private static sinDeg(D)D
.registers 6
const-wide/high16 v0, 0x4000
mul-double/2addr v0, p0
const-wide v2, 0x400921fb54442d18L
mul-double/2addr v0, v2
const-wide v2, 0x4076800000000000L
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D
move-result-wide v0
return-wide v0
.end method
.method private static tanDeg(D)D
.registers 6
const-wide/high16 v0, 0x4000
mul-double/2addr v0, p0
const-wide v2, 0x400921fb54442d18L
mul-double/2addr v0, v2
const-wide v2, 0x4076800000000000L
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D
move-result-wide v0
return-wide v0
.end method
.method public getCalculatorName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->calculatorName:Ljava/lang/String;
return-object v0
.end method
.method public getUTCSunrise(Lnet/sourceforge/zmanim/AstronomicalCalendar;DZ)D
.registers 17
const-wide/high16 v10, 0x7ff8
if-eqz p4, :cond_44
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v0
invoke-virtual {v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D
move-result-wide v0
invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->adjustZenith(DD)D
move-result-wide p2
:goto_10
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I
move-result v0
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v1
const/4 v2, 0x2
invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v2
const/4 v3, 0x5
invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I
move-result v2
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v3
invoke-virtual {v3}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D
move-result-wide v3
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v5
invoke-virtual {v5}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide v5
const/4 v9, 0x0
move-wide v7, p2
invoke-static/range {v0 .. v9}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getTimeUTC(IIIDDDI)D
move-result-wide v10
return-wide v10
:cond_44
const-wide/16 v0, 0x0
invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->adjustZenith(DD)D
move-result-wide p2
goto :goto_10
.end method
.method public getUTCSunset(Lnet/sourceforge/zmanim/AstronomicalCalendar;DZ)D
.registers 17
const-wide/high16 v10, 0x7ff8
if-eqz p4, :cond_44
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v0
invoke-virtual {v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D
move-result-wide v0
invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->adjustZenith(DD)D
move-result-wide p2
:goto_10
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I
move-result v0
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v1
const/4 v2, 0x2
invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v2
const/4 v3, 0x5
invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I
move-result v2
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v3
invoke-virtual {v3}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D
move-result-wide v3
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v5
invoke-virtual {v5}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide v5
const/4 v9, 0x1
move-wide v7, p2
invoke-static/range {v0 .. v9}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getTimeUTC(IIIDDDI)D
move-result-wide v10
return-wide v10
:cond_44
const-wide/16 v0, 0x0
invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->adjustZenith(DD)D
move-result-wide p2
goto :goto_10
.end method