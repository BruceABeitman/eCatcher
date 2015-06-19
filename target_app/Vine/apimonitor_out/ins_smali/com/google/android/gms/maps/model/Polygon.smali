.class public final Lcom/google/android/gms/maps/model/Polygon;
.super Ljava/lang/Object;
.field private final aaT:Lcom/google/android/gms/maps/model/internal/g;
.method public constructor <init>(Lcom/google/android/gms/maps/model/internal/g;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/internal/g;
iput-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/google/android/gms/maps/model/Polygon;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:try_start_6
:cond_6
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
check-cast p1, Lcom/google/android/gms/maps/model/Polygon;
iget-object v1, p1, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/g;->a(Lcom/google/android/gms/maps/model/internal/g;)Z
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
.method public getFillColor()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getFillColor()I
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
.method public getHoles()Ljava/util/List;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getHoles()Ljava/util/List;
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
.method public getId()Ljava/lang/String;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getId()Ljava/lang/String;
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
.method public getPoints()Ljava/util/List;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getPoints()Ljava/util/List;
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
.method public getStrokeColor()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getStrokeColor()I
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getStrokeWidth()F
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getZIndex()F
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->hashCodeRemote()I
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
.method public isGeodesic()Z
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->isGeodesic()Z
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->isVisible()Z
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->remove()V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setFillColor(I)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public setGeodesic(Z)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setGeodesic(Z)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public setHoles(Ljava/util/List;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setHoles(Ljava/util/List;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public setPoints(Ljava/util/List;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setPoints(Ljava/util/List;)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setStrokeColor(I)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setStrokeWidth(F)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setVisible(Z)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaT:Lcom/google/android/gms/maps/model/internal/g;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setZIndex(F)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method