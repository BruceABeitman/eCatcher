.class public Lcom/glympse/android/lib/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Lcom/glympse/android/lib/GLocationPrivate;


# instance fields
.field public _altitude:F

.field public _bearing:F

.field public _haccuracy:F

.field public _latitude:D

.field public _longitude:D

.field public _provider:I

.field public _speed:F

.field public _time:J

.field public _vaccuracy:F


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/high16 v2, 0x7ff8

    const/high16 v1, 0x7fc0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/glympse/android/lib/Location;->_latitude:D

    iput-wide v2, p0, Lcom/glympse/android/lib/Location;->_longitude:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/glympse/android/lib/Location;->_provider:I

    iput v1, p0, Lcom/glympse/android/lib/Location;->_altitude:F

    iput v1, p0, Lcom/glympse/android/lib/Location;->_bearing:F

    iput v1, p0, Lcom/glympse/android/lib/Location;->_speed:F

    iput v1, p0, Lcom/glympse/android/lib/Location;->_haccuracy:F

    iput v1, p0, Lcom/glympse/android/lib/Location;->_vaccuracy:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/glympse/android/lib/Location;->_time:J

    return-void
.end method

.method public constructor <init>(JDDFFFFF)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/glympse/android/lib/Location;->_latitude:D

    iput-wide p5, p0, Lcom/glympse/android/lib/Location;->_longitude:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/glympse/android/lib/Location;->_provider:I

    iput p9, p0, Lcom/glympse/android/lib/Location;->_altitude:F

    iput p7, p0, Lcom/glympse/android/lib/Location;->_speed:F

    iput p8, p0, Lcom/glympse/android/lib/Location;->_bearing:F

    iput p10, p0, Lcom/glympse/android/lib/Location;->_haccuracy:F

    iput p11, p0, Lcom/glympse/android/lib/Location;->_vaccuracy:F

    iput-wide p1, p0, Lcom/glympse/android/lib/Location;->_time:J

    return-void
.end method

