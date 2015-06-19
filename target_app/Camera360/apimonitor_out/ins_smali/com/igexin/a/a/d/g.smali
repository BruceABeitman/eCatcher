.class final Lcom/igexin/a/a/d/g;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final a:Ljava/util/concurrent/BlockingQueue;
.field  b:Lcom/igexin/a/a/d/d;
.field  c:Lcom/igexin/a/a/d/d;
.field volatile d:I
.field  e:Landroid/os/PowerManager$WakeLock;
.field final synthetic f:Lcom/igexin/a/a/d/f;
.method public constructor <init>(Lcom/igexin/a/a/d/f;Lcom/igexin/a/a/d/d;)V
.registers 6
iput-object p1, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/igexin/a/a/d/g;->b:Lcom/igexin/a/a/d/d;
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
iput-object v0, p0, Lcom/igexin/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;
iget-object v0, p1, Lcom/igexin/a/a/d/f;->i:Lcom/igexin/a/a/d/e;
iget-object v0, v0, Lcom/igexin/a/a/d/e;->p:Landroid/os/PowerManager;
const/4 v1, 0x1
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v0
iput-object v0, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;
iget-object v0, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
return-void
.end method
.method public final a()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/igexin/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
iput-object v1, p0, Lcom/igexin/a/a/d/g;->c:Lcom/igexin/a/a/d/d;
iput-object v1, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;
return-void
.end method
.method public final a(Lcom/igexin/a/a/d/d;)V
.registers 7
const/4 v3, 0x0
const/4 v0, 0x1
const/4 v2, 0x0
iget-object v1, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;
invoke-virtual {p1, v1}, Lcom/igexin/a/a/d/d;->a(Landroid/os/PowerManager$WakeLock;)V
iget v1, p0, Lcom/igexin/a/a/d/g;->d:I
if-nez v1, :cond_10
iget v1, p1, Lcom/igexin/a/a/d/d;->L:I
iput v1, p0, Lcom/igexin/a/a/d/g;->d:I
:cond_10
move v1, v0
:cond_11
:goto_11
if-eqz v1, :cond_8d
iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->U:Z
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
:try_start_1c
:cond_1c
invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->b()V
invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->t()V
invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->v()V
:try_end_25
.catchall {:try_start_1c .. :try_end_25} :catchall_73
.catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_40
iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->U:Z
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_2e
iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->F:Z
if-nez v0, :cond_35
invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->c()V
:cond_35
iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->x:Z
if-nez v0, :cond_3d
iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->A:Z
if-nez v0, :cond_11
:cond_3d
move v1, v2
move-object p1, v3
goto :goto_11
:catch_40
move-exception v0
const/4 v4, 0x1
:try_start_42
iput-boolean v4, p1, Lcom/igexin/a/a/d/d;->F:Z
iput-object v0, p1, Lcom/igexin/a/a/d/d;->N:Ljava/lang/Exception;
invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->w()V
invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->p()V
iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;
iget-object v0, v0, Lcom/igexin/a/a/d/f;->i:Lcom/igexin/a/a/d/e;
invoke-virtual {v0, p1}, Lcom/igexin/a/a/d/e;->a(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;
iget-object v0, v0, Lcom/igexin/a/a/d/f;->i:Lcom/igexin/a/a/d/e;
invoke-virtual {v0}, Lcom/igexin/a/a/d/e;->g()V
:try_end_5a
.catchall {:try_start_42 .. :try_end_5a} :catchall_73
iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->U:Z
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_63
iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->F:Z
if-nez v0, :cond_6a
invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->c()V
:cond_6a
iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->x:Z
if-nez v0, :cond_3d
iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->A:Z
if-eqz v0, :cond_3d
goto :goto_11
:catchall_73
move-exception v0
iget-boolean v4, p1, Lcom/igexin/a/a/d/d;->U:Z
if-eqz v4, :cond_7d
iget-object v4, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_7d
iget-boolean v4, p1, Lcom/igexin/a/a/d/d;->F:Z
if-nez v4, :cond_84
invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->c()V
:cond_84
iget-boolean v4, p1, Lcom/igexin/a/a/d/d;->x:Z
if-nez v4, :cond_8c
iget-boolean v4, p1, Lcom/igexin/a/a/d/d;->A:Z
if-nez v4, :cond_11
:cond_8c
throw v0
:cond_8d
return-void
.end method
.method final b()Lcom/igexin/a/a/d/d;
.registers 6
const/4 v1, 0x0
:goto_1
:cond_1
iget v0, p0, Lcom/igexin/a/a/d/g;->d:I
if-eqz v0, :cond_52
:try_start_5
iget-object v0, p0, Lcom/igexin/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;
iget-object v2, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;
iget-wide v2, v2, Lcom/igexin/a/a/d/f;->e:J
sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/a/a/d/d;
if-eqz v0, :cond_16
:goto_15
return-object v0
:cond_16
iget-object v0, p0, Lcom/igexin/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z
move-result v0
if-eqz v0, :cond_1
iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;
iget-object v2, v0, Lcom/igexin/a/a/d/f;->c:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_25
:try_end_25
.catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_25} :catch_31
iget-object v0, p0, Lcom/igexin/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z
:try_end_2a
.catchall {:try_start_25 .. :try_end_2a} :catchall_4d
move-result v0
if-nez v0, :cond_33
:try_start_2d
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
:try_end_30
.catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_31
goto :goto_1
:catch_31
move-exception v0
goto :goto_1
:cond_33
:try_start_33
iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;
iget-object v0, v0, Lcom/igexin/a/a/d/f;->b:Ljava/util/HashMap;
iget v3, p0, Lcom/igexin/a/a/d/g;->d:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/igexin/a/a/d/g;->c:Lcom/igexin/a/a/d/d;
invoke-virtual {v0}, Lcom/igexin/a/a/d/d;->e()V
const/4 v0, 0x0
iput v0, p0, Lcom/igexin/a/a/d/g;->d:I
:try_end_48
.catchall {:try_start_33 .. :try_end_48} :catchall_4d
:try_start_48
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
move-object v0, v1
goto :goto_15
:catchall_4d
move-exception v0
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v0
:try_end_52
.catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_52} :catch_31
:cond_52
move-object v0, v1
goto :goto_15
.end method
.method public final run()V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x1
:goto_2
:cond_2
if-eqz v0, :cond_49
:try_start_4
iget-object v0, p0, Lcom/igexin/a/a/d/g;->b:Lcom/igexin/a/a/d/d;
const/4 v2, 0x0
iput-object v2, p0, Lcom/igexin/a/a/d/g;->b:Lcom/igexin/a/a/d/d;
:goto_9
if-nez v0, :cond_19
invoke-virtual {p0}, Lcom/igexin/a/a/d/g;->b()Lcom/igexin/a/a/d/d;
move-result-object v0
if-nez v0, :cond_19
iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;
invoke-virtual {v0}, Lcom/igexin/a/a/d/f;->a()Lcom/igexin/a/a/d/d;
move-result-object v0
if-eqz v0, :cond_23
:cond_19
const/4 v2, 0x0
iput-object v2, p0, Lcom/igexin/a/a/d/g;->c:Lcom/igexin/a/a/d/d;
invoke-virtual {p0, v0}, Lcom/igexin/a/a/d/g;->a(Lcom/igexin/a/a/d/d;)V
iput-object v0, p0, Lcom/igexin/a/a/d/g;->c:Lcom/igexin/a/a/d/d;
:try_end_21
.catchall {:try_start_4 .. :try_end_21} :catchall_3c
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_2f
move-object v0, v1
goto :goto_9
:cond_23
iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;
invoke-virtual {v0, p0}, Lcom/igexin/a/a/d/f;->a(Lcom/igexin/a/a/d/g;)Z
move-result v0
if-nez v0, :cond_2
invoke-virtual {p0}, Lcom/igexin/a/a/d/g;->a()V
goto :goto_2
:catch_2f
move-exception v0
iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;
invoke-virtual {v0, p0}, Lcom/igexin/a/a/d/f;->a(Lcom/igexin/a/a/d/g;)Z
move-result v0
if-nez v0, :cond_2
invoke-virtual {p0}, Lcom/igexin/a/a/d/g;->a()V
goto :goto_2
:catchall_3c
move-exception v0
iget-object v1, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;
invoke-virtual {v1, p0}, Lcom/igexin/a/a/d/f;->a(Lcom/igexin/a/a/d/g;)Z
move-result v1
if-nez v1, :cond_48
invoke-virtual {p0}, Lcom/igexin/a/a/d/g;->a()V
:cond_48
throw v0
:cond_49
return-void
.end method