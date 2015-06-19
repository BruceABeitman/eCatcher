.class Lcom/glympse/android/lib/gw;
.super Ljava/lang/Object;
.source "Place.java"

# interfaces
.implements Lcom/glympse/android/lib/GPlacePrivate;


# instance fields
.field public _latitude:D

.field public _longitude:D

.field public _name:Ljava/lang/String;

.field public kp:Lcom/glympse/android/lib/GImagePrivate;

.field public ri:Ljava/lang/String;

.field public rj:Ljava/lang/String;

.field public rk:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/glympse/android/lib/gw;->_latitude:D

    iput-wide v0, p0, Lcom/glympse/android/lib/gw;->_longitude:D

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/glympse/android/lib/gw;->_latitude:D

    iput-wide p3, p0, Lcom/glympse/android/lib/gw;->_longitude:D

    iput-object p5, p0, Lcom/glympse/android/lib/gw;->_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/glympse/android/api/GPlace;
    .registers 4

    new-instance v0, Lcom/glympse/android/lib/gw;

    invoke-direct {v0}, Lcom/glympse/android/lib/gw;-><init>()V

    iget-wide v1, p0, Lcom/glympse/android/lib/gw;->_latitude:D

    iput-wide v1, v0, Lcom/glympse/android/lib/gw;->_latitude:D

    iget-wide v1, p0, Lcom/glympse/android/lib/gw;->_longitude:D

    iput-wide v1, v0, Lcom/glympse/android/lib/gw;->_longitude:D

    iget-object v1, p0, Lcom/glympse/android/lib/gw;->_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/glympse/android/lib/gw;->_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/glympse/android/lib/gw;->ri:Ljava/lang/String;

    iput-object v1, v0, Lcom/glympse/android/lib/gw;->ri:Ljava/lang/String;

    iget-object v1, p0, Lcom/glympse/android/lib/gw;->rj:Ljava/lang/String;

    iput-object v1, v0, Lcom/glympse/android/lib/gw;->rj:Ljava/lang/String;

    iget-object v1, p0, Lcom/glympse/android/lib/gw;->rk:Ljava/lang/String;

    iput-object v1, v0, Lcom/glympse/android/lib/gw;->rk:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/glympse/android/lib/gw;->clone()Lcom/glympse/android/api/GPlace;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/glympse/android/core/GPrimitive;)V
    .registers 5

    const-string v0, "lt"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/gw;->_latitude:D

    const-string v0, "ln"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/gw;->_longitude:D

    const-string v0, "nm"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/gw;->_name:Ljava/lang/String;

    const-string v0, "al1"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/gw;->ri:Ljava/lang/String;

    const-string v0, "al2"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/gw;->rj:Ljava/lang/String;

    const-string v0, "phn"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/gw;->rk:Ljava/lang/String;

    const-string v0, "imgurl"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_60

    new-instance v1, Lcom/glympse/android/lib/dz;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/glympse/android/lib/dz;-><init>(Ljava/lang/String;Lcom/glympse/android/core/GDrawable;)V

    iput-object v1, p0, Lcom/glympse/android/lib/gw;->kp:Lcom/glympse/android/lib/GImagePrivate;

    :cond_60
    return-void
.end method

.method public encode(Lcom/glympse/android/core/GPrimitive;I)V
    .registers 6

    const-string v0, "lt"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/glympse/android/lib/gw;->_latitude:D

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    const-string v0, "ln"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/glympse/android/lib/gw;->_longitude:D

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    iget-object v0, p0, Lcom/glympse/android/lib/gw;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "nm"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/gw;->_name:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget-object v0, p0, Lcom/glympse/android/lib/gw;->ri:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "al1"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/gw;->ri:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    iget-object v0, p0, Lcom/glympse/android/lib/gw;->rj:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "al2"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/gw;->rj:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    iget-object v0, p0, Lcom/glympse/android/lib/gw;->rk:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "phn"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/gw;->rk:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    iget-object v0, p0, Lcom/glympse/android/lib/gw;->kp:Lcom/glympse/android/lib/GImagePrivate;

    if-eqz v0, :cond_75

    const-string v0, "imgurl"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/gw;->kp:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GImagePrivate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAddressLine1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/gw;->ri:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/gw;->rj:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/glympse/android/api/GImage;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/gw;->kp:Lcom/glympse/android/lib/GImagePrivate;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/gw;->_latitude:D

    return-wide v0
.end method

.method public getLatitudeE6()I
    .registers 5

    iget-wide v0, p0, Lcom/glympse/android/lib/gw;->_latitude:D

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/gw;->_longitude:D

    return-wide v0
.end method

.method public getLongitudeE6()I
    .registers 5

    iget-wide v0, p0, Lcom/glympse/android/lib/gw;->_longitude:D

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/gw;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/gw;->rk:Ljava/lang/String;

    return-object v0
.end method

.method public hasLocation()Z
    .registers 5

    iget-wide v0, p0, Lcom/glympse/android/lib/gw;->_latitude:D

    iget-wide v2, p0, Lcom/glympse/android/lib/gw;->_longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/glympse/android/lib/Location;->isValid(DD)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lcom/glympse/android/core/GCommon;)Z
    .registers 10

    const/4 v0, 0x0

    const-wide v6, 0x408f400000000000L

    check-cast p1, Lcom/glympse/android/lib/gw;

    if-nez p1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/glympse/android/lib/gw;->_name:Ljava/lang/String;

    iget-object v2, p1, Lcom/glympse/android/lib/gw;->_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-wide v1, p0, Lcom/glympse/android/lib/gw;->_latitude:D

    mul-double/2addr v1, v6

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/glympse/android/lib/gw;->_longitude:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget-wide v3, p1, Lcom/glympse/android/lib/gw;->_latitude:D

    mul-double/2addr v3, v6

    double-to-int v3, v3

    iget-wide v4, p1, Lcom/glympse/android/lib/gw;->_longitude:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    if-ne v1, v3, :cond_a

    if-ne v2, v4, :cond_a

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public setAddressLine1(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/gw;->ri:Ljava/lang/String;

    return-void
.end method

.method public setAddressLine2(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/gw;->rj:Ljava/lang/String;

    return-void
.end method

.method public setImage(Lcom/glympse/android/core/GDrawable;)V
    .registers 6

    const/16 v3, 0x5f

    if-nez p1, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "glympse-place:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/glympse/android/lib/gw;->_latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/glympse/android/lib/gw;->_longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/glympse/android/lib/gw;->_name:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/glympse/android/lib/gw;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/glympse/android/lib/dz;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/glympse/android/lib/dz;-><init>(Ljava/lang/String;Lcom/glympse/android/core/GDrawable;)V

    iput-object v1, p0, Lcom/glympse/android/lib/gw;->kp:Lcom/glympse/android/lib/GImagePrivate;

    goto :goto_4
.end method

.method public setLocation(DD)V
    .registers 5

    iput-wide p1, p0, Lcom/glympse/android/lib/gw;->_latitude:D

    iput-wide p3, p0, Lcom/glympse/android/lib/gw;->_longitude:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/gw;->_name:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/gw;->rk:Ljava/lang/String;

    return-void
.end method
