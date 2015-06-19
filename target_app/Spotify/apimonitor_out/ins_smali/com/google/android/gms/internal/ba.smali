.class public final Lcom/google/android/gms/internal/ba;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/bc;
.field private final a:Ljava/lang/String;
.field private final b:Lcom/google/android/gms/internal/bf;
.field private final c:J
.field private final d:Lcom/google/android/gms/internal/aw;
.field private final e:Lcom/google/android/gms/internal/ah;
.field private final f:Lcom/google/android/gms/internal/ak;
.field private final g:Landroid/content/Context;
.field private final h:Ljava/lang/Object;
.field private final i:Lcom/google/android/gms/internal/dx;
.field private j:Lcom/google/android/gms/internal/bi;
.field private k:I
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bf;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/aw;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dx;)V
.registers 13
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ba;->h:Ljava/lang/Object;
const/4 v0, -0x2
iput v0, p0, Lcom/google/android/gms/internal/ba;->k:I
iput-object p1, p0, Lcom/google/android/gms/internal/ba;->g:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/internal/ba;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/ba;->b:Lcom/google/android/gms/internal/bf;
iget-wide v0, p4, Lcom/google/android/gms/internal/ax;->b:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-eqz v0, :cond_28
iget-wide v0, p4, Lcom/google/android/gms/internal/ax;->b:J
:goto_1d
iput-wide v0, p0, Lcom/google/android/gms/internal/ba;->c:J
iput-object p5, p0, Lcom/google/android/gms/internal/ba;->d:Lcom/google/android/gms/internal/aw;
iput-object p6, p0, Lcom/google/android/gms/internal/ba;->e:Lcom/google/android/gms/internal/ah;
iput-object p7, p0, Lcom/google/android/gms/internal/ba;->f:Lcom/google/android/gms/internal/ak;
iput-object p8, p0, Lcom/google/android/gms/internal/ba;->i:Lcom/google/android/gms/internal/dx;
return-void
:cond_28
const-wide/16 v0, 0x2710
goto :goto_1d
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/bi;)Lcom/google/android/gms/internal/bi;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ba;->j:Lcom/google/android/gms/internal/bi;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ba;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->h:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/az;)V
.registers 9
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->i:Lcom/google/android/gms/internal/dx;
iget v0, v0, Lcom/google/android/gms/internal/dx;->d:I
const v1, 0x3e8fa0
if-ge v0, v1, :cond_41
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->f:Lcom/google/android/gms/internal/ak;
iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->e:Z
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->j:Lcom/google/android/gms/internal/bi;
iget-object v1, p0, Lcom/google/android/gms/internal/ba;->g:Landroid/content/Context;
invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/ba;->e:Lcom/google/android/gms/internal/ah;
iget-object v3, p0, Lcom/google/android/gms/internal/ba;->d:Lcom/google/android/gms/internal/aw;
iget-object v3, v3, Lcom/google/android/gms/internal/aw;->f:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/bi;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V
:goto_20
return-void
:cond_21
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->j:Lcom/google/android/gms/internal/bi;
iget-object v1, p0, Lcom/google/android/gms/internal/ba;->g:Landroid/content/Context;
invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/ba;->f:Lcom/google/android/gms/internal/ak;
iget-object v3, p0, Lcom/google/android/gms/internal/ba;->e:Lcom/google/android/gms/internal/ah;
iget-object v4, p0, Lcom/google/android/gms/internal/ba;->d:Lcom/google/android/gms/internal/aw;
iget-object v4, v4, Lcom/google/android/gms/internal/aw;->f:Ljava/lang/String;
move-object v5, p1
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bi;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V
:try_end_35
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_36
goto :goto_20
:catch_36
move-exception v0
const-string v1, "Could not request ad from mediation adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x5
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->a(I)V
goto :goto_20
:try_start_41
:cond_41
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->f:Lcom/google/android/gms/internal/ak;
iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->e:Z
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->j:Lcom/google/android/gms/internal/bi;
iget-object v1, p0, Lcom/google/android/gms/internal/ba;->g:Landroid/content/Context;
invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/ba;->e:Lcom/google/android/gms/internal/ah;
iget-object v3, p0, Lcom/google/android/gms/internal/ba;->d:Lcom/google/android/gms/internal/aw;
iget-object v3, v3, Lcom/google/android/gms/internal/aw;->f:Ljava/lang/String;
iget-object v4, p0, Lcom/google/android/gms/internal/ba;->d:Lcom/google/android/gms/internal/aw;
iget-object v4, v4, Lcom/google/android/gms/internal/aw;->a:Ljava/lang/String;
move-object v5, p1
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bi;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V
goto :goto_20
:cond_5e
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->j:Lcom/google/android/gms/internal/bi;
iget-object v1, p0, Lcom/google/android/gms/internal/ba;->g:Landroid/content/Context;
invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/ba;->f:Lcom/google/android/gms/internal/ak;
iget-object v3, p0, Lcom/google/android/gms/internal/ba;->e:Lcom/google/android/gms/internal/ah;
iget-object v4, p0, Lcom/google/android/gms/internal/ba;->d:Lcom/google/android/gms/internal/aw;
iget-object v4, v4, Lcom/google/android/gms/internal/aw;->f:Ljava/lang/String;
iget-object v5, p0, Lcom/google/android/gms/internal/ba;->d:Lcom/google/android/gms/internal/aw;
iget-object v5, v5, Lcom/google/android/gms/internal/aw;->a:Ljava/lang/String;
move-object v6, p1
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/bi;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V
:try_end_76
.catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_76} :catch_36
goto :goto_20
.end method
.method static synthetic b(Lcom/google/android/gms/internal/ba;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ba;->k:I
return v0
.end method
.method private b()Lcom/google/android/gms/internal/bi;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Instantiating mediation adapter: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/ba;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V
:try_start_14
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->b:Lcom/google/android/gms/internal/bf;
iget-object v1, p0, Lcom/google/android/gms/internal/ba;->a:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/bi;
:try_end_1b
.catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_1d
move-result-object v0
:goto_1c
return-object v0
:catch_1d
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Could not instantiate mediation adapter: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/ba;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x3
invoke-static {v2}, Lcom/google/android/gms/internal/ep;->a(I)Z
move-result v2
if-eqz v2, :cond_3b
const-string v2, "Ads"
invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_3b
const/4 v0, 0x0
goto :goto_1c
.end method
.method static synthetic c(Lcom/google/android/gms/internal/ba;)Lcom/google/android/gms/internal/bi;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ba;->b()Lcom/google/android/gms/internal/bi;
move-result-object v0
return-object v0
.end method
.method static synthetic d(Lcom/google/android/gms/internal/ba;)Lcom/google/android/gms/internal/bi;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->j:Lcom/google/android/gms/internal/bi;
return-object v0
.end method
.method public final a(J)Lcom/google/android/gms/internal/bb;
.registers 16
iget-object v6, p0, Lcom/google/android/gms/internal/ba;->h:Ljava/lang/Object;
monitor-enter v6
:try_start_3
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
new-instance v4, Lcom/google/android/gms/internal/az;
invoke-direct {v4}, Lcom/google/android/gms/internal/az;-><init>()V
sget-object v2, Lcom/google/android/gms/internal/eo;->a:Landroid/os/Handler;
new-instance v3, Lcom/google/android/gms/internal/ba$1;
invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/ba$1;-><init>(Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/az;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
iget-wide v2, p0, Lcom/google/android/gms/internal/ba;->c:J
:goto_18
iget v5, p0, Lcom/google/android/gms/internal/ba;->k:I
const/4 v7, -0x2
if-ne v5, v7, :cond_52
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v7
sub-long v9, v7, v0
sub-long v9, v2, v9
const-wide/32 v11, 0xea60
sub-long/2addr v7, p1
sub-long v7, v11, v7
const-wide/16 v11, 0x0
cmp-long v5, v9, v11
if-lez v5, :cond_37
const-wide/16 v11, 0x0
cmp-long v5, v7, v11
if-gtz v5, :cond_43
:cond_37
const-string v5, "Timed out waiting for adapter."
invoke-static {v5}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V
const/4 v5, 0x3
iput v5, p0, Lcom/google/android/gms/internal/ba;->k:I
:try_end_3f
.catchall {:try_start_3 .. :try_end_3f} :catchall_40
goto :goto_18
:catchall_40
move-exception v0
monitor-exit v6
throw v0
:cond_43
:try_start_43
iget-object v5, p0, Lcom/google/android/gms/internal/ba;->h:Ljava/lang/Object;
invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J
move-result-wide v7
invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
:try_end_4c
.catchall {:try_start_43 .. :try_end_4c} :catchall_40
.catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_4c} :catch_4d
goto :goto_18
:catch_4d
move-exception v5
const/4 v5, -0x1
:try_start_4f
iput v5, p0, Lcom/google/android/gms/internal/ba;->k:I
goto :goto_18
:cond_52
new-instance v0, Lcom/google/android/gms/internal/bb;
iget-object v1, p0, Lcom/google/android/gms/internal/ba;->d:Lcom/google/android/gms/internal/aw;
iget-object v2, p0, Lcom/google/android/gms/internal/ba;->j:Lcom/google/android/gms/internal/bi;
iget-object v3, p0, Lcom/google/android/gms/internal/ba;->a:Ljava/lang/String;
iget v5, p0, Lcom/google/android/gms/internal/ba;->k:I
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/bb;-><init>(Lcom/google/android/gms/internal/aw;Lcom/google/android/gms/internal/bi;Ljava/lang/String;Lcom/google/android/gms/internal/az;I)V
monitor-exit v6
:try_end_60
.catchall {:try_start_4f .. :try_end_60} :catchall_40
return-object v0
.end method
.method public final a()V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/ba;->h:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->j:Lcom/google/android/gms/internal/bi;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->j:Lcom/google/android/gms/internal/bi;
invoke-interface {v0}, Lcom/google/android/gms/internal/bi;->c()V
:cond_c
:goto_c
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_1d
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_16
const/4 v0, -0x1
:try_start_d
iput v0, p0, Lcom/google/android/gms/internal/ba;->k:I
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->h:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v1
return-void
:catch_16
move-exception v0
const-string v2, "Could not destroy mediation adapter."
invoke-static {v2, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_1c
.catchall {:try_start_d .. :try_end_1c} :catchall_1d
goto :goto_c
:catchall_1d
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(I)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/ba;->h:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput p1, p0, Lcom/google/android/gms/internal/ba;->k:I
iget-object v0, p0, Lcom/google/android/gms/internal/ba;->h:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v1
:try_end_b
.catchall {:try_start_3 .. :try_end_b} :catchall_c
return-void
:catchall_c
move-exception v0
monitor-exit v1
throw v0
.end method