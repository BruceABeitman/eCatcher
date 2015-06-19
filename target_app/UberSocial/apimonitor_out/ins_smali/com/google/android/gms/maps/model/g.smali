.class public final Lcom/google/android/gms/maps/model/g;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/maps/model/a/j;
.method public constructor <init>(Lcom/google/android/gms/maps/model/a/j;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/a/j;
iput-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
return-void
.end method
.method public a()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/j;->a()V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/j;->a(F)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public a(FF)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/model/a/j;->a(FF)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/j;->a(Lcom/google/android/gms/maps/model/LatLng;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public a(Lcom/google/android/gms/maps/model/LatLngBounds;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/j;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public a(Lcom/google/android/gms/maps/model/a;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-virtual {p1}, Lcom/google/android/gms/maps/model/a;->a()Lcom/google/android/gms/c/d;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/a/j;->a(Lcom/google/android/gms/c/d;)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
return-void
:catch_a
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public a(Z)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/j;->a(Z)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/j;->b()Ljava/lang/String;
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/j;->b(F)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/j;->c()Lcom/google/android/gms/maps/model/LatLng;
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
.method public c(F)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/j;->c(F)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public d()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/j;->d()F
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
.method public d(F)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/j;->d(F)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public e()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/j;->e()F
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
instance-of v0, p1, Lcom/google/android/gms/maps/model/g;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:try_start_6
:cond_6
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
check-cast p1, Lcom/google/android/gms/maps/model/g;
iget-object v1, p1, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/a/j;->a(Lcom/google/android/gms/maps/model/a/j;)Z
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
.method public f()Lcom/google/android/gms/maps/model/LatLngBounds;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/j;->f()Lcom/google/android/gms/maps/model/LatLngBounds;
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
.method public g()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/j;->g()F
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/j;->h()F
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/j;->k()I
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/j;->i()Z
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
.method public j()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/g;->a:Lcom/google/android/gms/maps/model/a/j;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/j;->j()F
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