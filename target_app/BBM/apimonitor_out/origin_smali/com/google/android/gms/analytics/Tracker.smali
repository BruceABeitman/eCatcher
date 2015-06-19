.class public Lcom/google/android/gms/analytics/Tracker;
.super Ljava/lang/Object;


# instance fields
.field private final up:Lcom/google/android/gms/analytics/TrackerHandler;

.field private final uq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ur:Lcom/google/android/gms/analytics/ad;

.field private final us:Lcom/google/android/gms/analytics/h;

.field private final ut:Lcom/google/android/gms/analytics/ae;

.field private final uu:Lcom/google/android/gms/analytics/g;

.field private uv:Z

.field private uw:Lcom/google/android/gms/analytics/Tracker$a;

.field private ux:Lcom/google/android/gms/analytics/aj;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;)V
    .registers 10

    invoke-static {}, Lcom/google/android/gms/analytics/h;->bu()Lcom/google/android/gms/analytics/h;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/analytics/ae;->cs()Lcom/google/android/gms/analytics/ae;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/analytics/g;->bt()Lcom/google/android/gms/analytics/g;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/analytics/z;

    const-string v0, "tracking"

    invoke-direct {v6, v0}, Lcom/google/android/gms/analytics/z;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/analytics/Tracker;-><init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Lcom/google/android/gms/analytics/h;Lcom/google/android/gms/analytics/ae;Lcom/google/android/gms/analytics/g;Lcom/google/android/gms/analytics/ad;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Lcom/google/android/gms/analytics/h;Lcom/google/android/gms/analytics/ae;Lcom/google/android/gms/analytics/g;Lcom/google/android/gms/analytics/ad;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uq:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->up:Lcom/google/android/gms/analytics/TrackerHandler;

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uq:Ljava/util/Map;

    const-string v1, "&tid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uq:Ljava/util/Map;

    const-string v1, "useSecure"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/analytics/Tracker;->us:Lcom/google/android/gms/analytics/h;

    iput-object p4, p0, Lcom/google/android/gms/analytics/Tracker;->ut:Lcom/google/android/gms/analytics/ae;

    iput-object p5, p0, Lcom/google/android/gms/analytics/Tracker;->uu:Lcom/google/android/gms/analytics/g;

    iput-object p6, p0, Lcom/google/android/gms/analytics/Tracker;->ur:Lcom/google/android/gms/analytics/ad;

    new-instance v0, Lcom/google/android/gms/analytics/Tracker$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/Tracker$a;-><init>(Lcom/google/android/gms/analytics/Tracker;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uw:Lcom/google/android/gms/analytics/Tracker$a;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uw:Lcom/google/android/gms/analytics/Tracker$a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/aj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/google/android/gms/analytics/aj;)V
    .registers 6

    const-string v0, "Loading Tracker config values."

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->cB()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->cC()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&tid"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Tracker] trackingId loaded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->cD()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->cE()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&sf"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Tracker] sample frequency loaded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->cF()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->getSessionTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setSessionTimeout(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Tracker] session timeout loaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->cu()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V

    :cond_7d
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->cG()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->cH()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Tracker] auto activity tracking loaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->cv()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V

    :cond_a4
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->cI()Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->cJ()Z

    move-result v0

    if-eqz v0, :cond_c0

    const-string v0, "&aip"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[Tracker] anonymize ip loaded: true"

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V

    :cond_c0
    const-string v0, "[Tracker] anonymize ip loaded: false"

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V

    :cond_c5
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->cK()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker;->uv:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ux:Lcom/google/android/gms/analytics/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->cK()Z

    move-result v0

    if-eqz v0, :cond_f5

    new-instance v0, Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Tracker] report uncaught exceptions loaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/Tracker;->uv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V

    :cond_f5
    return-void
.end method

.method cu()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uw:Lcom/google/android/gms/analytics/Tracker$a;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker$a;->cu()J

    move-result-wide v0

    return-wide v0
.end method

