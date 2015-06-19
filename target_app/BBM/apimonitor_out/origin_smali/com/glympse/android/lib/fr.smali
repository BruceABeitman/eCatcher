.class Lcom/glympse/android/lib/fr;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/glympse/android/lib/GLocationManagerPrivate;


# static fields
.field private static final pW:J = 0x1b7740L

.field private static final pX:I = 0xc8

.field private static final pY:I = 0x2

.field private static final pZ:I = 0x64


# instance fields
.field private F:Z

.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private cb:I

.field private ce:Lcom/glympse/android/core/GLocationProfile;

.field private hE:Lcom/glympse/android/lib/CommonSink;

.field private hL:Lcom/glympse/android/core/GLocation;

.field private lX:Lcom/glympse/android/core/GLocationProvider;

.field private lj:Lcom/glympse/android/lib/GBatteryManagerPrivate;

.field private lu:Lcom/glympse/android/lib/GCorrectedTime;

.field private pP:I

.field private pQ:Lcom/glympse/android/core/GProximityProvider;

.field private pR:Z

.field private pS:Z

.field private pT:Lcom/glympse/android/lib/fs;

.field private pU:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/core/GLocationProfile;",
            ">;"
        }
    .end annotation
.end field

.field private pV:I

.field private qa:D


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/glympse/android/lib/fr;->pP:I

    iput-boolean v1, p0, Lcom/glympse/android/lib/fr;->pR:Z

    iput-boolean v0, p0, Lcom/glympse/android/lib/fr;->pS:Z

    iput v1, p0, Lcom/glympse/android/lib/fr;->cb:I

    iput-boolean v0, p0, Lcom/glympse/android/lib/fr;->F:Z

    new-instance v0, Lcom/glympse/android/lib/CommonSink;

    const-string v1, "LocationManager"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glympse/android/lib/fr;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-direct {p0}, Lcom/glympse/android/lib/fr;->co()V

    invoke-direct {p0}, Lcom/glympse/android/lib/fr;->cr()V

    return-void
.end method