.method public static bearing(DDDD)D
    .registers 16

    const-wide v6, 0x3f91df46a1fae711L

    mul-double v0, p0, v6

    mul-double v2, p2, v6

    mul-double v4, p4, v6

    mul-double/2addr v6, p6

    invoke-static/range {v0 .. v7}, Lcom/glympse/android/lib/Location;->bearingRad(DDDD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a47a9e3L

    mul-double/2addr v0, v2

    double-to-int v2, v0

    add-int/lit16 v3, v2, 0x168

    rem-int/lit16 v3, v3, 0x168

    int-to-double v3, v3

    int-to-double v5, v2

    sub-double/2addr v0, v5

    add-double/2addr v0, v3

    return-wide v0
.end method

.method public static bearingRad(DDDD)D
    .registers 16

    sub-double v0, p6, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double v6, p6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distance(DDDD)D
    .registers 18

    const-wide v8, 0x415854a640000000L

    const-wide v0, 0x3f91df46a1fae711L

    mul-double/2addr v0, p0

    const-wide v2, 0x3f91df46a1fae711L

    mul-double/2addr v2, p2

    const-wide v4, 0x3f91df46a1fae711L

    mul-double/2addr v4, p4

    const-wide v6, 0x3f91df46a1fae711L

    mul-double v6, v6, p6

    invoke-static/range {v0 .. v7}, Lcom/glympse/android/lib/Location;->distanceRad(DDDD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    return-wide v0
.end method

.method public static distanceRad(DDDD)D
    .registers 14

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double v4, p2, p6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, -0x4010

    cmpg-double v2, v0, v2

    if-gez v2, :cond_22

    const-wide/high16 v0, -0x4010

    :cond_22
    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2a

    const-wide/high16 v0, 0x3ff0

    :cond_2a
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_36

    const-wide/16 v0, 0x0

    :cond_36
    return-wide v0
.end method

.method public static isEquals(FF)Z
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    cmpl-float v1, p0, p1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isValid(DD)Z
    .registers 7

    const-wide/16 v1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3c

    cmpl-double v0, p0, v1

    if-nez v0, :cond_16

    cmpl-double v0, p2, v1

    if-eqz v0, :cond_3c

    :cond_16
    const-wide v0, -0x3fa9800000000000L

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_3c

    const-wide v0, 0x4056800000000000L

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_3c

    const-wide v0, -0x3f99800000000000L

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_3c

    const-wide v0, 0x4066800000000000L

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_3c

    const/4 v0, 0x1

    :goto_3b
    return v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public static isValid(FF)Z
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2f

    cmpl-float v0, p0, v1

    if-nez v0, :cond_15

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_2f

    :cond_15
    const/high16 v0, -0x3d4c

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_2f

    const/high16 v0, 0x42b4

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2f

    const/high16 v0, -0x3ccc

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2f

    const/high16 v0, 0x4334

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2f

    const/4 v0, 0x1

    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public static isValid(II)Z
    .registers 3

    if-nez p0, :cond_4

    if-eqz p1, :cond_1a

    :cond_4
    const v0, -0x55d4a80

    if-lt p0, v0, :cond_1a

    const v0, 0x55d4a80

    if-gt p0, v0, :cond_1a

    const v0, -0xaba9500

    if-lt p1, v0, :cond_1a

    const v0, 0xaba9500

    if-gt p1, v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public bearingTo(Lcom/glympse/android/core/GLatLng;)F
    .registers 10

    iget-wide v0, p0, Lcom/glympse/android/lib/Location;->_latitude:D

    iget-wide v2, p0, Lcom/glympse/android/lib/Location;->_longitude:D

    invoke-interface {p1}, Lcom/glympse/android/core/GLatLng;->getLatitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/glympse/android/core/GLatLng;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/glympse/android/lib/Location;->bearing(DDDD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public clone()Lcom/glympse/android/core/GLocation;
    .registers 13

    new-instance v0, Lcom/glympse/android/lib/Location;

    iget-wide v1, p0, Lcom/glympse/android/lib/Location;->_time:J

    iget-wide v3, p0, Lcom/glympse/android/lib/Location;->_latitude:D

    iget-wide v5, p0, Lcom/glympse/android/lib/Location;->_longitude:D

    iget v7, p0, Lcom/glympse/android/lib/Location;->_speed:F

    iget v8, p0, Lcom/glympse/android/lib/Location;->_bearing:F

    iget v9, p0, Lcom/glympse/android/lib/Location;->_altitude:F

    iget v10, p0, Lcom/glympse/android/lib/Location;->_haccuracy:F

    iget v11, p0, Lcom/glympse/android/lib/Location;->_vaccuracy:F

    invoke-direct/range {v0 .. v11}, Lcom/glympse/android/lib/Location;-><init>(JDDFFFFF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/glympse/android/lib/Location;->clone()Lcom/glympse/android/core/GLocation;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/glympse/android/core/GPrimitive;)V
    .registers 4

    const-string v0, "lt"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/Location;->_latitude:D

    const-string v0, "ln"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/Location;->_longitude:D

    const-string v0, "hd"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/glympse/android/lib/Location;->_bearing:F

    const-string v0, "ts"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/Location;->_time:J

    return-void
.end method

.method public distanceTo(Lcom/glympse/android/core/GLatLng;)F
    .registers 10

    iget-wide v0, p0, Lcom/glympse/android/lib/Location;->_latitude:D

    iget-wide v2, p0, Lcom/glympse/android/lib/Location;->_longitude:D

    invoke-interface {p1}, Lcom/glympse/android/core/GLatLng;->getLatitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/glympse/android/core/GLatLng;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/glympse/android/lib/Location;->distance(DDDD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public encode(Lcom/glympse/android/core/GPrimitive;I)V
    .registers 6

    const-string v0, "lt"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/glympse/android/lib/Location;->_latitude:D

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    const-string v0, "ln"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/glympse/android/lib/Location;->_longitude:D

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    const-string v0, "hd"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/glympse/android/lib/Location;->_bearing:F

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    const-string v0, "ts"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/glympse/android/lib/Location;->_time:J

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    check-cast p1, Lcom/glympse/android/lib/Location;

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1}, Lcom/glympse/android/lib/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/glympse/android/lib/Location;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/glympse/android/lib/Location;->getLatitudeE6()I

    move-result v1

    invoke-virtual {p0}, Lcom/glympse/android/lib/Location;->getLatitudeE6()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/glympse/android/lib/Location;->getLongitudeE6()I

    move-result v1

    invoke-virtual {p0}, Lcom/glympse/android/lib/Location;->getLongitudeE6()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/glympse/android/lib/Location;->getAltitude()F

    move-result v1

    invoke-virtual {p0}, Lcom/glympse/android/lib/Location;->getAltitude()F

    move-result v2

    invoke-static {v1, v2}, Lcom/glympse/android/lib/Location;->isEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getAltitude()F
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/Location;->_altitude:F

    return v0
.end method

.method public getBearing()F
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/Location;->_bearing:F

    return v0
.end method

.method public getHAccuracy()F
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/Location;->_haccuracy:F

    return v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/Location;->_latitude:D

    return-wide v0
.end method

.method public getLatitudeE6()I
    .registers 5

    iget-wide v0, p0, Lcom/glympse/android/lib/Location;->_latitude:D

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/Location;->_longitude:D

    return-wide v0
.end method

.method public getLongitudeE6()I
    .registers 5

    iget-wide v0, p0, Lcom/glympse/android/lib/Location;->_longitude:D

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getProvider()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/Location;->_provider:I

    return v0
.end method

.method public getSpeed()F
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/Location;->_speed:F

    return v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/Location;->_time:J

    return-wide v0
.end method

.method public getVAccuracy()F
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/Location;->_vaccuracy:F

    return v0
.end method

.method public hasAltitude()Z
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/Location;->_altitude:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasBearing()Z
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/Location;->_bearing:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasHAccuracy()Z
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/Location;->_haccuracy:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLocation()Z
    .registers 5

    iget-wide v0, p0, Lcom/glympse/android/lib/Location;->_latitude:D

    iget-wide v2, p0, Lcom/glympse/android/lib/Location;->_longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/glympse/android/lib/Location;->isValid(DD)Z

    move-result v0

    return v0
.end method

.method public hasProvider()Z
    .registers 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/glympse/android/lib/Location;->_provider:I

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hasSpeed()Z
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/Location;->_speed:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTime()Z
    .registers 5

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/glympse/android/lib/Location;->_time:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasVAccuracy()Z
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/Location;->_vaccuracy:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hashCode()I
    .registers 4

    new-instance v0, Lcom/glympse/android/lib/dq;

    invoke-direct {v0}, Lcom/glympse/android/lib/dq;-><init>()V

    invoke-virtual {p0}, Lcom/glympse/android/lib/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/glympse/android/lib/dq;->f(J)V

    invoke-virtual {p0}, Lcom/glympse/android/lib/Location;->getLatitudeE6()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/glympse/android/lib/dq;->append(I)V

    invoke-virtual {p0}, Lcom/glympse/android/lib/Location;->getLongitudeE6()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/glympse/android/lib/dq;->append(I)V

    invoke-virtual {p0}, Lcom/glympse/android/lib/Location;->getAltitude()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/glympse/android/lib/dq;->a(F)V

    invoke-virtual {v0}, Lcom/glympse/android/lib/dq;->bP()I

    move-result v0

    return v0
.end method

.method public setAltitude(F)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/Location;->_altitude:F

    return-void
.end method

.method public setBearing(F)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/Location;->_bearing:F

    return-void
.end method

.method public setHAccuracy(F)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/Location;->_haccuracy:F

    return-void
.end method

.method public setLocation(DD)V
    .registers 5

    iput-wide p1, p0, Lcom/glympse/android/lib/Location;->_latitude:D

    iput-wide p3, p0, Lcom/glympse/android/lib/Location;->_longitude:D

    return-void
.end method

.method public setSpeed(F)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/Location;->_speed:F

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/glympse/android/lib/Location;->_time:J

    return-void
.end method
