.class final Lcom/google/android/gms/tagmanager/as;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/b;
.field private a:Lcom/google/android/gms/tagmanager/a;
.field private b:Lcom/google/android/gms/tagmanager/a;
.field private c:Lcom/google/android/gms/common/api/Status;
.field private d:Lcom/google/android/gms/tagmanager/au;
.field private e:Lcom/google/android/gms/tagmanager/at;
.field private f:Z
.field private g:Lcom/google/android/gms/tagmanager/i;
.method public final declared-synchronized a()V
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/as;->f:Z
if-eqz v0, :cond_c
const-string v0, "Releasing a released ContainerHolder."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
:goto_a
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_26
monitor-exit p0
return-void
:cond_c
const/4 v0, 0x1
:try_start_d
iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/as;->f:Z
iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->g:Lcom/google/android/gms/tagmanager/i;
invoke-virtual {v0, p0}, Lcom/google/android/gms/tagmanager/i;->a(Lcom/google/android/gms/tagmanager/as;)Z
iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->a:Lcom/google/android/gms/tagmanager/a;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/a;->b()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/as;->a:Lcom/google/android/gms/tagmanager/a;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/as;->b:Lcom/google/android/gms/tagmanager/a;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/as;->e:Lcom/google/android/gms/tagmanager/at;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/as;->d:Lcom/google/android/gms/tagmanager/au;
:try_end_25
.catchall {:try_start_d .. :try_end_25} :catchall_26
goto :goto_a
:catchall_26
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(Ljava/lang/String;)V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/as;->f:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_d
if-eqz v0, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->a:Lcom/google/android/gms/tagmanager/a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/a;->a(Ljava/lang/String;)V
:try_end_c
.catchall {:try_start_7 .. :try_end_c} :catchall_d
goto :goto_5
:catchall_d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final b()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->c:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public final declared-synchronized c()V
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/as;->f:Z
if-eqz v0, :cond_c
const-string v0, "Refreshing a released ContainerHolder."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
:goto_a
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_f
monitor-exit p0
return-void
:cond_c
:try_start_c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->e:Lcom/google/android/gms/tagmanager/at;
:try_end_e
.catchall {:try_start_c .. :try_end_e} :catchall_f
goto :goto_a
:catchall_f
move-exception v0
monitor-exit p0
throw v0
.end method
.method final d()Ljava/lang/String;
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/as;->f:Z
if-eqz v0, :cond_c
const-string v0, "getContainerId called on a released ContainerHolder."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
const-string v0, ""
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->a:Lcom/google/android/gms/tagmanager/a;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/a;->a()Ljava/lang/String;
move-result-object v0
goto :goto_b
.end method
.method final e()V
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/as;->f:Z
if-eqz v0, :cond_a
const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->e:Lcom/google/android/gms/tagmanager/at;
goto :goto_9
.end method
.method final f()Ljava/lang/String;
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/as;->f:Z
if-eqz v0, :cond_c
const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
const-string v0, ""
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->e:Lcom/google/android/gms/tagmanager/at;
invoke-interface {v0}, Lcom/google/android/gms/tagmanager/at;->a()Ljava/lang/String;
move-result-object v0
goto :goto_b
.end method