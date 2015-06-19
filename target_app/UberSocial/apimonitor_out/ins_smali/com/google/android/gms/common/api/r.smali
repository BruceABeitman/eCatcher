.class public abstract Lcom/google/android/gms/common/api/r;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/j;
.implements Lcom/google/android/gms/common/api/t;
.implements Lcom/google/android/gms/common/api/x;
.field private final a:Lcom/google/android/gms/common/api/c;
.field private final b:Ljava/lang/Object;
.field private c:Lcom/google/android/gms/common/api/s;
.field private final d:Ljava/util/concurrent/CountDownLatch;
.field private final e:Ljava/util/ArrayList;
.field private f:Lcom/google/android/gms/common/api/n;
.field private volatile g:Lcom/google/android/gms/common/api/m;
.field private volatile h:Z
.field private i:Z
.field private j:Z
.field private k:Lcom/google/android/gms/common/api/v;
.method protected constructor <init>()V
.registers 2
const/4 v0, 0x0
check-cast v0, Lcom/google/android/gms/common/api/c;
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/r;-><init>(Lcom/google/android/gms/common/api/c;)V
return-void
.end method
.method protected constructor <init>(Lcom/google/android/gms/common/api/c;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/r;->b:Ljava/lang/Object;
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/common/api/r;->d:Ljava/util/concurrent/CountDownLatch;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/r;->e:Ljava/util/ArrayList;
iput-object p1, p0, Lcom/google/android/gms/common/api/r;->a:Lcom/google/android/gms/common/api/c;
return-void
.end method
.method private a(Landroid/os/RemoteException;)V
.registers 6
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/16 v1, 0x8
invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/r;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/m;)V
return-void
.end method
.method private g()Lcom/google/android/gms/common/api/m;
.registers 4
iget-object v1, p0, Lcom/google/android/gms/common/api/r;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/common/api/r;->h:Z
if-nez v0, :cond_1d
const/4 v0, 0x1
:goto_8
const-string v2, "Result has already been consumed."
invoke-static {v0, v2}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
invoke-virtual {p0}, Lcom/google/android/gms/common/api/r;->d()Z
move-result v0
const-string v2, "Result is not ready."
invoke-static {v0, v2}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->g:Lcom/google/android/gms/common/api/m;
invoke-virtual {p0}, Lcom/google/android/gms/common/api/r;->e()V
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
.method private h()V
.registers 6
iget-object v1, p0, Lcom/google/android/gms/common/api/r;->g:Lcom/google/android/gms/common/api/m;
if-eqz v1, :cond_f
instance-of v1, p0, Lcom/google/android/gms/common/api/l;
if-eqz v1, :cond_f
:try_start_8
move-object v0, p0
check-cast v0, Lcom/google/android/gms/common/api/l;
move-object v1, v0
invoke-interface {v1}, Lcom/google/android/gms/common/api/l;->d()V
:goto_f
:cond_f
:try_end_f
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v1
const-string v2, "GoogleApi"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Unable to release "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_f
.end method
.method public final a()Lcom/google/android/gms/common/api/m;
.registers 5
const/4 v2, 0x0
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/google/android/gms/common/api/r;->h:Z
if-nez v0, :cond_35
move v0, v1
:goto_7
const-string v3, "Results has already been consumed"
invoke-static {v0, v3}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
invoke-virtual {p0}, Lcom/google/android/gms/common/api/r;->d()Z
move-result v0
if-nez v0, :cond_1c
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v3
if-eq v0, v3, :cond_1d
:cond_1c
move v2, v1
:cond_1d
const-string v0, "await must not be called on the UI thread"
invoke-static {v2, v0}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
:try_start_22
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->d:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
:goto_27
:try_end_27
.catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_27} :catch_37
invoke-virtual {p0}, Lcom/google/android/gms/common/api/r;->d()Z
move-result v0
const-string v1, "Result is not ready."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
invoke-direct {p0}, Lcom/google/android/gms/common/api/r;->g()Lcom/google/android/gms/common/api/m;
move-result-object v0
return-object v0
:cond_35
move v0, v2
goto :goto_7
:catch_37
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/r;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3b
sget-object v0, Lcom/google/android/gms/common/api/Status;->b:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/r;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/m;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/r;->j:Z
monitor-exit v1
goto :goto_27
:catchall_49
move-exception v0
monitor-exit v1
:try_end_4b
.catchall {:try_start_3b .. :try_end_4b} :catchall_49
throw v0
.end method
.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/m;
.registers 8
const/4 v2, 0x0
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/google/android/gms/common/api/r;->h:Z
if-nez v0, :cond_48
move v0, v1
:goto_7
const-string v3, "Result has already been consumed."
invoke-static {v0, v3}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
invoke-virtual {p0}, Lcom/google/android/gms/common/api/r;->d()Z
move-result v0
if-nez v0, :cond_1c
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v3
if-eq v0, v3, :cond_1d
:cond_1c
move v2, v1
:cond_1d
const-string v0, "await must not be called on the UI thread"
invoke-static {v2, v0}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
:try_start_22
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->d:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
move-result v0
if-nez v0, :cond_3a
iget-object v1, p0, Lcom/google/android/gms/common/api/r;->b:Ljava/lang/Object;
monitor-enter v1
:try_end_2d
.catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_2d} :catch_4d
:try_start_2d
sget-object v0, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/r;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/m;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/r;->j:Z
monitor-exit v1
:try_end_3a
.catchall {:try_start_2d .. :try_end_3a} :catchall_4a
:goto_3a
:cond_3a
invoke-virtual {p0}, Lcom/google/android/gms/common/api/r;->d()Z
move-result v0
const-string v1, "Result is not ready."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
invoke-direct {p0}, Lcom/google/android/gms/common/api/r;->g()Lcom/google/android/gms/common/api/m;
move-result-object v0
return-object v0
:cond_48
move v0, v2
goto :goto_7
:catchall_4a
move-exception v0
:try_start_4b
monitor-exit v1
:try_start_4c
:try_end_4c
.catchall {:try_start_4b .. :try_end_4c} :catchall_4a
throw v0
:try_end_4d
.catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4d} :catch_4d
:catch_4d
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/r;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_51
sget-object v0, Lcom/google/android/gms/common/api/Status;->b:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/r;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/m;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/r;->j:Z
monitor-exit v1
goto :goto_3a
:catchall_5f
move-exception v0
monitor-exit v1
:try_end_61
.catchall {:try_start_51 .. :try_end_61} :catchall_5f
throw v0
.end method
.method protected abstract a(Lcom/google/android/gms/common/api/b;)V
.end method
.method public final a(Lcom/google/android/gms/common/api/m;)V
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v3, p0, Lcom/google/android/gms/common/api/r;->b:Ljava/lang/Object;
monitor-enter v3
:try_start_5
iget-boolean v2, p0, Lcom/google/android/gms/common/api/r;->j:Z
if-eqz v2, :cond_14
instance-of v0, p1, Lcom/google/android/gms/common/api/l;
if-eqz v0, :cond_12
check-cast p1, Lcom/google/android/gms/common/api/l;
invoke-interface {p1}, Lcom/google/android/gms/common/api/l;->d()V
:cond_12
monitor-exit v3
:goto_13
return-void
:cond_14
invoke-virtual {p0}, Lcom/google/android/gms/common/api/r;->d()Z
move-result v2
if-nez v2, :cond_37
move v2, v0
:goto_1b
const-string v4, "Results have already been set"
invoke-static {v2, v4}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
iget-boolean v2, p0, Lcom/google/android/gms/common/api/r;->h:Z
if-nez v2, :cond_39
:goto_24
const-string v1, "Result has already been consumed"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
iput-object p1, p0, Lcom/google/android/gms/common/api/r;->g:Lcom/google/android/gms/common/api/m;
iget-boolean v0, p0, Lcom/google/android/gms/common/api/r;->i:Z
if-eqz v0, :cond_3b
invoke-direct {p0}, Lcom/google/android/gms/common/api/r;->h()V
monitor-exit v3
goto :goto_13
:catchall_34
move-exception v0
monitor-exit v3
:try_end_36
.catchall {:try_start_5 .. :try_end_36} :catchall_34
throw v0
:cond_37
move v2, v1
goto :goto_1b
:cond_39
move v0, v1
goto :goto_24
:try_start_3b
:cond_3b
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->d:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->g:Lcom/google/android/gms/common/api/m;
invoke-interface {v0}, Lcom/google/android/gms/common/api/m;->a()Lcom/google/android/gms/common/api/Status;
move-result-object v1
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->f:Lcom/google/android/gms/common/api/n;
if-eqz v0, :cond_5a
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->c:Lcom/google/android/gms/common/api/s;
invoke-virtual {v0}, Lcom/google/android/gms/common/api/s;->a()V
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->c:Lcom/google/android/gms/common/api/s;
iget-object v2, p0, Lcom/google/android/gms/common/api/r;->f:Lcom/google/android/gms/common/api/n;
invoke-direct {p0}, Lcom/google/android/gms/common/api/r;->g()Lcom/google/android/gms/common/api/m;
move-result-object v4
invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/common/api/s;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/m;)V
:cond_5a
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_60
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_70
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/k;
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/Status;)V
goto :goto_60
:cond_70
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
monitor-exit v3
:try_end_76
.catchall {:try_start_3b .. :try_end_76} :catchall_34
goto :goto_13
.end method
.method public final a(Lcom/google/android/gms/common/api/n;)V
.registers 5
iget-boolean v0, p0, Lcom/google/android/gms/common/api/r;->h:Z
if-nez v0, :cond_1e
const/4 v0, 0x1
:goto_5
const-string v1, "Result has already been consumed."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
iget-object v1, p0, Lcom/google/android/gms/common/api/r;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_d
invoke-virtual {p0}, Lcom/google/android/gms/common/api/r;->d()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->c:Lcom/google/android/gms/common/api/s;
invoke-direct {p0}, Lcom/google/android/gms/common/api/r;->g()Lcom/google/android/gms/common/api/m;
move-result-object v2
invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/s;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/m;)V
:goto_1c
monitor-exit v1
return-void
:cond_1e
const/4 v0, 0x0
goto :goto_5
:cond_20
iput-object p1, p0, Lcom/google/android/gms/common/api/r;->f:Lcom/google/android/gms/common/api/n;
goto :goto_1c
:catchall_23
move-exception v0
monitor-exit v1
:try_end_25
.catchall {:try_start_d .. :try_end_25} :catchall_23
throw v0
.end method
.method public final a(Lcom/google/android/gms/common/api/n;JLjava/util/concurrent/TimeUnit;)V
.registers 9
iget-boolean v0, p0, Lcom/google/android/gms/common/api/r;->h:Z
if-nez v0, :cond_1e
const/4 v0, 0x1
:goto_5
const-string v1, "Result has already been consumed."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
iget-object v1, p0, Lcom/google/android/gms/common/api/r;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_d
invoke-virtual {p0}, Lcom/google/android/gms/common/api/r;->d()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->c:Lcom/google/android/gms/common/api/s;
invoke-direct {p0}, Lcom/google/android/gms/common/api/r;->g()Lcom/google/android/gms/common/api/m;
move-result-object v2
invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/s;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/m;)V
:goto_1c
monitor-exit v1
return-void
:cond_1e
const/4 v0, 0x0
goto :goto_5
:cond_20
iput-object p1, p0, Lcom/google/android/gms/common/api/r;->f:Lcom/google/android/gms/common/api/n;
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->c:Lcom/google/android/gms/common/api/s;
invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v2
invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/common/api/s;->a(Lcom/google/android/gms/common/api/r;J)V
goto :goto_1c
:catchall_2c
move-exception v0
monitor-exit v1
:try_end_2e
.catchall {:try_start_d .. :try_end_2e} :catchall_2c
throw v0
.end method
.method public a(Lcom/google/android/gms/common/api/v;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/r;->k:Lcom/google/android/gms/common/api/v;
return-void
.end method
.method public synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/m;
invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/m;)V
return-void
.end method
.method public final b()Lcom/google/android/gms/common/api/c;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->a:Lcom/google/android/gms/common/api/c;
return-object v0
.end method
.method protected abstract b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
.end method
.method public final b(Lcom/google/android/gms/common/api/b;)V
.registers 4
new-instance v0, Lcom/google/android/gms/common/api/s;
invoke-interface {p1}, Lcom/google/android/gms/common/api/b;->e()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/s;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/r;->c:Lcom/google/android/gms/common/api/s;
:try_start_b
invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/b;)V
:goto_e
:try_end_e
.catch Landroid/os/DeadObjectException; {:try_start_b .. :try_end_e} :catch_f
.catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_14
return-void
:catch_f
move-exception v0
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/r;->a(Landroid/os/RemoteException;)V
throw v0
:catch_14
move-exception v0
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/r;->a(Landroid/os/RemoteException;)V
goto :goto_e
.end method
.method public c()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final d()Z
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->d:Ljava/util/concurrent/CountDownLatch;
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
.method  e()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/r;->h:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/api/r;->g:Lcom/google/android/gms/common/api/m;
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->k:Lcom/google/android/gms/common/api/v;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/google/android/gms/common/api/r;->k:Lcom/google/android/gms/common/api/v;
invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/v;->a(Lcom/google/android/gms/common/api/x;)V
:cond_f
return-void
.end method
.method public f()V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/common/api/r;->h()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/r;->i:Z
return-void
.end method