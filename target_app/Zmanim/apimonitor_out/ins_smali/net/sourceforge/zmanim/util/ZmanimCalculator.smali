.class public Lnet/sourceforge/zmanim/util/ZmanimCalculator;
.super Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
.source "ZmanimCalculator.java"
.field private calculatorName:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;-><init>()V
const-string v0, "US Naval Almanac Algorithm"
iput-object v0, p0, Lnet/sourceforge/zmanim/util/ZmanimCalculator;->calculatorName:Ljava/lang/String;
return-void
.end method
.method public getCalculatorName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lnet/sourceforge/zmanim/util/ZmanimCalculator;->calculatorName:Ljava/lang/String;
return-object v0
.end method
.method public getUTCSunrise(Lnet/sourceforge/zmanim/AstronomicalCalendar;DZ)D
.registers 48
if-eqz p4, :cond_84
invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v37
invoke-virtual/range {v37 .. v37}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D
move-result-wide v37
move-object/from16 v0, p0
move-wide/from16 v1, p2
move-wide/from16 v3, v37
invoke-virtual {v0, v1, v2, v3, v4}, Lnet/sourceforge/zmanim/util/ZmanimCalculator;->adjustZenith(DD)D
move-result-wide p2
:goto_14
invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v37
invoke-virtual/range {v37 .. v37}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D
move-result-wide v37
const-wide/high16 v39, 0x402e
div-double v27, v37, v39
invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v37
const/16 v38, 0x6
invoke-virtual/range {v37 .. v38}, Ljava/util/Calendar;->get(I)I
move-result v37
move/from16 v0, v37
int-to-double v0, v0
move-wide/from16 v37, v0
const-wide/high16 v39, 0x4018
sub-double v39, v39, v27
const-wide/high16 v41, 0x4038
div-double v39, v39, v41
add-double v35, v37, v39
const-wide v37, 0x3fef8a0902de00d2L
mul-double v37, v37, v35
const-wide v39, 0x400a4fdf3b645a1dL
sub-double v29, v37, v39
const-wide v37, 0x3ffea7ef9db22d0eL
invoke-static/range {v29 .. v30}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v39
invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sin(D)D
move-result-wide v39
mul-double v37, v37, v39
add-double v37, v37, v29
const-wide v39, 0x3f947ae147ae147bL
const-wide/high16 v41, 0x4000
mul-double v41, v41, v29
invoke-static/range {v41 .. v42}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v41
invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sin(D)D
move-result-wide v41
mul-double v39, v39, v41
add-double v37, v37, v39
const-wide v39, 0x4071aa24dd2f1aa0L
add-double v23, v37, v39
:goto_74
const-wide/16 v37, 0x0
cmpg-double v37, v23, v37
if-gez v37, :cond_91
const-wide v37, 0x4076800000000000L
add-double v7, v23, v37
move-wide/from16 v23, v7
goto :goto_74
:cond_84
const-wide/16 v37, 0x0
move-object/from16 v0, p0
move-wide/from16 v1, p2
move-wide/from16 v3, v37
invoke-virtual {v0, v1, v2, v3, v4}, Lnet/sourceforge/zmanim/util/ZmanimCalculator;->adjustZenith(DD)D
move-result-wide p2
goto :goto_14
:cond_91
:goto_91
const-wide v37, 0x4076800000000000L
cmpl-double v37, v23, v37
if-ltz v37, :cond_a4
const-wide v37, 0x4076800000000000L
sub-double v7, v23, v37
move-wide/from16 v23, v7
goto :goto_91
:cond_a4
const-wide v37, 0x3fed5d4e8fb00bccL
invoke-static/range {v23 .. v24}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v39
invoke-static/range {v39 .. v40}, Ljava/lang/Math;->tan(D)D
move-result-wide v39
mul-double v37, v37, v39
invoke-static/range {v37 .. v38}, Ljava/lang/Math;->atan(D)D
move-result-wide v37
invoke-static/range {v37 .. v38}, Ljava/lang/Math;->toDegrees(D)D
move-result-wide v9
:goto_bb
const-wide/16 v37, 0x0
cmpg-double v37, v9, v37
if-gez v37, :cond_ca
const-wide v37, 0x4076800000000000L
add-double v11, v9, v37
move-wide v9, v11
goto :goto_bb
:goto_ca
:cond_ca
const-wide v37, 0x4076800000000000L
cmpl-double v37, v9, v37
if-ltz v37, :cond_dc
const-wide v37, 0x4076800000000000L
sub-double v11, v9, v37
move-wide v9, v11
goto :goto_ca
:cond_dc
const-wide v37, 0x4056800000000000L
div-double v37, v23, v37
invoke-static/range {v37 .. v38}, Ljava/lang/Math;->floor(D)D
move-result-wide v37
const-wide v39, 0x4056800000000000L
mul-double v25, v37, v39
const-wide v37, 0x4056800000000000L
div-double v37, v9, v37
invoke-static/range {v37 .. v38}, Ljava/lang/Math;->floor(D)D
move-result-wide v37
const-wide v39, 0x4056800000000000L
mul-double v31, v37, v39
sub-double v37, v25, v31
add-double v9, v9, v37
const-wide/high16 v37, 0x402e
div-double v9, v9, v37
const-wide v37, 0x3fd975e2046c764bL
invoke-static/range {v23 .. v24}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v39
invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sin(D)D
move-result-wide v39
mul-double v33, v37, v39
invoke-static/range {v33 .. v34}, Ljava/lang/Math;->asin(D)D
move-result-wide v37
invoke-static/range {v37 .. v38}, Ljava/lang/Math;->cos(D)D
move-result-wide v19
invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v37
invoke-static/range {v37 .. v38}, Ljava/lang/Math;->cos(D)D
move-result-wide v37
invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v39
invoke-virtual/range {v39 .. v39}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide v39
invoke-static/range {v39 .. v40}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v39
invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sin(D)D
move-result-wide v39
mul-double v39, v39, v33
sub-double v37, v37, v39
invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v39
invoke-virtual/range {v39 .. v39}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide v39
invoke-static/range {v39 .. v40}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v39
invoke-static/range {v39 .. v40}, Ljava/lang/Math;->cos(D)D
move-result-wide v39
mul-double v39, v39, v19
div-double v21, v37, v39
const-wide v37, 0x4076800000000000L
invoke-static/range {v21 .. v22}, Ljava/lang/Math;->acos(D)D
move-result-wide v39
invoke-static/range {v39 .. v40}, Ljava/lang/Math;->toDegrees(D)D
move-result-wide v39
sub-double v5, v37, v39
const-wide/high16 v37, 0x402e
div-double v5, v5, v37
add-double v37, v5, v9
const-wide v39, 0x3fb0d25edd052935L
mul-double v39, v39, v35
sub-double v37, v37, v39
const-wide v39, 0x401a7ced916872b0L
sub-double v13, v37, v39
sub-double v15, v13, v27
:goto_176
const-wide/16 v37, 0x0
cmpg-double v37, v15, v37
if-gez v37, :cond_183
const-wide/high16 v37, 0x4038
add-double v17, v15, v37
move-wide/from16 v15, v17
goto :goto_176
:cond_183
:goto_183
const-wide/high16 v37, 0x4038
cmpl-double v37, v15, v37
if-ltz v37, :cond_190
const-wide/high16 v37, 0x4038
sub-double v17, v15, v37
move-wide/from16 v15, v17
goto :goto_183
:cond_190
return-wide v15
.end method
.method public getUTCSunset(Lnet/sourceforge/zmanim/AstronomicalCalendar;DZ)D
.registers 49
if-eqz p4, :cond_82
invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v38
invoke-virtual/range {v38 .. v38}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D
move-result-wide v38
move-object/from16 v0, p0
move-wide/from16 v1, p2
move-wide/from16 v3, v38
invoke-virtual {v0, v1, v2, v3, v4}, Lnet/sourceforge/zmanim/util/ZmanimCalculator;->adjustZenith(DD)D
move-result-wide p2
:goto_14
invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v38
const/16 v39, 0x6
invoke-virtual/range {v38 .. v39}, Ljava/util/Calendar;->get(I)I
move-result v15
invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v38
invoke-virtual/range {v38 .. v38}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D
move-result-wide v38
const-wide/high16 v40, 0x402e
div-double v32, v38, v40
move v0, v15
int-to-double v0, v0
move-wide/from16 v38, v0
const-wide/high16 v40, 0x4032
sub-double v40, v40, v32
const-wide/high16 v42, 0x4038
div-double v40, v40, v42
add-double v36, v38, v40
const-wide v38, 0x3fef8a0902de00d2L
mul-double v38, v38, v36
const-wide v40, 0x400a4fdf3b645a1dL
sub-double v13, v38, v40
const-wide v38, 0x3ffea7ef9db22d0eL
invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v40
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D
move-result-wide v40
mul-double v38, v38, v40
add-double v38, v38, v13
const-wide v40, 0x3f947ae147ae147bL
const-wide/high16 v42, 0x4000
mul-double v42, v42, v13
invoke-static/range {v42 .. v43}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v42
invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sin(D)D
move-result-wide v42
mul-double v40, v40, v42
add-double v38, v38, v40
const-wide v40, 0x4071aa24dd2f1aa0L
add-double v7, v38, v40
:goto_73
const-wide/16 v38, 0x0
cmpg-double v38, v7, v38
if-gez v38, :cond_8f
const-wide v38, 0x4076800000000000L
add-double v11, v7, v38
move-wide v7, v11
goto :goto_73
:cond_82
const-wide/16 v38, 0x0
move-object/from16 v0, p0
move-wide/from16 v1, p2
move-wide/from16 v3, v38
invoke-virtual {v0, v1, v2, v3, v4}, Lnet/sourceforge/zmanim/util/ZmanimCalculator;->adjustZenith(DD)D
move-result-wide p2
goto :goto_14
:goto_8f
:cond_8f
const-wide v38, 0x4076800000000000L
cmpl-double v38, v7, v38
if-ltz v38, :cond_a1
const-wide v38, 0x4076800000000000L
sub-double v11, v7, v38
move-wide v7, v11
goto :goto_8f
:cond_a1
const-wide v38, 0x3fed5d4e8fb00bccL
invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v40
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->tan(D)D
move-result-wide v40
mul-double v38, v38, v40
invoke-static/range {v38 .. v39}, Ljava/lang/Math;->atan(D)D
move-result-wide v38
invoke-static/range {v38 .. v39}, Ljava/lang/Math;->toDegrees(D)D
move-result-wide v16
:goto_b8
const-wide/16 v38, 0x0
cmpg-double v38, v16, v38
if-gez v38, :cond_c8
const-wide v38, 0x4076800000000000L
add-double v20, v16, v38
move-wide/from16 v16, v20
goto :goto_b8
:cond_c8
:goto_c8
const-wide v38, 0x4076800000000000L
cmpl-double v38, v16, v38
if-ltz v38, :cond_db
const-wide v38, 0x4076800000000000L
sub-double v20, v16, v38
move-wide/from16 v16, v20
goto :goto_c8
:cond_db
const-wide v38, 0x4056800000000000L
div-double v38, v7, v38
invoke-static/range {v38 .. v39}, Ljava/lang/Math;->floor(D)D
move-result-wide v38
const-wide v40, 0x4056800000000000L
mul-double v9, v38, v40
const-wide v38, 0x4056800000000000L
div-double v38, v16, v38
invoke-static/range {v38 .. v39}, Ljava/lang/Math;->floor(D)D
move-result-wide v38
const-wide v40, 0x4056800000000000L
mul-double v18, v38, v40
sub-double v38, v9, v18
add-double v16, v16, v38
const-wide/high16 v38, 0x402e
div-double v16, v16, v38
const-wide v38, 0x3fd975e2046c764bL
invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v40
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D
move-result-wide v40
mul-double v34, v38, v40
invoke-static/range {v34 .. v35}, Ljava/lang/Math;->asin(D)D
move-result-wide v38
invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D
move-result-wide v28
invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v38
invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D
move-result-wide v38
invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v40
invoke-virtual/range {v40 .. v40}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide v40
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v40
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D
move-result-wide v40
mul-double v40, v40, v34
sub-double v38, v38, v40
invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v40
invoke-virtual/range {v40 .. v40}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide v40
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v40
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->cos(D)D
move-result-wide v40
mul-double v40, v40, v28
div-double v30, v38, v40
invoke-static/range {v30 .. v31}, Ljava/lang/Math;->acos(D)D
move-result-wide v38
invoke-static/range {v38 .. v39}, Ljava/lang/Math;->toDegrees(D)D
move-result-wide v5
const-wide/high16 v38, 0x402e
div-double v5, v5, v38
add-double v38, v5, v16
const-wide v40, 0x3fb0d25edd052935L
mul-double v40, v40, v36
sub-double v38, v38, v40
const-wide v40, 0x401a7ced916872b0L
sub-double v22, v38, v40
sub-double v24, v22, v32
:goto_16e
const-wide/16 v38, 0x0
cmpg-double v38, v24, v38
if-gez v38, :cond_17b
const-wide/high16 v38, 0x4038
add-double v26, v24, v38
move-wide/from16 v24, v26
goto :goto_16e
:goto_17b
:cond_17b
const-wide/high16 v38, 0x4038
cmpl-double v38, v24, v38
if-ltz v38, :cond_188
const-wide/high16 v38, 0x4038
sub-double v26, v24, v38
move-wide/from16 v24, v26
goto :goto_17b
:cond_188
return-wide v24
.end method