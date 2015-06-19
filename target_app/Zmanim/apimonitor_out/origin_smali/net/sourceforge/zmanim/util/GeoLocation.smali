.class public Lnet/sourceforge/zmanim/util/GeoLocation;
.super Ljava/lang/Object;
.source "GeoLocation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final HOUR_MILLIS:J = 0x36ee80L

.field private static final MINUTE_MILLIS:J = 0xea60L


# instance fields
.field private DISTANCE:I

.field private FINAL_BEARING:I

.field private INITIAL_BEARING:I

.field private elevation:D

.field private latitude:D

.field private locationName:Ljava/lang/String;

.field private longitude:D

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->DISTANCE:I

    const/4 v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->INITIAL_BEARING:I

    const/4 v0, 0x2

    iput v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->FINAL_BEARING:I

    const-string v0, "Greenwich, England"

    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->setLocationName(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->setLongitude(D)V

    const-wide v0, 0x4049bd14e3bcd35bL

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->setLatitude(D)V

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDDLjava/util/TimeZone;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->DISTANCE:I

    const/4 v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->INITIAL_BEARING:I

    const/4 v0, 0x2

    iput v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->FINAL_BEARING:I

    invoke-virtual {p0, p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->setLocationName(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lnet/sourceforge/zmanim/util/GeoLocation;->setLatitude(D)V

    invoke-virtual {p0, p4, p5}, Lnet/sourceforge/zmanim/util/GeoLocation;->setLongitude(D)V

    invoke-virtual {p0, p6, p7}, Lnet/sourceforge/zmanim/util/GeoLocation;->setElevation(D)V

    invoke-virtual {p0, p8}, Lnet/sourceforge/zmanim/util/GeoLocation;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDLjava/util/TimeZone;)V
    .registers 16

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lnet/sourceforge/zmanim/util/GeoLocation;-><init>(Ljava/lang/String;DDDLjava/util/TimeZone;)V

    return-void
.end method

.method private vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;I)D
    .registers 77

    const-wide v16, 0x415854a640000000L

    const-wide v18, 0x41583fc4141bda51L

    const-wide v36, 0x3f6b775a84f3e128L

    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v62

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v64

    sub-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    const-wide/high16 v62, 0x3ff0

    sub-double v62, v62, v36

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->tan(D)D

    move-result-wide v64

    mul-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    const-wide/high16 v62, 0x3ff0

    sub-double v62, v62, v36

    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->tan(D)D

    move-result-wide v64

    mul-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->atan(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v56

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v58

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    move-wide/from16 v42, v10

    const-wide v44, 0x401921fb54442d18L

    const-wide/high16 v40, 0x4034

    const-wide/16 v52, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v54, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v20, 0x0

    :goto_72
    sub-double v62, v42, v44

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->abs(D)D

    move-result-wide v62

    const-wide v64, 0x3d719799812dea11L

    cmpl-double v62, v62, v64

    if-lez v62, :cond_124

    const-wide/high16 v62, 0x3ff0

    sub-double v40, v40, v62

    const-wide/16 v62, 0x0

    cmpl-double v62, v40, v62

    if-lez v62, :cond_124

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sin(D)D

    move-result-wide v52

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v62, v30, v52

    mul-double v64, v30, v52

    mul-double v62, v62, v64

    mul-double v64, v28, v58

    mul-double v66, v56, v30

    mul-double v66, v66, v22

    sub-double v64, v64, v66

    mul-double v66, v28, v58

    mul-double v68, v56, v30

    mul-double v68, v68, v22

    sub-double v66, v66, v68

    mul-double v64, v64, v66

    add-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    const-wide/16 v62, 0x0

    cmpl-double v62, v54, v62

    if-nez v62, :cond_ba

    const-wide/16 v62, 0x0

    :goto_b9
    return-wide v62

    :cond_ba
    mul-double v62, v56, v58

    mul-double v64, v28, v30

    mul-double v64, v64, v22

    add-double v24, v62, v64

    move-wide/from16 v0, v54

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v48

    mul-double v62, v28, v30

    mul-double v62, v62, v52

    div-double v50, v62, v54

    const-wide/high16 v62, 0x3ff0

    mul-double v64, v50, v50

    sub-double v26, v62, v64

    const-wide/high16 v62, 0x4000

    mul-double v62, v62, v56

    mul-double v62, v62, v58

    div-double v62, v62, v26

    sub-double v20, v24, v62

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v62

    if-eqz v62, :cond_e8

    const-wide/16 v20, 0x0

    :cond_e8
    const-wide/high16 v62, 0x4030

    div-double v62, v36, v62

    mul-double v62, v62, v26

    const-wide/high16 v64, 0x4010

    const-wide/high16 v66, 0x4010

    const-wide/high16 v68, 0x4008

    mul-double v68, v68, v26

    sub-double v66, v66, v68

    mul-double v66, v66, v36

    add-double v64, v64, v66

    mul-double v8, v62, v64

    move-wide/from16 v44, v42

    const-wide/high16 v62, 0x3ff0

    sub-double v62, v62, v8

    mul-double v62, v62, v36

    mul-double v62, v62, v50

    mul-double v64, v8, v54

    mul-double v66, v8, v24

    const-wide/high16 v68, -0x4010

    const-wide/high16 v70, 0x4000

    mul-double v70, v70, v20

    mul-double v70, v70, v20

    add-double v68, v68, v70

    mul-double v66, v66, v68

    add-double v66, v66, v20

    mul-double v64, v64, v66

    add-double v64, v64, v48

    mul-double v62, v62, v64

    add-double v42, v10, v62

    goto/16 :goto_72

    :cond_124
    const-wide/16 v62, 0x0

    cmpl-double v62, v40, v62

    if-nez v62, :cond_12d

    const-wide/high16 v62, 0x7ff8

    goto :goto_b9

    :cond_12d
    mul-double v62, v16, v16

    mul-double v64, v18, v18

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    mul-double v64, v18, v18

    div-double v60, v62, v64

    const-wide/high16 v62, 0x3ff0

    const-wide/high16 v64, 0x40d0

    div-double v64, v60, v64

    const-wide/high16 v66, 0x40b0

    const-wide/high16 v68, -0x3f78

    const-wide/high16 v70, 0x4074

    const-wide v72, 0x4065e00000000000L

    mul-double v72, v72, v60

    sub-double v70, v70, v72

    mul-double v70, v70, v60

    add-double v68, v68, v70

    mul-double v68, v68, v60

    add-double v66, v66, v68

    mul-double v64, v64, v66

    add-double v4, v62, v64

    const-wide/high16 v62, 0x4090

    div-double v62, v60, v62

    const-wide/high16 v64, 0x4070

    const-wide/high16 v66, -0x3fa0

    const-wide v68, 0x4052800000000000L

    const-wide v70, 0x4047800000000000L

    mul-double v70, v70, v60

    sub-double v68, v68, v70

    mul-double v68, v68, v60

    add-double v66, v66, v68

    mul-double v66, v66, v60

    add-double v64, v64, v66

    mul-double v6, v62, v64

    mul-double v62, v6, v54

    const-wide/high16 v64, 0x4010

    div-double v64, v6, v64

    const-wide/high16 v66, -0x4010

    const-wide/high16 v68, 0x4000

    mul-double v68, v68, v20

    mul-double v68, v68, v20

    add-double v66, v66, v68

    mul-double v66, v66, v24

    const-wide/high16 v68, 0x4018

    div-double v68, v6, v68

    mul-double v68, v68, v20

    const-wide/high16 v70, -0x3ff8

    const-wide/high16 v72, 0x4010

    mul-double v72, v72, v54

    mul-double v72, v72, v54

    add-double v70, v70, v72

    mul-double v68, v68, v70

    const-wide/high16 v70, -0x3ff8

    const-wide/high16 v72, 0x4010

    mul-double v72, v72, v20

    mul-double v72, v72, v20

    add-double v70, v70, v72

    mul-double v68, v68, v70

    sub-double v66, v66, v68

    mul-double v64, v64, v66

    add-double v64, v64, v20

    mul-double v32, v62, v64

    mul-double v62, v18, v4

    sub-double v64, v48, v32

    mul-double v34, v62, v64

    mul-double v62, v30, v52

    mul-double v64, v28, v58

    mul-double v66, v56, v30

    mul-double v66, v66, v22

    sub-double v64, v64, v66

    invoke-static/range {v62 .. v65}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v62

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v38

    mul-double v62, v28, v52

    move-wide/from16 v0, v56

    neg-double v0, v0

    move-wide/from16 v64, v0

    mul-double v64, v64, v30

    mul-double v66, v28, v58

    mul-double v66, v66, v22

    add-double v64, v64, v66

    invoke-static/range {v62 .. v65}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v62

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v46

    move-object/from16 v0, p0

    iget v0, v0, Lnet/sourceforge/zmanim/util/GeoLocation;->DISTANCE:I

    move/from16 v62, v0

    move/from16 v0, p2

    move/from16 v1, v62

    if-ne v0, v1, :cond_1f1

    move-wide/from16 v62, v34

    goto/16 :goto_b9

    :cond_1f1
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sourceforge/zmanim/util/GeoLocation;->INITIAL_BEARING:I

    move/from16 v62, v0

    move/from16 v0, p2

    move/from16 v1, v62

    if-ne v0, v1, :cond_201

    move-wide/from16 v62, v38

    goto/16 :goto_b9

    :cond_201
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sourceforge/zmanim/util/GeoLocation;->FINAL_BEARING:I

    move/from16 v62, v0

    move/from16 v0, p2

    move/from16 v1, v62

    if-ne v0, v1, :cond_211

    move-wide/from16 v62, v46

    goto/16 :goto_b9

    :cond_211
    const-wide/high16 v62, 0x7ff8

    goto/16 :goto_b9
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lnet/sourceforge/zmanim/util/GeoLocation;

    move-object v1, v0
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_9} :catch_1c

    :goto_9
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TimeZone;

    iput-object v3, v1, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    return-object v1

    :catch_1c
    move-exception v3

    move-object v2, v3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Required by the compiler. Should never be reached since we implement clone()"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_6

    move v2, v7

    :goto_5
    return v2

    :cond_6
    instance-of v2, p1, Lnet/sourceforge/zmanim/util/GeoLocation;

    if-nez v2, :cond_c

    move v2, v6

    goto :goto_5

    :cond_c
    move-object v0, p1

    check-cast v0, Lnet/sourceforge/zmanim/util/GeoLocation;

    move-object v1, v0

    iget-wide v2, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v1, Lnet/sourceforge/zmanim/util/GeoLocation;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_54

    iget-wide v2, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v1, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_54

    iget-wide v2, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->elevation:D

    iget-wide v4, v1, Lnet/sourceforge/zmanim/util/GeoLocation;->elevation:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_54

    iget-object v2, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    if-nez v2, :cond_4a

    iget-object v2, v1, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    if-nez v2, :cond_54

    :cond_40
    iget-object v2, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    if-nez v2, :cond_56

    iget-object v2, v1, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    if-nez v2, :cond_54

    :goto_48
    move v2, v7

    goto :goto_5

    :cond_4a
    iget-object v2, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    iget-object v3, v1, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    :cond_54
    move v2, v6

    goto :goto_5

    :cond_56
    iget-object v2, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v1, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_48
.end method

.method public getElevation()D
    .registers 3

    iget-wide v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->elevation:D

    return-wide v0
.end method

.method public getGeodesicDistance(Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .registers 4

    iget v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->DISTANCE:I

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeodesicFinalBearing(Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .registers 4

    iget v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->FINAL_BEARING:I

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeodesicInitialBearing(Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .registers 4

    iget v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->INITIAL_BEARING:I

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->latitude:D

    return-wide v0
.end method

.method public getLocalMeanTimeOffset()J
    .registers 5

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010

    mul-double/2addr v0, v2

    const-wide v2, 0x40ed4c0000000000L

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public getLocationName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    return-wide v0
.end method

.method public getRhumbLineBearing(Lnet/sourceforge/zmanim/util/GeoLocation;)D
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

.method public getRhumbLineDistance(Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .registers 20

    const-wide v0, 0x40b8e30000000000L

    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000

    div-double/2addr v12, v14

    const-wide v14, 0x3fe921fb54442d18L

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000

    div-double v14, v14, v16

    const-wide v16, 0x3fe921fb54442d18L

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3ddb7cdfd9d7bdbbL

    cmpl-double v12, v12, v14

    if-lez v12, :cond_82

    div-double v12, v4, v8

    move-wide v10, v12

    :goto_64
    const-wide v12, 0x400921fb54442d18L

    cmpl-double v12, v6, v12

    if-lez v12, :cond_74

    const-wide v12, 0x401921fb54442d18L

    sub-double v6, v12, v6

    :cond_74
    mul-double v12, v4, v4

    mul-double v14, v10, v10

    mul-double/2addr v14, v6

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v12, v2, v0

    return-wide v12

    :cond_82
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    move-wide v10, v12

    goto :goto_64
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    iget-object v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .registers 15

    const/4 v13, 0x0

    const/16 v12, 0x20

    const/16 v9, 0x11

    iget-wide v10, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->latitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v10, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    iget-wide v10, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->elevation:D

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    ushr-long v10, v4, v12

    xor-long/2addr v10, v4

    long-to-int v3, v10

    ushr-long v10, v7, v12

    xor-long/2addr v10, v7

    long-to-int v6, v10

    ushr-long v10, v1, v12

    xor-long/2addr v10, v1

    long-to-int v0, v10

    mul-int/lit8 v10, v9, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    add-int/lit16 v9, v10, 0x275

    mul-int/lit8 v10, v9, 0x25

    add-int/2addr v10, v3

    add-int/2addr v9, v10

    mul-int/lit8 v10, v9, 0x25

    add-int/2addr v10, v6

    add-int/2addr v9, v10

    mul-int/lit8 v10, v9, 0x25

    add-int/2addr v10, v0

    add-int/2addr v9, v10

    mul-int/lit8 v10, v9, 0x25

    iget-object v11, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    if-nez v11, :cond_4e

    move v11, v13

    :goto_42
    add-int/2addr v10, v11

    add-int/2addr v9, v10

    mul-int/lit8 v10, v9, 0x25

    iget-object v11, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    if-nez v11, :cond_55

    move v11, v13

    :goto_4b
    add-int/2addr v10, v11

    add-int/2addr v9, v10

    return v9

    :cond_4e
    iget-object v11, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    goto :goto_42

    :cond_55
    iget-object v11, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    goto :goto_4b
.end method

.method public setElevation(D)V
    .registers 5

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Elevation cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->elevation:D

    return-void
.end method

.method public setLatitude(D)V
    .registers 5

    const-wide v0, 0x4056800000000000L

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_12

    const-wide v0, -0x3fa9800000000000L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1a

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Latitude must be between -90 and  90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->latitude:D

    return-void
.end method

.method public setLatitude(IIDLjava/lang/String;)V
    .registers 16

    const-wide/high16 v8, 0x404e

    int-to-double v2, p1

    int-to-double v4, p2

    div-double v6, p3, v8

    add-double/2addr v4, v6

    div-double/2addr v4, v8

    add-double v0, v2, v4

    const-wide v2, 0x4056800000000000L

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_19

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_21

    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Latitude must be between 0 and  90. Use direction of S instead of negative."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_21
    const-string v2, "S"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-wide/high16 v2, -0x4010

    mul-double/2addr v0, v2

    :cond_2c
    iput-wide v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->latitude:D

    return-void

    :cond_2f
    const-string v2, "N"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Latitude direction must be N or S"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setLocationName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(D)V
    .registers 5

    const-wide v0, 0x4066800000000000L

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_12

    const-wide v0, -0x3f99800000000000L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1a

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Longitude must be between -180 and  180"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    return-void
.end method

.method public setLongitude(IIDLjava/lang/String;)V
    .registers 16

    const-wide/high16 v8, 0x404e

    int-to-double v2, p1

    int-to-double v4, p2

    div-double v6, p3, v8

    add-double/2addr v4, v6

    div-double/2addr v4, v8

    add-double v0, v2, v4

    const-wide v2, 0x4066800000000000L

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1b

    iget-wide v2, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_23

    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Longitude must be between 0 and  180. Use the "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_23
    const-string v2, "W"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-wide/high16 v2, -0x4010

    mul-double/2addr v0, v2

    :cond_2e
    iput-wide v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    return-void

    :cond_31
    const-string v2, "E"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Longitude direction must be E or W"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 2

    iput-object p1, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const-wide/32 v4, 0x36ee80

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\nLocation Name:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nLatitude:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&deg;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nLongitude:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&deg;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nElevation:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " Meters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nTimezone Name:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nTimezone GMT Offset:\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "\nTimezone DST Offset:\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXML()Ljava/lang/String;
    .registers 7

    const-wide/32 v4, 0x36ee80

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<GeoLocation>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\t<LocationName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</LocationName>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\t<Latitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&deg;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</Latitude>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\t<Longitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&deg;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</Longitude>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\t<Elevation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " Meters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</Elevation>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\t<TimezoneName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TimezoneName>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\t<TimeZoneDisplayName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TimeZoneDisplayName>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\t<TimezoneGMTOffset>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TimezoneGMTOffset>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\t<TimezoneDSTOffset>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TimezoneDSTOffset>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</GeoLocation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
