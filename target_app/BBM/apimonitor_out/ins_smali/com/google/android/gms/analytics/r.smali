.class  Lcom/google/android/gms/analytics/r;
.super Lcom/google/android/gms/analytics/af;
.field private static final ri:Ljava/lang/Object;
.field private static ru:Lcom/google/android/gms/analytics/r;
.field private mContext:Landroid/content/Context;
.field private mHandler:Landroid/os/Handler;
.field private rj:Lcom/google/android/gms/analytics/d;
.field private volatile rk:Lcom/google/android/gms/analytics/f;
.field private rl:I
.field private rm:Z
.field private rn:Z
.field private ro:Ljava/lang/String;
.field private rp:Z
.field private rq:Z
.field private rr:Lcom/google/android/gms/analytics/e;
.field private rs:Lcom/google/android/gms/analytics/q;
.field private rt:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/android/gms/analytics/r;->ri:Ljava/lang/Object;
return-void
.end method
.method private constructor <init>()V
.registers 3
const/4 v1, 0x1
invoke-direct {p0}, Lcom/google/android/gms/analytics/af;-><init>()V
const/16 v0, 0x708
iput v0, p0, Lcom/google/android/gms/analytics/r;->rl:I
iput-boolean v1, p0, Lcom/google/android/gms/analytics/r;->rm:Z
iput-boolean v1, p0, Lcom/google/android/gms/analytics/r;->rp:Z
iput-boolean v1, p0, Lcom/google/android/gms/analytics/r;->rq:Z
new-instance v0, Lcom/google/android/gms/analytics/r$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/r$1;-><init>(Lcom/google/android/gms/analytics/r;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/r;->rr:Lcom/google/android/gms/analytics/e;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rt:Z
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/analytics/r;)Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rp:Z
return v0
.end method
.method static synthetic b(Lcom/google/android/gms/analytics/r;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/analytics/r;->rl:I
return v0
.end method
.method public static bB()Lcom/google/android/gms/analytics/r;
.registers 1
sget-object v0, Lcom/google/android/gms/analytics/r;->ru:Lcom/google/android/gms/analytics/r;
if-nez v0, :cond_b
new-instance v0, Lcom/google/android/gms/analytics/r;
invoke-direct {v0}, Lcom/google/android/gms/analytics/r;-><init>()V
sput-object v0, Lcom/google/android/gms/analytics/r;->ru:Lcom/google/android/gms/analytics/r;
:cond_b
sget-object v0, Lcom/google/android/gms/analytics/r;->ru:Lcom/google/android/gms/analytics/r;
return-object v0
.end method
.method private bC()V
.registers 3
new-instance v0, Lcom/google/android/gms/analytics/q;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/q;-><init>(Lcom/google/android/gms/analytics/af;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/r;->rs:Lcom/google/android/gms/analytics/q;
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->rs:Lcom/google/android/gms/analytics/q;
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/q;->o(Landroid/content/Context;)V
return-void
.end method
.method private bD()V
.registers 5
new-instance v0, Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v1
new-instance v2, Lcom/google/android/gms/analytics/r$2;
invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/r$2;-><init>(Lcom/google/android/gms/analytics/r;)V
invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
iget v0, p0, Lcom/google/android/gms/analytics/r;->rl:I
if-lez v0, :cond_29
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
const/4 v2, 0x1
sget-object v3, Lcom/google/android/gms/analytics/r;->ri:Ljava/lang/Object;
invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
iget v2, p0, Lcom/google/android/gms/analytics/r;->rl:I
mul-int/lit16 v2, v2, 0x3e8
int-to-long v2, v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_29
return-void
.end method
.method static synthetic bG()Ljava/lang/Object;
.registers 1
sget-object v0, Lcom/google/android/gms/analytics/r;->ri:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic c(Lcom/google/android/gms/analytics/r;)Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rt:Z
return v0
.end method
.method static synthetic d(Lcom/google/android/gms/analytics/r;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method declared-synchronized a(Landroid/content/Context;Lcom/google/android/gms/analytics/f;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_28
if-eqz v0, :cond_7
:goto_5
:cond_5
monitor-exit p0
return-void
:try_start_7
:cond_7
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->rk:Lcom/google/android/gms/analytics/f;
if-nez v0, :cond_5
iput-object p2, p0, Lcom/google/android/gms/analytics/r;->rk:Lcom/google/android/gms/analytics/f;
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rm:Z
if-eqz v0, :cond_1d
invoke-virtual {p0}, Lcom/google/android/gms/analytics/r;->dispatchLocalHits()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rm:Z
:cond_1d
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rn:Z
if-eqz v0, :cond_5
invoke-virtual {p0}, Lcom/google/android/gms/analytics/r;->br()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rn:Z
:try_end_27
.catchall {:try_start_7 .. :try_end_27} :catchall_28
goto :goto_5
:catchall_28
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized a(ZZ)V
.registers 7
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rt:Z
if-ne v0, p1, :cond_b
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rp:Z
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_53
if-ne v0, p2, :cond_b
:goto_9
monitor-exit p0
return-void
:cond_b
if-nez p1, :cond_f
if-nez p2, :cond_1b
:cond_f
:try_start_f
iget v0, p0, Lcom/google/android/gms/analytics/r;->rl:I
if-lez v0, :cond_1b
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
const/4 v1, 0x1
sget-object v2, Lcom/google/android/gms/analytics/r;->ri:Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
:cond_1b
if-nez p1, :cond_36
if-eqz p2, :cond_36
iget v0, p0, Lcom/google/android/gms/analytics/r;->rl:I
if-lez v0, :cond_36
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
const/4 v2, 0x1
sget-object v3, Lcom/google/android/gms/analytics/r;->ri:Ljava/lang/Object;
invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
iget v2, p0, Lcom/google/android/gms/analytics/r;->rl:I
mul-int/lit16 v2, v2, 0x3e8
int-to-long v2, v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_36
new-instance v1, Ljava/lang/StringBuilder;
const-string v0, "PowerSaveMode "
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
if-nez p1, :cond_41
if-nez p2, :cond_56
:cond_41
const-string v0, "initiated."
:goto_43
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
iput-boolean p1, p0, Lcom/google/android/gms/analytics/r;->rt:Z
iput-boolean p2, p0, Lcom/google/android/gms/analytics/r;->rp:Z
:try_end_52
.catchall {:try_start_f .. :try_end_52} :catchall_53
goto :goto_9
:catchall_53
move-exception v0
monitor-exit p0
throw v0
:try_start_56
:cond_56
const-string v0, "terminated."
:try_end_58
.catchall {:try_start_56 .. :try_end_58} :catchall_53
goto :goto_43
.end method
.method declared-synchronized bE()Lcom/google/android/gms/analytics/d;
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->rj:Lcom/google/android/gms/analytics/d;
if-nez v0, :cond_31
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;
if-nez v0, :cond_14
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cant get a store unless we have a context"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_11
:catchall_11
move-exception v0
monitor-exit p0
throw v0
:cond_14
:try_start_14
new-instance v0, Lcom/google/android/gms/analytics/ac;
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->rr:Lcom/google/android/gms/analytics/e;
iget-object v2, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/ac;-><init>(Lcom/google/android/gms/analytics/e;Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/r;->rj:Lcom/google/android/gms/analytics/d;
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->ro:Ljava/lang/String;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->rj:Lcom/google/android/gms/analytics/d;
invoke-interface {v0}, Lcom/google/android/gms/analytics/d;->bq()Lcom/google/android/gms/analytics/n;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->ro:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/n;->A(Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/analytics/r;->ro:Ljava/lang/String;
:cond_31
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
if-nez v0, :cond_38
invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->bD()V
:cond_38
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->rs:Lcom/google/android/gms/analytics/q;
if-nez v0, :cond_43
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rq:Z
if-eqz v0, :cond_43
invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->bC()V
:cond_43
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->rj:Lcom/google/android/gms/analytics/d;
:try_end_45
.catchall {:try_start_14 .. :try_end_45} :catchall_11
monitor-exit p0
return-object v0
.end method
.method declared-synchronized bF()V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rt:Z
if-nez v0, :cond_23
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rp:Z
if-eqz v0, :cond_23
iget v0, p0, Lcom/google/android/gms/analytics/r;->rl:I
if-lez v0, :cond_23
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
const/4 v1, 0x1
sget-object v2, Lcom/google/android/gms/analytics/r;->ri:Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
const/4 v2, 0x1
sget-object v3, Lcom/google/android/gms/analytics/r;->ri:Ljava/lang/Object;
invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:cond_23
:try_end_23
.catchall {:try_start_1 .. :try_end_23} :catchall_25
monitor-exit p0
return-void
:catchall_25
move-exception v0
monitor-exit p0
throw v0
.end method
.method  br()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->rk:Lcom/google/android/gms/analytics/f;
if-nez v0, :cond_d
const-string v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rn:Z
:goto_c
return-void
:cond_d
invoke-static {}, Lcom/google/android/gms/analytics/u;->bR()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/u$a;->tq:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->rk:Lcom/google/android/gms/analytics/f;
invoke-interface {v0}, Lcom/google/android/gms/analytics/f;->br()V
goto :goto_c
.end method
.method declared-synchronized dispatchLocalHits()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->rk:Lcom/google/android/gms/analytics/f;
if-nez v0, :cond_f
const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rm:Z
:goto_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_1e
monitor-exit p0
return-void
:cond_f
:try_start_f
invoke-static {}, Lcom/google/android/gms/analytics/u;->bR()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/u$a;->td:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->rk:Lcom/google/android/gms/analytics/f;
invoke-interface {v0}, Lcom/google/android/gms/analytics/f;->bp()V
:try_end_1d
.catchall {:try_start_f .. :try_end_1d} :catchall_1e
goto :goto_d
:catchall_1e
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized q(Z)V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rt:Z
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(ZZ)V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized setLocalDispatchPeriod(I)V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
if-nez v0, :cond_e
const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V
iput p1, p0, Lcom/google/android/gms/analytics/r;->rl:I
:goto_c
:cond_c
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_49
monitor-exit p0
return-void
:cond_e
:try_start_e
invoke-static {}, Lcom/google/android/gms/analytics/u;->bR()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/u$a;->te:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rt:Z
if-nez v0, :cond_2b
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rp:Z
if-eqz v0, :cond_2b
iget v0, p0, Lcom/google/android/gms/analytics/r;->rl:I
if-lez v0, :cond_2b
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
const/4 v1, 0x1
sget-object v2, Lcom/google/android/gms/analytics/r;->ri:Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
:cond_2b
iput p1, p0, Lcom/google/android/gms/analytics/r;->rl:I
if-lez p1, :cond_c
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rt:Z
if-nez v0, :cond_c
iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->rp:Z
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;
const/4 v2, 0x1
sget-object v3, Lcom/google/android/gms/analytics/r;->ri:Ljava/lang/Object;
invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
mul-int/lit16 v2, p1, 0x3e8
int-to-long v2, v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:try_end_48
.catchall {:try_start_e .. :try_end_48} :catchall_49
goto :goto_c
:catchall_49
move-exception v0
monitor-exit p0
throw v0
.end method