.class  Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/internal/IGamesService;
.field private ko:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
return-void
.end method
.method public E(Z)V
.registers 7
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_11
const/4 v0, 0x1
:cond_11
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13cc
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1f
.catchall {:try_start_9 .. :try_end_1f} :catchall_26
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_26
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public F(Z)V
.registers 7
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_11
const/4 v0, 0x1
:cond_11
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2efa
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1f
.catchall {:try_start_9 .. :try_end_1f} :catchall_26
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_26
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[BLjava/lang/String;Ljava/lang/String;)I
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_35
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByteArray([B)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13a9
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
:try_end_2d
.catchall {:try_start_8 .. :try_end_2d} :catchall_37
move-result v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:cond_35
const/4 v0, 0x0
goto :goto_13
:catchall_37
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(IIZ)Landroid/content/Intent;
.registers 9
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p3, :cond_17
const/4 v0, 0x1
:cond_17
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2330
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_3a
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:goto_33
:try_end_33
.catchall {:try_start_9 .. :try_end_33} :catchall_3c
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_3a
const/4 v0, 0x0
goto :goto_33
:catchall_3c
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(I[BILjava/lang/String;)Landroid/content/Intent;
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByteArray([B)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x271c
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_39
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:goto_32
:try_end_32
.catchall {:try_start_8 .. :try_end_32} :catchall_3b
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_39
const/4 v0, 0x0
goto :goto_32
:catchall_3b
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3d
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2725
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_4a
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:goto_36
:try_end_36
.catchall {:try_start_8 .. :try_end_36} :catchall_42
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_3d
const/4 v0, 0x0
:try_start_3e
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_41
.catchall {:try_start_3e .. :try_end_41} :catchall_42
goto :goto_17
:catchall_42
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_4a
const/4 v0, 0x0
goto :goto_36
.end method
.method public a(Lcom/google/android/gms/games/internal/request/GameRequestCluster;Ljava/lang/String;)Landroid/content/Intent;
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3a
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2726
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_47
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:goto_33
:try_end_33
.catchall {:try_start_8 .. :try_end_33} :catchall_3f
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_3a
const/4 v0, 0x0
:try_start_3b
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_3e
.catchall {:try_start_3b .. :try_end_3e} :catchall_3f
goto :goto_17
:catchall_3f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_47
const/4 v0, 0x0
goto :goto_33
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;I)Landroid/content/Intent;
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3a
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2333
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_47
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:goto_33
:try_end_33
.catchall {:try_start_8 .. :try_end_33} :catchall_3f
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_3a
const/4 v0, 0x0
:try_start_3b
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_3e
.catchall {:try_start_3b .. :try_end_3e} :catchall_3f
goto :goto_17
:catchall_3f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_47
const/4 v0, 0x0
goto :goto_33
.end method
.method public a(Ljava/lang/String;ZZI)Landroid/content/Intent;
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_40
move v2, v0
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p3, :cond_42
:goto_1a
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2ee1
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_44
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:goto_39
:try_end_39
.catchall {:try_start_a .. :try_end_39} :catchall_46
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_40
move v2, v1
goto :goto_15
:cond_42
move v0, v1
goto :goto_1a
:cond_44
const/4 v0, 0x0
goto :goto_39
:catchall_46
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a([I)Landroid/content/Intent;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeIntArray([I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2efe
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_30
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:goto_29
:try_end_29
.catchall {:try_start_8 .. :try_end_29} :catchall_32
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_30
const/4 v0, 0x0
goto :goto_29
:catchall_32
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a([Lcom/google/android/gms/games/multiplayer/ParticipantEntity;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;
.registers 11
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-virtual {v1, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p4, :cond_4b
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p4, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V
:goto_21
if-eqz p5, :cond_58
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p5, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V
:goto_2b
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2347
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_5d
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:try_end_44
.catchall {:try_start_8 .. :try_end_44} :catchall_50
:goto_44
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_4b
const/4 v0, 0x0
:try_start_4c
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_4f
.catchall {:try_start_4c .. :try_end_4f} :catchall_50
goto :goto_21
:catchall_50
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_58
const/4 v0, 0x0
:try_start_59
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_5c
.catchall {:try_start_59 .. :try_end_5c} :catchall_50
goto :goto_2b
:cond_5d
const/4 v0, 0x0
goto :goto_44
.end method
.method public a(JLjava/lang/String;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f53
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_25
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_25
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Landroid/os/IBinder;Landroid/os/Bundle;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_2c
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_1a
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x138d
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_25
.catchall {:try_start_8 .. :try_end_25} :catchall_31
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2c
const/4 v0, 0x0
:try_start_2d
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_31
goto :goto_1a
:catchall_31
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/drive/Contents;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_29
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/Contents;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2ef3
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_22
.catchall {:try_start_8 .. :try_end_22} :catchall_2e
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_29
const/4 v0, 0x0
:try_start_2a
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_2d
.catchall {:try_start_2a .. :try_end_2d} :catchall_2e
goto :goto_17
:catchall_2e
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x138a
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_2a
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_28
const/4 v0, 0x0
goto :goto_13
:catchall_2a
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;I)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2720
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;III)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_31
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2719
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_2a
.catchall {:try_start_8 .. :try_end_2a} :catchall_33
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_31
const/4 v0, 0x0
goto :goto_13
:catchall_33
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;IIZZ)V
.registers 11
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_3d
move v2, v0
:goto_21
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p5, :cond_3f
:goto_26
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x13b4
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_34
.catchall {:try_start_a .. :try_end_34} :catchall_41
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3b
const/4 v2, 0x0
goto :goto_15
:cond_3d
move v2, v1
goto :goto_21
:cond_3f
move v0, v1
goto :goto_26
:catchall_41
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;II[Ljava/lang/String;Landroid/os/Bundle;)V
.registers 11
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
if-eqz p5, :cond_3d
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p5, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_29
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f44
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_34
.catchall {:try_start_8 .. :try_end_34} :catchall_42
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3b
const/4 v0, 0x0
goto :goto_13
:cond_3d
const/4 v0, 0x0
:try_start_3e
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_41
.catchall {:try_start_3e .. :try_end_41} :catchall_42
goto :goto_29
:catchall_42
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_38
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p3, :cond_3a
move v2, v0
:goto_1e
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_3c
:goto_23
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x1397
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_31
.catchall {:try_start_a .. :try_end_31} :catchall_3e
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_38
const/4 v2, 0x0
goto :goto_15
:cond_3a
move v2, v1
goto :goto_1e
:cond_3c
move v0, v1
goto :goto_23
:catchall_3e
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;I[I)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeIntArray([I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2722
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13c2
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f52
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/Bundle;II)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_38
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_3a
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_20
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x139d
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_31
.catchall {:try_start_8 .. :try_end_31} :catchall_3f
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_38
const/4 v0, 0x0
goto :goto_13
:cond_3a
const/4 v0, 0x0
:try_start_3b
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_3e
.catchall {:try_start_3b .. :try_end_3e} :catchall_3f
goto :goto_20
:catchall_3f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;I[Ljava/lang/String;Landroid/os/Bundle;ZJ)V
.registers 14
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_45
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
if-eqz p5, :cond_47
const/4 v2, 0x1
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p5, v3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_2b
if-eqz p6, :cond_54
:goto_2d
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v3, p7, p8}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x13a6
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_3e
.catchall {:try_start_a .. :try_end_3e} :catchall_4c
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_45
const/4 v2, 0x0
goto :goto_15
:cond_47
const/4 v2, 0x0
:try_start_48
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_4b
.catchall {:try_start_48 .. :try_end_4b} :catchall_4c
goto :goto_2b
:catchall_4c
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_54
move v0, v1
goto :goto_2d
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;Ljava/lang/String;ZJ)V
.registers 12
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_38
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p4, :cond_20
const/4 v0, 0x1
:cond_20
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p5, p6}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x13a7
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_31
.catchall {:try_start_9 .. :try_end_31} :catchall_3a
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_38
const/4 v1, 0x0
goto :goto_14
:catchall_3a
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1396
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x271b
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V
.registers 12
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p6, :cond_26
const/4 v0, 0x1
:cond_26
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x139b
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_34
.catchall {:try_start_9 .. :try_end_34} :catchall_3d
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3b
const/4 v1, 0x0
goto :goto_14
:catchall_3d
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
.registers 11
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p5, :cond_3d
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p5, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_29
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13a1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_34
.catchall {:try_start_8 .. :try_end_34} :catchall_42
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3b
const/4 v0, 0x0
goto :goto_13
:cond_3d
const/4 v0, 0x0
:try_start_3e
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_41
.catchall {:try_start_3e .. :try_end_41} :catchall_42
goto :goto_29
:catchall_42
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZ)V
.registers 10
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_35
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_20
const/4 v0, 0x1
:cond_20
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x1f57
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2e
.catchall {:try_start_9 .. :try_end_2e} :catchall_37
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_35
const/4 v1, 0x0
goto :goto_14
:catchall_37
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
.registers 11
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_3d
move v2, v0
:goto_21
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p5, :cond_3f
:goto_26
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x13b5
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_34
.catchall {:try_start_a .. :try_end_34} :catchall_41
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3b
const/4 v2, 0x0
goto :goto_15
:cond_3d
move v2, v1
goto :goto_21
:cond_3f
move v0, v1
goto :goto_26
:catchall_41
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZZZ)V
.registers 13
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_47
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_49
move v2, v0
:goto_21
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p5, :cond_4b
move v2, v0
:goto_27
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p6, :cond_4d
move v2, v0
:goto_2d
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p7, :cond_4f
:goto_32
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x1965
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_40
.catchall {:try_start_a .. :try_end_40} :catchall_51
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_47
const/4 v2, 0x0
goto :goto_15
:cond_49
move v2, v1
goto :goto_21
:cond_4b
move v2, v1
goto :goto_27
:cond_4d
move v2, v1
goto :goto_2d
:cond_4f
move v0, v1
goto :goto_32
:catchall_51
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I[I)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_31
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeIntArray([I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2723
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_2a
.catchall {:try_start_8 .. :try_end_2a} :catchall_33
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_31
const/4 v0, 0x0
goto :goto_13
:catchall_33
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;J)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1398
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;JLjava/lang/String;)V
.registers 11
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_31
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V
invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1b5a
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_2a
.catchall {:try_start_8 .. :try_end_2a} :catchall_33
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_31
const/4 v0, 0x0
goto :goto_13
:catchall_33
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_38
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p4, :cond_3a
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_26
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x139f
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_31
.catchall {:try_start_8 .. :try_end_31} :catchall_3f
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_38
const/4 v0, 0x0
goto :goto_13
:cond_3a
const/4 v0, 0x0
:try_start_3b
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_3e
.catchall {:try_start_3b .. :try_end_3e} :catchall_3f
goto :goto_26
:catchall_3f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/drive/Contents;)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3f
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p3, :cond_41
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->writeToParcel(Landroid/os/Parcel;I)V
:goto_23
if-eqz p4, :cond_4e
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p4, v1, v0}, Lcom/google/android/gms/drive/Contents;->writeToParcel(Landroid/os/Parcel;I)V
:goto_2d
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2ee7
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_38
.catchall {:try_start_8 .. :try_end_38} :catchall_46
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3f
const/4 v0, 0x0
goto :goto_13
:cond_41
const/4 v0, 0x0
:try_start_42
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_45
.catchall {:try_start_42 .. :try_end_45} :catchall_46
goto :goto_23
:catchall_46
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_4e
const/4 v0, 0x0
:try_start_4f
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_52
.catchall {:try_start_4f .. :try_end_52} :catchall_46
goto :goto_2d
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13ae
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;II)V
.registers 11
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_34
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f41
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_2d
.catchall {:try_start_8 .. :try_end_2d} :catchall_36
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_34
const/4 v0, 0x0
goto :goto_13
:catchall_36
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;III)V
.registers 12
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_37
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x271a
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_30
.catchall {:try_start_8 .. :try_end_30} :catchall_39
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_37
const/4 v0, 0x0
goto :goto_13
:catchall_39
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V
.registers 13
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p7, :cond_29
const/4 v0, 0x1
:cond_29
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x13af
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_37
.catchall {:try_start_9 .. :try_end_37} :catchall_40
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3e
const/4 v1, 0x0
goto :goto_14
:catchall_40
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V
.registers 12
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p5, :cond_40
move v2, v0
:goto_24
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p6, :cond_42
:goto_29
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2344
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_37
.catchall {:try_start_a .. :try_end_37} :catchall_44
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3e
const/4 v2, 0x0
goto :goto_15
:cond_40
move v2, v1
goto :goto_24
:cond_42
move v0, v1
goto :goto_29
:catchall_44
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/drive/Contents;)V
.registers 11
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_42
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p4, :cond_44
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p4, v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->writeToParcel(Landroid/os/Parcel;I)V
:goto_26
if-eqz p5, :cond_51
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p5, v1, v0}, Lcom/google/android/gms/drive/Contents;->writeToParcel(Landroid/os/Parcel;I)V
:goto_30
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2f01
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_3b
.catchall {:try_start_8 .. :try_end_3b} :catchall_49
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_42
const/4 v0, 0x0
goto :goto_13
:cond_44
const/4 v0, 0x0
:try_start_45
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_48
.catchall {:try_start_45 .. :try_end_48} :catchall_49
goto :goto_26
:catchall_49
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_51
const/4 v0, 0x0
:try_start_52
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_55
.catchall {:try_start_52 .. :try_end_55} :catchall_49
goto :goto_30
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 10
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_35
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p4, :cond_20
const/4 v0, 0x1
:cond_20
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x1772
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2e
.catchall {:try_start_9 .. :try_end_2e} :catchall_37
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_35
const/4 v1, 0x0
goto :goto_14
:catchall_37
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[IIZ)V
.registers 12
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeIntArray([I)V
invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p6, :cond_26
const/4 v0, 0x1
:cond_26
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2eef
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_34
.catchall {:try_start_9 .. :try_end_34} :catchall_3d
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3b
const/4 v1, 0x0
goto :goto_14
:catchall_3d
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_31
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2718
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_2a
.catchall {:try_start_8 .. :try_end_2a} :catchall_33
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_31
const/4 v0, 0x0
goto :goto_13
:catchall_33
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
.registers 11
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_38
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
if-eqz p5, :cond_23
const/4 v0, 0x1
:cond_23
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2efc
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_31
.catchall {:try_start_9 .. :try_end_31} :catchall_3a
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_38
const/4 v1, 0x0
goto :goto_14
:catchall_3a
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
.registers 9
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_32
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p3, :cond_1d
const/4 v0, 0x1
:cond_1d
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x13be
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2b
.catchall {:try_start_9 .. :try_end_2b} :catchall_34
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_32
const/4 v1, 0x0
goto :goto_14
:catchall_34
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
.registers 11
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_35
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeByteArray([B)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-virtual {v1, p5, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f47
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_2e
.catchall {:try_start_8 .. :try_end_2e} :catchall_37
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_35
const/4 v0, 0x0
goto :goto_13
:catchall_37
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_32
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeByteArray([B)V
const/4 v0, 0x0
invoke-virtual {v1, p4, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f48
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_2b
.catchall {:try_start_8 .. :try_end_2b} :catchall_34
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_32
const/4 v0, 0x0
goto :goto_13
:catchall_34
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[I)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeIntArray([I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f51
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[Ljava/lang/String;I[BI)V
.registers 12
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_37
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeByteArray([B)V
invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2715
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_30
.catchall {:try_start_8 .. :try_end_30} :catchall_39
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_37
const/4 v0, 0x0
goto :goto_13
:catchall_39
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
.registers 8
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2f
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_1a
const/4 v0, 0x1
:cond_1a
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x1771
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_28
.catchall {:try_start_9 .. :try_end_28} :catchall_31
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2f
const/4 v1, 0x0
goto :goto_14
:catchall_31
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;ZLandroid/os/Bundle;)V
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_39
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_3b
:goto_1a
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p3, :cond_3d
const/4 v0, 0x1
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_27
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x13c7
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_32
.catchall {:try_start_a .. :try_end_32} :catchall_42
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_39
const/4 v2, 0x0
goto :goto_15
:cond_3b
move v0, v1
goto :goto_1a
:cond_3d
const/4 v0, 0x0
:try_start_3e
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_41
.catchall {:try_start_3e .. :try_end_41} :catchall_42
goto :goto_27
:catchall_42
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z[Ljava/lang/String;)V
.registers 9
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_32
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_1a
const/4 v0, 0x1
:cond_1a
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2eff
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2b
.catchall {:try_start_9 .. :try_end_2b} :catchall_34
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_32
const/4 v1, 0x0
goto :goto_14
:catchall_34
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[I)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeIntArray([I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f43
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[IIZ)V
.registers 10
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_35
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeIntArray([I)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_20
const/4 v0, 0x1
:cond_20
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2eea
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2e
.catchall {:try_start_9 .. :try_end_2e} :catchall_37
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_35
const/4 v1, 0x0
goto :goto_14
:catchall_37
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2716
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;Z)V
.registers 9
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_32
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
if-eqz p3, :cond_1d
const/4 v0, 0x1
:cond_1d
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2efd
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2b
.catchall {:try_start_9 .. :try_end_2b} :catchall_34
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_32
const/4 v1, 0x0
goto :goto_14
:catchall_34
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public aR(Ljava/lang/String;)Landroid/content/Intent;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x232c
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_30
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:goto_29
:try_end_29
.catchall {:try_start_8 .. :try_end_29} :catchall_32
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_30
const/4 v0, 0x0
goto :goto_29
:catchall_32
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public aU(Ljava/lang/String;)Landroid/content/Intent;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2f02
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_30
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:goto_29
:try_end_29
.catchall {:try_start_8 .. :try_end_29} :catchall_32
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_30
const/4 v0, 0x0
goto :goto_29
:catchall_32
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public aV(Ljava/lang/String;)Ljava/lang/String;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13c8
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_26
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_26
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public aW(Ljava/lang/String;)Ljava/lang/String;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13ab
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_26
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_26
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public aX(Ljava/lang/String;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13ba
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_22
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public aY(Ljava/lang/String;)I
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13c4
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_26
move-result v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:catchall_26
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public aZ(Ljava/lang/String;)Landroid/net/Uri;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13ca
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_30
sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/Uri;
:goto_29
:try_end_29
.catchall {:try_start_8 .. :try_end_29} :catchall_32
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_30
const/4 v0, 0x0
goto :goto_29
:catchall_32
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
return-object v0
.end method
.method public b([BLjava/lang/String;[Ljava/lang/String;)I
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13aa
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2c
move-result v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:catchall_2c
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(IIZ)Landroid/content/Intent;
.registers 9
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p3, :cond_17
const/4 v0, 0x1
:cond_17
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2331
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_3a
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:goto_33
:try_end_33
.catchall {:try_start_9 .. :try_end_33} :catchall_3c
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_3a
const/4 v0, 0x0
goto :goto_33
:catchall_3c
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(JLjava/lang/String;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f55
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_25
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_25
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1399
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_2a
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_28
const/4 v0, 0x0
goto :goto_13
:catchall_2a
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_38
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p3, :cond_3a
move v2, v0
:goto_1e
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_3c
:goto_23
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x13b6
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_31
.catchall {:try_start_a .. :try_end_31} :catchall_3e
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_38
const/4 v2, 0x0
goto :goto_15
:cond_3a
move v2, v1
goto :goto_1e
:cond_3c
move v0, v1
goto :goto_23
:catchall_3e
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f4c
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f54
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x139a
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2ef7
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V
.registers 12
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p6, :cond_26
const/4 v0, 0x1
:cond_26
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x139c
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_34
.catchall {:try_start_9 .. :try_end_34} :catchall_3d
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3b
const/4 v1, 0x0
goto :goto_14
:catchall_3d
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
.registers 11
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p5, :cond_3d
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p5, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_29
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1b5b
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_34
.catchall {:try_start_8 .. :try_end_34} :catchall_42
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3b
const/4 v0, 0x0
goto :goto_13
:cond_3d
const/4 v0, 0x0
:try_start_3e
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_41
.catchall {:try_start_3e .. :try_end_41} :catchall_42
goto :goto_29
:catchall_42
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZ)V
.registers 10
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_35
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_20
const/4 v0, 0x1
:cond_20
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2721
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2e
.catchall {:try_start_9 .. :try_end_2e} :catchall_37
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_35
const/4 v1, 0x0
goto :goto_14
:catchall_37
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
.registers 11
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_3d
move v2, v0
:goto_21
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p5, :cond_3f
:goto_26
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x157d
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_34
.catchall {:try_start_a .. :try_end_34} :catchall_41
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3b
const/4 v2, 0x0
goto :goto_15
:cond_3d
move v2, v1
goto :goto_21
:cond_3f
move v0, v1
goto :goto_26
:catchall_41
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_38
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p4, :cond_3a
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_26
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13a0
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_31
.catchall {:try_start_8 .. :try_end_31} :catchall_3f
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_38
const/4 v0, 0x0
goto :goto_13
:cond_3a
const/4 v0, 0x0
:try_start_3b
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_3e
.catchall {:try_start_3b .. :try_end_3e} :catchall_3f
goto :goto_26
:catchall_3f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13b1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V
.registers 13
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p7, :cond_29
const/4 v0, 0x1
:cond_29
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x13b0
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_37
.catchall {:try_start_9 .. :try_end_37} :catchall_40
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3e
const/4 v1, 0x0
goto :goto_14
:catchall_40
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V
.registers 12
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p5, :cond_40
move v2, v0
:goto_24
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p6, :cond_42
:goto_29
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2ef2
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_37
.catchall {:try_start_a .. :try_end_37} :catchall_44
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3e
const/4 v2, 0x0
goto :goto_15
:cond_40
move v2, v1
goto :goto_24
:cond_42
move v0, v1
goto :goto_29
:catchall_44
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 10
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_35
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p4, :cond_20
const/4 v0, 0x1
:cond_20
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x196a
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2e
.catchall {:try_start_9 .. :try_end_2e} :catchall_37
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_35
const/4 v1, 0x0
goto :goto_14
:catchall_37
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
.registers 9
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_32
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p3, :cond_1d
const/4 v0, 0x1
:cond_1d
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x1966
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2b
.catchall {:try_start_9 .. :try_end_2b} :catchall_34
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_32
const/4 v1, 0x0
goto :goto_14
:catchall_34
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
.registers 8
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2f
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_1a
const/4 v0, 0x1
:cond_1a
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x1967
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_28
.catchall {:try_start_9 .. :try_end_28} :catchall_31
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2f
const/4 v1, 0x0
goto :goto_14
:catchall_31
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2717
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public b(Ljava/lang/String;Ljava/lang/String;I)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13bb
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_28
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_28
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public ba(Ljava/lang/String;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f42
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_22
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public bb(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2346
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_30
sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/ParcelFileDescriptor;
:goto_29
:try_end_29
.catchall {:try_start_8 .. :try_end_29} :catchall_32
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_30
const/4 v0, 0x0
goto :goto_29
:catchall_32
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(JLjava/lang/String;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2714
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_25
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_25
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x139e
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_2a
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_28
const/4 v0, 0x0
goto :goto_13
:catchall_2a
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_38
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p3, :cond_3a
move v2, v0
:goto_1e
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_3c
:goto_23
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x13b8
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_31
.catchall {:try_start_a .. :try_end_31} :catchall_3e
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_38
const/4 v2, 0x0
goto :goto_15
:cond_3a
move v2, v1
goto :goto_1e
:cond_3c
move v0, v1
goto :goto_23
:catchall_3e
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2711
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2713
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13a8
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2ef8
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
.registers 11
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_3d
move v2, v0
:goto_21
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p5, :cond_3f
:goto_26
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2329
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_34
.catchall {:try_start_a .. :try_end_34} :catchall_41
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3b
const/4 v2, 0x0
goto :goto_15
:cond_3d
move v2, v1
goto :goto_21
:cond_3f
move v0, v1
goto :goto_26
:catchall_41
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f4b
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 10
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_35
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p4, :cond_20
const/4 v0, 0x1
:cond_20
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2ee3
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2e
.catchall {:try_start_9 .. :try_end_2e} :catchall_37
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_35
const/4 v1, 0x0
goto :goto_14
:catchall_37
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
.registers 9
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_32
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p3, :cond_1d
const/4 v0, 0x1
:cond_1d
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x1968
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2b
.catchall {:try_start_9 .. :try_end_2b} :catchall_34
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_32
const/4 v1, 0x0
goto :goto_14
:catchall_34
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
.registers 8
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2f
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_1a
const/4 v0, 0x1
:cond_1a
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x1f5b
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_28
.catchall {:try_start_9 .. :try_end_28} :catchall_31
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2f
const/4 v1, 0x0
goto :goto_14
:catchall_31
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2724
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c(Ljava/lang/String;Ljava/lang/String;I)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f5a
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_28
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_28
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public ch(I)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13ac
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_22
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public d(JLjava/lang/String;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2eee
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_25
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_25
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13a2
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_2a
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_28
const/4 v0, 0x0
goto :goto_13
:catchall_2a
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_38
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p3, :cond_3a
move v2, v0
:goto_1e
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_3c
:goto_23
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x1773
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_31
.catchall {:try_start_a .. :try_end_31} :catchall_3e
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_38
const/4 v2, 0x0
goto :goto_15
:cond_3a
move v2, v1
goto :goto_1e
:cond_3c
move v0, v1
goto :goto_23
:catchall_3e
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2eeb
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2eed
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13ad
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
.registers 11
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_3d
move v2, v0
:goto_21
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p5, :cond_3f
:goto_26
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x233c
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_34
.catchall {:try_start_a .. :try_end_34} :catchall_41
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3b
const/4 v2, 0x0
goto :goto_15
:cond_3d
move v2, v1
goto :goto_21
:cond_3f
move v0, v1
goto :goto_26
:catchall_41
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f4f
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
.registers 9
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_32
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p3, :cond_1d
const/4 v0, 0x1
:cond_1d
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x1969
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2b
.catchall {:try_start_9 .. :try_end_2b} :catchall_34
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_32
const/4 v1, 0x0
goto :goto_14
:catchall_34
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
.registers 8
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2f
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_1a
const/4 v0, 0x1
:cond_1a
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2ee2
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_28
.catchall {:try_start_9 .. :try_end_28} :catchall_31
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2f
const/4 v1, 0x0
goto :goto_14
:catchall_31
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13a3
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_2a
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_28
const/4 v0, 0x0
goto :goto_13
:catchall_2a
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_38
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p3, :cond_3a
move v2, v0
:goto_1e
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_3c
:goto_23
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x1774
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_31
.catchall {:try_start_a .. :try_end_31} :catchall_3e
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_38
const/4 v2, 0x0
goto :goto_15
:cond_3a
move v2, v1
goto :goto_1e
:cond_3c
move v0, v1
goto :goto_23
:catchall_3e
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13b2
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
.registers 11
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_3d
move v2, v0
:goto_21
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p5, :cond_3f
:goto_26
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2ef5
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_34
.catchall {:try_start_a .. :try_end_34} :catchall_41
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3b
const/4 v2, 0x0
goto :goto_15
:cond_3d
move v2, v1
goto :goto_21
:cond_3f
move v0, v1
goto :goto_26
:catchall_41
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f50
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
.registers 9
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_32
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p3, :cond_1d
const/4 v0, 0x1
:cond_1d
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2ee6
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2b
.catchall {:try_start_9 .. :try_end_2b} :catchall_34
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_32
const/4 v1, 0x0
goto :goto_14
:catchall_34
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
.registers 8
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2f
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_1a
const/4 v0, 0x1
:cond_1a
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2f00
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_28
.catchall {:try_start_9 .. :try_end_28} :catchall_31
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2f
const/4 v1, 0x0
goto :goto_14
:catchall_31
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public ea()Landroid/os/Bundle;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x138c
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_2d
const/4 v0, 0x0
goto :goto_26
:catchall_2f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public f(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13b7
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_2a
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_28
const/4 v0, 0x0
goto :goto_13
:catchall_2a
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13b3
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
.registers 11
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_3d
move v2, v0
:goto_21
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p5, :cond_3f
:goto_26
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2ef6
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_34
.catchall {:try_start_a .. :try_end_34} :catchall_41
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3b
const/4 v2, 0x0
goto :goto_15
:cond_3d
move v2, v1
goto :goto_21
:cond_3f
move v0, v1
goto :goto_26
:catchall_41
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2e
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2ee9
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_13
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
.registers 8
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2f
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_1a
const/4 v0, 0x1
:cond_1a
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v1, 0x2ef0
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_28
.catchall {:try_start_9 .. :try_end_28} :catchall_31
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2f
const/4 v1, 0x0
goto :goto_14
:catchall_31
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public g(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_37
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x196b
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_44
sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/ParcelFileDescriptor;
:goto_30
:try_end_30
.catchall {:try_start_8 .. :try_end_30} :catchall_3c
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_37
const/4 v0, 0x0
:try_start_38
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_3b
.catchall {:try_start_38 .. :try_end_3b} :catchall_3c
goto :goto_17
:catchall_3c
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_44
const/4 v0, 0x0
goto :goto_30
.end method
.method public g(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13b9
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_2a
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_28
const/4 v0, 0x0
goto :goto_13
:catchall_2a
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public g(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13bc
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public gU()Ljava/lang/String;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x138f
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_23
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public gV()Ljava/lang/String;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1394
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_23
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public gY()Landroid/content/Intent;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x232b
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_2d
const/4 v0, 0x0
goto :goto_26
:catchall_2f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public gZ()Landroid/content/Intent;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x232d
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_2d
const/4 v0, 0x0
goto :goto_26
:catchall_2f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public h(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
.registers 9
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3a
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v4, 0x13bd
const/4 v5, 0x0
invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_33
sget-object v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
:cond_33
:try_end_33
.catchall {:try_start_9 .. :try_end_33} :catchall_3c
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_3a
move-object v1, v0
goto :goto_14
:catchall_3c
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public h(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13c0
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_2a
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_28
const/4 v0, 0x0
goto :goto_13
:catchall_2a
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public ha()Landroid/content/Intent;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x232e
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_2d
const/4 v0, 0x0
goto :goto_26
:catchall_2f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hb()Landroid/content/Intent;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x232f
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_2d
const/4 v0, 0x0
goto :goto_26
:catchall_2f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hg()Landroid/content/Intent;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2332
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_2d
const/4 v0, 0x0
goto :goto_26
:catchall_2f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hh()Landroid/content/Intent;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2334
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_2d
const/4 v0, 0x0
goto :goto_26
:catchall_2f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hi()I
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x233b
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
move-result v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:catchall_23
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hj()Ljava/lang/String;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x138b
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_23
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hk()I
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f58
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
move-result v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:catchall_23
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hl()Landroid/content/Intent;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x271f
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_2d
const/4 v0, 0x0
goto :goto_26
:catchall_2f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hm()I
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x271d
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
move-result v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:catchall_23
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hn()I
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2727
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
move-result v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:catchall_23
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public ho()I
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2f03
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
move-result v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:catchall_23
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hp()I
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2f04
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
move-result v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:catchall_23
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hr()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x138e
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1f
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public ht()Lcom/google/android/gms/common/data/DataHolder;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1395
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2b
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
:try_end_23
.catchall {:try_start_8 .. :try_end_23} :catchall_2d
move-result-object v0
:goto_24
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_2b
const/4 v0, 0x0
goto :goto_24
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hu()Z
.registers 7
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v4, 0x13cb
const/4 v5, 0x0
invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
:try_end_1c
.catchall {:try_start_9 .. :try_end_1c} :catchall_27
move-result v3
if-eqz v3, :cond_20
const/4 v0, 0x1
:cond_20
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:catchall_27
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hv()Lcom/google/android/gms/common/data/DataHolder;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x157e
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2b
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
:try_end_23
.catchall {:try_start_8 .. :try_end_23} :catchall_2d
move-result-object v0
:goto_24
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_2b
const/4 v0, 0x0
goto :goto_24
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hw()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f56
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1f
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hx()Landroid/content/Intent;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2335
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_2d
const/4 v0, 0x0
goto :goto_26
:catchall_2f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hy()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2afa
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1f
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public hz()Z
.registers 7
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v4, 0x2ef9
const/4 v5, 0x0
invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
:try_end_1c
.catchall {:try_start_9 .. :try_end_1c} :catchall_27
move-result v3
if-eqz v3, :cond_20
const/4 v0, 0x1
:cond_20
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:catchall_27
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public i(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13c6
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_2a
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_28
const/4 v0, 0x0
goto :goto_13
:catchall_2a
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public i(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13c5
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public j(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2af9
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_2a
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_28
const/4 v0, 0x0
goto :goto_13
:catchall_2a
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public j(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13c1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public k(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1b59
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public l(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f45
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public l(Ljava/lang/String;I)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2ef1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_25
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_25
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public m(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f46
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public m(Ljava/lang/String;I)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13a5
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_25
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_25
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public m(Ljava/lang/String;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13c9
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_25
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_25
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public n(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f49
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public n(Ljava/lang/String;I)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13a4
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_25
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_25
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public n(Ljava/lang/String;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f59
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_25
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_25
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public o(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f4a
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public p(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f4e
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public p(Ljava/lang/String;I)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13bf
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_25
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_25
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public q(J)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1389
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_22
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public q(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x232a
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public q(Ljava/lang/String;I)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x271e
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_25
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_25
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public r(J)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x13c3
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_22
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public r(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2ef4
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public s(J)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x1f4d
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_22
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public s(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2ee5
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public t(J)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2712
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_22
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public t(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2efb
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public u(J)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2eec
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_22
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public u(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.games.internal.IGamesService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->ko:Landroid/os/IBinder;
const/16 v3, 0x2ee8
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2d
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_13
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method