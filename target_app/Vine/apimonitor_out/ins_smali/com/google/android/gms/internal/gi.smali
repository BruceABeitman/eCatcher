.class public final Lcom/google/android/gms/internal/gi;
.super Lcom/google/android/gms/internal/hc;
.field private static final BD:Lcom/google/android/gms/internal/go;
.field private static final BX:Ljava/lang/Object;
.field private static final BY:Ljava/lang/Object;
.field private AM:D
.field private AN:Z
.field private final Ab:Lcom/google/android/gms/cast/Cast$Listener;
.field private BE:Lcom/google/android/gms/cast/ApplicationMetadata;
.field private final BF:Lcom/google/android/gms/cast/CastDevice;
.field private final BG:Lcom/google/android/gms/internal/gn;
.field private final BH:Ljava/util/Map;
.field private final BI:J
.field private BJ:Ljava/lang/String;
.field private BK:Z
.field private BL:Z
.field private BM:Z
.field private BN:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private BO:I
.field private final BP:Ljava/util/concurrent/atomic/AtomicLong;
.field private BQ:Ljava/lang/String;
.field private BR:Ljava/lang/String;
.field private BS:Landroid/os/Bundle;
.field private BT:Ljava/util/Map;
.field private BU:Lcom/google/android/gms/internal/gi$b;
.field private BV:Lcom/google/android/gms/common/api/a$d;
.field private BW:Lcom/google/android/gms/common/api/a$d;
.field private final mHandler:Landroid/os/Handler;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/google/android/gms/internal/go;
const-string v1, "CastClientImpl"
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/go;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/internal/gi;->BD:Lcom/google/android/gms/internal/go;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/gi;->BX:Ljava/lang/Object;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/gi;->BY:Ljava/lang/Object;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
.registers 15
const/4 v5, 0x0
check-cast v5, [Ljava/lang/String;
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p7
move-object v4, p8
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
iput-object p3, p0, Lcom/google/android/gms/internal/gi;->BF:Lcom/google/android/gms/cast/CastDevice;
iput-object p6, p0, Lcom/google/android/gms/internal/gi;->Ab:Lcom/google/android/gms/cast/Cast$Listener;
iput-wide p4, p0, Lcom/google/android/gms/internal/gi;->BI:J
new-instance v0, Landroid/os/Handler;
invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gi;->mHandler:Landroid/os/Handler;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/gi;->BH:Ljava/util/Map;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/gi;->BM:Z
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/gi;->BO:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/gi;->BE:Lcom/google/android/gms/cast/ApplicationMetadata;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/gi;->BJ:Ljava/lang/String;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/google/android/gms/internal/gi;->BN:Ljava/util/concurrent/atomic/AtomicBoolean;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/google/android/gms/internal/gi;->AM:D
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/gi;->AN:Z
new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;
const-wide/16 v1, 0x0
invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V
iput-object v0, p0, Lcom/google/android/gms/internal/gi;->BP:Ljava/util/concurrent/atomic/AtomicLong;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/gi;->BT:Ljava/util/Map;
new-instance v0, Lcom/google/android/gms/internal/gi$b;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/gi$b;-><init>(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/internal/gi$1;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gi;->BU:Lcom/google/android/gms/internal/gi$b;
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BU:Lcom/google/android/gms/internal/gi$b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gi;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
new-instance v0, Lcom/google/android/gms/internal/gi$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gi$1;-><init>(Lcom/google/android/gms/internal/gi;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gi;->BG:Lcom/google/android/gms/internal/gn;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/gi;->BE:Lcom/google/android/gms/cast/ApplicationMetadata;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$d;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/gi;->BV:Lcom/google/android/gms/common/api/a$d;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/internal/gi;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/gi;->BQ:Ljava/lang/String;
return-object p1
.end method
.method private a(Lcom/google/android/gms/internal/gf;)V
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/google/android/gms/internal/gf;->dX()Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lcom/google/android/gms/internal/gi;->BJ:Ljava/lang/String;
invoke-static {v0, v3}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_3b
iput-object v0, p0, Lcom/google/android/gms/internal/gi;->BJ:Ljava/lang/String;
move v0, v1
:goto_11
sget-object v3, Lcom/google/android/gms/internal/gi;->BD:Lcom/google/android/gms/internal/go;
const-string v4, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
aput-object v6, v5, v2
iget-boolean v6, p0, Lcom/google/android/gms/internal/gi;->BK:Z
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
aput-object v6, v5, v1
invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/google/android/gms/internal/gi;->Ab:Lcom/google/android/gms/cast/Cast$Listener;
if-eqz v1, :cond_38
if-nez v0, :cond_33
iget-boolean v0, p0, Lcom/google/android/gms/internal/gi;->BK:Z
if-eqz v0, :cond_38
:cond_33
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Ab:Lcom/google/android/gms/cast/Cast$Listener;
invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V
:cond_38
iput-boolean v2, p0, Lcom/google/android/gms/internal/gi;->BK:Z
return-void
:cond_3b
move v0, v2
goto :goto_11
.end method
.method static synthetic a(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/internal/gf;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/gf;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/internal/gk;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/gk;)V
return-void
.end method
.method private a(Lcom/google/android/gms/internal/gk;)V
.registers 10
const/4 v7, 0x2
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/google/android/gms/internal/gk;->ec()D
move-result-wide v3
const-wide/high16 v5, 0x7ff8
cmpl-double v0, v3, v5
if-eqz v0, :cond_7f
iget-wide v5, p0, Lcom/google/android/gms/internal/gi;->AM:D
cmpl-double v0, v3, v5
if-eqz v0, :cond_7f
iput-wide v3, p0, Lcom/google/android/gms/internal/gi;->AM:D
move v0, v1
:goto_16
invoke-virtual {p1}, Lcom/google/android/gms/internal/gk;->ei()Z
move-result v3
iget-boolean v4, p0, Lcom/google/android/gms/internal/gi;->AN:Z
if-eq v3, v4, :cond_21
iput-boolean v3, p0, Lcom/google/android/gms/internal/gi;->AN:Z
move v0, v1
:cond_21
sget-object v3, Lcom/google/android/gms/internal/gi;->BD:Lcom/google/android/gms/internal/go;
const-string v4, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"
new-array v5, v7, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
aput-object v6, v5, v2
iget-boolean v6, p0, Lcom/google/android/gms/internal/gi;->BL:Z
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
aput-object v6, v5, v1
invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v3, p0, Lcom/google/android/gms/internal/gi;->Ab:Lcom/google/android/gms/cast/Cast$Listener;
if-eqz v3, :cond_47
if-nez v0, :cond_42
iget-boolean v0, p0, Lcom/google/android/gms/internal/gi;->BL:Z
if-eqz v0, :cond_47
:cond_42
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Ab:Lcom/google/android/gms/cast/Cast$Listener;
invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V
:cond_47
invoke-virtual {p1}, Lcom/google/android/gms/internal/gk;->ej()I
move-result v0
iget v3, p0, Lcom/google/android/gms/internal/gi;->BO:I
if-eq v0, v3, :cond_7d
iput v0, p0, Lcom/google/android/gms/internal/gi;->BO:I
move v0, v1
:goto_52
sget-object v3, Lcom/google/android/gms/internal/gi;->BD:Lcom/google/android/gms/internal/go;
const-string v4, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"
new-array v5, v7, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
aput-object v6, v5, v2
iget-boolean v6, p0, Lcom/google/android/gms/internal/gi;->BL:Z
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
aput-object v6, v5, v1
invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/google/android/gms/internal/gi;->Ab:Lcom/google/android/gms/cast/Cast$Listener;
if-eqz v1, :cond_7a
if-nez v0, :cond_73
iget-boolean v0, p0, Lcom/google/android/gms/internal/gi;->BL:Z
if-eqz v0, :cond_7a
:cond_73
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Ab:Lcom/google/android/gms/cast/Cast$Listener;
iget v1, p0, Lcom/google/android/gms/internal/gi;->BO:I
invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->O(I)V
:cond_7a
iput-boolean v2, p0, Lcom/google/android/gms/internal/gi;->BL:Z
return-void
:cond_7d
move v0, v2
goto :goto_52
:cond_7f
move v0, v2
goto :goto_16
.end method
.method static synthetic a(Lcom/google/android/gms/internal/gi;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/internal/gi;->BM:Z
return p1
.end method
.method static synthetic b(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$d;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/gi;->BW:Lcom/google/android/gms/common/api/a$d;
return-object p1
.end method
.method static synthetic b(Lcom/google/android/gms/internal/gi;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/gi;->BR:Ljava/lang/String;
return-object p1
.end method
.method static synthetic b(Lcom/google/android/gms/internal/gi;)Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BN:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method static synthetic c(Lcom/google/android/gms/internal/gi;)Lcom/google/android/gms/common/api/a$d;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BV:Lcom/google/android/gms/common/api/a$d;
return-object v0
.end method
.method private c(Lcom/google/android/gms/common/api/a$d;)V
.registers 7
sget-object v1, Lcom/google/android/gms/internal/gi;->BX:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BV:Lcom/google/android/gms/common/api/a$d;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BV:Lcom/google/android/gms/common/api/a$d;
new-instance v2, Lcom/google/android/gms/internal/gi$a;
new-instance v3, Lcom/google/android/gms/common/api/Status;
const/16 v4, 0x7d2
invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gi$a;-><init>(Lcom/google/android/gms/common/api/Status;)V
invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
:cond_18
iput-object p1, p0, Lcom/google/android/gms/internal/gi;->BV:Lcom/google/android/gms/common/api/a$d;
monitor-exit v1
return-void
:catchall_1c
move-exception v0
monitor-exit v1
:try_end_1e
.catchall {:try_start_3 .. :try_end_1e} :catchall_1c
throw v0
.end method
.method static synthetic d(Lcom/google/android/gms/internal/gi;)Lcom/google/android/gms/cast/Cast$Listener;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Ab:Lcom/google/android/gms/cast/Cast$Listener;
return-object v0
.end method
.method static synthetic e(Lcom/google/android/gms/internal/gi;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method private e(Lcom/google/android/gms/common/api/a$d;)V
.registers 5
sget-object v1, Lcom/google/android/gms/internal/gi;->BY:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BW:Lcom/google/android/gms/common/api/a$d;
if-eqz v0, :cond_13
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/16 v2, 0x7d1
invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
monitor-exit v1
:goto_12
return-void
:cond_13
iput-object p1, p0, Lcom/google/android/gms/internal/gi;->BW:Lcom/google/android/gms/common/api/a$d;
monitor-exit v1
goto :goto_12
:catchall_17
move-exception v0
monitor-exit v1
:try_end_19
.catchall {:try_start_3 .. :try_end_19} :catchall_17
throw v0
.end method
.method private ed()V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/gi;->BD:Lcom/google/android/gms/internal/go;
const-string v1, "removing all MessageReceivedCallbacks"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/google/android/gms/internal/gi;->BH:Ljava/util/Map;
monitor-enter v1
:try_start_d
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BH:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
monitor-exit v1
return-void
:catchall_14
move-exception v0
monitor-exit v1
:try_end_16
.catchall {:try_start_d .. :try_end_16} :catchall_14
throw v0
.end method
.method private ee()V
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/internal/gi;->BM:Z
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BN:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_14
:cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Not connected to a device"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
return-void
.end method
.method static synthetic ef()Lcom/google/android/gms/internal/go;
.registers 1
sget-object v0, Lcom/google/android/gms/internal/gi;->BD:Lcom/google/android/gms/internal/go;
return-object v0
.end method
.method static synthetic eg()Ljava/lang/Object;
.registers 1
sget-object v0, Lcom/google/android/gms/internal/gi;->BX:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic eh()Ljava/lang/Object;
.registers 1
sget-object v0, Lcom/google/android/gms/internal/gi;->BY:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic f(Lcom/google/android/gms/internal/gi;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BH:Ljava/util/Map;
return-object v0
.end method
.method static synthetic g(Lcom/google/android/gms/internal/gi;)Lcom/google/android/gms/cast/CastDevice;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BF:Lcom/google/android/gms/cast/CastDevice;
return-object v0
.end method
.method static synthetic h(Lcom/google/android/gms/internal/gi;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BT:Ljava/util/Map;
return-object v0
.end method
.method static synthetic i(Lcom/google/android/gms/internal/gi;)Lcom/google/android/gms/common/api/a$d;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BW:Lcom/google/android/gms/common/api/a$d;
return-object v0
.end method
.method static synthetic j(Lcom/google/android/gms/internal/gi;)V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/gi;->ed()V
return-void
.end method
.method protected G(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gm;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/gm$a;->H(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gm;
move-result-object v0
return-object v0
.end method
.method public a(D)V
.registers 9
invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z
move-result v0
if-nez v0, :cond_c
invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z
move-result v0
if-eqz v0, :cond_25
:cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Volume cannot be "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gm;
iget-wide v3, p0, Lcom/google/android/gms/internal/gi;->AM:D
iget-boolean v5, p0, Lcom/google/android/gms/internal/gi;->AN:Z
move-wide v1, p1
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/gm;->a(DDZ)V
return-void
.end method
.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
.registers 11
const/16 v6, 0x3e9
const/4 v0, 0x0
const/4 v5, 0x1
sget-object v1, Lcom/google/android/gms/internal/gi;->BD:Lcom/google/android/gms/internal/go;
const-string v2, "in onPostInitHandler; statusCode=%d"
new-array v3, v5, [Ljava/lang/Object;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v0
invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz p1, :cond_17
if-ne p1, v6, :cond_32
:cond_17
iput-boolean v5, p0, Lcom/google/android/gms/internal/gi;->BM:Z
iput-boolean v5, p0, Lcom/google/android/gms/internal/gi;->BK:Z
iput-boolean v5, p0, Lcom/google/android/gms/internal/gi;->BL:Z
:goto_1d
if-ne p1, v6, :cond_2e
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
iput-object v1, p0, Lcom/google/android/gms/internal/gi;->BS:Landroid/os/Bundle;
iget-object v1, p0, Lcom/google/android/gms/internal/gi;->BS:Landroid/os/Bundle;
const-string v2, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"
invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
move p1, v0
:cond_2e
invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/hc;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
return-void
:cond_32
iput-boolean v0, p0, Lcom/google/android/gms/internal/gi;->BM:Z
goto :goto_1d
.end method
.method protected a(Lcom/google/android/gms/internal/hj;Lcom/google/android/gms/internal/hc$e;)V
.registers 9
new-instance v5, Landroid/os/Bundle;
invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
sget-object v0, Lcom/google/android/gms/internal/gi;->BD:Lcom/google/android/gms/internal/go;
const-string v1, "getServiceFromBroker(): mLastApplicationId=%s, mLastSessionId=%s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/google/android/gms/internal/gi;->BQ:Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/google/android/gms/internal/gi;->BR:Ljava/lang/String;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BF:Lcom/google/android/gms/cast/CastDevice;
invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/CastDevice;->putInBundle(Landroid/os/Bundle;)V
const-string v0, "com.google.android.gms.cast.EXTRA_CAST_FLAGS"
iget-wide v1, p0, Lcom/google/android/gms/internal/gi;->BI:J
invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BQ:Ljava/lang/String;
if-eqz v0, :cond_3b
const-string v0, "last_application_id"
iget-object v1, p0, Lcom/google/android/gms/internal/gi;->BQ:Ljava/lang/String;
invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BR:Ljava/lang/String;
if-eqz v0, :cond_3b
const-string v0, "last_session_id"
iget-object v1, p0, Lcom/google/android/gms/internal/gi;->BR:Ljava/lang/String;
invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_3b
const v2, 0x4d7808
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BG:Lcom/google/android/gms/internal/gn;
invoke-interface {v0}, Lcom/google/android/gms/internal/gn;->asBinder()Landroid/os/IBinder;
move-result-object v4
move-object v0, p1
move-object v1, p2
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/hj;->a(Lcom/google/android/gms/internal/hi;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
return-void
.end method
.method public a(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
.registers 5
invoke-static {p1}, Lcom/google/android/gms/internal/gj;->ak(Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gi;->aj(Ljava/lang/String;)V
if-eqz p2, :cond_1a
iget-object v1, p0, Lcom/google/android/gms/internal/gi;->BH:Ljava/util/Map;
monitor-enter v1
:try_start_b
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BH:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
:try_end_11
.catchall {:try_start_b .. :try_end_11} :catchall_1b
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gm;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gm;->an(Ljava/lang/String;)V
:cond_1a
return-void
:catchall_1b
move-exception v0
:try_start_1c
monitor-exit v1
:try_end_1d
.catchall {:try_start_1c .. :try_end_1d} :catchall_1b
throw v0
.end method
.method public a(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/common/api/a$d;)V
.registers 5
invoke-direct {p0, p3}, Lcom/google/android/gms/internal/gi;->c(Lcom/google/android/gms/common/api/a$d;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gm;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/gm;->a(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V
return-void
.end method
.method public a(Ljava/lang/String;Lcom/google/android/gms/common/api/a$d;)V
.registers 4
invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gi;->e(Lcom/google/android/gms/common/api/a$d;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gm;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gm;->am(Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/a$d;)V
.registers 7
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The message payload cannot be null or empty"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
const/high16 v1, 0x1
if-le v0, v1, :cond_1e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Message exceeds maximum size"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
invoke-static {p1}, Lcom/google/android/gms/internal/gj;->ak(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/internal/gi;->ee()V
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BP:Ljava/util/concurrent/atomic/AtomicLong;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
move-result-wide v1
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gm;
invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/gm;->a(Ljava/lang/String;Ljava/lang/String;J)V
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BT:Ljava/util/Map;
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public a(Ljava/lang/String;ZLcom/google/android/gms/common/api/a$d;)V
.registers 5
invoke-direct {p0, p3}, Lcom/google/android/gms/internal/gi;->c(Lcom/google/android/gms/common/api/a$d;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gm;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/gm;->e(Ljava/lang/String;Z)V
return-void
.end method
.method public aj(Ljava/lang/String;)V
.registers 8
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Channel namespace cannot be null or empty"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-object v1, p0, Lcom/google/android/gms/internal/gi;->BH:Ljava/util/Map;
monitor-enter v1
:try_start_11
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BH:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;
monitor-exit v1
:try_end_1a
.catchall {:try_start_11 .. :try_end_1a} :catchall_26
if-eqz v0, :cond_25
:try_start_1c
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gm;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gm;->ao(Ljava/lang/String;)V
:goto_25
:cond_25
:try_end_25
.catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_25} :catch_29
return-void
:catchall_26
move-exception v0
:try_start_27
monitor-exit v1
:try_end_28
.catchall {:try_start_27 .. :try_end_28} :catchall_26
throw v0
:catch_29
move-exception v0
sget-object v1, Lcom/google/android/gms/internal/gi;->BD:Lcom/google/android/gms/internal/go;
const-string v2, "Error unregistering namespace (%s): %s"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
const/4 v4, 0x1
invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/go;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_25
.end method
.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/a$d;)V
.registers 5
invoke-direct {p0, p3}, Lcom/google/android/gms/internal/gi;->c(Lcom/google/android/gms/common/api/a$d;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gm;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/gm;->h(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected bp()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE"
return-object v0
.end method
.method protected bq()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"
return-object v0
.end method
.method public d(Lcom/google/android/gms/common/api/a$d;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gi;->e(Lcom/google/android/gms/common/api/a$d;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gm;
invoke-interface {v0}, Lcom/google/android/gms/internal/gm;->ek()V
return-void
.end method
.method public disconnect()V
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
sget-object v0, Lcom/google/android/gms/internal/gi;->BD:Lcom/google/android/gms/internal/go;
const-string v1, "disconnect(); mDisconnecting=%b, isConnected=%b"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
iget-object v3, p0, Lcom/google/android/gms/internal/gi;->BN:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v3
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->isConnected()Z
move-result v3
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v2, v5
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BN:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
move-result v0
if-eqz v0, :cond_34
sget-object v0, Lcom/google/android/gms/internal/gi;->BD:Lcom/google/android/gms/internal/go;
const-string v1, "mDisconnecting is set, so short-circuiting"
new-array v2, v4, [Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_33
return-void
:cond_34
invoke-direct {p0}, Lcom/google/android/gms/internal/gi;->ed()V
:try_start_37
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->isConnected()Z
move-result v0
if-nez v0, :cond_43
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->isConnecting()Z
move-result v0
if-eqz v0, :cond_4c
:cond_43
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gm;
invoke-interface {v0}, Lcom/google/android/gms/internal/gm;->disconnect()V
:try_end_4c
.catchall {:try_start_37 .. :try_end_4c} :catchall_66
.catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4c} :catch_50
:cond_4c
invoke-super {p0}, Lcom/google/android/gms/internal/hc;->disconnect()V
goto :goto_33
:catch_50
move-exception v0
:try_start_51
sget-object v1, Lcom/google/android/gms/internal/gi;->BD:Lcom/google/android/gms/internal/go;
const-string v2, "Error while disconnecting the controller interface: %s"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/go;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_62
.catchall {:try_start_51 .. :try_end_62} :catchall_66
invoke-super {p0}, Lcom/google/android/gms/internal/hc;->disconnect()V
goto :goto_33
:catchall_66
move-exception v0
invoke-super {p0}, Lcom/google/android/gms/internal/hc;->disconnect()V
throw v0
.end method
.method public ea()Landroid/os/Bundle;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BS:Landroid/os/Bundle;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BS:Landroid/os/Bundle;
const/4 v1, 0x0
iput-object v1, p0, Lcom/google/android/gms/internal/gi;->BS:Landroid/os/Bundle;
:goto_9
return-object v0
:cond_a
invoke-super {p0}, Lcom/google/android/gms/internal/hc;->ea()Landroid/os/Bundle;
move-result-object v0
goto :goto_9
.end method
.method public eb()V
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gm;
invoke-interface {v0}, Lcom/google/android/gms/internal/gm;->eb()V
return-void
.end method
.method public ec()D
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/internal/gi;->ee()V
iget-wide v0, p0, Lcom/google/android/gms/internal/gi;->AM:D
return-wide v0
.end method
.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/gi;->ee()V
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BE:Lcom/google/android/gms/cast/ApplicationMetadata;
return-object v0
.end method
.method public getApplicationStatus()Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/gi;->ee()V
iget-object v0, p0, Lcom/google/android/gms/internal/gi;->BJ:Ljava/lang/String;
return-object v0
.end method
.method public isMute()Z
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/gi;->ee()V
iget-boolean v0, p0, Lcom/google/android/gms/internal/gi;->AN:Z
return v0
.end method
.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gi;->G(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gm;
move-result-object v0
return-object v0
.end method
.method public y(Z)V
.registers 6
invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gm;
iget-wide v1, p0, Lcom/google/android/gms/internal/gi;->AM:D
iget-boolean v3, p0, Lcom/google/android/gms/internal/gi;->AN:Z
invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/gm;->a(ZDZ)V
return-void
.end method