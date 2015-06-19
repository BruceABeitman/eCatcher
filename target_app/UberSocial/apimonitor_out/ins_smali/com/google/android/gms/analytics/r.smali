.class public Lcom/google/android/gms/analytics/r;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/analytics/u;
.field private final b:Ljava/util/Map;
.field private c:Lcom/google/android/gms/analytics/aa;
.field private final d:Lcom/google/android/gms/analytics/as;
.field private final e:Lcom/google/android/gms/analytics/ab;
.field private final f:Lcom/google/android/gms/analytics/ar;
.field private g:Z
.field private h:Lcom/google/android/gms/analytics/s;
.field private i:Lcom/google/android/gms/analytics/ah;
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/analytics/u;)V
.registers 10
invoke-static {}, Lcom/google/android/gms/analytics/as;->a()Lcom/google/android/gms/analytics/as;
move-result-object v3
invoke-static {}, Lcom/google/android/gms/analytics/ab;->a()Lcom/google/android/gms/analytics/ab;
move-result-object v4
invoke-static {}, Lcom/google/android/gms/analytics/ar;->a()Lcom/google/android/gms/analytics/ar;
move-result-object v5
new-instance v6, Lcom/google/android/gms/analytics/bs;
const-string v0, "tracking"
invoke-direct {v6, v0}, Lcom/google/android/gms/analytics/bs;-><init>(Ljava/lang/String;)V
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/analytics/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/analytics/u;Lcom/google/android/gms/analytics/as;Lcom/google/android/gms/analytics/ab;Lcom/google/android/gms/analytics/ar;Lcom/google/android/gms/analytics/aa;)V
return-void
.end method
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/analytics/u;Lcom/google/android/gms/analytics/as;Lcom/google/android/gms/analytics/ab;Lcom/google/android/gms/analytics/ar;Lcom/google/android/gms/analytics/aa;)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/util/Map;
iput-object p2, p0, Lcom/google/android/gms/analytics/r;->a:Lcom/google/android/gms/analytics/u;
if-eqz p1, :cond_15
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/util/Map;
const-string v1, "&tid"
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_15
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/util/Map;
const-string v1, "useSecure"
const-string v2, "1"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p3, p0, Lcom/google/android/gms/analytics/r;->d:Lcom/google/android/gms/analytics/as;
iput-object p4, p0, Lcom/google/android/gms/analytics/r;->e:Lcom/google/android/gms/analytics/ab;
iput-object p5, p0, Lcom/google/android/gms/analytics/r;->f:Lcom/google/android/gms/analytics/ar;
iput-object p6, p0, Lcom/google/android/gms/analytics/r;->c:Lcom/google/android/gms/analytics/aa;
new-instance v0, Lcom/google/android/gms/analytics/s;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/s;-><init>(Lcom/google/android/gms/analytics/r;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/r;->h:Lcom/google/android/gms/analytics/s;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/analytics/r;)Lcom/google/android/gms/analytics/s;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->h:Lcom/google/android/gms/analytics/s;
return-object v0
.end method
.method static synthetic b(Lcom/google/android/gms/analytics/r;)Lcom/google/android/gms/analytics/ah;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
return-object v0
.end method
.method  a()J
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->h:Lcom/google/android/gms/analytics/s;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/s;->a()J
move-result-wide v0
return-wide v0
.end method
.method public a(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/4 v0, 0x0
invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;
move-result-object v1
sget-object v2, Lcom/google/android/gms/analytics/bm;->j:Lcom/google/android/gms/analytics/bm;
invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_11
:cond_10
:goto_10
return-object v0
:cond_11
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_22
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/util/Map;
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
invoke-static {v0}, Lcom/google/android/gms/analytics/ai;->a(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
goto :goto_10
:cond_33
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->d:Lcom/google/android/gms/analytics/as;
if-eqz v1, :cond_46
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->d:Lcom/google/android/gms/analytics/as;
invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/as;->b(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_46
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->d:Lcom/google/android/gms/analytics/as;
invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/as;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_10
:cond_46
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->e:Lcom/google/android/gms/analytics/ab;
if-eqz v1, :cond_59
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->e:Lcom/google/android/gms/analytics/ab;
invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/ab;->b(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_59
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->e:Lcom/google/android/gms/analytics/ab;
invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/ab;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_10
:cond_59
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->f:Lcom/google/android/gms/analytics/ar;
if-eqz v1, :cond_10
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->f:Lcom/google/android/gms/analytics/ar;
invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/ar;->b(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_10
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->f:Lcom/google/android/gms/analytics/ar;
invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/ar;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_10
.end method
.method public a(D)V
.registers 5
const-string v0, "&sf"
invoke-static {p1, p2}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public a(II)V
.registers 6
if-gez p1, :cond_a
if-gez p2, :cond_a
const-string v0, "Invalid width or height. The values should be non-negative."
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
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
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
.end method
.method public a(J)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->h:Lcom/google/android/gms/analytics/s;
const-wide/16 v1, 0x3e8
mul-long/2addr v1, p1
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/s;->a(J)V
return-void
.end method
.method  a(Landroid/content/Context;Lcom/google/android/gms/analytics/ah;)V
.registers 6
const-string v0, "Loading Tracker config values."
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
iput-object p2, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ah;->a()Z
move-result v0
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ah;->b()Ljava/lang/String;
move-result-object v0
const-string v1, "&tid"
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "[Tracker] trackingId loaded: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
:cond_30
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ah;->c()Z
move-result v0
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ah;->d()D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
move-result-object v0
const-string v1, "&sf"
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "[Tracker] sample frequency loaded: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
:cond_5d
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ah;->e()Z
move-result v0
if-eqz v0, :cond_89
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ah;->f()I
move-result v0
int-to-long v0, v0
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/r;->a(J)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[Tracker] session timeout loaded: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/analytics/r;->a()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
:cond_89
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ah;->g()Z
move-result v0
if-eqz v0, :cond_b4
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ah;->h()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/r;->a(Z)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[Tracker] auto activity tracking loaded: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/analytics/r;->b()Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
:cond_b4
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ah;->i()Z
move-result v0
if-eqz v0, :cond_d5
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ah;->j()Z
move-result v0
if-eqz v0, :cond_d0
const-string v0, "&aip"
const-string v1, "1"
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "[Tracker] anonymize ip loaded: true"
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
:cond_d0
const-string v0, "[Tracker] anonymize ip loaded: false"
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
:cond_d5
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ah;->k()Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->g:Z
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->i:Lcom/google/android/gms/analytics/ah;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ah;->k()Z
move-result v0
if-eqz v0, :cond_109
new-instance v0, Lcom/google/android/gms/analytics/b;
invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
move-result-object v1
invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/analytics/b;-><init>(Lcom/google/android/gms/analytics/r;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[Tracker] report uncaught exceptions loaded: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/google/android/gms/analytics/r;->g:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
:cond_109
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const-string v0, "Key should be non-null"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/bm;->k:Lcom/google/android/gms/analytics/bm;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public a(Ljava/util/Map;)V
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/bm;->l:Lcom/google/android/gms/analytics/bm;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/util/Map;
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
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
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
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
const-string v0, ""
:cond_56
iget-object v2, p0, Lcom/google/android/gms/analytics/r;->h:Lcom/google/android/gms/analytics/s;
invoke-virtual {v2}, Lcom/google/android/gms/analytics/s;->c()Z
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
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->c:Lcom/google/android/gms/analytics/aa;
invoke-interface {v0}, Lcom/google/android/gms/analytics/aa;->a()Z
move-result v0
if-nez v0, :cond_83
const-string v0, "Too many hits sent too quickly, rate limiting invoked."
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
:goto_82
return-void
:cond_83
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->a:Lcom/google/android/gms/analytics/u;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Ljava/util/Map;)V
goto :goto_82
.end method
.method public a(Z)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->h:Lcom/google/android/gms/analytics/s;
invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/s;->a(Z)V
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 3
const-string v0, "&cd"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public b(Z)V
.registers 4
const-string v0, "useSecure"
invoke-static {p1}, Lcom/google/android/gms/analytics/ai;->a(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method  b()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->h:Lcom/google/android/gms/analytics/s;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/s;->b()Z
move-result v0
return v0
.end method
.method public c(Ljava/lang/String;)V
.registers 3
const-string v0, "&dl"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public c(Z)V
.registers 4
const-string v0, "&aip"
invoke-static {p1}, Lcom/google/android/gms/analytics/ai;->a(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public d(Ljava/lang/String;)V
.registers 3
const-string v0, "&dr"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public d(Z)V
.registers 5
const/4 v2, 0x0
if-nez p1, :cond_12
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/util/Map;
const-string v1, "&ate"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/util/Map;
const-string v1, "&adid"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_11
:goto_11
return-void
:cond_12
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/util/Map;
const-string v1, "&ate"
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/util/Map;
const-string v1, "&ate"
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_23
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/util/Map;
const-string v1, "&adid"
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/util/Map;
const-string v1, "&adid"
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_11
.end method
.method public e(Ljava/lang/String;)V
.registers 3
const-string v0, "&dp"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public f(Ljava/lang/String;)V
.registers 3
const-string v0, "&dh"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public g(Ljava/lang/String;)V
.registers 3
const-string v0, "&dt"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public h(Ljava/lang/String;)V
.registers 3
const-string v0, "&ul"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public i(Ljava/lang/String;)V
.registers 3
const-string v0, "&de"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public j(Ljava/lang/String;)V
.registers 3
const-string v0, "&sd"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public k(Ljava/lang/String;)V
.registers 3
const-string v0, "&vp"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public l(Ljava/lang/String;)V
.registers 3
const-string v0, "&cid"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public m(Ljava/lang/String;)V
.registers 3
const-string v0, "&an"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public n(Ljava/lang/String;)V
.registers 3
const-string v0, "&aid"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public o(Ljava/lang/String;)V
.registers 3
const-string v0, "&aiid"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public p(Ljava/lang/String;)V
.registers 3
const-string v0, "&av"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method