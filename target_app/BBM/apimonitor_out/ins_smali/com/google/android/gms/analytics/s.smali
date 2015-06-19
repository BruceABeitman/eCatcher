.class  Lcom/google/android/gms/analytics/s;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/analytics/ag;
.implements Lcom/google/android/gms/analytics/c$b;
.implements Lcom/google/android/gms/analytics/c$c;
.field private final mContext:Landroid/content/Context;
.field private final rA:Lcom/google/android/gms/analytics/GoogleAnalytics;
.field private final rB:Ljava/util/Queue;
.field private volatile rC:I
.field private volatile rD:Ljava/util/Timer;
.field private volatile rE:Ljava/util/Timer;
.field private volatile rF:Ljava/util/Timer;
.field private rG:Z
.field private rH:Z
.field private rI:Z
.field private rJ:Lcom/google/android/gms/analytics/i;
.field private rK:J
.field private rj:Lcom/google/android/gms/analytics/d;
.field private final rk:Lcom/google/android/gms/analytics/f;
.field private rm:Z
.field private volatile rw:J
.field private volatile rx:Lcom/google/android/gms/analytics/s$a;
.field private volatile ry:Lcom/google/android/gms/analytics/b;
.field private rz:Lcom/google/android/gms/analytics/d;
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;)V
.registers 5
const/4 v0, 0x0
invoke-static {p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
move-result-object v1
invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/analytics/s;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;Lcom/google/android/gms/analytics/d;Lcom/google/android/gms/analytics/GoogleAnalytics;)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;Lcom/google/android/gms/analytics/d;Lcom/google/android/gms/analytics/GoogleAnalytics;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rB:Ljava/util/Queue;
const-wide/32 v0, 0x493e0
iput-wide v0, p0, Lcom/google/android/gms/analytics/s;->rK:J
iput-object p3, p0, Lcom/google/android/gms/analytics/s;->rz:Lcom/google/android/gms/analytics/d;
iput-object p1, p0, Lcom/google/android/gms/analytics/s;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/analytics/s;->rk:Lcom/google/android/gms/analytics/f;
iput-object p4, p0, Lcom/google/android/gms/analytics/s;->rA:Lcom/google/android/gms/analytics/GoogleAnalytics;
new-instance v0, Lcom/google/android/gms/analytics/s$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/s$1;-><init>(Lcom/google/android/gms/analytics/s;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rJ:Lcom/google/android/gms/analytics/i;
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/analytics/s;->rC:I
sget-object v0, Lcom/google/android/gms/analytics/s$a;->rT:Lcom/google/android/gms/analytics/s$a;
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
return-void
.end method
.method private a(Ljava/util/Timer;)Ljava/util/Timer;
.registers 3
if-eqz p1, :cond_5
invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
:cond_5
const/4 v0, 0x0
return-object v0
.end method
.method static synthetic a(Lcom/google/android/gms/analytics/s;)V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bJ()V
return-void
.end method
.method private declared-synchronized aD()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->ry:Lcom/google/android/gms/analytics/b;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
sget-object v1, Lcom/google/android/gms/analytics/s$a;->rO:Lcom/google/android/gms/analytics/s$a;
if-ne v0, v1, :cond_14
sget-object v0, Lcom/google/android/gms/analytics/s$a;->rS:Lcom/google/android/gms/analytics/s$a;
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->ry:Lcom/google/android/gms/analytics/b;
invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->disconnect()V
:try_end_14
.catchall {:try_start_1 .. :try_end_14} :catchall_16
:cond_14
monitor-exit p0
return-void
:catchall_16
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic b(Lcom/google/android/gms/analytics/s;)Lcom/google/android/gms/analytics/s$a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
return-object v0
.end method
.method private bH()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rD:Ljava/util/Timer;
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rD:Ljava/util/Timer;
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rE:Ljava/util/Timer;
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rE:Ljava/util/Timer;
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rF:Ljava/util/Timer;
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rF:Ljava/util/Timer;
return-void
.end method
.method private declared-synchronized bJ()V
.registers 8
monitor-enter p0
:try_start_1
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/analytics/s;->rk:Lcom/google/android/gms/analytics/f;
invoke-interface {v2}, Lcom/google/android/gms/analytics/f;->getThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_21
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->rk:Lcom/google/android/gms/analytics/f;
invoke-interface {v1}, Lcom/google/android/gms/analytics/f;->bs()Ljava/util/concurrent/LinkedBlockingQueue;
move-result-object v1
new-instance v2, Lcom/google/android/gms/analytics/s$2;
invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/s$2;-><init>(Lcom/google/android/gms/analytics/s;)V
invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
:try_end_1f
.catchall {:try_start_1 .. :try_end_1f} :catchall_70
:goto_1f
:cond_1f
monitor-exit p0
return-void
:cond_21
:try_start_21
iget-boolean v1, p0, Lcom/google/android/gms/analytics/s;->rG:Z
if-eqz v1, :cond_28
invoke-virtual {p0}, Lcom/google/android/gms/analytics/s;->bk()V
:cond_28
sget-object v1, Lcom/google/android/gms/analytics/s$3;->rM:[I
iget-object v2, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
invoke-virtual {v2}, Lcom/google/android/gms/analytics/s$a;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_e4
:pswitch_35
goto :goto_1f
:goto_36
:pswitch_36
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->rB:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z
move-result v1
if-nez v1, :cond_73
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->rB:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Lcom/google/android/gms/analytics/s$d;
move-object v6, v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Sending hit to store  "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->rj:Lcom/google/android/gms/analytics/d;
invoke-virtual {v6}, Lcom/google/android/gms/analytics/s$d;->bO()Ljava/util/Map;
move-result-object v2
invoke-virtual {v6}, Lcom/google/android/gms/analytics/s$d;->bP()J
move-result-wide v3
invoke-virtual {v6}, Lcom/google/android/gms/analytics/s$d;->getPath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v6}, Lcom/google/android/gms/analytics/s$d;->bQ()Ljava/util/List;
move-result-object v6
invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
:try_end_6f
.catchall {:try_start_21 .. :try_end_6f} :catchall_70
goto :goto_36
:catchall_70
move-exception v1
monitor-exit p0
throw v1
:cond_73
:try_start_73
iget-boolean v1, p0, Lcom/google/android/gms/analytics/s;->rm:Z
if-eqz v1, :cond_1f
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bK()V
goto :goto_1f
:pswitch_7b
:goto_7b
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->rB:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z
move-result v1
if-nez v1, :cond_c8
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->rB:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Lcom/google/android/gms/analytics/s$d;
move-object v6, v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Sending hit to service   "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->rA:Lcom/google/android/gms/analytics/GoogleAnalytics;
invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isDryRunEnabled()Z
move-result v1
if-nez v1, :cond_c2
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->ry:Lcom/google/android/gms/analytics/b;
invoke-virtual {v6}, Lcom/google/android/gms/analytics/s$d;->bO()Ljava/util/Map;
move-result-object v2
invoke-virtual {v6}, Lcom/google/android/gms/analytics/s$d;->bP()J
move-result-wide v3
invoke-virtual {v6}, Lcom/google/android/gms/analytics/s$d;->getPath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v6}, Lcom/google/android/gms/analytics/s$d;->bQ()Ljava/util/List;
move-result-object v6
invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/analytics/b;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
:goto_bc
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->rB:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;
goto :goto_7b
:cond_c2
const-string v1, "Dry run enabled. Hit not actually sent to service."
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
goto :goto_bc
:cond_c8
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->rJ:Lcom/google/android/gms/analytics/i;
invoke-interface {v1}, Lcom/google/android/gms/analytics/i;->currentTimeMillis()J
move-result-wide v1
iput-wide v1, p0, Lcom/google/android/gms/analytics/s;->rw:J
goto/16 :goto_1f
:pswitch_d2
const-string v1, "Need to reconnect"
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->rB:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z
move-result v1
if-nez v1, :cond_1f
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bM()V
:try_end_e2
.catchall {:try_start_73 .. :try_end_e2} :catchall_70
goto/16 :goto_1f
:pswitch_data_e4
.packed-switch 0x1
:pswitch_36
:pswitch_7b
:pswitch_35
:pswitch_35
:pswitch_35
:pswitch_d2
.end packed-switch
.end method
.method private bK()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rj:Lcom/google/android/gms/analytics/d;
invoke-interface {v0}, Lcom/google/android/gms/analytics/d;->bp()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/analytics/s;->rm:Z
return-void
.end method
.method private declared-synchronized bL()V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
sget-object v1, Lcom/google/android/gms/analytics/s$a;->rP:Lcom/google/android/gms/analytics/s$a;
:try_end_5
.catchall {:try_start_1 .. :try_end_5} :catchall_21
if-ne v0, v1, :cond_9
:goto_7
monitor-exit p0
return-void
:try_start_9
:cond_9
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bH()V
const-string v0, "falling back to local store"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rz:Lcom/google/android/gms/analytics/d;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rz:Lcom/google/android/gms/analytics/d;
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rj:Lcom/google/android/gms/analytics/d;
:goto_19
sget-object v0, Lcom/google/android/gms/analytics/s$a;->rP:Lcom/google/android/gms/analytics/s$a;
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bJ()V
:try_end_20
.catchall {:try_start_9 .. :try_end_20} :catchall_21
goto :goto_7
:catchall_21
move-exception v0
monitor-exit p0
throw v0
:cond_24
:try_start_24
invoke-static {}, Lcom/google/android/gms/analytics/r;->bB()Lcom/google/android/gms/analytics/r;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->mContext:Landroid/content/Context;
iget-object v2, p0, Lcom/google/android/gms/analytics/s;->rk:Lcom/google/android/gms/analytics/f;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/r;->a(Landroid/content/Context;Lcom/google/android/gms/analytics/f;)V
invoke-virtual {v0}, Lcom/google/android/gms/analytics/r;->bE()Lcom/google/android/gms/analytics/d;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rj:Lcom/google/android/gms/analytics/d;
:try_end_35
.catchall {:try_start_24 .. :try_end_35} :catchall_21
goto :goto_19
.end method
.method private declared-synchronized bM()V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/analytics/s;->rI:Z
if-nez v0, :cond_4d
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->ry:Lcom/google/android/gms/analytics/b;
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
sget-object v1, Lcom/google/android/gms/analytics/s$a;->rP:Lcom/google/android/gms/analytics/s$a;
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_4a
if-eq v0, v1, :cond_4d
:try_start_f
iget v0, p0, Lcom/google/android/gms/analytics/s;->rC:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/android/gms/analytics/s;->rC:I
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rE:Ljava/util/Timer;
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;
sget-object v0, Lcom/google/android/gms/analytics/s$a;->rN:Lcom/google/android/gms/analytics/s$a;
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
new-instance v0, Ljava/util/Timer;
const-string v1, "Failed Connect"
invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rE:Ljava/util/Timer;
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rE:Ljava/util/Timer;
new-instance v1, Lcom/google/android/gms/analytics/s$c;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/s$c;-><init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/s$1;)V
const-wide/16 v2, 0xbb8
invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
const-string v0, "connecting to Analytics service"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->ry:Lcom/google/android/gms/analytics/b;
invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->connect()V
:try_end_3e
.catchall {:try_start_f .. :try_end_3e} :catchall_4a
.catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_3e} :catch_40
:goto_3e
monitor-exit p0
return-void
:catch_40
move-exception v0
:try_start_41
const-string v0, "security exception on connectToService"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->w(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bL()V
:try_end_49
.catchall {:try_start_41 .. :try_end_49} :catchall_4a
goto :goto_3e
:catchall_4a
move-exception v0
monitor-exit p0
throw v0
:cond_4d
:try_start_4d
const-string v0, "client not initialized."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->w(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bL()V
:try_end_55
.catchall {:try_start_4d .. :try_end_55} :catchall_4a
goto :goto_3e
.end method
.method private bN()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rD:Ljava/util/Timer;
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rD:Ljava/util/Timer;
new-instance v0, Ljava/util/Timer;
const-string v1, "Service Reconnect"
invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rD:Ljava/util/Timer;
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rD:Ljava/util/Timer;
new-instance v1, Lcom/google/android/gms/analytics/s$e;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/s$e;-><init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/s$1;)V
const-wide/16 v2, 0x1388
invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
return-void
.end method
.method static synthetic c(Lcom/google/android/gms/analytics/s;)V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bL()V
return-void
.end method
.method static synthetic d(Lcom/google/android/gms/analytics/s;)V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bM()V
return-void
.end method
.method static synthetic e(Lcom/google/android/gms/analytics/s;)Ljava/util/Queue;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rB:Ljava/util/Queue;
return-object v0
.end method
.method static synthetic f(Lcom/google/android/gms/analytics/s;)J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/analytics/s;->rw:J
return-wide v0
.end method
.method static synthetic g(Lcom/google/android/gms/analytics/s;)J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/analytics/s;->rK:J
return-wide v0
.end method
.method static synthetic h(Lcom/google/android/gms/analytics/s;)Lcom/google/android/gms/analytics/i;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rJ:Lcom/google/android/gms/analytics/i;
return-object v0
.end method
.method static synthetic i(Lcom/google/android/gms/analytics/s;)V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->aD()V
return-void
.end method
.method static synthetic j(Lcom/google/android/gms/analytics/s;)Ljava/util/Timer;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rF:Ljava/util/Timer;
return-object v0
.end method
.method public declared-synchronized a(ILandroid/content/Intent;)V
.registers 5
monitor-enter p0
:try_start_1
sget-object v0, Lcom/google/android/gms/analytics/s$a;->rR:Lcom/google/android/gms/analytics/s$a;
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
iget v0, p0, Lcom/google/android/gms/analytics/s;->rC:I
const/4 v1, 0x2
if-ge v0, v1, :cond_27
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Service unavailable (code="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "), will retry."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->w(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bN()V
:goto_25
:try_end_25
.catchall {:try_start_1 .. :try_end_25} :catchall_43
monitor-exit p0
return-void
:cond_27
:try_start_27
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Service unavailable (code="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "), using local store."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->w(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bL()V
:try_end_42
.catchall {:try_start_27 .. :try_end_42} :catchall_43
goto :goto_25
:catchall_43
move-exception v0
monitor-exit p0
throw v0
.end method
.method public b(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
.registers 13
const-string v0, "putHit called"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
iget-object v6, p0, Lcom/google/android/gms/analytics/s;->rB:Ljava/util/Queue;
new-instance v0, Lcom/google/android/gms/analytics/s$d;
move-object v1, p1
move-wide v2, p2
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/analytics/s$d;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bJ()V
return-void
.end method
.method public bI()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->ry:Lcom/google/android/gms/analytics/b;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
new-instance v0, Lcom/google/android/gms/analytics/c;
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->mContext:Landroid/content/Context;
invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/analytics/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/c$b;Lcom/google/android/gms/analytics/c$c;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->ry:Lcom/google/android/gms/analytics/b;
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bM()V
goto :goto_4
.end method
.method public bk()V
.registers 5
const/4 v3, 0x0
const-string v0, "clearHits called"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rB:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->clear()V
sget-object v0, Lcom/google/android/gms/analytics/s$3;->rM:[I
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
invoke-virtual {v1}, Lcom/google/android/gms/analytics/s$a;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_2e
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/analytics/s;->rG:Z
:goto_1b
return-void
:pswitch_1c
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rj:Lcom/google/android/gms/analytics/d;
const-wide/16 v1, 0x0
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/analytics/d;->i(J)V
iput-boolean v3, p0, Lcom/google/android/gms/analytics/s;->rG:Z
goto :goto_1b
:pswitch_26
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->ry:Lcom/google/android/gms/analytics/b;
invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->bk()V
iput-boolean v3, p0, Lcom/google/android/gms/analytics/s;->rG:Z
goto :goto_1b
:pswitch_data_2e
.packed-switch 0x1
:pswitch_1c
:pswitch_26
.end packed-switch
.end method
.method public bp()V
.registers 3
sget-object v0, Lcom/google/android/gms/analytics/s$3;->rM:[I
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
invoke-virtual {v1}, Lcom/google/android/gms/analytics/s$a;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_16
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/analytics/s;->rm:Z
:goto_10
:pswitch_10
return-void
:pswitch_11
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bK()V
goto :goto_10
nop
:pswitch_data_16
.packed-switch 0x1
:pswitch_11
:pswitch_10
.end packed-switch
.end method
.method public declared-synchronized br()V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/analytics/s;->rI:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_21
if-eqz v0, :cond_7
:goto_5
:pswitch_5
monitor-exit p0
return-void
:try_start_7
:cond_7
const-string v0, "setForceLocalDispatch called."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/analytics/s;->rI:Z
sget-object v0, Lcom/google/android/gms/analytics/s$3;->rM:[I
iget-object v1, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
invoke-virtual {v1}, Lcom/google/android/gms/analytics/s$a;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_28
goto :goto_5
:pswitch_1d
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->aD()V
:try_end_20
.catchall {:try_start_7 .. :try_end_20} :catchall_21
goto :goto_5
:catchall_21
move-exception v0
monitor-exit p0
throw v0
:pswitch_24
const/4 v0, 0x1
:try_start_25
iput-boolean v0, p0, Lcom/google/android/gms/analytics/s;->rH:Z
:try_end_27
.catchall {:try_start_25 .. :try_end_27} :catchall_21
goto :goto_5
:pswitch_data_28
.packed-switch 0x1
:pswitch_5
:pswitch_1d
:pswitch_24
.end packed-switch
.end method
.method public declared-synchronized onConnected()V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rE:Ljava/util/Timer;
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rE:Ljava/util/Timer;
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/analytics/s;->rC:I
const-string v0, "Connected to service"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/analytics/s$a;->rO:Lcom/google/android/gms/analytics/s$a;
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
iget-boolean v0, p0, Lcom/google/android/gms/analytics/s;->rH:Z
if-eqz v0, :cond_21
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->aD()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/analytics/s;->rH:Z
:goto_1f
:try_end_1f
.catchall {:try_start_1 .. :try_end_1f} :catchall_43
monitor-exit p0
return-void
:cond_21
:try_start_21
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bJ()V
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rF:Ljava/util/Timer;
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rF:Ljava/util/Timer;
new-instance v0, Ljava/util/Timer;
const-string v1, "disconnect check"
invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rF:Ljava/util/Timer;
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rF:Ljava/util/Timer;
new-instance v1, Lcom/google/android/gms/analytics/s$b;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/s$b;-><init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/s$1;)V
iget-wide v2, p0, Lcom/google/android/gms/analytics/s;->rK:J
invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
:try_end_42
.catchall {:try_start_21 .. :try_end_42} :catchall_43
goto :goto_1f
:catchall_43
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized onDisconnected()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
sget-object v1, Lcom/google/android/gms/analytics/s$a;->rS:Lcom/google/android/gms/analytics/s$a;
if-ne v0, v1, :cond_15
const-string v0, "Disconnected from service"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bH()V
sget-object v0, Lcom/google/android/gms/analytics/s$a;->rT:Lcom/google/android/gms/analytics/s$a;
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
:goto_13
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_27
monitor-exit p0
return-void
:cond_15
:try_start_15
const-string v0, "Unexpected disconnect."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/analytics/s$a;->rR:Lcom/google/android/gms/analytics/s$a;
iput-object v0, p0, Lcom/google/android/gms/analytics/s;->rx:Lcom/google/android/gms/analytics/s$a;
iget v0, p0, Lcom/google/android/gms/analytics/s;->rC:I
const/4 v1, 0x2
if-ge v0, v1, :cond_2a
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bN()V
:try_end_26
.catchall {:try_start_15 .. :try_end_26} :catchall_27
goto :goto_13
:catchall_27
move-exception v0
monitor-exit p0
throw v0
:try_start_2a
:cond_2a
invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bL()V
:try_end_2d
.catchall {:try_start_2a .. :try_end_2d} :catchall_27
goto :goto_13
.end method