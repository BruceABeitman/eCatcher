.class public final Lcom/google/android/gms/maps/model/IndoorLevel;
.super Ljava/lang/Object;
.field private final aaG:Lcom/google/android/gms/maps/model/internal/e;
.method public constructor <init>(Lcom/google/android/gms/maps/model/internal/e;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/internal/e;
iput-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->aaG:Lcom/google/android/gms/maps/model/internal/e;
return-void
.end method
.method public activate()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->aaG:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->activate()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/google/android/gms/maps/model/IndoorLevel;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:try_start_6
:cond_6
iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->aaG:Lcom/google/android/gms/maps/model/internal/e;
check-cast p1, Lcom/google/android/gms/maps/model/IndoorLevel;
iget-object v1, p1, Lcom/google/android/gms/maps/model/IndoorLevel;->aaG:Lcom/google/android/gms/maps/model/internal/e;
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
.method public getName()Ljava/lang/String;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->aaG:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->getName()Ljava/lang/String;
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
.method public getShortName()Ljava/lang/String;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->aaG:Lcom/google/android/gms/maps/model/internal/e;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->getShortName()Ljava/lang/String;
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
.method public hashCode()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->aaG:Lcom/google/android/gms/maps/model/internal/e;
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