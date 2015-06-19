.class public final Lcom/google/android/gms/maps/model/Circle;
.super Ljava/lang/Object;
.field private final aao:Lcom/google/android/gms/maps/model/internal/b;
.method public constructor <init>(Lcom/google/android/gms/maps/model/internal/b;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/internal/b;
iput-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/google/android/gms/maps/model/Circle;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:try_start_6
:cond_6
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
check-cast p1, Lcom/google/android/gms/maps/model/Circle;
iget-object v1, p1, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/b;->a(Lcom/google/android/gms/maps/model/internal/b;)Z
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11
move-result v0
goto :goto_5
:catch_11
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/b;->getCenter()Lcom/google/android/gms/maps/model/LatLng;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
return-object v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public getFillColor()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/b;->getFillColor()I
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public getId()Ljava/lang/String;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/b;->getId()Ljava/lang/String;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
return-object v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public getRadius()D
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/b;->getRadius()D
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-wide v0
return-wide v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public getStrokeColor()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/b;->getStrokeColor()I
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public getStrokeWidth()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/b;->getStrokeWidth()F
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public getZIndex()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/b;->getZIndex()F
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public hashCode()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/b;->hashCodeRemote()I
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public isVisible()Z
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/b;->isVisible()Z
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public remove()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/b;->remove()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public setCenter(Lcom/google/android/gms/maps/model/LatLng;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/b;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public setFillColor(I)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/b;->setFillColor(I)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public setRadius(D)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/model/internal/b;->setRadius(D)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public setStrokeColor(I)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/b;->setStrokeColor(I)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public setStrokeWidth(F)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/b;->setStrokeWidth(F)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public setVisible(Z)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/b;->setVisible(Z)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public setZIndex(F)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Circle;->aao:Lcom/google/android/gms/maps/model/internal/b;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/b;->setZIndex(F)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method