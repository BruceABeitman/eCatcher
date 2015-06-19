.class public Lcom/flurry/sdk/dw;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/flurry/sdk/dn$a;
.field private static final c:Ljava/lang/String;
.field private static o:Lcom/flurry/sdk/dw;
.field  a:Z
.field  b:Z
.field private final d:I
.field private final e:J
.field private final f:J
.field private g:Landroid/location/LocationManager;
.field private h:Landroid/location/Criteria;
.field private i:Landroid/location/Location;
.field private j:Lcom/flurry/sdk/dw$a;
.field private k:Ljava/lang/String;
.field private l:I
.field private m:I
.field private volatile n:Landroid/location/Location;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/dw;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 6
const/4 v4, 0x4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x3
iput v0, p0, Lcom/flurry/sdk/dw;->d:I
const-wide/16 v0, 0x2710
iput-wide v0, p0, Lcom/flurry/sdk/dw;->e:J
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/flurry/sdk/dw;->f:J
iput-boolean v2, p0, Lcom/flurry/sdk/dw;->a:Z
iput v2, p0, Lcom/flurry/sdk/dw;->l:I
iput v2, p0, Lcom/flurry/sdk/dw;->m:I
new-instance v0, Lcom/flurry/sdk/dw$a;
invoke-direct {v0, p0}, Lcom/flurry/sdk/dw$a;-><init>(Lcom/flurry/sdk/dw;)V
iput-object v0, p0, Lcom/flurry/sdk/dw;->j:Lcom/flurry/sdk/dw$a;
invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;
move-result-object v1
const-string v0, "LocationCriteria"
invoke-virtual {v1, v0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/Criteria;
iput-object v0, p0, Lcom/flurry/sdk/dw;->h:Landroid/location/Criteria;
const-string v0, "LocationCriteria"
invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V
sget-object v0, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "initSettings, LocationCriteria = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/flurry/sdk/dw;->h:Landroid/location/Criteria;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v4, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
const-string v0, "ReportLocation"
invoke-virtual {v1, v0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lcom/flurry/sdk/dw;->b:Z
const-string v0, "ReportLocation"
invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V
sget-object v0, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "initSettings, ReportLocation = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, p0, Lcom/flurry/sdk/dw;->b:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/flurry/sdk/dw;)I
.registers 2
iget v0, p0, Lcom/flurry/sdk/dw;->m:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/flurry/sdk/dw;->m:I
return v0
.end method
.method static synthetic a(Lcom/flurry/sdk/dw;Landroid/location/Location;)Landroid/location/Location;
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/dw;->i:Landroid/location/Location;
return-object p1
.end method
.method public static declared-synchronized a()Lcom/flurry/sdk/dw;
.registers 2
const-class v1, Lcom/flurry/sdk/dw;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/flurry/sdk/dw;->o:Lcom/flurry/sdk/dw;
if-nez v0, :cond_e
new-instance v0, Lcom/flurry/sdk/dw;
invoke-direct {v0}, Lcom/flurry/sdk/dw;-><init>()V
sput-object v0, Lcom/flurry/sdk/dw;->o:Lcom/flurry/sdk/dw;
:cond_e
sget-object v0, Lcom/flurry/sdk/dw;->o:Lcom/flurry/sdk/dw;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method private a(Ljava/lang/String;)V
.registers 9
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/flurry/sdk/dw;->g:Landroid/location/LocationManager;
const-wide/16 v2, 0x2710
const/4 v4, 0x0
iget-object v5, p0, Lcom/flurry/sdk/dw;->j:Lcom/flurry/sdk/dw$a;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v6
move-object v1, p1
invoke-static/range {v0 .. v6}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
:cond_15
return-void
.end method
.method private b(Ljava/lang/String;)Landroid/location/Location;
.registers 4
const/4 v0, 0x0
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_d
iget-object v0, p0, Lcom/flurry/sdk/dw;->g:Landroid/location/LocationManager;
invoke-static {v0, p1}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
:cond_d
return-object v0
.end method
.method static synthetic b(Lcom/flurry/sdk/dw;)V
.registers 1
invoke-direct {p0}, Lcom/flurry/sdk/dw;->i()V
return-void
.end method
.method static synthetic h()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
return-object v0
.end method
.method private i()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/flurry/sdk/dw;->g:Landroid/location/LocationManager;
iget-object v1, p0, Lcom/flurry/sdk/dw;->j:Lcom/flurry/sdk/dw$a;
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->removeUpdates(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
iput-boolean v2, p0, Lcom/flurry/sdk/dw;->a:Z
iput v2, p0, Lcom/flurry/sdk/dw;->m:I
const/4 v0, 0x4
sget-object v1, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
const-string v2, "LocationProvider stopped"
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private j()V
.registers 4
iget-boolean v0, p0, Lcom/flurry/sdk/dw;->b:Z
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/flurry/sdk/dw;->n:Landroid/location/Location;
if-nez v0, :cond_4
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;
move-result-object v0
const-string v1, "android.permission.ACCESS_FINE_LOCATION"
invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v1
if-eqz v1, :cond_21
const-string v1, "android.permission.ACCESS_COARSE_LOCATION"
invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_4
:cond_21
invoke-direct {p0}, Lcom/flurry/sdk/dw;->i()V
invoke-direct {p0}, Lcom/flurry/sdk/dw;->k()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/flurry/sdk/dw;->a(Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/flurry/sdk/dw;->b(Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
iput-object v0, p0, Lcom/flurry/sdk/dw;->i:Landroid/location/Location;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/flurry/sdk/dw;->a:Z
const/4 v0, 0x4
sget-object v1, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
const-string v2, "LocationProvider started"
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_4
.end method
.method private k()Ljava/lang/String;
.registers 6
iget-object v0, p0, Lcom/flurry/sdk/dw;->h:Landroid/location/Criteria;
if-nez v0, :cond_9
new-instance v0, Landroid/location/Criteria;
invoke-direct {v0}, Landroid/location/Criteria;-><init>()V
:cond_9
iget-object v1, p0, Lcom/flurry/sdk/dw;->k:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_32
iget-object v1, p0, Lcom/flurry/sdk/dw;->g:Landroid/location/LocationManager;
const/4 v2, 0x1
invoke-static {v1, v0, v2}, Ldroidbox/android/location/LocationManager;->getBestProvider(Landroid/location/LocationManager;Landroid/location/Criteria;Z)Ljava/lang/String;
move-result-object v0
:goto_18
const/4 v1, 0x4
sget-object v2, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "provider = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
return-object v0
:cond_32
iget-object v0, p0, Lcom/flurry/sdk/dw;->k:Ljava/lang/String;
goto :goto_18
.end method
.method public a(FF)V
.registers 6
new-instance v0, Landroid/location/Location;
const-string v1, "Explicit"
invoke-static {v1}, Ldroidbox/android/location/Location;->droidbox_cons(Ljava/lang/String;)V
invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/flurry/sdk/dw;->n:Landroid/location/Location;
iget-object v0, p0, Lcom/flurry/sdk/dw;->n:Landroid/location/Location;
float-to-double v1, p1
invoke-static {v0, v1, v2}, Ldroidbox/android/location/Location;->setLatitude(Landroid/location/Location;D)V
iget-object v0, p0, Lcom/flurry/sdk/dw;->n:Landroid/location/Location;
float-to-double v1, p2
invoke-static {v0, v1, v2}, Ldroidbox/android/location/Location;->setLongitude(Landroid/location/Location;D)V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
.registers 7
const/4 v3, 0x4
const-string v0, "LocationCriteria"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2f
check-cast p2, Landroid/location/Criteria;
iput-object p2, p0, Lcom/flurry/sdk/dw;->h:Landroid/location/Criteria;
sget-object v0, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onSettingUpdate, LocationCriteria = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/flurry/sdk/dw;->h:Landroid/location/Criteria;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/flurry/sdk/dw;->a:Z
if-eqz v0, :cond_2e
invoke-direct {p0}, Lcom/flurry/sdk/dw;->j()V
:goto_2e
:cond_2e
return-void
:cond_2f
const-string v0, "ReportLocation"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6d
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lcom/flurry/sdk/dw;->b:Z
sget-object v0, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onSettingUpdate, ReportLocation = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, p0, Lcom/flurry/sdk/dw;->b:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/flurry/sdk/dw;->b:Z
if-eqz v0, :cond_69
iget-boolean v0, p0, Lcom/flurry/sdk/dw;->a:Z
if-nez v0, :cond_2e
iget v0, p0, Lcom/flurry/sdk/dw;->l:I
if-lez v0, :cond_2e
invoke-direct {p0}, Lcom/flurry/sdk/dw;->j()V
goto :goto_2e
:cond_69
invoke-direct {p0}, Lcom/flurry/sdk/dw;->i()V
goto :goto_2e
:cond_6d
const/4 v0, 0x6
sget-object v1, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
const-string v2, "LocationProvider internal error! Had to be LocationCriteria or ReportLocation key."
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_2e
.end method
.method public declared-synchronized b()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/dw;->g:Landroid/location/LocationManager;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_1a
if-eqz v0, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;
move-result-object v0
const-string v1, "location"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
iput-object v0, p0, Lcom/flurry/sdk/dw;->g:Landroid/location/LocationManager;
:try_end_19
.catchall {:try_start_7 .. :try_end_19} :catchall_1a
goto :goto_5
:catchall_1a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized c()V
.registers 4
monitor-enter p0
const/4 v0, 0x4
:try_start_2
sget-object v1, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
const-string v2, "Location provider subscribed"
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
iget v0, p0, Lcom/flurry/sdk/dw;->l:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/flurry/sdk/dw;->l:I
iget-boolean v0, p0, Lcom/flurry/sdk/dw;->a:Z
if-nez v0, :cond_1b
iget v0, p0, Lcom/flurry/sdk/dw;->m:I
const/4 v1, 0x3
if-ge v0, v1, :cond_1b
invoke-direct {p0}, Lcom/flurry/sdk/dw;->j()V
:cond_1b
:try_end_1b
.catchall {:try_start_2 .. :try_end_1b} :catchall_1d
monitor-exit p0
return-void
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized d()V
.registers 4
monitor-enter p0
const/4 v0, 0x4
:try_start_2
sget-object v1, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
const-string v2, "Location provider unsubscribed"
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
iget v0, p0, Lcom/flurry/sdk/dw;->l:I
if-gtz v0, :cond_17
const/4 v0, 0x6
sget-object v1, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
const-string v2, "Error! Unsubscribed too many times!"
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
:cond_15
:try_end_15
.catchall {:try_start_2 .. :try_end_15} :catchall_25
:goto_15
monitor-exit p0
return-void
:cond_17
:try_start_17
iget v0, p0, Lcom/flurry/sdk/dw;->l:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/flurry/sdk/dw;->l:I
iget v0, p0, Lcom/flurry/sdk/dw;->l:I
if-nez v0, :cond_15
invoke-direct {p0}, Lcom/flurry/sdk/dw;->i()V
:try_end_24
.catchall {:try_start_17 .. :try_end_24} :catchall_25
goto :goto_15
:catchall_25
move-exception v0
monitor-exit p0
throw v0
.end method
.method public e()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/flurry/sdk/dw;->n:Landroid/location/Location;
return-void
.end method
.method public f()Landroid/location/Location;
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/flurry/sdk/dw;->n:Landroid/location/Location;
if-eqz v1, :cond_8
iget-object v0, p0, Lcom/flurry/sdk/dw;->n:Landroid/location/Location;
:goto_7
return-object v0
:cond_8
iget-boolean v1, p0, Lcom/flurry/sdk/dw;->b:Z
if-eqz v1, :cond_1a
invoke-direct {p0}, Lcom/flurry/sdk/dw;->k()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/flurry/sdk/dw;->b(Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
if-eqz v0, :cond_18
iput-object v0, p0, Lcom/flurry/sdk/dw;->i:Landroid/location/Location;
:cond_18
iget-object v0, p0, Lcom/flurry/sdk/dw;->i:Landroid/location/Location;
:cond_1a
const/4 v1, 0x4
sget-object v2, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "getLocation() = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_7
.end method
.method public g()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/flurry/sdk/dw;->l:I
invoke-direct {p0}, Lcom/flurry/sdk/dw;->i()V
return-void
.end method