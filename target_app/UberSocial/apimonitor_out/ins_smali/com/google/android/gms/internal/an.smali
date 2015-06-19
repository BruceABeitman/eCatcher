.class public final Lcom/google/android/gms/internal/an;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ap;
.field private final a:Ljava/lang/String;
.field private final b:Lcom/google/android/gms/internal/as;
.field private final c:J
.field private final d:Lcom/google/android/gms/internal/ah;
.field private final e:Lcom/google/android/gms/internal/z;
.field private final f:Lcom/google/android/gms/internal/ab;
.field private final g:Landroid/content/Context;
.field private final h:Ljava/lang/Object;
.field private final i:Lcom/google/android/gms/internal/db;
.field private j:Lcom/google/android/gms/internal/av;
.field private k:I
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/as;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/db;)V
.registers 13
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/an;->h:Ljava/lang/Object;
const/4 v0, -0x2
iput v0, p0, Lcom/google/android/gms/internal/an;->k:I
iput-object p1, p0, Lcom/google/android/gms/internal/an;->g:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/internal/an;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/an;->b:Lcom/google/android/gms/internal/as;
iget-wide v0, p4, Lcom/google/android/gms/internal/ai;->b:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-eqz v0, :cond_28
iget-wide v0, p4, Lcom/google/android/gms/internal/ai;->b:J
:goto_1d
iput-wide v0, p0, Lcom/google/android/gms/internal/an;->c:J
iput-object p5, p0, Lcom/google/android/gms/internal/an;->d:Lcom/google/android/gms/internal/ah;
iput-object p6, p0, Lcom/google/android/gms/internal/an;->e:Lcom/google/android/gms/internal/z;
iput-object p7, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/ab;
iput-object p8, p0, Lcom/google/android/gms/internal/an;->i:Lcom/google/android/gms/internal/db;
return-void
:cond_28
const-wide/16 v0, 0x2710
goto :goto_1d
.end method
.method static synthetic a(Lcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/av;)Lcom/google/android/gms/internal/av;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/av;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/internal/an;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/an;->h:Ljava/lang/Object;
return-object v0
.end method
.method private a(JJJJ)V
.registers 11
:goto_0
iget v0, p0, Lcom/google/android/gms/internal/an;->k:I
const/4 v1, -0x2
if-eq v0, v1, :cond_6
return-void
:cond_6
invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/an;->b(JJJJ)V
goto :goto_0
.end method
.method private a(Lcom/google/android/gms/internal/al;)V
.registers 9
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/an;->i:Lcom/google/android/gms/internal/db;
iget v0, v0, Lcom/google/android/gms/internal/db;->d:I
const v1, 0x3e8fa0
if-ge v0, v1, :cond_41
iget-object v0, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/ab;
iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->e:Z
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/av;
iget-object v1, p0, Lcom/google/android/gms/internal/an;->g:Landroid/content/Context;
invoke-static {v1}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/an;->e:Lcom/google/android/gms/internal/z;
iget-object v3, p0, Lcom/google/android/gms/internal/an;->d:Lcom/google/android/gms/internal/ah;
iget-object v3, v3, Lcom/google/android/gms/internal/ah;->f:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/av;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/z;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V
:goto_20
return-void
:cond_21
iget-object v0, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/av;
iget-object v1, p0, Lcom/google/android/gms/internal/an;->g:Landroid/content/Context;
invoke-static {v1}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/ab;
iget-object v3, p0, Lcom/google/android/gms/internal/an;->e:Lcom/google/android/gms/internal/z;
iget-object v4, p0, Lcom/google/android/gms/internal/an;->d:Lcom/google/android/gms/internal/ah;
iget-object v4, v4, Lcom/google/android/gms/internal/ah;->f:Ljava/lang/String;
move-object v5, p1
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/av;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V
:try_end_35
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_36
goto :goto_20
:catch_36
move-exception v0
const-string v1, "Could not request ad from mediation adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x5
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/an;->a(I)V
goto :goto_20
:try_start_41
:cond_41
iget-object v0, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/ab;
iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->e:Z
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/av;
iget-object v1, p0, Lcom/google/android/gms/internal/an;->g:Landroid/content/Context;
invoke-static {v1}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/an;->e:Lcom/google/android/gms/internal/z;
iget-object v3, p0, Lcom/google/android/gms/internal/an;->d:Lcom/google/android/gms/internal/ah;
iget-object v3, v3, Lcom/google/android/gms/internal/ah;->f:Ljava/lang/String;
iget-object v4, p0, Lcom/google/android/gms/internal/an;->d:Lcom/google/android/gms/internal/ah;
iget-object v4, v4, Lcom/google/android/gms/internal/ah;->a:Ljava/lang/String;
move-object v5, p1
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/av;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V
goto :goto_20
:cond_5e
iget-object v0, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/av;
iget-object v1, p0, Lcom/google/android/gms/internal/an;->g:Landroid/content/Context;
invoke-static {v1}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/ab;
iget-object v3, p0, Lcom/google/android/gms/internal/an;->e:Lcom/google/android/gms/internal/z;
iget-object v4, p0, Lcom/google/android/gms/internal/an;->d:Lcom/google/android/gms/internal/ah;
iget-object v4, v4, Lcom/google/android/gms/internal/ah;->f:Ljava/lang/String;
iget-object v5, p0, Lcom/google/android/gms/internal/an;->d:Lcom/google/android/gms/internal/ah;
iget-object v5, v5, Lcom/google/android/gms/internal/ah;->a:Ljava/lang/String;
move-object v6, p1
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/av;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V
:try_end_76
.catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_76} :catch_36
goto :goto_20
.end method
.method static synthetic a(Lcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/al;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/al;)V
return-void
.end method
.method static synthetic b(Lcom/google/android/gms/internal/an;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/an;->k:I
return v0
.end method
.method private b()Lcom/google/android/gms/internal/av;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Instantiating mediation adapter: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/an;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->c(Ljava/lang/String;)V
:try_start_18
iget-object v0, p0, Lcom/google/android/gms/internal/an;->b:Lcom/google/android/gms/internal/as;
iget-object v1, p0, Lcom/google/android/gms/internal/an;->a:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/as;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/av;
:try_end_1f
.catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_21
move-result-object v0
:goto_20
return-object v0
:catch_21
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not instantiate mediation adapter: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/an;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_20
.end method
.method private b(JJJJ)V
.registers 16
const-wide/16 v5, 0x0
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
sub-long v2, v0, p1
sub-long v2, p3, v2
sub-long/2addr v0, p5
sub-long v0, p7, v0
cmp-long v4, v2, v5
if-lez v4, :cond_15
cmp-long v4, v0, v5
if-gtz v4, :cond_1e
:cond_15
const-string v0, "Timed out waiting for adapter."
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->c(Ljava/lang/String;)V
const/4 v0, 0x3
iput v0, p0, Lcom/google/android/gms/internal/an;->k:I
:goto_1d
return-void
:try_start_1e
:cond_1e
iget-object v4, p0, Lcom/google/android/gms/internal/an;->h:Ljava/lang/Object;
invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
:try_end_27
.catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_27} :catch_28
goto :goto_1d
:catch_28
move-exception v0
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/an;->k:I
goto :goto_1d
.end method
.method static synthetic c(Lcom/google/android/gms/internal/an;)Lcom/google/android/gms/internal/av;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/an;->b()Lcom/google/android/gms/internal/av;
move-result-object v0
return-object v0
.end method
.method static synthetic d(Lcom/google/android/gms/internal/an;)Lcom/google/android/gms/internal/av;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/av;
return-object v0
.end method
.method public a(JJ)Lcom/google/android/gms/internal/ao;
.registers 16
iget-object v9, p0, Lcom/google/android/gms/internal/an;->h:Ljava/lang/Object;
monitor-enter v9
:try_start_3
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v1
new-instance v10, Lcom/google/android/gms/internal/al;
invoke-direct {v10}, Lcom/google/android/gms/internal/al;-><init>()V
sget-object v0, Lcom/google/android/gms/internal/dx;->a:Landroid/os/Handler;
new-instance v3, Lcom/google/android/gms/internal/an$1;
invoke-direct {v3, p0, v10}, Lcom/google/android/gms/internal/an$1;-><init>(Lcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/al;)V
invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
iget-wide v3, p0, Lcom/google/android/gms/internal/an;->c:J
move-object v0, p0
move-wide v5, p1
move-wide v7, p3
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/an;->a(JJJJ)V
new-instance v0, Lcom/google/android/gms/internal/ao;
iget-object v1, p0, Lcom/google/android/gms/internal/an;->d:Lcom/google/android/gms/internal/ah;
iget-object v2, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/av;
iget-object v3, p0, Lcom/google/android/gms/internal/an;->a:Ljava/lang/String;
iget v5, p0, Lcom/google/android/gms/internal/an;->k:I
move-object v4, v10
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ao;-><init>(Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/av;Ljava/lang/String;Lcom/google/android/gms/internal/al;I)V
monitor-exit v9
return-object v0
:catchall_2e
move-exception v0
monitor-exit v9
:try_end_30
.catchall {:try_start_3 .. :try_end_30} :catchall_2e
throw v0
.end method
.method public a()V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/an;->h:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/av;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/av;
invoke-interface {v0}, Lcom/google/android/gms/internal/av;->c()V
:cond_c
:goto_c
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_1d
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_16
const/4 v0, -0x1
:try_start_d
iput v0, p0, Lcom/google/android/gms/internal/an;->k:I
iget-object v0, p0, Lcom/google/android/gms/internal/an;->h:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v1
return-void
:catch_16
move-exception v0
const-string v2, "Could not destroy mediation adapter."
invoke-static {v2, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_c
:catchall_1d
move-exception v0
monitor-exit v1
:try_end_1f
.catchall {:try_start_d .. :try_end_1f} :catchall_1d
throw v0
.end method
.method public a(I)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/an;->h:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput p1, p0, Lcom/google/android/gms/internal/an;->k:I
iget-object v0, p0, Lcom/google/android/gms/internal/an;->h:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v1
return-void
:catchall_c
move-exception v0
monitor-exit v1
:try_end_e
.catchall {:try_start_3 .. :try_end_e} :catchall_c
throw v0
.end method