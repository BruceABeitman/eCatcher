.class final Lcom/google/android/gms/internal/gk;
.super Landroid/os/Handler;
.field final synthetic a:Lcom/google/android/gms/internal/gj;
.method public constructor <init>(Lcom/google/android/gms/internal/gj;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/gk;->a:Lcom/google/android/gms/internal/gj;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 5
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x1
if-ne v0, v1, :cond_44
iget-object v0, p0, Lcom/google/android/gms/internal/gk;->a:Lcom/google/android/gms/internal/gj;
invoke-static {v0}, Lcom/google/android/gms/internal/gj;->a(Lcom/google/android/gms/internal/gj;)Ljava/util/ArrayList;
move-result-object v1
monitor-enter v1
:try_start_c
iget-object v0, p0, Lcom/google/android/gms/internal/gk;->a:Lcom/google/android/gms/internal/gj;
invoke-static {v0}, Lcom/google/android/gms/internal/gj;->b(Lcom/google/android/gms/internal/gj;)Lcom/google/android/gms/internal/gl;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/internal/gl;->d_()Z
move-result v0
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/google/android/gms/internal/gk;->a:Lcom/google/android/gms/internal/gj;
invoke-static {v0}, Lcom/google/android/gms/internal/gj;->b(Lcom/google/android/gms/internal/gj;)Lcom/google/android/gms/internal/gl;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/internal/gl;->c()Z
move-result v0
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/google/android/gms/internal/gk;->a:Lcom/google/android/gms/internal/gj;
invoke-static {v0}, Lcom/google/android/gms/internal/gj;->a(Lcom/google/android/gms/internal/gj;)Ljava/util/ArrayList;
move-result-object v0
iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/google/android/gms/internal/gk;->a:Lcom/google/android/gms/internal/gj;
invoke-static {v0}, Lcom/google/android/gms/internal/gj;->b(Lcom/google/android/gms/internal/gj;)Lcom/google/android/gms/internal/gl;
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/common/api/k;
const/4 v2, 0x0
invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/k;->a_(Landroid/os/Bundle;)V
:cond_3f
monitor-exit v1
:try_end_40
.catchall {:try_start_c .. :try_end_40} :catchall_41
:goto_40
return-void
:catchall_41
move-exception v0
monitor-exit v1
throw v0
:cond_44
const-string v0, "GmsClientEvents"
const-string v1, "Don\'t know how to handle this message."
invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_40
.end method