.method private a(Lcom/glympse/android/lib/GLocationPrivate;)Z
    .registers 14

    const/4 v1, 0x1

    const/4 v11, 0x3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->lu:Lcom/glympse/android/lib/GCorrectedTime;

    invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J

    move-result-wide v3

    iget-boolean v0, p0, Lcom/glympse/android/lib/fr;->pS:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hL:Lcom/glympse/android/core/GLocation;

    if-eqz v0, :cond_6e

    invoke-interface {p1}, Lcom/glympse/android/lib/GLocationPrivate;->getHAccuracy()F

    move-result v0

    float-to-int v0, v0

    int-to-double v5, v0

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hL:Lcom/glympse/android/core/GLocation;

    invoke-interface {p1, v0}, Lcom/glympse/android/lib/GLocationPrivate;->distanceTo(Lcom/glympse/android/core/GLatLng;)F

    move-result v0

    float-to-double v7, v0

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hL:Lcom/glympse/android/core/GLocation;

    invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getHAccuracy()F

    move-result v0

    float-to-int v0, v0

    int-to-double v9, v0

    add-double/2addr v9, v5

    cmpg-double v0, v7, v9

    if-gez v0, :cond_3a

    move v0, v1

    :goto_2c
    iget-wide v9, p0, Lcom/glympse/android/lib/fr;->qa:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_3c

    if-eqz v0, :cond_3c

    const-string v0, "[LocationManager] Bad location (hacc)"

    invoke-static {v11, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :goto_39
    return v2

    :cond_3a
    move v0, v2

    goto :goto_2c

    :cond_3c
    const-wide v5, 0x408f400000000000L

    mul-double/2addr v5, v7

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hL:Lcom/glympse/android/core/GLocation;

    invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getTime()J

    move-result-wide v7

    sub-long v7, v3, v7

    long-to-double v7, v7

    div-double/2addr v5, v7

    const-wide v7, 0x40765a1ca0000000L

    cmpl-double v0, v5, v7

    if-lez v0, :cond_6e

    const-string v0, "[LocationManager] Bad location (cspeed)"

    invoke-static {v11, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_39

    :cond_5b
    invoke-interface {p1}, Lcom/glympse/android/lib/GLocationPrivate;->getTime()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/32 v7, 0x1b7740

    cmp-long v0, v5, v7

    if-lez v0, :cond_6e

    const-string v0, "[LocationManager] Old location"

    invoke-static {v11, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_39

    :cond_6e
    invoke-interface {p1, v3, v4}, Lcom/glympse/android/lib/GLocationPrivate;->setTime(J)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GLocationPrivate;->getSpeed()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_81

    const v2, 0x43b2d0e5

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8b

    :cond_81
    const/high16 v0, 0x7fc0

    invoke-interface {p1, v0}, Lcom/glympse/android/lib/GLocationPrivate;->setSpeed(F)V

    const-string v0, "[LocationManager] Invalid speed"

    invoke-static {v11, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :cond_8b
    move v2, v1

    goto :goto_39
.end method

.method private b(Lcom/glympse/android/core/GLocation;)V
    .registers 4

    invoke-static {p1}, Lcom/glympse/android/lib/Debug;->dumpLocation(Lcom/glympse/android/core/GLocation;)V

    iput-object p1, p0, Lcom/glympse/android/lib/fr;->hL:Lcom/glympse/android/core/GLocation;

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pQ:Lcom/glympse/android/core/GProximityProvider;

    iget-object v1, p0, Lcom/glympse/android/lib/fr;->hL:Lcom/glympse/android/core/GLocation;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GProximityProvider;->locationChanged(Lcom/glympse/android/core/GLocation;)V

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GGlympsePrivate;->addLocation(Lcom/glympse/android/core/GLocation;)V

    return-void
.end method

.method private b(Lcom/glympse/android/core/GLocationProfile;)V
    .registers 7

    const-wide/high16 v2, 0x4059

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Lcom/glympse/android/core/GLocationProfile;->getAccuracy()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_15

    :cond_c
    :goto_c
    cmpg-double v2, v0, v2

    if-gtz v2, :cond_1f

    const-wide/high16 v0, 0x4069

    :goto_12
    iput-wide v0, p0, Lcom/glympse/android/lib/fr;->qa:D

    return-void

    :cond_15
    invoke-interface {p1}, Lcom/glympse/android/core/GLocationProfile;->getDistance()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_c

    :cond_1d
    move-wide v0, v2

    goto :goto_c

    :cond_1f
    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    goto :goto_12
.end method

.method private c(Lcom/glympse/android/core/GLocation;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GGlympsePrivate;->declineLocation(Lcom/glympse/android/core/GLocation;)V

    return-void
.end method

.method private cn()V
    .registers 3

    iget-boolean v0, p0, Lcom/glympse/android/lib/fr;->F:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/fr;->F:Z

    const/4 v0, 0x3

    const-string v1, "[LocationManager] Started"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->lX:Lcom/glympse/android/core/GLocationProvider;

    invoke-interface {v0}, Lcom/glympse/android/core/GLocationProvider;->start()V

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pQ:Lcom/glympse/android/core/GProximityProvider;

    iget-object v1, p0, Lcom/glympse/android/lib/fr;->hL:Lcom/glympse/android/core/GLocation;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GProximityProvider;->locationChanged(Lcom/glympse/android/core/GLocation;)V

    goto :goto_4
.end method

.method private co()V
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/fr;->pU:Lcom/glympse/android/hal/GVector;

    const/4 v0, -0x1

    iput v0, p0, Lcom/glympse/android/lib/fr;->pV:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/fr;->ce:Lcom/glympse/android/core/GLocationProfile;

    return-void
.end method

.method private cp()I
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->anyActive(Z)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->isHighPostRateOn()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    :goto_17
    return v0

    :cond_18
    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/glympse/android/lib/fr;->pP:I

    if-lez v0, :cond_26

    move v0, v1

    goto :goto_17

    :cond_26
    iget-object v0, p0, Lcom/glympse/android/lib/fr;->lj:Lcom/glympse/android/lib/GBatteryManagerPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GBatteryManagerPrivate;->getProvider()Lcom/glympse/android/hal/GBatteryProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/hal/GBatteryProvider;->isPlugged()Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v1

    goto :goto_17

    :cond_34
    const/4 v0, 0x2

    goto :goto_17

    :cond_36
    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_17

    :cond_40
    move v0, v2

    goto :goto_17
.end method

.method private cq()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isSharing()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/fr;->i(Z)V

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->lX:Lcom/glympse/android/core/GLocationProvider;

    iget-object v1, p0, Lcom/glympse/android/lib/fr;->ce:Lcom/glympse/android/core/GLocationProfile;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GLocationProvider;->applyProfile(Lcom/glympse/android/core/GLocationProfile;)V

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->ce:Lcom/glympse/android/core/GLocationProfile;

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/fr;->b(Lcom/glympse/android/core/GLocationProfile;)V

    return-void
.end method

.method private cr()V
    .registers 3

    const-wide/high16 v0, 0x4069

    iput-wide v0, p0, Lcom/glympse/android/lib/fr;->qa:D

    return-void
.end method

.method private d(Lcom/glympse/android/core/GLocation;)Z
    .registers 3

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/glympse/android/core/GLocation;->hasLocation()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-boolean v0, p0, Lcom/glympse/android/lib/fr;->pR:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_9

    :cond_10
    check-cast p1, Lcom/glympse/android/lib/GLocationPrivate;

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/fr;->a(Lcom/glympse/android/lib/GLocationPrivate;)Z

    move-result v0

    goto :goto_9
.end method

.method private i(Z)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->ce:Lcom/glympse/android/core/GLocationProfile;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->ce:Lcom/glympse/android/core/GLocationProfile;

    invoke-interface {v0}, Lcom/glympse/android/core/GLocationProfile;->getMode()I

    move-result v0

    :goto_c
    invoke-virtual {p0, p1}, Lcom/glympse/android/lib/fr;->h(Z)Z

    move-result v3

    if-eqz v3, :cond_15

    if-nez v0, :cond_15

    move v1, v2

    :cond_15
    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/glympse/android/lib/fr;->cn()V

    :goto_1a
    return-void

    :cond_1b
    invoke-direct {p0, v2}, Lcom/glympse/android/lib/fr;->j(Z)V

    goto :goto_1a

    :cond_1f
    move v0, v1

    goto :goto_c
.end method

.method private j(Z)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/glympse/android/lib/fr;->F:Z

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iput-boolean v2, p0, Lcom/glympse/android/lib/fr;->F:Z

    const/4 v0, 0x3

    const-string v1, "[LocationManager] Stopped"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->lX:Lcom/glympse/android/core/GLocationProvider;

    invoke-interface {v0}, Lcom/glympse/android/core/GLocationProvider;->stop()V

    iput-object v3, p0, Lcom/glympse/android/lib/fr;->hL:Lcom/glympse/android/core/GLocation;

    iput-boolean v2, p0, Lcom/glympse/android/lib/fr;->pS:Z

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0x8

    const/16 v2, 0x200

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/fr;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_6
.end method

.method private k(Z)V
    .registers 8

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pU:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/glympse/android/lib/fr;->cp()I

    move-result v1

    iget v0, p0, Lcom/glympse/android/lib/fr;->pV:I

    if-ne v1, v0, :cond_13

    if-eqz p1, :cond_8

    :cond_13
    const/4 v0, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[LocationManager.updateProfile] New profile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v3, v1

    invoke-static {v3, v4}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iput v1, p0, Lcom/glympse/android/lib/fr;->pV:I

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pU:Lcom/glympse/android/hal/GVector;

    iget v2, p0, Lcom/glympse/android/lib/fr;->pV:I

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GLocationProfile;

    iput-object v0, p0, Lcom/glympse/android/lib/fr;->ce:Lcom/glympse/android/core/GLocationProfile;

    invoke-direct {p0}, Lcom/glympse/android/lib/fr;->cq()V

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getDiagnosticsManager()Lcom/glympse/android/lib/GDiagnosticsManager;

    move-result-object v0

    const-string v2, "location"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "profile"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/glympse/android/lib/GDiagnosticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GBatteryManagerPrivate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GBatteryManagerPrivate;->logBatteryEvent(Lcom/glympse/android/api/GTicket;)V

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0x8

    const/16 v2, 0x100

    iget-object v3, p0, Lcom/glympse/android/lib/fr;->ce:Lcom/glympse/android/core/GLocationProfile;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/fr;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_8
.end method


# virtual methods
.method protected a(Lcom/glympse/android/core/GLocation;Z)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/core/GHandler;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x3

    const-string v1, "[LocationManager] Worker thread location"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v1

    new-instance v2, Lcom/glympse/android/lib/ft;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/fr;

    invoke-direct {v2, v0, p1, p2}, Lcom/glympse/android/lib/ft;-><init>(Lcom/glympse/android/lib/fr;Lcom/glympse/android/core/GLocation;Z)V

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_2c
    if-eqz p2, :cond_32

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/fr;->b(Lcom/glympse/android/core/GLocation;)V

    goto :goto_4

    :cond_32
    invoke-direct {p0, p1}, Lcom/glympse/android/lib/fr;->c(Lcom/glympse/android/core/GLocation;)V

    goto :goto_4
.end method

.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public areProfilesEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pU:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public associateContext(JLjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V

    return-void
.end method

.method public clearContext(J)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V

    return-void
.end method

.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V

    return-void
.end method

.method public enableFiltering(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/glympse/android/lib/fr;->pR:Z

    return-void
.end method

.method public enableProfiles(Z)V
    .registers 5

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pU:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcom/glympse/android/lib/fr;->pU:Lcom/glympse/android/hal/GVector;

    invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createLocationProfile(I)Lcom/glympse/android/core/GLocationProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/fr;->k(Z)V

    goto :goto_a

    :cond_20
    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pU:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/glympse/android/lib/fr;->co()V

    invoke-direct {p0}, Lcom/glympse/android/lib/fr;->cq()V

    goto :goto_a
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/api/GEventSink;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public getContext(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContextKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfile()Lcom/glympse/android/core/GLocationProfile;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->ce:Lcom/glympse/android/core/GLocationProfile;

    return-object v0
.end method

.method public getListeners()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GEventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/glympse/android/core/GLocation;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hL:Lcom/glympse/android/core/GLocation;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_b

    :cond_8
    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hL:Lcom/glympse/android/core/GLocation;

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/glympse/android/lib/fr;->lX:Lcom/glympse/android/core/GLocationProvider;

    invoke-interface {v0}, Lcom/glympse/android/core/GLocationProvider;->getLastKnownLocation()Lcom/glympse/android/core/GLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/fr;->d(Lcom/glympse/android/core/GLocation;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLocationProvider()Lcom/glympse/android/core/GLocationProvider;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->lX:Lcom/glympse/android/core/GLocationProvider;

    return-object v0
.end method

.method public getLocationState()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/fr;->cb:I

    return v0
.end method

.method public getProfile(I)Lcom/glympse/android/core/GLocationProfile;
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pU:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pU:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GLocationProfile;

    goto :goto_b
.end method

.method public h(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->lj:Lcom/glympse/android/lib/GBatteryManagerPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GBatteryManagerPrivate;->isBatteryOk()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/glympse/android/lib/fr;->pP:I

    if-gtz v0, :cond_16

    :cond_14
    if-eqz p1, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public handleGeofence(Ljava/lang/String;I)V
    .registers 11

    const/4 v7, 0x1

    const-wide/high16 v0, 0x7ff8

    iget-object v2, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v2, :cond_12

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    if-eq v7, p2, :cond_13

    const/4 v2, 0x2

    if-eq v2, p2, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v2, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getTriggersManager()Lcom/glympse/android/api/GTriggersManager;

    move-wide v2, v0

    move-wide v4, v0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/glympse/android/core/CoreFactory;->createRegion(DDDLjava/lang/String;)Lcom/glympse/android/core/GRegion;

    move-result-object v1

    if-ne v7, p2, :cond_2b

    const/16 v0, 0x10

    :goto_23
    iget-object v2, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/glympse/android/lib/fr;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_12

    :cond_2b
    const/16 v0, 0x20

    goto :goto_23
.end method

.method public hasContext(J)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z

    move-result v0

    return v0
.end method

.method public isFilteringEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/fr;->pR:Z

    return v0
.end method

.method public locationChanged(Lcom/glympse/android/core/GLocation;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/fr;->pS:Z

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/fr;->d(Lcom/glympse/android/core/GLocation;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/glympse/android/lib/fr;->a(Lcom/glympse/android/core/GLocation;Z)V

    return-void
.end method

.method public regionEntered(Lcom/glympse/android/core/GRegion;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0x8

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/glympse/android/lib/fr;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public regionLeft(Lcom/glympse/android/core/GRegion;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0x8

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/glympse/android/lib/fr;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public restartProvider()V
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/fr;->F:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/fr;->j(Z)V

    invoke-direct {p0}, Lcom/glympse/android/lib/fr;->cn()V

    :cond_b
    return-void
.end method

.method public setActive(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/fr;->k(Z)V

    return-void
.end method

.method public setLocationProvider(Lcom/glympse/android/core/GLocationProvider;)V
    .registers 5

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/glympse/android/lib/fr;->F:Z

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->lX:Lcom/glympse/android/core/GLocationProvider;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/fr;->j(Z)V

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->lX:Lcom/glympse/android/core/GLocationProvider;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/glympse/android/core/GLocationProvider;->setLocationListener(Lcom/glympse/android/core/GLocationListener;)V

    :cond_13
    iput-object p1, p0, Lcom/glympse/android/lib/fr;->lX:Lcom/glympse/android/core/GLocationProvider;

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->lX:Lcom/glympse/android/core/GLocationProvider;

    invoke-interface {v0}, Lcom/glympse/android/core/GLocationProvider;->stop()V

    iget-object v2, p0, Lcom/glympse/android/lib/fr;->lX:Lcom/glympse/android/core/GLocationProvider;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GLocationListener;

    invoke-interface {v2, v0}, Lcom/glympse/android/core/GLocationProvider;->setLocationListener(Lcom/glympse/android/core/GLocationListener;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/fr;->k(Z)V

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/glympse/android/lib/fr;->cn()V

    goto :goto_2
.end method

.method public setProximityProvider(Lcom/glympse/android/core/GProximityProvider;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/glympse/android/lib/fr;->pQ:Lcom/glympse/android/core/GProximityProvider;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/glympse/android/lib/fr;->pQ:Lcom/glympse/android/core/GProximityProvider;

    invoke-interface {v1, v0}, Lcom/glympse/android/core/GProximityProvider;->setProximityListener(Lcom/glympse/android/core/GProximityListener;)V

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pQ:Lcom/glympse/android/core/GProximityProvider;

    invoke-interface {v0}, Lcom/glympse/android/core/GProximityProvider;->detachRegions()Lcom/glympse/android/core/GArray;

    move-result-object v0

    move-object v1, v0

    :goto_14
    iput-object p1, p0, Lcom/glympse/android/lib/fr;->pQ:Lcom/glympse/android/core/GProximityProvider;

    iget-object v2, p0, Lcom/glympse/android/lib/fr;->pQ:Lcom/glympse/android/core/GProximityProvider;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GProximityListener;

    invoke-interface {v2, v0}, Lcom/glympse/android/core/GProximityProvider;->setProximityListener(Lcom/glympse/android/core/GProximityListener;)V

    if-eqz v1, :cond_28

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pQ:Lcom/glympse/android/core/GProximityProvider;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GProximityProvider;->startMonitoring(Lcom/glympse/android/core/GArray;)V

    :cond_28
    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hL:Lcom/glympse/android/core/GLocation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pQ:Lcom/glympse/android/core/GProximityProvider;

    iget-object v1, p0, Lcom/glympse/android/lib/fr;->hL:Lcom/glympse/android/core/GLocation;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GProximityProvider;->locationChanged(Lcom/glympse/android/core/GLocation;)V

    goto :goto_3

    :cond_34
    move-object v1, v0

    goto :goto_14
.end method

.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 4

    iput-object p1, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/fr;->lu:Lcom/glympse/android/lib/GCorrectedTime;

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GBatteryManagerPrivate;

    iput-object v0, p0, Lcom/glympse/android/lib/fr;->lj:Lcom/glympse/android/lib/GBatteryManagerPrivate;

    new-instance v0, Lcom/glympse/android/lib/fs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/fs;-><init>(Lcom/glympse/android/lib/fr$1;)V

    iput-object v0, p0, Lcom/glympse/android/lib/fr;->pT:Lcom/glympse/android/lib/fs;

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/fr;->pT:Lcom/glympse/android/lib/fs;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GConfigPrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/HalFactory;->createLocationProvider(Landroid/content/Context;)Lcom/glympse/android/core/GLocationProvider;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/glympse/android/lib/fr;->setLocationProvider(Lcom/glympse/android/core/GLocationProvider;)V

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/HalFactory;->isProximityReliable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createProximityProvider(Landroid/content/Context;)Lcom/glympse/android/core/GProximityProvider;

    move-result-object v0

    :goto_4c
    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/fr;->setProximityProvider(Lcom/glympse/android/core/GProximityProvider;)V

    return-void

    :cond_50
    new-instance v0, Lcom/glympse/android/lib/v;

    iget-object v1, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/v;-><init>(Lcom/glympse/android/core/GHandler;)V

    goto :goto_4c
.end method

.method public startLocation()I
    .registers 5

    const/4 v3, 0x1

    iget v0, p0, Lcom/glympse/android/lib/fr;->pP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glympse/android/lib/fr;->pP:I

    iget v0, p0, Lcom/glympse/android/lib/fr;->pP:I

    if-ne v3, v0, :cond_14

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->startStopLocation()V

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LocationManager.startLocation] Counter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/glympse/android/lib/fr;->pP:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget v0, p0, Lcom/glympse/android/lib/fr;->pP:I

    return v0
.end method

.method public startMonitoring(Lcom/glympse/android/core/GRegion;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pQ:Lcom/glympse/android/core/GProximityProvider;

    invoke-interface {v0, p1}, Lcom/glympse/android/core/GProximityProvider;->startMonitoring(Lcom/glympse/android/core/GRegion;)V

    return-void
.end method

.method public startStopLocation(Z)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/glympse/android/lib/fr;->i(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/fr;->k(Z)V

    goto :goto_4
.end method

.method public stateChanged(I)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/glympse/android/lib/fr;->cb:I

    if-eq p1, v0, :cond_33

    iput p1, p0, Lcom/glympse/android/lib/fr;->cb:I

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/fr;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget v0, p0, Lcom/glympse/android/lib/fr;->cb:I

    packed-switch v0, :pswitch_data_4a

    const-string v0, "undetermined"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    iget-object v1, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getDiagnosticsManager()Lcom/glympse/android/lib/GDiagnosticsManager;

    move-result-object v1

    const-string v2, "location"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "state"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/glympse/android/lib/GDiagnosticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    return-void

    :pswitch_34
    const-string v0, "acquired"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :pswitch_3b
    const-string v0, "denied"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :pswitch_42
    const-string v0, "error"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    nop

    :pswitch_data_4a
    .packed-switch 0x2
        :pswitch_3b
        :pswitch_34
        :pswitch_42
    .end packed-switch
.end method

.method public stop()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/fr;->pT:Lcom/glympse/android/lib/fs;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GConfigPrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    iput-object v2, p0, Lcom/glympse/android/lib/fr;->pT:Lcom/glympse/android/lib/fs;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/fr;->j(Z)V

    invoke-direct {p0}, Lcom/glympse/android/lib/fr;->co()V

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->removeAllListeners()Z

    iput-object v2, p0, Lcom/glympse/android/lib/fr;->lj:Lcom/glympse/android/lib/GBatteryManagerPrivate;

    iput-object v2, p0, Lcom/glympse/android/lib/fr;->lu:Lcom/glympse/android/lib/GCorrectedTime;

    iput-object v2, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method

.method public stopLocation(Z)I
    .registers 6

    iget v0, p0, Lcom/glympse/android/lib/fr;->pP:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    if-eqz p1, :cond_35

    const/4 v0, 0x0

    iput v0, p0, Lcom/glympse/android/lib/fr;->pP:I

    :goto_b
    iget v0, p0, Lcom/glympse/android/lib/fr;->pP:I

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->startStopLocation()V

    :cond_18
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LocationManager.stopLocation] Counter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/glympse/android/lib/fr;->pP:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget v0, p0, Lcom/glympse/android/lib/fr;->pP:I

    goto :goto_5

    :cond_35
    iget v0, p0, Lcom/glympse/android/lib/fr;->pP:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/glympse/android/lib/fr;->pP:I

    goto :goto_b
.end method

.method public stopMonitoring(Lcom/glympse/android/core/GRegion;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/fr;->pQ:Lcom/glympse/android/core/GProximityProvider;

    invoke-interface {v0, p1}, Lcom/glympse/android/core/GProximityProvider;->stopMonitoring(Lcom/glympse/android/core/GRegion;)V

    return-void
.end method

.method public updateProfile(Lcom/glympse/android/core/GLocationProfile;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/glympse/android/core/GLocationProfile;->getProfile()I

    move-result v1

    if-ltz v1, :cond_f

    iget-object v2, p0, Lcom/glympse/android/lib/fr;->pU:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v2}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    if-lt v1, v2, :cond_11

    :cond_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0

    :cond_11
    iget-object v2, p0, Lcom/glympse/android/lib/fr;->pU:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v2, p1, v1}, Lcom/glympse/android/hal/GVector;->setElementAt(Ljava/lang/Object;I)V

    iget v2, p0, Lcom/glympse/android/lib/fr;->pV:I

    if-ne v1, v2, :cond_10

    iget-object v1, p0, Lcom/glympse/android/lib/fr;->ce:Lcom/glympse/android/core/GLocationProfile;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/glympse/android/lib/fr;->ce:Lcom/glympse/android/core/GLocationProfile;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_26
    iput-object p1, p0, Lcom/glympse/android/lib/fr;->ce:Lcom/glympse/android/core/GLocationProfile;

    invoke-direct {p0}, Lcom/glympse/android/lib/fr;->cq()V

    goto :goto_10
.end method