.method cv()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uw:Lcom/google/android/gms/analytics/Tracker$a;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker$a;->cv()Z

    move-result v0

    return v0
.end method

.method public enableAdvertisingIdCollection(Z)V
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uq:Ljava/util/Map;

    const-string v1, "&ate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uq:Ljava/util/Map;

    const-string v1, "&adid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uq:Ljava/util/Map;

    const-string v1, "&ate"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uq:Ljava/util/Map;

    const-string v1, "&ate"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uq:Ljava/util/Map;

    const-string v1, "&adid"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uq:Ljava/util/Map;

    const-string v1, "&adid"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method public enableAutoActivityTracking(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uw:Lcom/google/android/gms/analytics/Tracker$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker$a;->enableAutoActivityTracking(Z)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/u;->bR()Lcom/google/android/gms/analytics/u;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/analytics/u$a;->su:Lcom/google/android/gms/analytics/u$a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->uq:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_10

    :cond_22
    const-string v1, "&ul"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->us:Lcom/google/android/gms/analytics/h;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->us:Lcom/google/android/gms/analytics/h;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/h;->x(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->us:Lcom/google/android/gms/analytics/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/h;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_46
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->ut:Lcom/google/android/gms/analytics/ae;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->ut:Lcom/google/android/gms/analytics/ae;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/ae;->x(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ut:Lcom/google/android/gms/analytics/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/ae;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_59
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->uu:Lcom/google/android/gms/analytics/g;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->uu:Lcom/google/android/gms/analytics/g;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/g;->x(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uu:Lcom/google/android/gms/analytics/g;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/g;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public send(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/u;->bR()Lcom/google/android/gms/analytics/u;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/u$a;->sw:Lcom/google/android/gms/analytics/u$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uq:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_1a

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1a
    const-string v0, "&tid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "Missing tracking id (%s) parameter."

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "&tid"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->w(Ljava/lang/String;)V

    :cond_37
    const-string v0, "&t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string v0, "Missing hit type (%s) parameter."

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "&t"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->w(Ljava/lang/String;)V

    const-string v0, ""

    :cond_56
    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->uw:Lcom/google/android/gms/analytics/Tracker$a;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/Tracker$a;->cw()Z

    move-result v2

    if-eqz v2, :cond_65

    const-string v2, "&sc"

    const-string v3, "start"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    const-string v2, "transaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->ur:Lcom/google/android/gms/analytics/ad;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ad;->cl()Z

    move-result v0

    if-nez v0, :cond_83

    const-string v0, "Too many hits sent too quickly, rate limiting invoked."

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->w(Ljava/lang/String;)V

    :goto_82
    return-void

    :cond_83
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->up:Lcom/google/android/gms/analytics/TrackerHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/TrackerHandler;->n(Ljava/util/Map;)V

    goto :goto_82
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "Key should be non-null"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/u;->bR()Lcom/google/android/gms/analytics/u;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/u$a;->sv:Lcom/google/android/gms/analytics/u$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uq:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAnonymizeIp(Z)V
    .registers 4

    const-string v0, "&aip"

    invoke-static {p1}, Lcom/google/android/gms/analytics/ak;->s(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&aid"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppInstallerId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&aiid"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&an"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&av"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&cid"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&de"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&dh"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&ul"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&dl"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&dp"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&dr"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSampleRate(D)V
    .registers 5

    const-string v0, "&sf"

    invoke-static {p1, p2}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenColors(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&sd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&cd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenResolution(II)V
    .registers 6

    if-gez p1, :cond_a

    if-gez p2, :cond_a

    const-string v0, "Invalid width or height. The values should be non-negative."

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->w(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "&sr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public setSessionTimeout(J)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->uw:Lcom/google/android/gms/analytics/Tracker$a;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/Tracker$a;->setSessionTimeout(J)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&dt"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseSecure(Z)V
    .registers 4

    const-string v0, "useSecure"

    invoke-static {p1}, Lcom/google/android/gms/analytics/ak;->s(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setViewportSize(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&vp"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
