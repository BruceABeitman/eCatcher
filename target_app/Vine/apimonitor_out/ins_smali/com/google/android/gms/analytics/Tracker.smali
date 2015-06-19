.class public Lcom/google/android/gms/analytics/Tracker;
.super Ljava/lang/Object;
.field private mContext:Landroid/content/Context;
.field private final xb:Lcom/google/android/gms/analytics/TrackerHandler;
.field private final xc:Ljava/util/Map;
.field private xd:Lcom/google/android/gms/analytics/ad;
.field private final xe:Lcom/google/android/gms/analytics/h;
.field private final xf:Lcom/google/android/gms/analytics/ae;
.field private final xg:Lcom/google/android/gms/analytics/g;
.field private xh:Z
.field private xi:Lcom/google/android/gms/analytics/Tracker$a;
.field private xj:Lcom/google/android/gms/analytics/aj;
.field private xk:Lcom/google/android/gms/analytics/ExceptionReporter;
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Landroid/content/Context;)V
.registers 12
invoke-static {}, Lcom/google/android/gms/analytics/h;->cq()Lcom/google/android/gms/analytics/h;
move-result-object v3
invoke-static {}, Lcom/google/android/gms/analytics/ae;->dq()Lcom/google/android/gms/analytics/ae;
move-result-object v4
invoke-static {}, Lcom/google/android/gms/analytics/g;->cp()Lcom/google/android/gms/analytics/g;
move-result-object v5
new-instance v6, Lcom/google/android/gms/analytics/z;
const-string v0, "tracking"
invoke-direct {v6, v0}, Lcom/google/android/gms/analytics/z;-><init>(Ljava/lang/String;)V
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v7, p3
invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/analytics/Tracker;-><init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Lcom/google/android/gms/analytics/h;Lcom/google/android/gms/analytics/ae;Lcom/google/android/gms/analytics/g;Lcom/google/android/gms/analytics/ad;Landroid/content/Context;)V
return-void
.end method
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Lcom/google/android/gms/analytics/h;Lcom/google/android/gms/analytics/ae;Lcom/google/android/gms/analytics/g;Lcom/google/android/gms/analytics/ad;Landroid/content/Context;)V
.registers 12
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->xb:Lcom/google/android/gms/analytics/TrackerHandler;
if-eqz p7, :cond_14
invoke-virtual {p7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->mContext:Landroid/content/Context;
:cond_14
if-eqz p1, :cond_1d
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
const-string v1, "&tid"
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1d
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
const-string v1, "useSecure"
const-string v2, "1"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p3, p0, Lcom/google/android/gms/analytics/Tracker;->xe:Lcom/google/android/gms/analytics/h;
iput-object p4, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Lcom/google/android/gms/analytics/ae;
iput-object p5, p0, Lcom/google/android/gms/analytics/Tracker;->xg:Lcom/google/android/gms/analytics/g;
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
const-string v1, "&a"
new-instance v2, Ljava/util/Random;
invoke-direct {v2}, Ljava/util/Random;-><init>()V
const v3, 0x7fffffff
invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I
move-result v2
add-int/lit8 v2, v2, 0x1
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p6, p0, Lcom/google/android/gms/analytics/Tracker;->xd:Lcom/google/android/gms/analytics/ad;
new-instance v0, Lcom/google/android/gms/analytics/Tracker$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/Tracker$a;-><init>(Lcom/google/android/gms/analytics/Tracker;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xi:Lcom/google/android/gms/analytics/Tracker$a;
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V
return-void
.end method
.method static synthetic b(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xi:Lcom/google/android/gms/analytics/Tracker$a;
return-object v0
.end method
.method static synthetic c(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/aj;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/aj;
return-object v0
.end method
.method  a(Lcom/google/android/gms/analytics/aj;)V
.registers 5
const-string v0, "Loading Tracker config values."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/aj;
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/aj;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dz()Z
move-result v0
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/aj;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dA()Ljava/lang/String;
move-result-object v0
const-string v1, "&tid"
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "[Tracker] trackingId loaded: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
:cond_30
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/aj;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dB()Z
move-result v0
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/aj;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dC()D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
move-result-object v0
const-string v1, "&sf"
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "[Tracker] sample frequency loaded: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
:cond_5d
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/aj;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dD()Z
move-result v0
if-eqz v0, :cond_89
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/aj;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->getSessionTimeout()I
move-result v0
int-to-long v0, v0
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setSessionTimeout(J)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[Tracker] session timeout loaded: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->dt()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
:cond_89
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/aj;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dE()Z
move-result v0
if-eqz v0, :cond_b4
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/aj;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dF()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[Tracker] auto activity tracking loaded: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->du()Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
:cond_b4
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/aj;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dG()Z
move-result v0
if-eqz v0, :cond_d5
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/aj;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dH()Z
move-result v0
if-eqz v0, :cond_d0
const-string v0, "&aip"
const-string v1, "1"
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "[Tracker] anonymize ip loaded: true"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
:cond_d0
const-string v0, "[Tracker] anonymize ip loaded: false"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
:cond_d5
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/aj;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dI()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V
return-void
.end method
.method  dt()J
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xi:Lcom/google/android/gms/analytics/Tracker$a;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker$a;->dt()J
move-result-wide v0
return-wide v0
.end method
.method  du()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xi:Lcom/google/android/gms/analytics/Tracker$a;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker$a;->du()Z
move-result v0
return v0
.end method
.method public enableAdvertisingIdCollection(Z)V
.registers 5
const/4 v2, 0x0
if-nez p1, :cond_12
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
const-string v1, "&ate"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
const-string v1, "&adid"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_11
:goto_11
return-void
:cond_12
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
const-string v1, "&ate"
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
const-string v1, "&ate"
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_23
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
const-string v1, "&adid"
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
const-string v1, "&adid"
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_11
.end method
.method public enableAutoActivityTracking(Z)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xi:Lcom/google/android/gms/analytics/Tracker$a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker$a;->enableAutoActivityTracking(Z)V
return-void
.end method
.method public enableExceptionReporting(Z)V
.registers 5
iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker;->xh:Z
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput-boolean p1, p0, Lcom/google/android/gms/analytics/Tracker;->xh:Z
if-eqz p1, :cond_21
new-instance v0, Lcom/google/android/gms/analytics/ExceptionReporter;
invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->mContext:Landroid/content/Context;
invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xk:Lcom/google/android/gms/analytics/ExceptionReporter;
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xk:Lcom/google/android/gms/analytics/ExceptionReporter;
invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
const-string v0, "Uncaught exceptions will be reported to Google Analytics."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
goto :goto_4
:cond_21
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xk:Lcom/google/android/gms/analytics/ExceptionReporter;
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xk:Lcom/google/android/gms/analytics/ExceptionReporter;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ExceptionReporter;->cy()Ljava/lang/Thread$UncaughtExceptionHandler;
move-result-object v0
invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
:goto_2e
const-string v0, "Uncaught exceptions will not be reported to Google Analytics."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
goto :goto_4
:cond_34
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
goto :goto_2e
.end method
.method public get(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/4 v0, 0x0
invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;
move-result-object v1
sget-object v2, Lcom/google/android/gms/analytics/u$a;->vc:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_11
:cond_10
:goto_10
return-object v0
:cond_11
iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_22
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
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
iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xe:Lcom/google/android/gms/analytics/h;
if-eqz v1, :cond_46
iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xe:Lcom/google/android/gms/analytics/h;
invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/h;->J(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_46
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xe:Lcom/google/android/gms/analytics/h;
invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/h;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_10
:cond_46
iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Lcom/google/android/gms/analytics/ae;
if-eqz v1, :cond_59
iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Lcom/google/android/gms/analytics/ae;
invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/ae;->J(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_59
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Lcom/google/android/gms/analytics/ae;
invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/ae;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_10
:cond_59
iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xg:Lcom/google/android/gms/analytics/g;
if-eqz v1, :cond_10
iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xg:Lcom/google/android/gms/analytics/g;
invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/g;->J(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_10
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xg:Lcom/google/android/gms/analytics/g;
invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/g;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_10
.end method
.method public send(Ljava/util/Map;)V
.registers 8
const/4 v5, 0x0
const/4 v1, 0x1
invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v2, Lcom/google/android/gms/analytics/u$a;->ve:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
if-eqz p1, :cond_1a
invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
:cond_1a
const-string v0, "&tid"
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_37
const-string v0, "Missing tracking id (%s) parameter."
new-array v3, v1, [Ljava/lang/Object;
const-string v4, "&tid"
aput-object v4, v3, v5
invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
:cond_37
const-string v0, "&t"
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_56
const-string v0, "Missing hit type (%s) parameter."
new-array v3, v1, [Ljava/lang/Object;
const-string v4, "&t"
aput-object v4, v3, v5
invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
const-string v0, ""
:cond_56
iget-object v3, p0, Lcom/google/android/gms/analytics/Tracker;->xi:Lcom/google/android/gms/analytics/Tracker$a;
invoke-virtual {v3}, Lcom/google/android/gms/analytics/Tracker$a;->dv()Z
move-result v3
if-eqz v3, :cond_65
const-string v3, "&sc"
const-string v4, "start"
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_65
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
const-string v0, "screenview"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_87
const-string v0, "pageview"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_87
const-string v0, "appview"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_87
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_a8
:cond_87
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
const-string v4, "&a"
invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x1
const v4, 0x7fffffff
if-lt v0, v4, :cond_9d
move v0, v1
:cond_9d
iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
const-string v4, "&a"
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_a8
const-string v0, "transaction"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_c6
const-string v0, "item"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_c6
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xd:Lcom/google/android/gms/analytics/ad;
invoke-interface {v0}, Lcom/google/android/gms/analytics/ad;->dj()Z
move-result v0
if-nez v0, :cond_c6
const-string v0, "Too many hits sent too quickly, rate limiting invoked."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
:goto_c5
return-void
:cond_c6
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xb:Lcom/google/android/gms/analytics/TrackerHandler;
invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/TrackerHandler;->p(Ljava/util/Map;)V
goto :goto_c5
.end method
.method public set(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const-string v0, "Key should be non-null"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/u$a;->vd:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xc:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public setAnonymizeIp(Z)V
.registers 4
const-string v0, "&aip"
invoke-static {p1}, Lcom/google/android/gms/analytics/ak;->v(Z)Ljava/lang/String;
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
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
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
iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xi:Lcom/google/android/gms/analytics/Tracker$a;
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
invoke-static {p1}, Lcom/google/android/gms/analytics/ak;->v(Z)Ljava/lang/String;
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