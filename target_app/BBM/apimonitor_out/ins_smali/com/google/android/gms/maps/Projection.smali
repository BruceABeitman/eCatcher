.class public final Lcom/google/android/gms/maps/Projection;
.super Ljava/lang/Object;
.field private final Px:Lcom/google/android/gms/maps/internal/IProjectionDelegate;
.method constructor <init>(Lcom/google/android/gms/maps/internal/IProjectionDelegate;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/maps/Projection;->Px:Lcom/google/android/gms/maps/internal/IProjectionDelegate;
return-void
.end method
.method public final fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/Projection;->Px:Lcom/google/android/gms/maps/internal/IProjectionDelegate;
invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IProjectionDelegate;->fromScreenLocation(Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/maps/model/LatLng;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
return-object v0
:catch_b
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/Projection;->Px:Lcom/google/android/gms/maps/internal/IProjectionDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IProjectionDelegate;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;
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
.method public final toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/Projection;->Px:Lcom/google/android/gms/maps/internal/IProjectionDelegate;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IProjectionDelegate;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/dynamic/b;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Point;
:try_end_c
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
return-object v0
:catch_d
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method