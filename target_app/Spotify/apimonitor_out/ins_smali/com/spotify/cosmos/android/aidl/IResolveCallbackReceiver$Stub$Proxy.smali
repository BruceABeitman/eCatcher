.class  Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
.field private mRemote:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-void
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-object v0
.end method
.method public getInterfaceDescriptor()Ljava/lang/String;
.registers 2
const-string v0, "com.spotify.cosmos.android.aidl.IResolveCallbackReceiver"
return-object v0
.end method
.method public onError(Ljava/lang/String;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_4
const-string v0, "com.spotify.cosmos.android.aidl.IResolveCallbackReceiver"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x2
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_14
.catchall {:try_start_4 .. :try_end_14} :catchall_18
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_18
move-exception v0
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public onResolved(ILjava/lang/String;Ljava/util/Map;[B)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_4
const-string v0, "com.spotify.cosmos.android.aidl.IResolveCallbackReceiver"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeByteArray([B)V
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x1
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_1d
.catchall {:try_start_4 .. :try_end_1d} :catchall_21
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_21
move-exception v0
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method