.class public final Lcom/google/android/gms/maps/model/e;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/maps/model/a/g;
.method public constructor <init>(Lcom/google/android/gms/maps/model/a/g;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/a/g;
iput-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
return-void
.end method
.method public a()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->a()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public a(D)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/model/a/g;->a(D)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/g;->a(F)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/g;->a(I)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/g;->a(Lcom/google/android/gms/maps/model/LatLng;)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/g;->a(Z)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->b()Ljava/lang/String;
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/g;->b(F)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/g;->b(I)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public c()Lcom/google/android/gms/maps/model/LatLng;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->c()Lcom/google/android/gms/maps/model/LatLng;
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
.method public d()D
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->d()D
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-wide v0
return-wide v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public e()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->e()F
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
instance-of v0, p1, Lcom/google/android/gms/maps/model/e;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:try_start_6
:cond_6
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
check-cast p1, Lcom/google/android/gms/maps/model/e;
iget-object v1, p1, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/a/g;->a(Lcom/google/android/gms/maps/model/a/g;)Z
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->f()I
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->g()I
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->h()F
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->j()I
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/maps/model/a/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->i()Z
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