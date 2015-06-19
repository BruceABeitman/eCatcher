.class  Lcom/google/android/gms/maps/a/c;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/maps/a/a;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/maps/a/c;->a:Landroid/os/IBinder;
return-void
.end method
.method public a()Lcom/google/android/gms/c/d;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/a/c;->a:Landroid/os/IBinder;
const/4 v3, 0x1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
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
.method public a(F)Lcom/google/android/gms/c/d;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V
iget-object v0, p0, Lcom/google/android/gms/maps/a/c;->a:Landroid/os/IBinder;
const/4 v3, 0x4
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_29
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_29
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(FF)Lcom/google/android/gms/c/d;
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeFloat(F)V
iget-object v0, p0, Lcom/google/android/gms/maps/a/c;->a:Landroid/os/IBinder;
const/4 v3, 0x3
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2c
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_2c
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(FII)Lcom/google/android/gms/c/d;
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/maps/a/c;->a:Landroid/os/IBinder;
const/4 v3, 0x6
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_2f
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_2f
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/c/d;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_30
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/CameraPosition;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/google/android/gms/maps/a/c;->a:Landroid/os/IBinder;
const/4 v3, 0x7
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
.method public a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/c/d;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_31
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/google/android/gms/maps/a/c;->a:Landroid/os/IBinder;
const/16 v3, 0x8
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
:try_end_29
.catchall {:try_start_8 .. :try_end_29} :catchall_36
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_31
const/4 v0, 0x0
:try_start_32
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_35
.catchall {:try_start_32 .. :try_end_35} :catchall_36
goto :goto_17
:catchall_36
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/c/d;
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_34
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeFloat(F)V
iget-object v0, p0, Lcom/google/android/gms/maps/a/c;->a:Landroid/os/IBinder;
const/16 v3, 0x9
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
:try_end_2c
.catchall {:try_start_8 .. :try_end_2c} :catchall_39
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_34
const/4 v0, 0x0
:try_start_35
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_38
.catchall {:try_start_35 .. :try_end_38} :catchall_39
goto :goto_17
:catchall_39
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/c/d;
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_34
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/maps/a/c;->a:Landroid/os/IBinder;
const/16 v3, 0xa
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
:try_end_2c
.catchall {:try_start_8 .. :try_end_2c} :catchall_39
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_34
const/4 v0, 0x0
:try_start_35
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_38
.catchall {:try_start_35 .. :try_end_38} :catchall_39
goto :goto_17
:catchall_39
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/c/d;
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3a
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/maps/a/c;->a:Landroid/os/IBinder;
const/16 v3, 0xb
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
:try_end_32
.catchall {:try_start_8 .. :try_end_32} :catchall_3f
move-result-object v0
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
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/a/c;->a:Landroid/os/IBinder;
return-object v0
.end method
.method public b()Lcom/google/android/gms/c/d;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/a/c;->a:Landroid/os/IBinder;
const/4 v3, 0x2
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
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
.method public b(F)Lcom/google/android/gms/c/d;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V
iget-object v0, p0, Lcom/google/android/gms/maps/a/c;->a:Landroid/os/IBinder;
const/4 v3, 0x5
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_29
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_29
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method