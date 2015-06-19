.class public final Lcom/tencent/map/b/e;
.super Ljava/lang/Object;
.field private static b:Landroid/location/LocationManager;
.field private static d:F
.field private a:Landroid/content/Context;
.field private c:Lcom/tencent/map/b/e$c;
.field private e:Lcom/tencent/map/b/e$b;
.field private f:Lcom/tencent/map/b/e$a;
.field private g:Z
.field private h:[B
.field private i:I
.field private j:J
.field private k:Z
.field private l:I
.field private m:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;
const/4 v0, 0x0
sput v0, Lcom/tencent/map/b/e;->d:F
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v0, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/e;->a:Landroid/content/Context;
iput-object v0, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$c;
iput-object v0, p0, Lcom/tencent/map/b/e;->e:Lcom/tencent/map/b/e$b;
iput-object v0, p0, Lcom/tencent/map/b/e;->f:Lcom/tencent/map/b/e$a;
iput-boolean v2, p0, Lcom/tencent/map/b/e;->g:Z
new-array v0, v2, [B
iput-object v0, p0, Lcom/tencent/map/b/e;->h:[B
const/16 v0, 0x400
iput v0, p0, Lcom/tencent/map/b/e;->i:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/tencent/map/b/e;->j:J
iput-boolean v2, p0, Lcom/tencent/map/b/e;->k:Z
iput v2, p0, Lcom/tencent/map/b/e;->l:I
iput v2, p0, Lcom/tencent/map/b/e;->m:I
return-void
.end method
.method static synthetic a(Lcom/tencent/map/b/e;I)I
.registers 3
iget v0, p0, Lcom/tencent/map/b/e;->i:I
or-int/2addr v0, p1
iput v0, p0, Lcom/tencent/map/b/e;->i:I
return v0
.end method
.method static synthetic a(Lcom/tencent/map/b/e;J)J
.registers 3
iput-wide p1, p0, Lcom/tencent/map/b/e;->j:J
return-wide p1
.end method
.method static synthetic a(Lcom/tencent/map/b/e;Lcom/tencent/map/b/e$a;)Lcom/tencent/map/b/e$a;
.registers 2
iput-object p1, p0, Lcom/tencent/map/b/e;->f:Lcom/tencent/map/b/e$a;
return-object p1
.end method
.method static synthetic a(Lcom/tencent/map/b/e;)V
.registers 1
invoke-direct {p0}, Lcom/tencent/map/b/e;->b()V
return-void
.end method
.method static synthetic b(Lcom/tencent/map/b/e;)I
.registers 2
iget v0, p0, Lcom/tencent/map/b/e;->l:I
return v0
.end method
.method static synthetic b(Lcom/tencent/map/b/e;I)I
.registers 2
iput p1, p0, Lcom/tencent/map/b/e;->l:I
return p1
.end method
.method private b()V
.registers 4
const/4 v0, 0x0
iput v0, p0, Lcom/tencent/map/b/e;->m:I
iput v0, p0, Lcom/tencent/map/b/e;->l:I
sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;
const/4 v1, 0x0
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getGpsStatus(Landroid/location/LocationManager;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
move-result-object v0
if-nez v0, :cond_f
:cond_e
return-void
:cond_f
invoke-static {v0}, Ldroidbox/android/location/GpsStatus;->getMaxSatellites(Landroid/location/GpsStatus;)I
move-result v1
invoke-static {v0}, Ldroidbox/android/location/GpsStatus;->getSatellites(Landroid/location/GpsStatus;)Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v2
if-eqz v2, :cond_e
:goto_1d
:cond_1d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_e
iget v0, p0, Lcom/tencent/map/b/e;->l:I
if-gt v0, v1, :cond_e
iget v0, p0, Lcom/tencent/map/b/e;->l:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/tencent/map/b/e;->l:I
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/GpsSatellite;
invoke-static {v0}, Ldroidbox/android/location/GpsSatellite;->usedInFix(Landroid/location/GpsSatellite;)Z
move-result v0
if-eqz v0, :cond_1d
iget v0, p0, Lcom/tencent/map/b/e;->m:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/tencent/map/b/e;->m:I
goto :goto_1d
.end method
.method static synthetic c(Lcom/tencent/map/b/e;)I
.registers 2
iget v0, p0, Lcom/tencent/map/b/e;->m:I
return v0
.end method
.method static synthetic c(Lcom/tencent/map/b/e;I)I
.registers 3
const/4 v0, 0x0
iput v0, p0, Lcom/tencent/map/b/e;->m:I
return v0
.end method
.method static synthetic d(Lcom/tencent/map/b/e;)I
.registers 2
iget v0, p0, Lcom/tencent/map/b/e;->i:I
return v0
.end method
.method static synthetic d(Lcom/tencent/map/b/e;I)I
.registers 2
iput p1, p0, Lcom/tencent/map/b/e;->i:I
return p1
.end method
.method static synthetic e(Lcom/tencent/map/b/e;)J
.registers 3
iget-wide v0, p0, Lcom/tencent/map/b/e;->j:J
return-wide v0
.end method
.method static synthetic f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$b;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/e;->e:Lcom/tencent/map/b/e$b;
return-object v0
.end method
.method static synthetic g(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$a;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/e;->f:Lcom/tencent/map/b/e$a;
return-object v0
.end method
.method public final a()V
.registers 4
iget-object v1, p0, Lcom/tencent/map/b/e;->h:[B
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/tencent/map/b/e;->g:Z
if-nez v0, :cond_9
monitor-exit v1
:goto_8
return-void
:cond_9
sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$c;
if-eqz v0, :cond_1f
sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;
iget-object v2, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$c;
invoke-static {v0, v2}, Ldroidbox/android/location/LocationManager;->removeGpsStatusListener(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V
sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;
iget-object v2, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$c;
invoke-static {v0, v2}, Ldroidbox/android/location/LocationManager;->removeUpdates(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
:cond_1f
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/tencent/map/b/e;->g:Z
monitor-exit v1
:try_end_23
.catchall {:try_start_3 .. :try_end_23} :catchall_24
goto :goto_8
:catchall_24
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/tencent/map/b/e$b;Landroid/content/Context;)Z
.registers 11
const/4 v0, 0x1
const/4 v6, 0x0
iget-object v7, p0, Lcom/tencent/map/b/e;->h:[B
monitor-enter v7
:try_start_5
iget-boolean v1, p0, Lcom/tencent/map/b/e;->g:Z
if-eqz v1, :cond_b
monitor-exit v7
:try_end_a
.catchall {:try_start_5 .. :try_end_a} :catchall_6b
:goto_a
return v0
:cond_b
if-eqz p2, :cond_f
if-nez p1, :cond_12
:cond_f
monitor-exit v7
move v0, v6
goto :goto_a
:cond_12
:try_start_12
iput-object p2, p0, Lcom/tencent/map/b/e;->a:Landroid/content/Context;
iput-object p1, p0, Lcom/tencent/map/b/e;->e:Lcom/tencent/map/b/e$b;
:try_start_16
:try_end_16
.catchall {:try_start_12 .. :try_end_16} :catchall_6b
iget-object v0, p0, Lcom/tencent/map/b/e;->a:Landroid/content/Context;
const-string/jumbo v1, "location"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
sput-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;
new-instance v0, Lcom/tencent/map/b/e$c;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/tencent/map/b/e$c;-><init>(Lcom/tencent/map/b/e;B)V
iput-object v0, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$c;
sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$c;
:try_end_31
.catchall {:try_start_16 .. :try_end_31} :catchall_6b
.catch Ljava/lang/Exception; {:try_start_16 .. :try_end_31} :catch_36
if-nez v0, :cond_3a
:cond_33
:try_start_33
monitor-exit v7
:try_end_34
.catchall {:try_start_33 .. :try_end_34} :catchall_6b
move v0, v6
goto :goto_a
:catch_36
move-exception v0
monitor-exit v7
move v0, v6
goto :goto_a
:try_start_3a
:cond_3a
sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;
const-string/jumbo v1, "gps"
const-wide/16 v2, 0x3e8
const/4 v4, 0x0
iget-object v5, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$c;
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;
iget-object v1, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$c;
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->addGpsStatusListener(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)Z
sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;
const-string/jumbo v1, "gps"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_63
const/4 v0, 0x4
iput v0, p0, Lcom/tencent/map/b/e;->i:I
:try_end_5c
.catchall {:try_start_3a .. :try_end_5c} :catchall_6b
.catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5c} :catch_67
:goto_5c
const/4 v0, 0x1
:try_start_5d
iput-boolean v0, p0, Lcom/tencent/map/b/e;->g:Z
monitor-exit v7
:try_end_60
.catchall {:try_start_5d .. :try_end_60} :catchall_6b
iget-boolean v0, p0, Lcom/tencent/map/b/e;->g:Z
goto :goto_a
:cond_63
const/4 v0, 0x0
:try_start_64
iput v0, p0, Lcom/tencent/map/b/e;->i:I
:try_end_66
.catchall {:try_start_64 .. :try_end_66} :catchall_6b
.catch Ljava/lang/Exception; {:try_start_64 .. :try_end_66} :catch_67
goto :goto_5c
:catch_67
move-exception v0
:try_start_68
monitor-exit v7
:try_end_69
.catchall {:try_start_68 .. :try_end_69} :catchall_6b
move v0, v6
goto :goto_a
:catchall_6b
move-exception v0
monitor-exit v7
throw v0
.end method