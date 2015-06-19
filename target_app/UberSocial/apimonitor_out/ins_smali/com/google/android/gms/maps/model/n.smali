.class public final Lcom/google/android/gms/maps/model/n;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/maps/model/a/p;
.method public constructor <init>(Lcom/google/android/gms/maps/model/a/p;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/a/p;
iput-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
return-void
.end method
.method public a()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->a()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public a(F)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/p;->a(F)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public a(I)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/p;->a(I)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public a(Ljava/util/List;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/p;->a(Ljava/util/List;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public a(Z)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/p;->a(Z)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public b()Ljava/lang/String;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->b()Ljava/lang/String;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
return-object v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public b(F)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/p;->b(F)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public b(I)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/p;->b(I)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public b(Ljava/util/List;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/p;->b(Ljava/util/List;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public b(Z)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/p;->b(Z)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public c()Ljava/util/List;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->c()Ljava/util/List;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
return-object v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public d()Ljava/util/List;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->d()Ljava/util/List;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
return-object v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public e()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->e()F
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/google/android/gms/maps/model/n;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:try_start_6
:cond_6
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
check-cast p1, Lcom/google/android/gms/maps/model/n;
iget-object v1, p1, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/a/p;->a(Lcom/google/android/gms/maps/model/a/p;)Z
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11
move-result v0
goto :goto_5
:catch_11
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public f()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->f()I
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public g()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->g()I
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public h()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->h()F
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public hashCode()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->k()I
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public i()Z
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->i()Z
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public j()Z
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/n;->a:Lcom/google/android/gms/maps/model/a/p;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->j()Z
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method