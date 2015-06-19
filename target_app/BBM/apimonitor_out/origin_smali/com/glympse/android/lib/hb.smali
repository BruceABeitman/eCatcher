.class Lcom/glympse/android/lib/hb;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Lcom/glympse/android/core/GRegion;


# static fields
.field public static final rx:I = 0x8


# instance fields
.field private _latitude:D

.field private _longitude:D

.field private hm:Ljava/lang/String;

.field private qg:D

.field public rA:Z

.field private rt:D

.field public ru:J

.field public rv:F

.field public rw:F

.field public ry:[J

.field public rz:Z


# direct methods
.method public constructor <init>(DDDDLjava/lang/String;)V
    .registers 15

    const/16 v4, 0x8

    const v3, 0x7f7fffff

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v4, [J

    iput-object v1, p0, Lcom/glympse/android/lib/hb;->ry:[J

    iput-wide p1, p0, Lcom/glympse/android/lib/hb;->_latitude:D

    iput-wide p3, p0, Lcom/glympse/android/lib/hb;->_longitude:D

    iput-wide p5, p0, Lcom/glympse/android/lib/hb;->rt:D

    iput-wide p7, p0, Lcom/glympse/android/lib/hb;->qg:D

    iput-object p9, p0, Lcom/glympse/android/lib/hb;->hm:Ljava/lang/String;

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/glympse/android/lib/hb;->ru:J

    iput v3, p0, Lcom/glympse/android/lib/hb;->rv:F

    iput v3, p0, Lcom/glympse/android/lib/hb;->rw:F

    iput-boolean v0, p0, Lcom/glympse/android/lib/hb;->rz:Z

    iput-boolean v0, p0, Lcom/glympse/android/lib/hb;->rA:Z

    :goto_26
    if-ge v0, v4, :cond_31

    iget-object v1, p0, Lcom/glympse/android/lib/hb;->ry:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_31
    return-void
.end method


# virtual methods
.method public decode(Lcom/glympse/android/core/GPrimitive;)V
    .registers 4

    const-string v0, "lat"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/hb;->_latitude:D

    const-string v0, "lng"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/hb;->_longitude:D

    const-string v0, "rds"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/hb;->rt:D

    const-string v0, "acc"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/hb;->qg:D

    const-string v0, "id"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hb;->hm:Ljava/lang/String;

    return-void
.end method

.method public encode(Lcom/glympse/android/core/GPrimitive;I)V
    .registers 6

    const-string v0, "lat"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/glympse/android/lib/hb;->_latitude:D

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    const-string v0, "lng"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/glympse/android/lib/hb;->_longitude:D

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    const-string v0, "rds"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/glympse/android/lib/hb;->rt:D

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    const-string v0, "acc"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/glympse/android/lib/hb;->qg:D

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    iget-object v0, p0, Lcom/glympse/android/lib/hb;->hm:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "id"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/hb;->hm:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method public getAccuracy()D
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/hb;->qg:D

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hb;->hm:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/hb;->_latitude:D

    return-wide v0
.end method

.method public getLatitudeE6()I
    .registers 5

    iget-wide v0, p0, Lcom/glympse/android/lib/hb;->_latitude:D

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/hb;->_longitude:D

    return-wide v0
.end method

.method public getLongitudeE6()I
    .registers 5

    iget-wide v0, p0, Lcom/glympse/android/lib/hb;->_longitude:D

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getRadius()D
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/hb;->rt:D

    return-wide v0
.end method

.method public hasLocation()Z
    .registers 5

    iget-wide v0, p0, Lcom/glympse/android/lib/hb;->_latitude:D

    iget-wide v2, p0, Lcom/glympse/android/lib/hb;->_longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/glympse/android/lib/Location;->isValid(DD)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lcom/glympse/android/core/GCommon;)Z
    .registers 4

    check-cast p1, Lcom/glympse/android/lib/hb;

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/glympse/android/lib/hb;->hm:Ljava/lang/String;

    iget-object v1, p1, Lcom/glympse/android/lib/hb;->hm:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
