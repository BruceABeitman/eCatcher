.class public Lcom/google/android/gms/analytics/GoogleAnalytics;
.super Lcom/google/android/gms/analytics/TrackerHandler;
.field private static wj:Z
.field private static wq:Lcom/google/android/gms/analytics/GoogleAnalytics;
.field private mContext:Landroid/content/Context;
.field private tA:Ljava/lang/String;
.field private tS:Lcom/google/android/gms/analytics/f;
.field private tz:Ljava/lang/String;
.field private wk:Z
.field private wl:Lcom/google/android/gms/analytics/af;
.field private volatile wm:Ljava/lang/Boolean;
.field private wn:Lcom/google/android/gms/analytics/Logger;
.field private wo:Ljava/util/Set;
.field private wp:Z
.method protected constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-static {p1}, Lcom/google/android/gms/analytics/t;->u(Landroid/content/Context;)Lcom/google/android/gms/analytics/t;
move-result-object v0
invoke-static {}, Lcom/google/android/gms/analytics/r;->cz()Lcom/google/android/gms/analytics/r;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;Lcom/google/android/gms/analytics/af;)V
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;Lcom/google/android/gms/analytics/af;)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Lcom/google/android/gms/analytics/TrackerHandler;-><init>()V
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wm:Ljava/lang/Boolean;
iput-boolean v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wp:Z
if-nez p1, :cond_16
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "context cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tS:Lcom/google/android/gms/analytics/f;
iput-object p3, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wl:Lcom/google/android/gms/analytics/af;
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/analytics/g;->r(Landroid/content/Context;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->r(Landroid/content/Context;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/analytics/h;->r(Landroid/content/Context;)V
new-instance v0, Lcom/google/android/gms/analytics/l;
invoke-direct {v0}, Lcom/google/android/gms/analytics/l;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wn:Lcom/google/android/gms/analytics/Logger;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wo:Ljava/util/Set;
invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->de()V
return-void
.end method
.method private P(Ljava/lang/String;)I
.registers 4
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "verbose"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_e
const/4 v0, 0x0
:goto_d
return v0
:cond_e
const-string v1, "info"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_18
const/4 v0, 0x1
goto :goto_d
:cond_18
const-string v1, "warning"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_22
const/4 v0, 0x2
goto :goto_d
:cond_22
const-string v1, "error"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
const/4 v0, 0x3
goto :goto_d
:cond_2c
const/4 v0, -0x1
goto :goto_d
.end method
.method private a(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tz:Ljava/lang/String;
if-eqz v0, :cond_b
const-string v0, "&an"
iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tz:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V
:cond_b
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tA:Ljava/lang/String;
if-eqz v0, :cond_16
const-string v0, "&av"
iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tA:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V
:cond_16
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/app/Activity;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->f(Landroid/app/Activity;)V
return-void
.end method
.method static synthetic b(Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/app/Activity;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->g(Landroid/app/Activity;)V
return-void
.end method
.method static dd()Lcom/google/android/gms/analytics/GoogleAnalytics;
.registers 2
const-class v1, Lcom/google/android/gms/analytics/GoogleAnalytics;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wq:Lcom/google/android/gms/analytics/GoogleAnalytics;
monitor-exit v1
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method private de()V
.registers 5
sget-boolean v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wj:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const/4 v1, 0x0
:try_start_6
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/16 v3, 0x81
invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
:try_end_17
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_17} :catch_20
move-result-object v0
:goto_18
if-nez v0, :cond_39
const-string v0, "Couldn\'t get ApplicationInfo to load gloabl config."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
goto :goto_4
:catch_20
move-exception v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "PackageManager doesn\'t know about package: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
move-object v0, v1
goto :goto_18
:cond_39
iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
if-eqz v0, :cond_4
const-string v1, "com.google.android.gms.analytics.globalConfigResource"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_4
new-instance v1, Lcom/google/android/gms/analytics/v;
iget-object v2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;
invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/v;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/v;->r(I)Lcom/google/android/gms/analytics/j;
move-result-object v0
check-cast v0, Lcom/google/android/gms/analytics/w;
if-eqz v0, :cond_4
invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Lcom/google/android/gms/analytics/w;)V
goto :goto_4
.end method
.method private f(Landroid/app/Activity;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wo:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/analytics/GoogleAnalytics$a;
invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$a;->h(Landroid/app/Activity;)V
goto :goto_6
:cond_16
return-void
.end method
.method private g(Landroid/app/Activity;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wo:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/analytics/GoogleAnalytics$a;
invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$a;->i(Landroid/app/Activity;)V
goto :goto_6
:cond_16
return-void
.end method
.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
.registers 3
const-class v1, Lcom/google/android/gms/analytics/GoogleAnalytics;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wq:Lcom/google/android/gms/analytics/GoogleAnalytics;
if-nez v0, :cond_e
new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wq:Lcom/google/android/gms/analytics/GoogleAnalytics;
:cond_e
sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wq:Lcom/google/android/gms/analytics/GoogleAnalytics;
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_12
throw v0
.end method
.method  a(Lcom/google/android/gms/analytics/GoogleAnalytics$a;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wo:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method  a(Lcom/google/android/gms/analytics/w;)V
.registers 5
const-string v0, "Loading global config values."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->cT()Z
move-result v0
if-eqz v0, :cond_29
invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->cU()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tz:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "app name loaded: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tz:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
:cond_29
invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->cV()Z
move-result v0
if-eqz v0, :cond_4d
invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->cW()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tA:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "app version loaded: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tA:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
:cond_4d
invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->cX()Z
move-result v0
if-eqz v0, :cond_7a
invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->cY()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->P(Ljava/lang/String;)I
move-result v0
if-ltz v0, :cond_7a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "log level loaded: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;
move-result-object v1
invoke-interface {v1, v0}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V
:cond_7a
invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->cZ()Z
move-result v0
if-eqz v0, :cond_89
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wl:Lcom/google/android/gms/analytics/af;
invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->da()I
move-result v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/af;->setLocalDispatchPeriod(I)V
:cond_89
invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->db()Z
move-result v0
if-eqz v0, :cond_96
invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->dc()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V
:cond_96
return-void
.end method
.method  b(Lcom/google/android/gms/analytics/GoogleAnalytics$a;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wo:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public dispatchLocalHits()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wl:Lcom/google/android/gms/analytics/af;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/af;->dispatchLocalHits()V
return-void
.end method
.method public enableAutoActivityReports(Landroid/app/Application;)V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_15
iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wp:Z
if-nez v0, :cond_15
new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics$b;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics$b;-><init>(Lcom/google/android/gms/analytics/GoogleAnalytics;)V
invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wp:Z
:cond_15
return-void
.end method
.method public getAppOptOut()Z
.registers 3
invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/u$a;->vK:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wm:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public getLogger()Lcom/google/android/gms/analytics/Logger;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wn:Lcom/google/android/gms/analytics/Logger;
return-object v0
.end method
.method public isDryRunEnabled()Z
.registers 3
invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/u$a;->vW:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wk:Z
return v0
.end method
.method public newTracker(I)Lcom/google/android/gms/analytics/Tracker;
.registers 5
monitor-enter p0
:try_start_1
invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/u$a;->vG:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
new-instance v1, Lcom/google/android/gms/analytics/Tracker;
const/4 v0, 0x0
iget-object v2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;
invoke-direct {v1, v0, p0, v2}, Lcom/google/android/gms/analytics/Tracker;-><init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Landroid/content/Context;)V
if-lez p1, :cond_26
new-instance v0, Lcom/google/android/gms/analytics/ai;
iget-object v2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;
invoke-direct {v0, v2}, Lcom/google/android/gms/analytics/ai;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/ai;->r(I)Lcom/google/android/gms/analytics/j;
move-result-object v0
check-cast v0, Lcom/google/android/gms/analytics/aj;
if-eqz v0, :cond_26
invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Lcom/google/android/gms/analytics/aj;)V
:cond_26
invoke-direct {p0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker;
move-result-object v0
monitor-exit p0
return-object v0
:catchall_2c
move-exception v0
monitor-exit p0
:try_end_2e
.catchall {:try_start_1 .. :try_end_2e} :catchall_2c
throw v0
.end method
.method public newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
.registers 4
monitor-enter p0
:try_start_1
invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/u$a;->vG:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
new-instance v0, Lcom/google/android/gms/analytics/Tracker;
iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;
invoke-direct {v0, p1, p0, v1}, Lcom/google/android/gms/analytics/Tracker;-><init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Landroid/content/Context;)V
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker;
move-result-object v0
monitor-exit p0
return-object v0
:catchall_17
move-exception v0
monitor-exit p0
:try_end_19
.catchall {:try_start_1 .. :try_end_19} :catchall_17
throw v0
.end method
.method  p(Ljava/util/Map;)V
.registers 5
monitor-enter p0
if-nez p1, :cond_e
:try_start_3
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "hit cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_b
move-exception v0
monitor-exit p0
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
:cond_e
:try_start_e
const-string v0, "&ul"
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-static {p1, v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "&sr"
invoke-static {}, Lcom/google/android/gms/analytics/ae;->dq()Lcom/google/android/gms/analytics/ae;
move-result-object v1
const-string v2, "&sr"
invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/ae;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {p1, v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "&_u"
invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;
move-result-object v1
invoke-virtual {v1}, Lcom/google/android/gms/analytics/u;->cR()Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/analytics/u;->cQ()Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tS:Lcom/google/android/gms/analytics/f;
invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/f;->p(Ljava/util/Map;)V
monitor-exit p0
:try_end_44
.catchall {:try_start_e .. :try_end_44} :catchall_b
return-void
.end method
.method public reportActivityStart(Landroid/app/Activity;)V
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wp:Z
if-nez v0, :cond_7
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->f(Landroid/app/Activity;)V
:cond_7
return-void
.end method
.method public reportActivityStop(Landroid/app/Activity;)V
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wp:Z
if-nez v0, :cond_7
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->g(Landroid/app/Activity;)V
:cond_7
return-void
.end method
.method public setAppOptOut(Z)V
.registers 4
invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/u$a;->vJ:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wm:Ljava/lang/Boolean;
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wm:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tS:Lcom/google/android/gms/analytics/f;
invoke-interface {v0}, Lcom/google/android/gms/analytics/f;->cg()V
:cond_1c
return-void
.end method
.method public setDryRun(Z)V
.registers 4
invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/u$a;->vV:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wk:Z
return-void
.end method
.method public setLocalDispatchPeriod(I)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wl:Lcom/google/android/gms/analytics/af;
invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/af;->setLocalDispatchPeriod(I)V
return-void
.end method
.method public setLogger(Lcom/google/android/gms/analytics/Logger;)V
.registers 4
invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/u$a;->vX:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
iput-object p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wn:Lcom/google/android/gms/analytics/Logger;
return-void
.end method