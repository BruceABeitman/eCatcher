.class  Lcom/google/android/gms/tagmanager/co;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/o$e;
.field private aeM:Ljava/lang/String;
.field private final aeq:Ljava/lang/String;
.field private agK:Lcom/google/android/gms/tagmanager/bg;
.field private agL:Lcom/google/android/gms/tagmanager/r;
.field private final agN:Ljava/util/concurrent/ScheduledExecutorService;
.field private final agO:Lcom/google/android/gms/tagmanager/co$a;
.field private agP:Ljava/util/concurrent/ScheduledFuture;
.field private mClosed:Z
.field private final mContext:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;)V
.registers 10
const/4 v4, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, v4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/co;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;Lcom/google/android/gms/tagmanager/co$b;Lcom/google/android/gms/tagmanager/co$a;)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;Lcom/google/android/gms/tagmanager/co$b;Lcom/google/android/gms/tagmanager/co$a;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p3, p0, Lcom/google/android/gms/tagmanager/co;->agL:Lcom/google/android/gms/tagmanager/r;
iput-object p1, p0, Lcom/google/android/gms/tagmanager/co;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/co;->aeq:Ljava/lang/String;
if-nez p4, :cond_10
new-instance p4, Lcom/google/android/gms/tagmanager/co$1;
invoke-direct {p4, p0}, Lcom/google/android/gms/tagmanager/co$1;-><init>(Lcom/google/android/gms/tagmanager/co;)V
:cond_10
invoke-interface {p4}, Lcom/google/android/gms/tagmanager/co$b;->mf()Ljava/util/concurrent/ScheduledExecutorService;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agN:Ljava/util/concurrent/ScheduledExecutorService;
if-nez p5, :cond_20
new-instance v0, Lcom/google/android/gms/tagmanager/co$2;
invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/co$2;-><init>(Lcom/google/android/gms/tagmanager/co;)V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agO:Lcom/google/android/gms/tagmanager/co$a;
:goto_1f
return-void
:cond_20
iput-object p5, p0, Lcom/google/android/gms/tagmanager/co;->agO:Lcom/google/android/gms/tagmanager/co$a;
goto :goto_1f
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/co;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic b(Lcom/google/android/gms/tagmanager/co;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->aeq:Ljava/lang/String;
return-object v0
.end method
.method private cc(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cn;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agO:Lcom/google/android/gms/tagmanager/co$a;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/co;->agL:Lcom/google/android/gms/tagmanager/r;
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/co$a;->a(Lcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/cn;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/co;->agK:Lcom/google/android/gms/tagmanager/bg;
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cn;->a(Lcom/google/android/gms/tagmanager/bg;)V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/co;->aeM:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cn;->bM(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cn;->cb(Ljava/lang/String;)V
return-object v0
.end method
.method private declared-synchronized me()V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/co;->mClosed:Z
if-eqz v0, :cond_10
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "called method after closed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_d
move-exception v0
monitor-exit p0
throw v0
:cond_10
monitor-exit p0
return-void
.end method
.method public declared-synchronized a(Lcom/google/android/gms/tagmanager/bg;)V
.registers 3
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/co;->me()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/co;->agK:Lcom/google/android/gms/tagmanager/bg;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized bM(Ljava/lang/String;)V
.registers 3
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/co;->me()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/co;->aeM:Ljava/lang/String;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized e(JLjava/lang/String;)V
.registers 7
monitor-enter p0
:try_start_1
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "loadAfterDelay: containerId="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/co;->aeq:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " delay="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/co;->me()V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agK:Lcom/google/android/gms/tagmanager/bg;
if-nez v0, :cond_35
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "callback must be set before loadAfterDelay() is called."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_32
.catchall {:try_start_1 .. :try_end_32} :catchall_32
:catchall_32
move-exception v0
monitor-exit p0
throw v0
:cond_35
:try_start_35
iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agP:Ljava/util/concurrent/ScheduledFuture;
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agP:Ljava/util/concurrent/ScheduledFuture;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
:cond_3f
iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agN:Ljava/util/concurrent/ScheduledExecutorService;
invoke-direct {p0, p3}, Lcom/google/android/gms/tagmanager/co;->cc(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cn;
move-result-object v1
sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agP:Ljava/util/concurrent/ScheduledFuture;
:try_end_4d
.catchall {:try_start_35 .. :try_end_4d} :catchall_32
monitor-exit p0
return-void
.end method
.method public declared-synchronized release()V
.registers 3
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/co;->me()V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agP:Ljava/util/concurrent/ScheduledFuture;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agP:Ljava/util/concurrent/ScheduledFuture;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
:cond_e
iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agN:Ljava/util/concurrent/ScheduledExecutorService;
invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/co;->mClosed:Z
:try_end_16
.catchall {:try_start_1 .. :try_end_16} :catchall_18
monitor-exit p0
return-void
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method