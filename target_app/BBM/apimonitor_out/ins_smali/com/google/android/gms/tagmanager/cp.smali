.class  Lcom/google/android/gms/tagmanager/cp;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/o$e;
.field private final TM:Ljava/lang/String;
.field private Ui:Ljava/lang/String;
.field private Wi:Lcom/google/android/gms/tagmanager/bg;
.field private Wj:Lcom/google/android/gms/tagmanager/r;
.field private final Wl:Ljava/util/concurrent/ScheduledExecutorService;
.field private final Wm:Lcom/google/android/gms/tagmanager/cp$a;
.field private Wn:Ljava/util/concurrent/ScheduledFuture;
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
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/cp;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;Lcom/google/android/gms/tagmanager/cp$b;Lcom/google/android/gms/tagmanager/cp$a;)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;Lcom/google/android/gms/tagmanager/cp$b;Lcom/google/android/gms/tagmanager/cp$a;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p3, p0, Lcom/google/android/gms/tagmanager/cp;->Wj:Lcom/google/android/gms/tagmanager/r;
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cp;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/cp;->TM:Ljava/lang/String;
if-nez p4, :cond_10
new-instance p4, Lcom/google/android/gms/tagmanager/cp$1;
invoke-direct {p4, p0}, Lcom/google/android/gms/tagmanager/cp$1;-><init>(Lcom/google/android/gms/tagmanager/cp;)V
:cond_10
invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cp$b;->jB()Ljava/util/concurrent/ScheduledExecutorService;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->Wl:Ljava/util/concurrent/ScheduledExecutorService;
if-nez p5, :cond_20
new-instance v0, Lcom/google/android/gms/tagmanager/cp$2;
invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/cp$2;-><init>(Lcom/google/android/gms/tagmanager/cp;)V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->Wm:Lcom/google/android/gms/tagmanager/cp$a;
:goto_1f
return-void
:cond_20
iput-object p5, p0, Lcom/google/android/gms/tagmanager/cp;->Wm:Lcom/google/android/gms/tagmanager/cp$a;
goto :goto_1f
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/cp;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic b(Lcom/google/android/gms/tagmanager/cp;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->TM:Ljava/lang/String;
return-object v0
.end method
.method private bv(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/co;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->Wm:Lcom/google/android/gms/tagmanager/cp$a;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cp;->Wj:Lcom/google/android/gms/tagmanager/r;
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/cp$a;->a(Lcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/co;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cp;->Wi:Lcom/google/android/gms/tagmanager/bg;
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/co;->a(Lcom/google/android/gms/tagmanager/bg;)V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cp;->Ui:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/co;->bf(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/co;->bu(Ljava/lang/String;)V
return-object v0
.end method
.method private declared-synchronized jA()V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cp;->mClosed:Z
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
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cp;->jA()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cp;->Wi:Lcom/google/android/gms/tagmanager/bg;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized bf(Ljava/lang/String;)V
.registers 3
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cp;->jA()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cp;->Ui:Ljava/lang/String;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized d(JLjava/lang/String;)V
.registers 7
monitor-enter p0
:try_start_1
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "loadAfterDelay: containerId="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cp;->TM:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " delay="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->v(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cp;->jA()V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->Wi:Lcom/google/android/gms/tagmanager/bg;
if-nez v0, :cond_31
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "callback must be set before loadAfterDelay() is called."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_2e
.catchall {:try_start_1 .. :try_end_2e} :catchall_2e
:catchall_2e
move-exception v0
monitor-exit p0
throw v0
:cond_31
:try_start_31
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->Wn:Ljava/util/concurrent/ScheduledFuture;
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->Wn:Ljava/util/concurrent/ScheduledFuture;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
:cond_3b
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->Wl:Ljava/util/concurrent/ScheduledExecutorService;
invoke-direct {p0, p3}, Lcom/google/android/gms/tagmanager/cp;->bv(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/co;
move-result-object v1
sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->Wn:Ljava/util/concurrent/ScheduledFuture;
:try_end_49
.catchall {:try_start_31 .. :try_end_49} :catchall_2e
monitor-exit p0
return-void
.end method
.method public declared-synchronized release()V
.registers 3
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cp;->jA()V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->Wn:Ljava/util/concurrent/ScheduledFuture;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->Wn:Ljava/util/concurrent/ScheduledFuture;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
:cond_e
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->Wl:Ljava/util/concurrent/ScheduledExecutorService;
invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/cp;->mClosed:Z
:try_end_16
.catchall {:try_start_1 .. :try_end_16} :catchall_18
monitor-exit p0
return-void
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method