.class public final Lcom/google/android/gms/maps/model/Polygon;
.super Ljava/lang/Object;
.field private final Qn:Lcom/google/android/gms/maps/model/internal/e;
.method public constructor <init>(Lcom/google/android/gms/maps/model/internal/e;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/internal/e;
iput-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/google/android/gms/maps/model/Polygon;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:try_start_6
:cond_6
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
check-cast p1, Lcom/google/android/gms/maps/model/Polygon;
iget-object v1, p1, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/e;->a(Lcom/google/android/gms/maps/model/internal/e;)Z
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
.method public final getFillColor()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->getFillColor()I
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
.method public final getHoles()Ljava/util/List;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->getHoles()Ljava/util/List;
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
.method public final getId()Ljava/lang/String;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->getId()Ljava/lang/String;
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
.method public final getPoints()Ljava/util/List;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->getPoints()Ljava/util/List;
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
.method public final getStrokeColor()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->getStrokeColor()I
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
.method public final getStrokeWidth()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->getStrokeWidth()F
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
.method public final getZIndex()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->getZIndex()F
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
.method public final hashCode()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->hashCodeRemote()I
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
.method public final isGeodesic()Z
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->isGeodesic()Z
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
.method public final isVisible()Z
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->isVisible()Z
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
.method public final remove()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->remove()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setFillColor(I)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/e;->setFillColor(I)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setGeodesic(Z)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/e;->setGeodesic(Z)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setHoles(Ljava/util/List;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/e;->setHoles(Ljava/util/List;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setPoints(Ljava/util/List;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/e;->setPoints(Ljava/util/List;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setStrokeColor(I)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/e;->setStrokeColor(I)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setStrokeWidth(F)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/e;->setStrokeWidth(F)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setVisible(Z)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/e;->setVisible(Z)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setZIndex(F)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->Qn:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/e;->setZIndex(F)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method