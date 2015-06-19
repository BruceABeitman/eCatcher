.class  Lcom/google/android/gms/maps/a/r;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/maps/a/p;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/maps/a/r;->a:Landroid/os/IBinder;
return-void
.end method
.method public a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/c/d;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_30
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/google/android/gms/maps/a/r;->a:Landroid/os/IBinder;
const/4 v3, 0x2
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
:try_end_28
.catchall {:try_start_8 .. :try_end_28} :catchall_35
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_30
const/4 v0, 0x0
:try_start_31
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_34
.catchall {:try_start_31 .. :try_end_34} :catchall_35
goto :goto_17
:catchall_35
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/c/d;)Lcom/google/android/gms/maps/model/LatLng;
.registers 8
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.maps.internal.IProjectionDelegate"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_34
invoke-interface {p1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v1, p0, Lcom/google/android/gms/maps/a/r;->a:Landroid/os/IBinder;
const/4 v4, 0x1
const/4 v5, 0x0
invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_2d
sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/k;
invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/k;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
:try_end_2c
.catchall {:try_start_9 .. :try_end_2c} :catchall_36
move-result-object v0
:cond_2d
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_34
move-object v1, v0
goto :goto_14
:catchall_36
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a()Lcom/google/android/gms/maps/model/VisibleRegion;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/a/r;->a:Landroid/os/IBinder;
const/4 v3, 0x3
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2a
sget-object v0, Lcom/google/android/gms/maps/model/VisibleRegion;->CREATOR:Lcom/google/android/gms/maps/model/x;
invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/x;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/VisibleRegion;
:try_end_22
.catchall {:try_start_8 .. :try_end_22} :catchall_2c
move-result-object v0
:goto_23
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_2a
const/4 v0, 0x0
goto :goto_23
:catchall_2c
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/a/r;->a:Landroid/os/IBinder;
return-object v0
.end method