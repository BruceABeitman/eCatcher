.class public final Lcom/google/android/gms/maps/model/p;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/maps/model/a/a;
.method public constructor <init>(Lcom/google/android/gms/maps/model/a/a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/a/a;
iput-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
return-void
.end method
.method public a()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/a;->a()V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/a;->a(F)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/a;->a(I)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/a;->a(Ljava/util/List;)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/a;->a(Z)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/a;->b()Ljava/lang/String;
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/a;->b(F)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/a;->b(Z)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/a;->c()Ljava/util/List;
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
.method public d()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/a;->d()F
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
.method public e()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/a;->e()I
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
instance-of v0, p1, Lcom/google/android/gms/maps/model/p;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:try_start_6
:cond_6
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
check-cast p1, Lcom/google/android/gms/maps/model/p;
iget-object v1, p1, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/a/a;->a(Lcom/google/android/gms/maps/model/a/a;)Z
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
.method public f()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/a;->f()F
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
.method public g()Z
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/a;->g()Z
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
.method public h()Z
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/a;->h()Z
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/p;->a:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/a;->i()I
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