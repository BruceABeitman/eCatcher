.class final Lcom/spotify/mobile/android/service/c;
.super Lcom/spotify/mobile/android/service/h;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
.method constructor <init>(Lcom/spotify/mobile/android/service/ConnectManagerProxy;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-direct {p0}, Lcom/spotify/mobile/android/service/h;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/d;)I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a(Lcom/spotify/mobile/android/service/d;)I
move-result v0
return v0
.end method
.method public final a()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public final a(F)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a(F)V
return-void
.end method
.method public final a(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a(I)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a(Ljava/lang/String;)V
return-void
.end method
.method public final a(Z)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a(Z)V
return-void
.end method
.method public final b()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->b()I
move-result v0
return v0
.end method
.method public final b(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->b(Ljava/lang/String;)V
return-void
.end method
.method public final c()Lcom/spotify/mobile/android/service/ConnectDevice;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->c()Lcom/spotify/mobile/android/service/ConnectDevice;
move-result-object v0
return-object v0
.end method
.method public final d()Lcom/spotify/mobile/android/service/ConnectDevice;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->d()Lcom/spotify/mobile/android/service/ConnectDevice;
move-result-object v0
return-object v0
.end method
.method public final e()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->e()V
return-void
.end method
.method public final f()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->f()V
return-void
.end method
.method public final g()F
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->g()F
move-result v0
return v0
.end method
.method public final h()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->h()V
return-void
.end method
.method public final i()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->i()V
return-void
.end method
.method public final j()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/c;->a:Lcom/spotify/mobile/android/service/ConnectManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->j()Z
move-result v0
return v0
.end method