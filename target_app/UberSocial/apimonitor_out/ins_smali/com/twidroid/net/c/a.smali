.class public Lcom/twidroid/net/c/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final e:Ljava/lang/String; = "2d9qfudegb65"
.field private static final f:Ljava/lang/String; = "UberMedia"
.field  a:Ljava/util/Timer;
.field  b:Lcom/twidroid/net/c/e;
.field  c:Lcom/twidroid/d/v;
.field protected d:Ljava/lang/String;
.field private g:Lcom/twidroid/net/c/b;
.field private h:Lcom/twidroid/net/c/c;
.field private i:Landroid/content/Context;
.field private final j:Ljava/lang/String;
.field private final k:I
.field private final l:I
.field private m:Z
.field private final n:Lcom/twidroid/net/c/d;
.field private o:Z
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/c;)V
.registers 12
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "GPSUpdateTask"
iput-object v0, p0, Lcom/twidroid/net/c/a;->j:Ljava/lang/String;
const/16 v0, 0x14
iput v0, p0, Lcom/twidroid/net/c/a;->k:I
const/16 v0, 0x19
iput v0, p0, Lcom/twidroid/net/c/a;->l:I
new-instance v0, Ljava/util/Timer;
invoke-direct {v0}, Ljava/util/Timer;-><init>()V
iput-object v0, p0, Lcom/twidroid/net/c/a;->a:Ljava/util/Timer;
iput-boolean v1, p0, Lcom/twidroid/net/c/a;->m:Z
new-instance v0, Lcom/twidroid/net/c/d;
invoke-direct {v0, p0, v2}, Lcom/twidroid/net/c/d;-><init>(Lcom/twidroid/net/c/a;Lcom/twidroid/net/c/a$1;)V
iput-object v0, p0, Lcom/twidroid/net/c/a;->n:Lcom/twidroid/net/c/d;
iput-object p3, p0, Lcom/twidroid/net/c/a;->h:Lcom/twidroid/net/c/c;
iput-object p1, p0, Lcom/twidroid/net/c/a;->i:Landroid/content/Context;
iput-boolean v1, p0, Lcom/twidroid/net/c/a;->o:Z
new-instance v0, Lcom/twidroid/d/v;
invoke-direct {v0, p1}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/net/c/a;->c:Lcom/twidroid/d/v;
iput-object p2, p0, Lcom/twidroid/net/c/a;->d:Ljava/lang/String;
:try_start_30
const-string v0, "wps"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_87
sget-object v5, Lcom/c/a/s;->b:Lcom/c/a/s;
new-instance v6, Lcom/c/a/t;
invoke-direct {v6, p1}, Lcom/c/a/t;-><init>(Landroid/content/Context;)V
iget-object v0, p0, Lcom/twidroid/net/c/a;->c:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->ce()Z
move-result v0
if-nez v0, :cond_68
new-instance v7, Lcom/c/a/j;
const-string v0, "2d9qfudegb65"
const-string v1, "UberMedia"
invoke-direct {v7, v0, v1}, Lcom/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/c/a;->c:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->cg()Ljava/lang/String;
move-result-object v2
new-instance v4, Lcom/c/a/j;
const-string v0, "UberMedia"
invoke-direct {v4, v2, v0}, Lcom/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/net/c/a$1;
move-object v1, p0
move-object v3, p1
invoke-direct/range {v0 .. v5}, Lcom/twidroid/net/c/a$1;-><init>(Lcom/twidroid/net/c/a;Ljava/lang/String;Landroid/content/Context;Lcom/c/a/j;Lcom/c/a/s;)V
invoke-virtual {v6, v7, v4, v0}, Lcom/c/a/t;->a(Lcom/c/a/j;Lcom/c/a/j;Lcom/c/a/e;)V
:goto_67
return-void
:cond_68
new-instance v0, Lcom/c/a/j;
iget-object v1, p0, Lcom/twidroid/net/c/a;->c:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->cf()Ljava/lang/String;
move-result-object v1
const-string v2, "UberMedia"
invoke-direct {v0, v1, v2}, Lcom/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/net/c/a;->n:Lcom/twidroid/net/c/d;
invoke-virtual {v6, v0, v5, v1}, Lcom/c/a/t;->a(Lcom/c/a/j;Lcom/c/a/s;Lcom/c/a/p;)V
:try_end_7a
.catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_7a} :catch_7b
.catch Ljava/lang/Exception; {:try_start_30 .. :try_end_7a} :catch_da
goto :goto_67
:catch_7b
move-exception v0
iget-object v0, p0, Lcom/twidroid/net/c/a;->h:Lcom/twidroid/net/c/c;
const-string v1, "Please enable GPS"
invoke-virtual {v0, p0, v1}, Lcom/twidroid/net/c/c;->a(Lcom/twidroid/net/c/a;Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Lcom/twidroid/net/c/a;->a()V
goto :goto_67
:cond_87
:try_start_87
const-string v0, "location"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
const-string v1, "gps"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9f
const-string v1, "gps"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_af
:cond_9f
const-string v1, "network"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_b7
const-string v1, "network"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_b7
:cond_af
const-string v1, "LOCATION_DISABLED"
invoke-virtual {p3, p0, v1}, Lcom/twidroid/net/c/c;->a(Lcom/twidroid/net/c/a;Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Lcom/twidroid/net/c/a;->a()V
:cond_b7
new-instance v1, Lcom/twidroid/net/c/e;
invoke-direct {v1, p0}, Lcom/twidroid/net/c/e;-><init>(Lcom/twidroid/net/c/a;)V
iput-object v1, p0, Lcom/twidroid/net/c/a;->b:Lcom/twidroid/net/c/e;
iget-object v1, p0, Lcom/twidroid/net/c/a;->a:Ljava/util/Timer;
iget-object v2, p0, Lcom/twidroid/net/c/a;->b:Lcom/twidroid/net/c/e;
const-wide/16 v3, 0x61a8
invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
new-instance v1, Lcom/twidroid/net/c/b;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/twidroid/net/c/b;-><init>(Lcom/twidroid/net/c/a;Lcom/twidroid/net/c/a$1;)V
iput-object v1, p0, Lcom/twidroid/net/c/a;->g:Lcom/twidroid/net/c/b;
const-wide/16 v2, 0x1f4
const/high16 v4, 0x4000
iget-object v5, p0, Lcom/twidroid/net/c/a;->g:Lcom/twidroid/net/c/b;
move-object v1, p2
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
:try_end_d9
.catch Ljava/lang/IllegalArgumentException; {:try_start_87 .. :try_end_d9} :catch_7b
.catch Ljava/lang/Exception; {:try_start_87 .. :try_end_d9} :catch_da
goto :goto_67
:catch_da
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_67
.end method
.method public static a(Lcom/c/a/b;)Landroid/location/Address;
.registers 4
new-instance v0, Landroid/location/Address;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V
invoke-virtual {p0}, Lcom/c/a/b;->c()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setLatitude(D)V
invoke-virtual {p0}, Lcom/c/a/b;->d()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setLongitude(D)V
invoke-virtual {p0}, Lcom/c/a/b;->b()Lcom/c/a/f;
move-result-object v1
if-eqz v1, :cond_3e
invoke-virtual {p0}, Lcom/c/a/b;->b()Lcom/c/a/f;
move-result-object v1
invoke-virtual {v1}, Lcom/c/a/f;->k()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/c/a/b;->b()Lcom/c/a/f;
move-result-object v1
invoke-virtual {v1}, Lcom/c/a/f;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/c/a/b;->b()Lcom/c/a/f;
move-result-object v1
invoke-virtual {v1}, Lcom/c/a/f;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V
:cond_3e
return-object v0
.end method
.method public static a(Lcom/c/a/o;)Landroid/location/Address;
.registers 4
new-instance v0, Landroid/location/Address;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V
invoke-virtual {p0}, Lcom/c/a/o;->c()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setLatitude(D)V
invoke-virtual {p0}, Lcom/c/a/o;->d()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setLongitude(D)V
invoke-virtual {p0}, Lcom/c/a/o;->m()Lcom/c/a/f;
move-result-object v1
if-eqz v1, :cond_3e
invoke-virtual {p0}, Lcom/c/a/o;->m()Lcom/c/a/f;
move-result-object v1
invoke-virtual {v1}, Lcom/c/a/f;->k()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/c/a/o;->m()Lcom/c/a/f;
move-result-object v1
invoke-virtual {v1}, Lcom/c/a/f;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/c/a/o;->m()Lcom/c/a/f;
move-result-object v1
invoke-virtual {v1}, Lcom/c/a/f;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V
:cond_3e
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/net/c/a;)Lcom/twidroid/net/c/d;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/c/a;->n:Lcom/twidroid/net/c/d;
return-object v0
.end method
.method private b()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/net/c/a;->m:Z
iget-object v0, p0, Lcom/twidroid/net/c/a;->a:Ljava/util/Timer;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/net/c/a;->a:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
iget-object v0, p0, Lcom/twidroid/net/c/a;->a:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->purge()I
iput-object v1, p0, Lcom/twidroid/net/c/a;->a:Ljava/util/Timer;
:cond_14
iget-object v0, p0, Lcom/twidroid/net/c/a;->b:Lcom/twidroid/net/c/e;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/twidroid/net/c/a;->b:Lcom/twidroid/net/c/e;
invoke-virtual {v0}, Lcom/twidroid/net/c/e;->cancel()Z
iput-object v1, p0, Lcom/twidroid/net/c/a;->b:Lcom/twidroid/net/c/e;
:cond_1f
return-void
.end method
.method static synthetic b(Lcom/twidroid/net/c/a;)Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/net/c/a;->m:Z
return v0
.end method
.method static synthetic c(Lcom/twidroid/net/c/a;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/c/a;->i:Landroid/content/Context;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/net/c/a;)Lcom/twidroid/net/c/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/c/a;->h:Lcom/twidroid/net/c/c;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/net/c/a;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/net/c/a;->b()V
return-void
.end method
.method static synthetic f(Lcom/twidroid/net/c/a;)Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/net/c/a;->o:Z
return v0
.end method
.method public a()V
.registers 3
const-string v0, "GPSUpdateTask"
const-string v1, "stopService"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_start_7
invoke-direct {p0}, Lcom/twidroid/net/c/a;->b()V
iget-object v0, p0, Lcom/twidroid/net/c/a;->g:Lcom/twidroid/net/c/b;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/twidroid/net/c/a;->i:Landroid/content/Context;
const-string v1, "location"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
iget-object v1, p0, Lcom/twidroid/net/c/a;->g:Lcom/twidroid/net/c/b;
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->removeUpdates(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/net/c/a;->g:Lcom/twidroid/net/c/b;
:try_end_20
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_24
:cond_20
:goto_20
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/net/c/a;->o:Z
return-void
:catch_24
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_20
.end method