.class public final Lcom/google/android/gms/internal/gj;
.super Ljava/lang/Object;
.field final a:Ljava/util/ArrayList;
.field private final b:Lcom/google/android/gms/internal/gl;
.field private final c:Ljava/util/ArrayList;
.field private d:Z
.field private final e:Ljava/util/ArrayList;
.field private final f:Landroid/os/Handler;
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/internal/gl;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/gj;->c:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/gj;->a:Ljava/util/ArrayList;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/gj;->d:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/gj;->e:Ljava/util/ArrayList;
iput-object p2, p0, Lcom/google/android/gms/internal/gj;->b:Lcom/google/android/gms/internal/gl;
new-instance v0, Lcom/google/android/gms/internal/gk;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gk;-><init>(Lcom/google/android/gms/internal/gj;Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gj;->f:Landroid/os/Handler;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/gj;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gj;->c:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic b(Lcom/google/android/gms/internal/gj;)Lcom/google/android/gms/internal/gl;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gj;->b:Lcom/google/android/gms/internal/gl;
return-object v0
.end method
.method protected final a()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/gj;->c:Ljava/util/ArrayList;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/gj;->b:Lcom/google/android/gms/internal/gl;
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gj;->a(Landroid/os/Bundle;)V
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_b
return-void
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(I)V
.registers 6
const/4 v1, 0x1
iget-object v0, p0, Lcom/google/android/gms/internal/gj;->f:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v1, p0, Lcom/google/android/gms/internal/gj;->c:Ljava/util/ArrayList;
monitor-enter v1
const/4 v0, 0x1
:try_start_a
iput-boolean v0, p0, Lcom/google/android/gms/internal/gj;->d:Z
new-instance v0, Ljava/util/ArrayList;
iget-object v2, p0, Lcom/google/android/gms/internal/gj;->c:Ljava/util/ArrayList;
invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_17
:goto_17
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/k;
iget-object v3, p0, Lcom/google/android/gms/internal/gj;->b:Lcom/google/android/gms/internal/gl;
invoke-interface {v3}, Lcom/google/android/gms/internal/gl;->d_()Z
move-result v3
if-eqz v3, :cond_3a
iget-object v3, p0, Lcom/google/android/gms/internal/gj;->c:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_17
invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/k;->a_(I)V
:try_end_36
.catchall {:try_start_a .. :try_end_36} :catchall_37
goto :goto_17
:catchall_37
move-exception v0
monitor-exit v1
throw v0
:cond_3a
const/4 v0, 0x0
:try_start_3b
iput-boolean v0, p0, Lcom/google/android/gms/internal/gj;->d:Z
monitor-exit v1
:try_end_3e
.catchall {:try_start_3b .. :try_end_3e} :catchall_37
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 7
const/4 v1, 0x0
const/4 v0, 0x1
iget-object v3, p0, Lcom/google/android/gms/internal/gj;->c:Ljava/util/ArrayList;
monitor-enter v3
:try_start_5
iget-boolean v2, p0, Lcom/google/android/gms/internal/gj;->d:Z
if-nez v2, :cond_57
move v2, v0
:goto_a
invoke-static {v2}, Lcom/google/android/gms/internal/hh;->a(Z)V
iget-object v2, p0, Lcom/google/android/gms/internal/gj;->f:Landroid/os/Handler;
const/4 v4, 0x1
invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/google/android/gms/internal/gj;->d:Z
iget-object v2, p0, Lcom/google/android/gms/internal/gj;->a:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-nez v2, :cond_59
:goto_1e
invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Z)V
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/google/android/gms/internal/gj;->c:Ljava/util/ArrayList;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2c
:cond_2c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/k;
iget-object v2, p0, Lcom/google/android/gms/internal/gj;->b:Lcom/google/android/gms/internal/gl;
invoke-interface {v2}, Lcom/google/android/gms/internal/gl;->d_()Z
move-result v2
if-eqz v2, :cond_5b
iget-object v2, p0, Lcom/google/android/gms/internal/gj;->b:Lcom/google/android/gms/internal/gl;
invoke-interface {v2}, Lcom/google/android/gms/internal/gl;->c()Z
move-result v2
if-eqz v2, :cond_5b
iget-object v2, p0, Lcom/google/android/gms/internal/gj;->a:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2c
invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/k;->a_(Landroid/os/Bundle;)V
:try_end_53
.catchall {:try_start_5 .. :try_end_53} :catchall_54
goto :goto_2c
:catchall_54
move-exception v0
monitor-exit v3
throw v0
:cond_57
move v2, v1
goto :goto_a
:cond_59
move v0, v1
goto :goto_1e
:cond_5b
:try_start_5b
iget-object v0, p0, Lcom/google/android/gms/internal/gj;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/gj;->d:Z
monitor-exit v3
:try_end_64
.catchall {:try_start_5b .. :try_end_64} :catchall_54
return-void
.end method
.method public final a(Lcom/google/android/gms/common/a;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/gj;->f:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v1, p0, Lcom/google/android/gms/internal/gj;->e:Ljava/util/ArrayList;
monitor-enter v1
:try_start_9
new-instance v0, Ljava/util/ArrayList;
iget-object v2, p0, Lcom/google/android/gms/internal/gj;->e:Ljava/util/ArrayList;
invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_14
:goto_14
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_39
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/d;
iget-object v3, p0, Lcom/google/android/gms/internal/gj;->b:Lcom/google/android/gms/internal/gl;
invoke-interface {v3}, Lcom/google/android/gms/internal/gl;->d_()Z
move-result v3
if-nez v3, :cond_2a
monitor-exit v1
:goto_29
return-void
:cond_2a
iget-object v3, p0, Lcom/google/android/gms/internal/gj;->e:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_14
invoke-interface {v0, p1}, Lcom/google/android/gms/common/d;->a(Lcom/google/android/gms/common/a;)V
:try_end_35
.catchall {:try_start_9 .. :try_end_35} :catchall_36
goto :goto_14
:catchall_36
move-exception v0
monitor-exit v1
throw v0
:cond_39
:try_start_39
monitor-exit v1
:try_end_3a
.catchall {:try_start_39 .. :try_end_3a} :catchall_36
goto :goto_29
.end method
.method public final a(Lcom/google/android/gms/common/api/k;)V
.registers 6
invoke-static {p1}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/google/android/gms/internal/gj;->c:Ljava/util/ArrayList;
monitor-enter v1
:try_start_6
iget-object v0, p0, Lcom/google/android/gms/internal/gj;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3e
const-string v0, "GmsClientEvents"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "registerConnectionCallbacks(): listener "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " is already registered"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_28
monitor-exit v1
:try_end_29
.catchall {:try_start_6 .. :try_end_29} :catchall_44
iget-object v0, p0, Lcom/google/android/gms/internal/gj;->b:Lcom/google/android/gms/internal/gl;
invoke-interface {v0}, Lcom/google/android/gms/internal/gl;->c()Z
move-result v0
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/google/android/gms/internal/gj;->f:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/internal/gj;->f:Landroid/os/Handler;
const/4 v2, 0x1
invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:cond_3d
return-void
:try_start_3e
:cond_3e
iget-object v0, p0, Lcom/google/android/gms/internal/gj;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_43
.catchall {:try_start_3e .. :try_end_43} :catchall_44
goto :goto_28
:catchall_44
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/google/android/gms/common/d;)V
.registers 6
invoke-static {p1}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/google/android/gms/internal/gj;->e:Ljava/util/ArrayList;
monitor-enter v1
:try_start_6
iget-object v0, p0, Lcom/google/android/gms/internal/gj;->e:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2a
const-string v0, "GmsClientEvents"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "registerConnectionFailedListener(): listener "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " is already registered"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_28
monitor-exit v1
return-void
:cond_2a
iget-object v0, p0, Lcom/google/android/gms/internal/gj;->e:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_2f
.catchall {:try_start_6 .. :try_end_2f} :catchall_30
goto :goto_28
:catchall_30
move-exception v0
monitor-exit v1
throw v0
.end method