.class Lcom/glympse/android/lib/cf;
.super Lcom/glympse/android/lib/HttpJob;
.source "GogoFlightStatusJob.java"


# instance fields
.field private gG:Lcom/glympse/android/core/GPrimitive;

.field private hL:Lcom/glympse/android/core/GLocation;

.field private lS:Lcom/glympse/android/lib/cg;

.field private lT:Ljava/lang/String;

.field private lU:Ljava/lang/String;

.field private lV:Z


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/cg;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/HttpJob;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/cf;->lS:Lcom/glympse/android/lib/cg;

    iput-object p2, p0, Lcom/glympse/android/lib/cf;->lT:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/cf;->lV:Z

    return-void
.end method

.method private c(Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GLocation;
    .registers 13

    const/4 v0, 0x0

    const/high16 v7, 0x7fc0

    const-string v1, "flightInfo"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    const-string v2, "latitude"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "longitude"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1, v4}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->toDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-interface {v1, v4}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->toDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v0, "hSpeed"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "altitude"

    invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->toDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v6, v9

    :goto_5f
    invoke-interface {v1, v8}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v1, v8}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->toDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v8, v0

    :goto_6e
    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J

    move-result-wide v0

    move v9, v7

    move v10, v7

    invoke-static/range {v0 .. v10}, Lcom/glympse/android/core/CoreFactory;->createLocation(JDDFFFFF)Lcom/glympse/android/core/GLocation;

    move-result-object v0

    goto :goto_f

    :cond_79
    move v6, v7

    goto :goto_5f

    :cond_7b
    move v8, v7

    goto :goto_6e
.end method

.method private d(Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
    .registers 8

    const/4 v0, 0x0

    const-string v1, "flightInfo"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    const-string v2, "flightNumberInfo"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tailNumber"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "destinationAirportCode"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v0, "airlineCode"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    const-string v5, "airline_flight_no"

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tail_number"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "destination_airport_code"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "airline_code"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private e(Lcom/glympse/android/core/GPrimitive;)Z
    .registers 4

    const-string v0, "serviceInfo"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const-string v1, "service"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Active"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_d
.end method

.method private p(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    const/16 v7, 0x20

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "\'([A-Za-z]+)\':"

    const-string v2, "$1:"

    invoke-static {p1, v0, v2}, Lcom/glympse/android/hal/Helpers;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->toCharArray(Ljava/lang/String;)[C

    move-result-object v3

    array-length v4, v3

    add-int/lit8 v0, v4, -0x1

    move v2, v0

    move v0, v1

    :goto_1c
    if-ltz v2, :cond_4e

    aget-char v5, v3, v2

    if-eqz v0, :cond_48

    sparse-switch v5, :sswitch_data_6c

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    :sswitch_28
    aput-char v7, v3, v2

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v4, :cond_25

    add-int/lit8 v5, v2, 0x1

    aput-char v7, v3, v5

    goto :goto_25

    :sswitch_33
    aput-char v7, v3, v2

    goto :goto_25

    :sswitch_36
    aput-char v7, v3, v2

    goto :goto_25

    :sswitch_39
    if-lez v2, :cond_45

    const/16 v5, 0x3a

    add-int/lit8 v6, v2, -0x1

    aget-char v6, v3, v6

    if-ne v5, v6, :cond_45

    move v0, v1

    goto :goto_25

    :cond_45
    aput-char v7, v3, v2

    goto :goto_25

    :cond_48
    const/16 v6, 0x27

    if-ne v6, v5, :cond_25

    const/4 v0, 0x1

    goto :goto_25

    :cond_4e
    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->fromCharArray([C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "([A-Za-z]+):"

    const-string v2, "\"$1\":"

    invoke-static {v0, v1, v2}, Lcom/glympse/android/hal/Helpers;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https//"

    const-string v2, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    nop

    :sswitch_data_6c
    .sparse-switch
        0x22 -> :sswitch_33
        0x27 -> :sswitch_39
        0x3a -> :sswitch_36
        0x5c -> :sswitch_28
    .end sparse-switch
.end method


# virtual methods
.method public checkResponse(II)Z
    .registers 4

    const/16 v0, 0xc8

    if-ne v0, p1, :cond_8

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getRetryInterval(I)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public onAbort()V
    .registers 1

    invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onAbort()V

    return-void
.end method

.method public onComplete()V
    .registers 5

    invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onComplete()V

    invoke-virtual {p0}, Lcom/glympse/android/lib/cf;->isSucceeded()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/glympse/android/lib/cf;->lS:Lcom/glympse/android/lib/cg;

    invoke-interface {v0}, Lcom/glympse/android/lib/cg;->bu()V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/glympse/android/lib/cf;->hL:Lcom/glympse/android/core/GLocation;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/glympse/android/lib/cf;->lS:Lcom/glympse/android/lib/cg;

    iget-object v1, p0, Lcom/glympse/android/lib/cf;->hL:Lcom/glympse/android/core/GLocation;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/cg;->locationChanged(Lcom/glympse/android/core/GLocation;)V

    :cond_1a
    iget-object v0, p0, Lcom/glympse/android/lib/cf;->lS:Lcom/glympse/android/lib/cg;

    iget-object v1, p0, Lcom/glympse/android/lib/cf;->lU:Ljava/lang/String;

    iget-object v2, p0, Lcom/glympse/android/lib/cf;->gG:Lcom/glympse/android/core/GPrimitive;

    iget-boolean v3, p0, Lcom/glympse/android/lib/cf;->lV:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/cg;->a(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;Z)V

    goto :goto_e
.end method

.method public onPreProcess()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/cf;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    iget-object v1, p0, Lcom/glympse/android/lib/cf;->lT:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GHttpConnection;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onProcessResponse()V
    .registers 4

    invoke-virtual {p0}, Lcom/glympse/android/lib/cf;->isSucceeded()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/glympse/android/lib/cf;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->getResponseDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/cf;->lU:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/cf;->lU:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/cf;->_success:Z

    goto :goto_6

    :cond_1b
    iget-object v0, p0, Lcom/glympse/android/lib/cf;->lU:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/cf;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "[GogoFlightStatusJob.onProcessResponse] Respose data"

    invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/glympse/android/lib/Debug;->dumpPackets(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/cf;->c(Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GLocation;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/lib/cf;->hL:Lcom/glympse/android/core/GLocation;

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/cf;->d(Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/lib/cf;->gG:Lcom/glympse/android/core/GPrimitive;

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/cf;->e(Lcom/glympse/android/core/GPrimitive;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/glympse/android/lib/cf;->lV:Z

    goto :goto_6
.end method
