.class public final Lcom/google/android/gms/internal/gu;
.super Ljava/lang/Object;
.field final a:Ljava/util/ArrayList;
.field private final b:Lcom/google/android/gms/internal/gw;
.field private c:Ljava/util/ArrayList;
.field private d:Z
.field private e:Ljava/util/ArrayList;
.field private final f:Landroid/os/Handler;
.field private g:Z
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gw;)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/gu;->a:Ljava/util/ArrayList;
iput-boolean v1, p0, Lcom/google/android/gms/internal/gu;->d:Z
iput-boolean v1, p0, Lcom/google/android/gms/internal/gu;->g:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
iput-object p3, p0, Lcom/google/android/gms/internal/gu;->b:Lcom/google/android/gms/internal/gw;
new-instance v0, Lcom/google/android/gms/internal/gv;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gv;-><init>(Lcom/google/android/gms/internal/gu;Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gu;->f:Landroid/os/Handler;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/gu;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic b(Lcom/google/android/gms/internal/gu;)Lcom/google/android/gms/internal/gw;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->b:Lcom/google/android/gms/internal/gw;
return-object v0
.end method
.method protected a()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->b:Lcom/google/android/gms/internal/gw;
invoke-interface {v0}, Lcom/google/android/gms/internal/gw;->b()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gu;->a(Landroid/os/Bundle;)V
monitor-exit v1
return-void
:catchall_e
move-exception v0
monitor-exit v1
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_e
throw v0
.end method
.method public a(I)V
.registers 8
const/4 v2, 0x1
const/4 v0, 0x0
iget-object v1, p0, Lcom/google/android/gms/internal/gu;->f:Landroid/os/Handler;
invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
iget-object v2, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
monitor-enter v2
const/4 v1, 0x1
:try_start_b
iput-boolean v1, p0, Lcom/google/android/gms/internal/gu;->d:Z
iget-object v3, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v4
move v1, v0
:goto_14
if-ge v1, v4, :cond_1e
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->b:Lcom/google/android/gms/internal/gw;
invoke-interface {v0}, Lcom/google/android/gms/internal/gw;->d_()Z
move-result v0
if-nez v0, :cond_23
:cond_1e
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/gu;->d:Z
monitor-exit v2
return-void
:cond_23
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/h;
invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/h;->a(I)V
:cond_38
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_14
:catchall_3c
move-exception v0
monitor-exit v2
:try_end_3e
.catchall {:try_start_b .. :try_end_3e} :catchall_3c
throw v0
.end method
.method public a(Landroid/os/Bundle;)V
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v3, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
monitor-enter v3
:try_start_5
iget-boolean v2, p0, Lcom/google/android/gms/internal/gu;->d:Z
if-nez v2, :cond_44
move v2, v1
:goto_a
invoke-static {v2}, Lcom/google/android/gms/internal/hv;->a(Z)V
iget-object v2, p0, Lcom/google/android/gms/internal/gu;->f:Landroid/os/Handler;
const/4 v4, 0x1
invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/google/android/gms/internal/gu;->d:Z
iget-object v2, p0, Lcom/google/android/gms/internal/gu;->a:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-nez v2, :cond_46
:goto_1e
invoke-static {v1}, Lcom/google/android/gms/internal/hv;->a(Z)V
iget-object v2, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v4
move v1, v0
:goto_28
if-ge v1, v4, :cond_3a
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->b:Lcom/google/android/gms/internal/gw;
invoke-interface {v0}, Lcom/google/android/gms/internal/gw;->d_()Z
move-result v0
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->b:Lcom/google/android/gms/internal/gw;
invoke-interface {v0}, Lcom/google/android/gms/internal/gw;->c()Z
move-result v0
if-nez v0, :cond_48
:cond_3a
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/gu;->d:Z
monitor-exit v3
return-void
:cond_44
move v2, v0
goto :goto_a
:cond_46
move v1, v0
goto :goto_1e
:cond_48
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->a:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_62
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/h;
invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/h;->a(Landroid/os/Bundle;)V
:cond_62
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_28
:catchall_66
move-exception v0
monitor-exit v3
:try_end_68
.catchall {:try_start_5 .. :try_end_68} :catchall_66
throw v0
.end method
.method public a(Lcom/google/android/gms/common/api/h;)V
.registers 6
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
monitor-enter v1
:try_start_6
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_42
const-string v0, "GmsClientEvents"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "registerConnectionCallbacks(): listener "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " is already registered"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_2c
monitor-exit v1
:try_end_2d
.catchall {:try_start_6 .. :try_end_2d} :catchall_55
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->b:Lcom/google/android/gms/internal/gw;
invoke-interface {v0}, Lcom/google/android/gms/internal/gw;->c()Z
move-result v0
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->f:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/internal/gu;->f:Landroid/os/Handler;
const/4 v2, 0x1
invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:cond_41
return-void
:cond_42
:try_start_42
iget-boolean v0, p0, Lcom/google/android/gms/internal/gu;->d:Z
if-eqz v0, :cond_4f
new-instance v0, Ljava/util/ArrayList;
iget-object v2, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
:cond_4f
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_2c
:catchall_55
move-exception v0
monitor-exit v1
:try_end_57
.catchall {:try_start_42 .. :try_end_57} :catchall_55
throw v0
.end method
.method public a(Lcom/google/android/gms/common/b;)V
.registers 8
const/4 v2, 0x1
const/4 v0, 0x0
iget-object v1, p0, Lcom/google/android/gms/internal/gu;->f:Landroid/os/Handler;
invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
iget-object v2, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
monitor-enter v2
const/4 v1, 0x1
:try_start_b
iput-boolean v1, p0, Lcom/google/android/gms/internal/gu;->g:Z
iget-object v3, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v4
move v1, v0
:goto_14
if-ge v1, v4, :cond_39
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->b:Lcom/google/android/gms/internal/gw;
invoke-interface {v0}, Lcom/google/android/gms/internal/gw;->d_()Z
move-result v0
if-nez v0, :cond_20
monitor-exit v2
:goto_1f
return-void
:cond_20
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_35
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/f;
invoke-interface {v0, p1}, Lcom/google/android/gms/common/f;->a(Lcom/google/android/gms/common/b;)V
:cond_35
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_14
:cond_39
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/gu;->g:Z
monitor-exit v2
goto :goto_1f
:catchall_3e
move-exception v0
monitor-exit v2
:try_end_40
.catchall {:try_start_b .. :try_end_40} :catchall_3e
throw v0
.end method
.method public a(Lcom/google/android/gms/common/f;)V
.registers 6
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
monitor-enter v1
:try_start_6
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2e
const-string v0, "GmsClientEvents"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "registerConnectionFailedListener(): listener "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " is already registered"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_2c
monitor-exit v1
return-void
:cond_2e
iget-boolean v0, p0, Lcom/google/android/gms/internal/gu;->g:Z
if-eqz v0, :cond_3b
new-instance v0, Ljava/util/ArrayList;
iget-object v2, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
:cond_3b
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_2c
:catchall_41
move-exception v0
monitor-exit v1
:try_end_43
.catchall {:try_start_6 .. :try_end_43} :catchall_41
throw v0
.end method
.method public b(Lcom/google/android/gms/common/api/h;)Z
.registers 4
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
monitor-enter v1
:try_start_6
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
monitor-exit v1
return v0
:catchall_e
move-exception v0
monitor-exit v1
:try_end_10
.catchall {:try_start_6 .. :try_end_10} :catchall_e
throw v0
.end method
.method public b(Lcom/google/android/gms/common/f;)Z
.registers 4
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
monitor-enter v1
:try_start_6
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
monitor-exit v1
return v0
:catchall_e
move-exception v0
monitor-exit v1
:try_end_10
.catchall {:try_start_6 .. :try_end_10} :catchall_e
throw v0
.end method
.method public c(Lcom/google/android/gms/common/api/h;)V
.registers 6
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
monitor-enter v1
:try_start_6
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
if-eqz v0, :cond_3d
iget-boolean v0, p0, Lcom/google/android/gms/internal/gu;->d:Z
if-eqz v0, :cond_17
new-instance v0, Ljava/util/ArrayList;
iget-object v2, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
:cond_17
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3f
const-string v0, "GmsClientEvents"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "unregisterConnectionCallbacks(): listener "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " not found"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_3d
:cond_3d
monitor-exit v1
return-void
:cond_3f
iget-boolean v0, p0, Lcom/google/android/gms/internal/gu;->d:Z
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3d
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_3d
:catchall_51
move-exception v0
monitor-exit v1
:try_end_53
.catchall {:try_start_6 .. :try_end_53} :catchall_51
throw v0
.end method
.method public c(Lcom/google/android/gms/common/f;)V
.registers 6
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
monitor-enter v1
:try_start_6
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
if-eqz v0, :cond_3d
iget-boolean v0, p0, Lcom/google/android/gms/internal/gu;->g:Z
if-eqz v0, :cond_17
new-instance v0, Ljava/util/ArrayList;
iget-object v2, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
:cond_17
iget-object v0, p0, Lcom/google/android/gms/internal/gu;->e:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3d
const-string v0, "GmsClientEvents"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "unregisterConnectionFailedListener(): listener "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " not found"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_3d
monitor-exit v1
return-void
:catchall_3f
move-exception v0
monitor-exit v1
:try_end_41
.catchall {:try_start_6 .. :try_end_41} :catchall_3f
throw v0
.end method