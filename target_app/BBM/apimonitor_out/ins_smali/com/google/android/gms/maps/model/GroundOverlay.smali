.class public final Lcom/google/android/gms/maps/model/GroundOverlay;
.super Ljava/lang/Object;
.field private final PR:Lcom/google/android/gms/maps/model/internal/c;
.method public constructor <init>(Lcom/google/android/gms/maps/model/internal/c;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/internal/c;
iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/google/android/gms/maps/model/GroundOverlay;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:try_start_6
:cond_6
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
check-cast p1, Lcom/google/android/gms/maps/model/GroundOverlay;
iget-object v1, p1, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/c;->a(Lcom/google/android/gms/maps/model/internal/c;)Z
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
.method public final getBearing()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getBearing()F
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
.method public final getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
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
.method public final getHeight()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getHeight()F
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
.method public final getId()Ljava/lang/String;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getId()Ljava/lang/String;
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
.method public final getPosition()Lcom/google/android/gms/maps/model/LatLng;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getPosition()Lcom/google/android/gms/maps/model/LatLng;
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
.method public final getTransparency()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getTransparency()F
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
.method public final getWidth()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getWidth()F
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getZIndex()F
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->hashCodeRemote()I
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->isVisible()Z
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->remove()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setBearing(F)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setBearing(F)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setDimensions(F)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setDimensions(F)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setDimensions(FF)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/model/internal/c;->a(FF)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setImage(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-virtual {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->gK()Lcom/google/android/gms/dynamic/b;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/c;->h(Lcom/google/android/gms/dynamic/b;)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
return-void
:catch_a
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setPositionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setPositionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final setTransparency(F)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setTransparency(F)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setVisible(Z)V
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
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->PR:Lcom/google/android/gms/maps/model/internal/c;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setZIndex(F)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method