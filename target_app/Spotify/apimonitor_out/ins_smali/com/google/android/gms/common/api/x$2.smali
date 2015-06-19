.class final Lcom/google/android/gms/common/api/x$2;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/k;
.field final synthetic a:Lcom/google/android/gms/common/api/x;
.method constructor <init>(Lcom/google/android/gms/common/api/x;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a_(I)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;
move-result-object v0
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_9
iget-object v0, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v0, p1}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;I)V
:try_end_e
.catchall {:try_start_9 .. :try_end_e} :catchall_21
packed-switch p1, :pswitch_data_5a
:goto_11
iget-object v0, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;
move-result-object v0
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
:goto_1a
return-void
:try_start_1b
:pswitch_1b
iget-object v0, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-virtual {v0}, Lcom/google/android/gms/common/api/x;->a()V
:try_end_20
.catchall {:try_start_1b .. :try_end_20} :catchall_21
goto :goto_11
:catchall_21
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v1}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;
move-result-object v1
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:pswitch_2c
:try_start_2c
iget-object v0, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->e(Lcom/google/android/gms/common/api/x;)Z
:try_end_31
.catchall {:try_start_2c .. :try_end_31} :catchall_21
move-result v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;
move-result-object v0
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_1a
:try_start_3e
:cond_3e
iget-object v0, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->f(Lcom/google/android/gms/common/api/x;)I
iget-object v0, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
iget-object v0, v0, Lcom/google/android/gms/common/api/x;->b:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
iget-object v1, v1, Lcom/google/android/gms/common/api/x;->b:Landroid/os/Handler;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v2}, Lcom/google/android/gms/common/api/x;->g(Lcom/google/android/gms/common/api/x;)J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:try_end_59
.catchall {:try_start_3e .. :try_end_59} :catchall_21
goto :goto_11
:pswitch_data_5a
.packed-switch 0x1
:pswitch_2c
:pswitch_1b
.end packed-switch
.end method
.method public final a_(Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;
move-result-object v0
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_9
iget-object v0, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->b(Lcom/google/android/gms/common/api/x;)I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_22
if-eqz p1, :cond_1d
iget-object v0, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->c(Lcom/google/android/gms/common/api/x;)Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
:cond_1d
iget-object v0, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->d(Lcom/google/android/gms/common/api/x;)V
:cond_22
:try_end_22
.catchall {:try_start_9 .. :try_end_22} :catchall_2c
iget-object v0, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;
move-result-object v0
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_2c
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/x$2;->a:Lcom/google/android/gms/common/api/x;
invoke-static {v1}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;
move-result-object v1
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method