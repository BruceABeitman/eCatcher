.class public Lnet/sourceforge/zmanim/util/GeoLocationUtils;
.super Ljava/lang/Object;
.source "GeoLocationUtils.java"
.field private static DISTANCE:I
.field private static FINAL_BEARING:I
.field private static INITIAL_BEARING:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput v0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->DISTANCE:I
const/4 v0, 0x1
sput v0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->INITIAL_BEARING:I
const/4 v0, 0x2
sput v0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->FINAL_BEARING:I
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getGeodesicDistance(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;)D
.registers 4
sget v0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->DISTANCE:I
invoke-static {p0, p1, v0}, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;I)D
move-result-wide v0
return-wide v0
.end method
.method public static getGeodesicFinalBearing(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;)D
.registers 4
sget v0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->FINAL_BEARING:I
invoke-static {p0, p1, v0}, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;I)D
move-result-wide v0
return-wide v0
.end method
.method public static getGeodesicInitialBearing(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;)D
.registers 4
sget v0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->INITIAL_BEARING:I
invoke-static {p0, p1, v0}, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;I)D
move-result-wide v0
return-wide v0
.end method
.method public static getRhumbLineBearing(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;)D
.registers 16
const-wide v12, 0x401921fb54442d18L
const-wide/high16 v10, 0x4000
const-wide v8, 0x3fe921fb54442d18L
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D
move-result-wide v4
invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D
move-result-wide v6
sub-double/2addr v4, v6
invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v0
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v4
div-double/2addr v4, v10
add-double/2addr v4, v8
invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D
move-result-wide v4
invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v6
div-double/2addr v6, v10
add-double/2addr v6, v8
invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D
move-result-wide v6
div-double/2addr v4, v6
invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D
move-result-wide v2
invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D
move-result-wide v4
const-wide v6, 0x400921fb54442d18L
cmpl-double v4, v4, v6
if-lez v4, :cond_51
const-wide/16 v4, 0x0
cmpl-double v4, v0, v4
if-lez v4, :cond_5a
sub-double v4, v12, v0
neg-double v4, v4
move-wide v0, v4
:cond_51
:goto_51
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D
move-result-wide v4
return-wide v4
:cond_5a
add-double v4, v12, v0
move-wide v0, v4
goto :goto_51
.end method
.method public static getRhumbLineDistance(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;)D
.registers 14
const-wide v0, 0x40b8e30000000000L
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide v2
invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide v4
sub-double/2addr v2, v4
invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v2
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D
move-result-wide v4
invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D
move-result-wide v6
sub-double/2addr v4, v6
invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v4
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v6
const-wide/high16 v8, 0x4000
div-double/2addr v6, v8
const-wide v8, 0x3fe921fb54442d18L
add-double/2addr v6, v8
invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D
move-result-wide v6
invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide v8
invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v8
const-wide/high16 v10, 0x4000
div-double/2addr v8, v10
const-wide v10, 0x3fe921fb54442d18L
add-double/2addr v8, v10
invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D
move-result-wide v8
div-double/2addr v6, v8
invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D
move-result-wide v6
invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D
move-result-wide v8
const-wide v10, 0x3ddb7cdfd9d7bdbbL
cmpl-double p1, v8, v10
if-lez p1, :cond_7d
div-double p0, v2, v6
move-wide v6, p0
:goto_62
const-wide p0, 0x400921fb54442d18L
cmpl-double p0, v4, p0
if-lez p0, :cond_8b
const-wide p0, 0x401921fb54442d18L
sub-double/2addr p0, v4
:goto_71
mul-double/2addr v2, v2
mul-double v4, v6, v6
mul-double/2addr v4, p0
mul-double/2addr p0, v4
add-double/2addr p0, v2
invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D
move-result-wide p0
mul-double/2addr p0, v0
return-wide p0
:cond_7d
invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide p0
invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide p0
invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D
move-result-wide p0
move-wide v6, p0
goto :goto_62
:cond_8b
move-wide p0, v4
goto :goto_71
.end method
.method private static vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;I)D
.registers 55
const-wide v8, 0x415854a640000000L
const-wide v10, 0x41583fc4141bda51L
const-wide v22, 0x3f6b775a84f3e128L
invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D
move-result-wide v4
invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D
move-result-wide v6
sub-double/2addr v4, v6
invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v4
const-wide/high16 v6, 0x3ff0
sub-double v6, v6, v22
invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide v12
invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v12
invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D
move-result-wide v12
mul-double/2addr v6, v12
invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D
move-result-wide v6
const-wide/high16 v12, 0x3ff0
sub-double v12, v12, v22
invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide p0
invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide p0
invoke-static/range {p0 .. p1}, Ljava/lang/Math;->tan(D)D
move-result-wide p0
mul-double p0, p0, v12
invoke-static/range {p0 .. p1}, Ljava/lang/Math;->atan(D)D
move-result-wide p0
invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D
move-result-wide v36
invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D
move-result-wide v18
invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sin(D)D
move-result-wide v38
invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D
move-result-wide v20
move-wide/from16 v24, v4
const-wide v26, 0x401921fb54442d18L
const-wide/high16 v16, 0x4034
const-wide/16 v32, 0x0
const-wide/16 v6, 0x0
const-wide/16 v34, 0x0
const-wide/16 v12, 0x0
const-wide/16 v28, 0x0
const-wide/16 v30, 0x0
const-wide/16 v14, 0x0
const-wide/16 p0, 0x0
move-wide/from16 v48, p0
move-wide/from16 p0, v14
move-wide v14, v12
move-wide v12, v6
move-wide/from16 v6, v48
move-wide/from16 v50, v26
move-wide/from16 v26, v24
move-wide/from16 v24, v50
:goto_7e
sub-double v24, v26, v24
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D
move-result-wide v24
const-wide v30, 0x3d719799812dea11L
cmpl-double v24, v24, v30
if-lez v24, :cond_143
const-wide/high16 v24, 0x3ff0
sub-double v24, v16, v24
const-wide/16 v16, 0x0
cmpl-double v16, v24, v16
if-lez v16, :cond_141
invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D
move-result-wide v32
invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D
move-result-wide v12
mul-double p0, v20, v32
mul-double v6, v20, v32
mul-double p0, p0, v6
mul-double v6, v18, v38
mul-double v14, v36, v20
mul-double/2addr v14, v12
sub-double/2addr v6, v14
mul-double v14, v18, v38
mul-double v16, v36, v20
mul-double v16, v16, v12
sub-double v14, v14, v16
mul-double/2addr v6, v14
add-double p0, p0, v6
invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v34
const-wide/16 p0, 0x0
cmpl-double p0, v34, p0
if-nez p0, :cond_cd
const-wide/16 p0, 0x0
move-wide/from16 v8, v34
move-wide/from16 v6, v32
move-wide/from16 v4, v24
move-wide/from16 v10, p0
move-wide/from16 p0, v12
:goto_cc
return-wide v10
:cond_cd
mul-double p0, v36, v38
mul-double v6, v18, v20
mul-double/2addr v6, v12
add-double v14, p0, v6
move-wide/from16 v0, v34
move-wide v2, v14
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v28
mul-double p0, v18, v20
mul-double p0, p0, v32
div-double v30, p0, v34
const-wide/high16 p0, 0x3ff0
mul-double v6, v30, v30
sub-double v16, p0, v6
const-wide/high16 p0, 0x4000
mul-double p0, p0, v36
mul-double p0, p0, v38
div-double p0, p0, v16
sub-double p0, v14, p0
invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z
move-result v6
if-eqz v6, :cond_248
const-wide/16 p0, 0x0
move-wide/from16 v6, p0
:goto_fb
const-wide/high16 p0, 0x4030
div-double p0, v22, p0
mul-double p0, p0, v16
const-wide/high16 v40, 0x4010
const-wide/high16 v42, 0x4010
const-wide/high16 v44, 0x4008
mul-double v44, v44, v16
sub-double v42, v42, v44
mul-double v42, v42, v22
add-double v40, v40, v42
mul-double p0, p0, v40
move-wide/from16 v26, v26
const-wide/high16 v40, 0x3ff0
sub-double v40, v40, p0
mul-double v40, v40, v22
mul-double v40, v40, v30
mul-double v42, p0, v34
mul-double p0, p0, v14
const-wide/high16 v44, -0x4010
const-wide/high16 v46, 0x4000
mul-double v46, v46, v6
mul-double v46, v46, v6
add-double v44, v44, v46
mul-double p0, p0, v44
add-double p0, p0, v6
mul-double p0, p0, v42
add-double p0, p0, v28
mul-double p0, p0, v40
add-double p0, p0, v4
move-wide/from16 v48, v16
move-wide/from16 v16, v24
move-wide/from16 v24, v26
move-wide/from16 v26, p0
move-wide/from16 p0, v48
goto/16 :goto_7e
:cond_141
move-wide/from16 v16, v24
:cond_143
const-wide/16 v4, 0x0
cmpl-double v4, v16, v4
if-nez v4, :cond_157
const-wide/high16 p0, 0x7ff8
move-wide/from16 v8, v34
move-wide/from16 v6, v32
move-wide/from16 v4, v16
move-wide/from16 v10, p0
move-wide/from16 p0, v12
goto/16 :goto_cc
:cond_157
mul-double v4, v8, v8
mul-double v8, v10, v10
sub-double/2addr v4, v8
mul-double p0, p0, v4
mul-double v4, v10, v10
div-double v4, p0, v4
const-wide/high16 p0, 0x3ff0
const-wide/high16 v8, 0x40d0
div-double v8, v4, v8
const-wide/high16 v22, 0x40b0
const-wide/high16 v24, -0x3f78
const-wide/high16 v26, 0x4074
const-wide v30, 0x4065e00000000000L
mul-double v30, v30, v4
sub-double v26, v26, v30
mul-double v26, v26, v4
add-double v24, v24, v26
mul-double v24, v24, v4
add-double v22, v22, v24
mul-double v8, v8, v22
add-double p0, p0, v8
const-wide/high16 v8, 0x4090
div-double v8, v4, v8
const-wide/high16 v22, 0x4070
const-wide/high16 v24, -0x3fa0
const-wide v26, 0x4052800000000000L
const-wide v30, 0x4047800000000000L
mul-double v30, v30, v4
sub-double v26, v26, v30
mul-double v26, v26, v4
add-double v24, v24, v26
mul-double v4, v4, v24
add-double v4, v4, v22
mul-double/2addr v4, v8
mul-double v8, v4, v34
const-wide/high16 v22, 0x4010
div-double v22, v4, v22
const-wide/high16 v24, -0x4010
const-wide/high16 v26, 0x4000
mul-double v26, v26, v6
mul-double v26, v26, v6
add-double v24, v24, v26
mul-double v14, v14, v24
const-wide/high16 v24, 0x4018
div-double v4, v4, v24
mul-double/2addr v4, v6
const-wide/high16 v24, -0x3ff8
const-wide/high16 v26, 0x4010
mul-double v26, v26, v34
mul-double v26, v26, v34
add-double v24, v24, v26
mul-double v4, v4, v24
const-wide/high16 v24, -0x3ff8
const-wide/high16 v26, 0x4010
mul-double v26, v26, v6
mul-double v26, v26, v6
add-double v24, v24, v26
mul-double v4, v4, v24
sub-double v4, v14, v4
mul-double v4, v4, v22
add-double/2addr v4, v6
mul-double/2addr v4, v8
mul-double p0, p0, v10
sub-double v4, v28, v4
mul-double p0, p0, v4
mul-double v4, v20, v32
mul-double v6, v18, v38
mul-double v8, v36, v20
mul-double/2addr v8, v12
sub-double/2addr v6, v8
invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D
move-result-wide v4
mul-double v6, v18, v32
move-wide/from16 v0, v36
neg-double v0, v0
move-wide v8, v0
mul-double v8, v8, v20
mul-double v10, v18, v38
mul-double/2addr v10, v12
add-double/2addr v8, v10
invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D
move-result-wide v6
sget v8, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->DISTANCE:I
move/from16 v0, p2
move v1, v8
if-ne v0, v1, :cond_214
move-wide/from16 v8, v34
move-wide/from16 v6, v32
move-wide/from16 v4, v16
move-wide/from16 v10, p0
move-wide/from16 p0, v12
goto/16 :goto_cc
:cond_214
sget p0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->INITIAL_BEARING:I
move/from16 v0, p2
move/from16 v1, p0
if-ne v0, v1, :cond_227
move-wide/from16 v8, v34
move-wide/from16 p0, v12
move-wide/from16 v6, v32
move-wide v10, v4
move-wide/from16 v4, v16
goto/16 :goto_cc
:cond_227
sget p0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->FINAL_BEARING:I
move/from16 v0, p2
move/from16 v1, p0
if-ne v0, v1, :cond_23a
move-wide/from16 v8, v34
move-wide/from16 p0, v12
move-wide/from16 v4, v16
move-wide v10, v6
move-wide/from16 v6, v32
goto/16 :goto_cc
:cond_23a
const-wide/high16 p0, 0x7ff8
move-wide/from16 v8, v34
move-wide/from16 v6, v32
move-wide/from16 v4, v16
move-wide/from16 v10, p0
move-wide/from16 p0, v12
goto/16 :goto_cc
:cond_248
move-wide/from16 v6, p0
goto/16 :goto_fb
.end method