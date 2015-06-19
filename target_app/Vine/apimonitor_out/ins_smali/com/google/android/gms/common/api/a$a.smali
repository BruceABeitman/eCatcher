.class public abstract Lcom/google/android/gms/common/api/a$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/PendingResult;
.implements Lcom/google/android/gms/common/api/a$d;
.field private final Dm:Ljava/lang/Object;
.field private Dn:Lcom/google/android/gms/common/api/a$c;
.field private final Do:Ljava/util/ArrayList;
.field private Dp:Lcom/google/android/gms/common/api/ResultCallback;
.field private volatile Dq:Lcom/google/android/gms/common/api/Result;
.field private volatile Dr:Z
.field private Ds:Z
.field private Dt:Z
.field private Du:Lcom/google/android/gms/internal/hh;
.field private final kI:Ljava/util/concurrent/CountDownLatch;
.method constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dm:Ljava/lang/Object;
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kI:Ljava/util/concurrent/CountDownLatch;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Do:Ljava/util/ArrayList;
return-void
.end method
.method public constructor <init>(Landroid/os/Looper;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dm:Ljava/lang/Object;
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kI:Ljava/util/concurrent/CountDownLatch;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Do:Ljava/util/ArrayList;
new-instance v0, Lcom/google/android/gms/common/api/a$c;
invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/a$c;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dn:Lcom/google/android/gms/common/api/a$c;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/common/api/a$c;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dm:Ljava/lang/Object;
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kI:Ljava/util/concurrent/CountDownLatch;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Do:Ljava/util/ArrayList;
iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->Dn:Lcom/google/android/gms/common/api/a$c;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/common/api/a$a;)V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eA()V
return-void
.end method
.method private c(Lcom/google/android/gms/common/api/Result;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/Result;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Du:Lcom/google/android/gms/internal/hh;
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kI:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/Result;
invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;
move-result-object v1
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Lcom/google/android/gms/common/api/ResultCallback;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dn:Lcom/google/android/gms/common/api/a$c;
invoke-virtual {v0}, Lcom/google/android/gms/common/api/a$c;->eC()V
iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Ds:Z
if-nez v0, :cond_28
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dn:Lcom/google/android/gms/common/api/a$c;
iget-object v2, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Lcom/google/android/gms/common/api/ResultCallback;
invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ex()Lcom/google/android/gms/common/api/Result;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
:cond_28
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Do:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_2e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/PendingResult$a;
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult$a;->n(Lcom/google/android/gms/common/api/Status;)V
goto :goto_2e
:cond_3e
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Do:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
return-void
.end method
.method private eA()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dm:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z
move-result v0
if-nez v0, :cond_15
sget-object v0, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->b(Lcom/google/android/gms/common/api/Result;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dt:Z
:cond_15
monitor-exit v1
return-void
:catchall_17
move-exception v0
monitor-exit v1
:try_end_19
.catchall {:try_start_3 .. :try_end_19} :catchall_17
throw v0
.end method
.method private ex()Lcom/google/android/gms/common/api/Result;
.registers 4
iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dm:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Z
if-nez v0, :cond_1d
const/4 v0, 0x1
:goto_8
const-string v2, "Result has already been consumed."
invoke-static {v0, v2}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z
move-result v0
const-string v2, "Result is not ready."
invoke-static {v0, v2}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/Result;
invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->ey()V
monitor-exit v1
return-object v0
:cond_1d
const/4 v0, 0x0
goto :goto_8
:catchall_1f
move-exception v0
monitor-exit v1
:try_end_21
.catchall {:try_start_3 .. :try_end_21} :catchall_1f
throw v0
.end method
.method private ez()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dm:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z
move-result v0
if-nez v0, :cond_15
sget-object v0, Lcom/google/android/gms/common/api/Status;->El:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->b(Lcom/google/android/gms/common/api/Result;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dt:Z
:cond_15
monitor-exit v1
return-void
:catchall_17
move-exception v0
monitor-exit v1
:try_end_19
.catchall {:try_start_3 .. :try_end_19} :catchall_17
throw v0
.end method
.method public final a(Lcom/google/android/gms/common/api/PendingResult$a;)V
.registers 4
iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Z
if-nez v0, :cond_1e
const/4 v0, 0x1
:goto_5
const-string v1, "Result has already been consumed."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dm:Ljava/lang/Object;
monitor-enter v1
:try_start_d
invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/Result;
invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;
move-result-object v0
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/PendingResult$a;->n(Lcom/google/android/gms/common/api/Status;)V
:goto_1c
monitor-exit v1
return-void
:cond_1e
const/4 v0, 0x0
goto :goto_5
:cond_20
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Do:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_1c
:catchall_26
move-exception v0
monitor-exit v1
:try_end_28
.catchall {:try_start_d .. :try_end_28} :catchall_26
throw v0
.end method
.method protected a(Lcom/google/android/gms/common/api/a$c;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->Dn:Lcom/google/android/gms/common/api/a$c;
return-void
.end method
.method protected final a(Lcom/google/android/gms/internal/hh;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dm:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->Du:Lcom/google/android/gms/internal/hh;
monitor-exit v1
return-void
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method public synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/Result;
invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a$a;->b(Lcom/google/android/gms/common/api/Result;)V
return-void
.end method
.method public final await()Lcom/google/android/gms/common/api/Result;
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v3
if-eq v0, v3, :cond_2e
move v0, v1
:goto_d
const-string v3, "await must not be called on the UI thread"
invoke-static {v0, v3}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Z
if-nez v0, :cond_30
:goto_16
const-string v0, "Result has already been consumed"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
:try_start_1b
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kI:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
:goto_20
:try_end_20
.catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_32
invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z
move-result v0
const-string v1, "Result is not ready."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ex()Lcom/google/android/gms/common/api/Result;
move-result-object v0
return-object v0
:cond_2e
move v0, v2
goto :goto_d
:cond_30
move v1, v2
goto :goto_16
:catch_32
move-exception v0
invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ez()V
goto :goto_20
.end method
.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
.registers 9
const/4 v2, 0x1
const/4 v1, 0x0
const-wide/16 v3, 0x0
cmp-long v0, p1, v3
if-lez v0, :cond_12
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v3
if-eq v0, v3, :cond_3a
:cond_12
move v0, v2
:goto_13
const-string v3, "await must not be called on the UI thread when time is greater than zero."
invoke-static {v0, v3}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Z
if-nez v0, :cond_3c
:goto_1c
const-string v0, "Result has already been consumed."
invoke-static {v2, v0}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
:try_start_21
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kI:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
move-result v0
if-nez v0, :cond_2c
invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eA()V
:try_end_2c
.catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_2c} :catch_3e
:goto_2c
:cond_2c
invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z
move-result v0
const-string v1, "Result is not ready."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ex()Lcom/google/android/gms/common/api/Result;
move-result-object v0
return-object v0
:cond_3a
move v0, v1
goto :goto_13
:cond_3c
move v2, v1
goto :goto_1c
:catch_3e
move-exception v0
invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ez()V
goto :goto_2c
.end method
.method public final b(Lcom/google/android/gms/common/api/Result;)V
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v3, p0, Lcom/google/android/gms/common/api/a$a;->Dm:Ljava/lang/Object;
monitor-enter v3
:try_start_5
iget-boolean v2, p0, Lcom/google/android/gms/common/api/a$a;->Dt:Z
if-nez v2, :cond_d
iget-boolean v2, p0, Lcom/google/android/gms/common/api/a$a;->Ds:Z
if-eqz v2, :cond_12
:cond_d
invoke-static {p1}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/Result;)V
monitor-exit v3
:goto_11
return-void
:cond_12
invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z
move-result v2
if-nez v2, :cond_2f
move v2, v0
:goto_19
const-string v4, "Results have already been set"
invoke-static {v2, v4}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
iget-boolean v2, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Z
if-nez v2, :cond_31
:goto_22
const-string v1, "Result has already been consumed"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/a$a;->c(Lcom/google/android/gms/common/api/Result;)V
monitor-exit v3
goto :goto_11
:catchall_2c
move-exception v0
monitor-exit v3
:try_end_2e
.catchall {:try_start_5 .. :try_end_2e} :catchall_2c
throw v0
:cond_2f
move v2, v1
goto :goto_19
:cond_31
move v0, v1
goto :goto_22
.end method
.method protected abstract c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.end method
.method public cancel()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dm:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Ds:Z
if-nez v0, :cond_b
iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Z
if-eqz v0, :cond_d
:cond_b
monitor-exit v1
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Du:Lcom/google/android/gms/internal/hh;
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_2c
if-eqz v0, :cond_16
:try_start_11
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Du:Lcom/google/android/gms/internal/hh;
invoke-interface {v0}, Lcom/google/android/gms/internal/hh;->cancel()V
:try_start_16
:cond_16
:goto_16
:try_end_16
.catchall {:try_start_11 .. :try_end_16} :catchall_2c
.catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_2f
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/Result;
invoke-static {v0}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/Result;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Lcom/google/android/gms/common/api/ResultCallback;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Ds:Z
sget-object v0, Lcom/google/android/gms/common/api/Status;->Eo:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;->c(Lcom/google/android/gms/common/api/Result;)V
monitor-exit v1
goto :goto_c
:catchall_2c
move-exception v0
monitor-exit v1
:try_end_2e
.catchall {:try_start_16 .. :try_end_2e} :catchall_2c
throw v0
:catch_2f
move-exception v0
goto :goto_16
.end method
.method protected ey()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Z
iput-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/Result;
iput-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Lcom/google/android/gms/common/api/ResultCallback;
return-void
.end method
.method public isCanceled()Z
.registers 3
iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dm:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Ds:Z
monitor-exit v1
return v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method public final isReady()Z
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kI:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
.registers 5
iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Z
if-nez v0, :cond_15
const/4 v0, 0x1
:goto_5
const-string v1, "Result has already been consumed."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dm:Ljava/lang/Object;
monitor-enter v1
:try_start_d
invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isCanceled()Z
move-result v0
if-eqz v0, :cond_17
monitor-exit v1
:goto_14
return-void
:cond_15
const/4 v0, 0x0
goto :goto_5
:cond_17
invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dn:Lcom/google/android/gms/common/api/a$c;
invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ex()Lcom/google/android/gms/common/api/Result;
move-result-object v2
invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
:goto_26
monitor-exit v1
goto :goto_14
:catchall_28
move-exception v0
monitor-exit v1
:try_end_2a
.catchall {:try_start_d .. :try_end_2a} :catchall_28
throw v0
:try_start_2b
:cond_2b
iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Lcom/google/android/gms/common/api/ResultCallback;
:try_end_2d
.catchall {:try_start_2b .. :try_end_2d} :catchall_28
goto :goto_26
.end method
.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
.registers 9
iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Z
if-nez v0, :cond_15
const/4 v0, 0x1
:goto_5
const-string v1, "Result has already been consumed."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dm:Ljava/lang/Object;
monitor-enter v1
:try_start_d
invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isCanceled()Z
move-result v0
if-eqz v0, :cond_17
monitor-exit v1
:goto_14
return-void
:cond_15
const/4 v0, 0x0
goto :goto_5
:cond_17
invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dn:Lcom/google/android/gms/common/api/a$c;
invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ex()Lcom/google/android/gms/common/api/Result;
move-result-object v2
invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
:goto_26
monitor-exit v1
goto :goto_14
:catchall_28
move-exception v0
monitor-exit v1
:try_end_2a
.catchall {:try_start_d .. :try_end_2a} :catchall_28
throw v0
:try_start_2b
:cond_2b
iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Lcom/google/android/gms/common/api/ResultCallback;
iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dn:Lcom/google/android/gms/common/api/a$c;
invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v2
invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/a$a;J)V
:try_end_36
.catchall {:try_start_2b .. :try_end_36} :catchall_28
goto :goto_26
.end method