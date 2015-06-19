.class public Lnet/sourceforge/zmanim/util/JSuntimeCalculator;
.super Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
.source "JSuntimeCalculator.java"
.field private calculatorName:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;-><init>()V
const-string v0, "US National Oceanic and Atmospheric Administration Algorithm"
iput-object v0, p0, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->calculatorName:Ljava/lang/String;
return-void
.end method
.method private static dateToJulian(Ljava/util/Calendar;)D
.registers 20
const/4 v2, 0x1
move-object/from16 v0, p0
move v1, v2
invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I
move-result v8
const/4 v2, 0x2
move-object/from16 v0, p0
move v1, v2
invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I
move-result v2
add-int/lit8 v7, v2, 0x1
const/4 v2, 0x5
move-object/from16 v0, p0
move v1, v2
invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I
move-result v2
const/16 v3, 0xb
move-object/from16 v0, p0
move v1, v3
invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I
move-result v5
const/16 v3, 0xc
move-object/from16 v0, p0
move v1, v3
invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I
move-result v6
const/16 v3, 0xd
move-object/from16 v0, p0
move v1, v3
invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I
move-result p0
const-wide/high16 v3, 0x4059
int-to-double v9, v8
mul-double/2addr v3, v9
int-to-double v9, v7
add-double/2addr v3, v9
const-wide v9, 0x4107319400000000L
sub-double/2addr v3, v9
const-wide v9, 0x4076f00000000000L
int-to-double v11, v8
mul-double/2addr v9, v11
const-wide/high16 v11, 0x401c
int-to-double v13, v8
int-to-double v15, v7
const-wide/high16 v17, 0x4022
add-double v15, v15, v17
const-wide/high16 v17, 0x4028
div-double v15, v15, v17
invoke-static/range {v15 .. v16}, Ljava/lang/Math;->floor(D)D
move-result-wide v15
add-double/2addr v13, v15
mul-double/2addr v11, v13
const-wide/high16 v13, 0x4010
div-double/2addr v11, v13
invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D
move-result-wide v11
sub-double v8, v9, v11
const-wide v10, 0x4071300000000000L
int-to-double v12, v7
mul-double/2addr v10, v12
const-wide/high16 v12, 0x4022
div-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
add-double v7, v8, v10
int-to-double v9, v2
add-double/2addr v7, v9
int-to-double v9, v5
int-to-double v5, v6
move/from16 v0, p0
int-to-double v0, v0
move-wide v11, v0
const-wide/high16 v13, 0x404e
div-double/2addr v11, v13
add-double/2addr v5, v11
const-wide/high16 v11, 0x404e
div-double/2addr v5, v11
add-double/2addr v5, v9
const-wide/high16 v9, 0x4038
div-double/2addr v5, v9
add-double/2addr v5, v7
const-wide v7, 0x413a42b580000000L
add-double/2addr v5, v7
const-wide/high16 v7, 0x3fe0
mul-double/2addr v7, v3
invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D
move-result-wide v2
div-double v2, v7, v2
sub-double v2, v5, v2
const-wide/high16 v4, 0x3fe0
add-double/2addr v2, v4
return-wide v2
.end method
.method private static eccentricityOfEarthsOrbit(D)D
.registers 8
const-wide v0, 0x3f911c11725d0380L
const-wide v2, 0x3f060a1c525fe303L
const-wide v4, 0x3e810160fc64d800L
mul-double/2addr v4, p0
add-double/2addr v2, v4
mul-double/2addr v2, p0
sub-double/2addr v0, v2
return-wide v0
.end method
.method private static equationOfCentreForSun(D)D
.registers 12
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->geometricMeanAnomalyOfSun(D)D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D
move-result-wide v2
const-wide v4, 0x3ffea235b4edb2f6L
const-wide v6, 0x3f73bafd976ff3aeL
const-wide v8, 0x3eed5c31593e5fb7L
mul-double/2addr v8, p0
add-double/2addr v6, v8
mul-double/2addr v6, p0
sub-double/2addr v4, v6
mul-double/2addr v2, v4
const-wide/high16 v4, 0x4000
invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v6
mul-double/2addr v4, v6
invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D
move-result-wide v4
const-wide v6, 0x3f94790b84988095L
const-wide v8, 0x3f1a79fec99f1ae3L
mul-double/2addr v8, p0
sub-double/2addr v6, v8
mul-double/2addr v4, v6
add-double/2addr v2, v4
const-wide/high16 v4, 0x4008
invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v6
mul-double/2addr v4, v6
invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D
move-result-wide v4
const-wide v6, 0x3f32f09d8c6d612cL
mul-double/2addr v4, v6
add-double/2addr v2, v4
return-wide v2
.end method
.method private static equationOfTime(D)D
.registers 16
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->obliquityCorrection(D)D
move-result-wide v2
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->geomMeanLongSun(D)D
move-result-wide v4
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->eccentricityOfEarthsOrbit(D)D
move-result-wide v0
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->geometricMeanAnomalyOfSun(D)D
move-result-wide p0
invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v2
const-wide/high16 v6, 0x4000
div-double/2addr v2, v6
invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D
move-result-wide v2
const-wide/high16 v6, 0x4000
invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D
move-result-wide v2
const-wide/high16 v6, 0x4000
invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v8
mul-double/2addr v6, v8
invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D
move-result-wide v6
mul-double/2addr v6, v2
const-wide/high16 v8, 0x4000
mul-double/2addr v8, v0
invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v10
invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D
move-result-wide v10
mul-double/2addr v8, v10
sub-double/2addr v6, v8
const-wide/high16 v8, 0x4010
mul-double/2addr v8, v0
mul-double/2addr v8, v2
invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v10
invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D
move-result-wide v10
mul-double/2addr v8, v10
const-wide/high16 v10, 0x4000
invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v12
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D
move-result-wide v10
mul-double/2addr v8, v10
add-double/2addr v6, v8
const-wide/high16 v8, 0x3fe0
mul-double/2addr v8, v2
mul-double/2addr v2, v8
const-wide/high16 v8, 0x4010
invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v4
mul-double/2addr v4, v8
invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D
move-result-wide v4
mul-double/2addr v2, v4
sub-double v2, v6, v2
const-wide/high16 v4, 0x3ff4
mul-double/2addr v4, v0
mul-double/2addr v0, v4
const-wide/high16 v4, 0x4000
invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide p0
mul-double/2addr p0, v4
invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D
move-result-wide p0
mul-double/2addr p0, v0
sub-double p0, v2, p0
invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D
move-result-wide p0
const-wide/high16 v0, 0x4010
mul-double/2addr p0, v0
return-wide p0
.end method
.method private static eveningPhenomenon(DDDD)D
.registers 18
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->julianDayToJulianCenturies(D)D
move-result-wide v8
invoke-static {v8, v9}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->equationOfTime(D)D
move-result-wide v6
invoke-static {v8, v9}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->sunDeclination(D)D
move-result-wide v2
move-wide v0, p2
move-wide/from16 v4, p6
invoke-static/range {v0 .. v5}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->hourAngleEvening(DDD)D
move-result-wide p0
invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D
move-result-wide p0
sub-double p0, p4, p0
const-wide/high16 v0, 0x4010
mul-double/2addr p0, v0
const-wide v0, 0x4086800000000000L
add-double/2addr p0, v0
sub-double/2addr p0, v6
invoke-static {v8, v9}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->julianCenturiesToJulianDay(D)D
move-result-wide v0
const-wide v2, 0x4096800000000000L
div-double/2addr p0, v2
add-double/2addr p0, v0
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->julianDayToJulianCenturies(D)D
move-result-wide p0
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->equationOfTime(D)D
move-result-wide v6
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->sunDeclination(D)D
move-result-wide v2
move-wide v0, p2
move-wide/from16 v4, p6
invoke-static/range {v0 .. v5}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->hourAngleEvening(DDD)D
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
.method private static geomMeanLongSun(D)D
.registers 14
const-wide/16 v10, 0x0
const-wide v8, 0x4076800000000000L
const-wide v2, 0x407187769ec2ce46L
const-wide v4, 0x40e19418a272862fL
const-wide v6, 0x3f33deda158aabc0L
mul-double/2addr v6, p0
add-double/2addr v4, v6
mul-double/2addr v4, p0
add-double v0, v2, v4
:cond_1b
:goto_1b
cmpl-double v2, v0, v10
if-ltz v2, :cond_2e
cmpg-double v2, v0, v8
if-gtz v2, :cond_2e
cmpl-double v2, v0, v8
if-lez v2, :cond_28
sub-double/2addr v0, v8
:cond_28
cmpg-double v2, v0, v10
if-gez v2, :cond_1b
add-double/2addr v0, v8
goto :goto_1b
:cond_2e
return-wide v0
.end method
.method private static geometricMeanAnomalyOfSun(D)D
.registers 8
const-wide v0, 0x407658773c0c1fc9L
const-wide v2, 0x40e193e19bf9c62aL
const-wide v4, 0x3f242550f260db0cL
mul-double/2addr v4, p0
sub-double/2addr v2, v4
mul-double/2addr v2, p0
add-double/2addr v0, v2
return-wide v0
.end method
.method private static hourAngleEvening(DDD)D
.registers 8
invoke-static/range {p0 .. p5}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->hourAngleMorning(DDD)D
move-result-wide v0
neg-double v0, v0
return-wide v0
.end method
.method private static hourAngleMorning(DDD)D
.registers 12
invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D
move-result-wide v0
invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D
move-result-wide v2
invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D
move-result-wide v4
mul-double/2addr v2, v4
div-double/2addr v0, v2
invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D
move-result-wide v2
invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D
move-result-wide v4
mul-double/2addr v2, v4
sub-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D
move-result-wide v0
return-wide v0
.end method
.method private static julianCenturiesToJulianDay(D)D
.registers 6
const-wide v0, 0x40e1d5a000000000L
mul-double/2addr v0, p0
const-wide v2, 0x4142b42c80000000L
add-double/2addr v0, v2
return-wide v0
.end method
.method private static julianDayToJulianCenturies(D)D
.registers 6
const-wide v0, 0x4142b42c80000000L
sub-double v0, p0, v0
const-wide v2, 0x40e1d5a000000000L
div-double/2addr v0, v2
return-wide v0
.end method
.method private static meanObliquityOfEcliptic(D)D
.registers 16
const-wide/high16 v12, 0x404e
const-wide/high16 v0, 0x4037
const-wide/high16 v2, 0x403a
const-wide v4, 0x403572b020c49ba6L
const-wide v6, 0x40476851eb851eb8L
const-wide v8, 0x3f4355475a31a4beL
const-wide v10, 0x3f5db445ed4a1ad6L
mul-double/2addr v10, p0
sub-double/2addr v8, v10
mul-double/2addr v8, p0
add-double/2addr v6, v8
mul-double/2addr v6, p0
div-double/2addr v6, v12
sub-double/2addr v4, v6
add-double/2addr v2, v4
div-double/2addr v2, v12
add-double/2addr v0, v2
return-wide v0
.end method
.method private static morningPhenomenon(DDDD)D
.registers 18
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->julianDayToJulianCenturies(D)D
move-result-wide v8
invoke-static {v8, v9}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->equationOfTime(D)D
move-result-wide v6
invoke-static {v8, v9}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->sunDeclination(D)D
move-result-wide v2
move-wide v0, p2
move-wide/from16 v4, p6
invoke-static/range {v0 .. v5}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->hourAngleMorning(DDD)D
move-result-wide p0
invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D
move-result-wide p0
sub-double p0, p4, p0
const-wide/high16 v0, 0x4010
mul-double/2addr p0, v0
const-wide v0, 0x4086800000000000L
add-double/2addr p0, v0
sub-double/2addr p0, v6
invoke-static {v8, v9}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->julianCenturiesToJulianDay(D)D
move-result-wide v0
const-wide v2, 0x4096800000000000L
div-double/2addr p0, v2
add-double/2addr p0, v0
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->julianDayToJulianCenturies(D)D
move-result-wide p0
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->equationOfTime(D)D
move-result-wide v6
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->sunDeclination(D)D
move-result-wide v2
move-wide v0, p2
move-wide/from16 v4, p6
invoke-static/range {v0 .. v5}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->hourAngleMorning(DDD)D
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
.method private static obliquityCorrection(D)D
.registers 10
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->meanObliquityOfEcliptic(D)D
move-result-wide v0
const-wide v2, 0x3f64f8b588e368f1L
const-wide v4, 0x405f428f5c28f5c3L
const-wide v6, 0x409e388b43958106L
mul-double/2addr v6, p0
sub-double/2addr v4, v6
invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D
move-result-wide v4
mul-double/2addr v2, v4
add-double/2addr v0, v2
return-wide v0
.end method
.method private static sunDeclination(D)D
.registers 12
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->obliquityCorrection(D)D
move-result-wide v0
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->sunsApparentLongitude(D)D
move-result-wide v2
invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D
move-result-wide v6
invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v8
invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D
move-result-wide v8
mul-double v4, v6, v8
invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D
move-result-wide v6
return-wide v6
.end method
.method private static sunsApparentLongitude(D)D
.registers 10
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->sunsTrueLongitude(D)D
move-result-wide v0
const-wide v2, 0x3f774e65bea0ba1fL
sub-double/2addr v0, v2
const-wide v2, 0x3f7394317acc4ef9L
const-wide v4, 0x405f428f5c28f5c3L
const-wide v6, 0x409e388b43958106L
mul-double/2addr v6, p0
sub-double/2addr v4, v6
invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D
move-result-wide v4
mul-double/2addr v2, v4
sub-double/2addr v0, v2
return-wide v0
.end method
.method private static sunsTrueLongitude(D)D
.registers 6
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->geomMeanLongSun(D)D
move-result-wide v0
invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->equationOfCentreForSun(D)D
move-result-wide v2
add-double/2addr v0, v2
return-wide v0
.end method
.method public getCalculatorName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->calculatorName:Ljava/lang/String;
return-object v0
.end method
.method public getUTCSunrise(Lnet/sourceforge/zmanim/AstronomicalCalendar;DZ)D
.registers 15
if-eqz p4, :cond_31
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v0
invoke-virtual {v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D
move-result-wide v0
invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->adjustZenith(DD)D
move-result-wide p2
:goto_e
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v0
invoke-static {v0}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->dateToJulian(Ljava/util/Calendar;)D
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
invoke-static/range {v0 .. v7}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->morningPhenomenon(DDDD)D
move-result-wide v8
const-wide/high16 v0, 0x404e
div-double v0, v8, v0
return-wide v0
:cond_31
const-wide/16 v0, 0x0
invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->adjustZenith(DD)D
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
invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->adjustZenith(DD)D
move-result-wide p2
:goto_e
invoke-virtual {p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v0
invoke-static {v0}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->dateToJulian(Ljava/util/Calendar;)D
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
invoke-static/range {v0 .. v7}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->eveningPhenomenon(DDDD)D
move-result-wide v8
const-wide/high16 v0, 0x404e
div-double v0, v8, v0
return-wide v0
:cond_31
const-wide/16 v0, 0x0
invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->adjustZenith(DD)D
move-result-wide p2
goto :goto_e
.end method