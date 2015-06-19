.class abstract Lcom/google/android/gms/tagmanager/ca;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/PendingResult;
.field private VK:Lcom/google/android/gms/tagmanager/ca$a;
.field private final zd:Ljava/lang/Object;
.field private final zf:Ljava/util/concurrent/CountDownLatch;
.field private final zg:Ljava/util/ArrayList;
.field private zh:Lcom/google/android/gms/common/api/ResultCallback;
.field private volatile zi:Lcom/google/android/gms/common/api/Result;
.field private volatile zj:Z
.method public constructor <init>(Landroid/os/Looper;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->zd:Ljava/lang/Object;
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->zf:Ljava/util/concurrent/CountDownLatch;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->zg:Ljava/util/ArrayList;
new-instance v0, Lcom/google/android/gms/tagmanager/ca$a;
invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/ca$a;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->VK:Lcom/google/android/gms/tagmanager/ca$a;
return-void
.end method
.method private ds()Lcom/google/android/gms/common/api/Result;
.registers 4
iget-object v1, p0, Lcom/google/android/gms/tagmanager/ca;->zd:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ca;->zj:Z
if-nez v0, :cond_1d
const/4 v0, 0x1
:goto_8
const-string v2, "Result has already been consumed."
invoke-static {v0, v2}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ca;->isReady()Z
move-result v0
const-string v2, "Result is not ready."
invoke-static {v0, v2}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->zi:Lcom/google/android/gms/common/api/Result;
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ca;->dt()V
monitor-exit v1
:try_end_1c
.catchall {:try_start_3 .. :try_end_1c} :catchall_1f
return-object v0
:cond_1d
const/4 v0, 0x0
goto :goto_8
:catchall_1f
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/google/android/gms/common/api/Result;)V
.registers 7
iget-object v1, p0, Lcom/google/android/gms/tagmanager/ca;->zd:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ca;->isReady()Z
move-result v0
if-eqz v0, :cond_b
monitor-exit v1
:goto_a
return-void
:cond_b
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ca;->zj:Z
if-nez v0, :cond_4f
const/4 v0, 0x1
:goto_10
const-string v2, "Result has already been consumed"
invoke-static {v0, v2}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ca;->zi:Lcom/google/android/gms/common/api/Result;
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->zf:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->zi:Lcom/google/android/gms/common/api/Result;
invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;
move-result-object v2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->zh:Lcom/google/android/gms/common/api/ResultCallback;
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->VK:Lcom/google/android/gms/tagmanager/ca$a;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ca$a;->dw()V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->VK:Lcom/google/android/gms/tagmanager/ca$a;
iget-object v3, p0, Lcom/google/android/gms/tagmanager/ca;->zh:Lcom/google/android/gms/common/api/ResultCallback;
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ca;->ds()Lcom/google/android/gms/common/api/Result;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/tagmanager/ca$a;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
:cond_36
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->zg:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_3c
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_51
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/PendingResult$a;
invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/PendingResult$a;->k(Lcom/google/android/gms/common/api/Status;)V
:try_end_4b
.catchall {:try_start_3 .. :try_end_4b} :catchall_4c
goto :goto_3c
:catchall_4c
move-exception v0
monitor-exit v1
throw v0
:cond_4f
const/4 v0, 0x0
goto :goto_10
:try_start_51
:cond_51
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->zg:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
monitor-exit v1
:try_end_57
.catchall {:try_start_51 .. :try_end_57} :catchall_4c
goto :goto_a
.end method
.method public await()Lcom/google/android/gms/common/api/Result;
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ca;->zj:Z
if-nez v0, :cond_1d
const/4 v0, 0x1
:goto_5
const-string v1, "Results has already been consumed"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
:try_start_a
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->zf:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
:goto_f
:try_end_f
.catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_1f
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ca;->isReady()Z
move-result v0
const-string v1, "Result is not ready."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ca;->ds()Lcom/google/android/gms/common/api/Result;
move-result-object v0
return-object v0
:cond_1d
const/4 v0, 0x0
goto :goto_5
:catch_1f
move-exception v0
sget-object v0, Lcom/google/android/gms/common/api/Status;->zR:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/common/api/Result;)V
goto :goto_f
.end method
.method public await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
.registers 6
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ca;->zj:Z
if-nez v0, :cond_29
const/4 v0, 0x1
:goto_5
const-string v1, "Result has already been consumed."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
:try_start_a
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->zf:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
move-result v0
if-nez v0, :cond_1b
sget-object v0, Lcom/google/android/gms/common/api/Status;->zS:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/common/api/Result;)V
:goto_1b
:try_end_1b
.catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_1b} :catch_2b
:cond_1b
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ca;->isReady()Z
move-result v0
const-string v1, "Result is not ready."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ca;->ds()Lcom/google/android/gms/common/api/Result;
move-result-object v0
return-object v0
:cond_29
const/4 v0, 0x0
goto :goto_5
:catch_2b
move-exception v0
sget-object v0, Lcom/google/android/gms/common/api/Status;->zR:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/common/api/Result;)V
goto :goto_1b
.end method
.method protected abstract d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.end method
.method  dt()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/ca;->zj:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->zi:Lcom/google/android/gms/common/api/Result;
return-void
.end method
.method public isReady()Z
.registers 5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->zf:Ljava/util/concurrent/CountDownLatch;
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
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ca;->zj:Z
if-nez v0, :cond_1e
const/4 v0, 0x1
:goto_5
const-string v1, "Result has already been consumed."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/ca;->zd:Ljava/lang/Object;
monitor-enter v1
:try_start_d
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ca;->isReady()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->VK:Lcom/google/android/gms/tagmanager/ca$a;
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ca;->ds()Lcom/google/android/gms/common/api/Result;
move-result-object v2
invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/tagmanager/ca$a;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
:goto_1c
monitor-exit v1
return-void
:cond_1e
const/4 v0, 0x0
goto :goto_5
:cond_20
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ca;->zh:Lcom/google/android/gms/common/api/ResultCallback;
:try_end_22
.catchall {:try_start_d .. :try_end_22} :catchall_23
goto :goto_1c
:catchall_23
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
.registers 9
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ca;->zj:Z
if-nez v0, :cond_1e
const/4 v0, 0x1
:goto_5
const-string v1, "Result has already been consumed."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/ca;->zd:Ljava/lang/Object;
monitor-enter v1
:try_start_d
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ca;->isReady()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->VK:Lcom/google/android/gms/tagmanager/ca$a;
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ca;->ds()Lcom/google/android/gms/common/api/Result;
move-result-object v2
invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/tagmanager/ca$a;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
:goto_1c
monitor-exit v1
return-void
:cond_1e
const/4 v0, 0x0
goto :goto_5
:cond_20
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ca;->zh:Lcom/google/android/gms/common/api/ResultCallback;
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->VK:Lcom/google/android/gms/tagmanager/ca$a;
invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v2
invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/tagmanager/ca$a;->a(Lcom/google/android/gms/tagmanager/ca;J)V
:try_end_2b
.catchall {:try_start_d .. :try_end_2b} :catchall_2c
goto :goto_1c
:catchall_2c
move-exception v0
monitor-exit v1
throw v0
.end method