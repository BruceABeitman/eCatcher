.class  Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
.field private ky:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
return-void
.end method
.method public addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/internal/b;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_31
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x23
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/b$a;->ao(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/b;
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
.method public addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/internal/c;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_31
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0xc
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/c$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/c;
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
.method public addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/internal/d;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_31
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0xb
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/d$a;->aq(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/d;
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
.method public addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/internal/e;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_31
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0xa
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/e$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/e;
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
.method public addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_31
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x9
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->as(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
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
.method public addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/f;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_31
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0xd
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/f$a;->at(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/f;
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
.method public animateCamera(Lcom/google/android/gms/dynamic/b;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_27
invoke-interface {p1}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/4 v3, 0x5
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_20
.catchall {:try_start_8 .. :try_end_20} :catchall_29
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_27
const/4 v0, 0x0
goto :goto_13
:catchall_29
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public animateCameraWithCallback(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/maps/internal/b;)V
.registers 8
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_31
invoke-interface {p1}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_1d
invoke-interface {p2}, Lcom/google/android/gms/maps/internal/b;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_1d
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/4 v1, 0x6
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2a
.catchall {:try_start_9 .. :try_end_2a} :catchall_33
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_31
move-object v1, v0
goto :goto_14
:catchall_33
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public animateCameraWithDurationAndCallback(Lcom/google/android/gms/dynamic/b;ILcom/google/android/gms/maps/internal/b;)V
.registers 9
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_34
invoke-interface {p1}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p3, :cond_20
invoke-interface {p3}, Lcom/google/android/gms/maps/internal/b;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_20
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/4 v1, 0x7
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2d
.catchall {:try_start_9 .. :try_end_2d} :catchall_36
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_34
move-object v1, v0
goto :goto_14
:catchall_36
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
return-object v0
.end method
.method public clear()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0xe
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
.method public getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/4 v3, 0x1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2a
sget-object v0, Lcom/google/android/gms/maps/model/CameraPosition;->CREATOR:Lcom/google/android/gms/maps/model/CameraPositionCreator;
invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/CameraPositionCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CameraPosition;
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
.method public getMapType()I
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0xf
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
.method public getMaxZoomLevel()F
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/4 v3, 0x2
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F
:try_end_1a
.catchall {:try_start_8 .. :try_end_1a} :catchall_22
move-result v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:catchall_22
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public getMinZoomLevel()F
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/4 v3, 0x3
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F
:try_end_1a
.catchall {:try_start_8 .. :try_end_1a} :catchall_22
move-result v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:catchall_22
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public getMyLocation()Landroid/location/Location;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x17
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/Location;
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
.method public getProjection()Lcom/google/android/gms/maps/internal/IProjectionDelegate;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x1a
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/maps/internal/IProjectionDelegate$a;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IProjectionDelegate;
:try_end_1f
.catchall {:try_start_8 .. :try_end_1f} :catchall_27
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_27
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public getTestingHelper()Lcom/google/android/gms/dynamic/b;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x22
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;
:try_end_1f
.catchall {:try_start_8 .. :try_end_1f} :catchall_27
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_27
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public getUiSettings()Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x19
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->am(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;
:try_end_1f
.catchall {:try_start_8 .. :try_end_1f} :catchall_27
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_27
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public isBuildingsEnabled()Z
.registers 7
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v4, 0x28
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
.method public isIndoorEnabled()Z
.registers 7
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v4, 0x13
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
.method public isMyLocationEnabled()Z
.registers 7
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v4, 0x15
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
.method public isTrafficEnabled()Z
.registers 7
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v4, 0x11
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
.method public moveCamera(Lcom/google/android/gms/dynamic/b;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_27
invoke-interface {p1}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/4 v3, 0x4
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_20
.catchall {:try_start_8 .. :try_end_20} :catchall_29
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_27
const/4 v0, 0x0
goto :goto_13
:catchall_29
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public setBuildingsEnabled(Z)V
.registers 7
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_11
const/4 v0, 0x1
:cond_11
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x29
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
.method public setIndoorEnabled(Z)Z
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2d
move v2, v0
:goto_12
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
iget-object v2, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v5, 0x14
const/4 v6, 0x0
invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
:try_end_23
.catchall {:try_start_a .. :try_end_23} :catchall_31
move-result v2
if-eqz v2, :cond_2f
:goto_26
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return v0
:cond_2d
move v2, v1
goto :goto_12
:cond_2f
move v0, v1
goto :goto_26
:catchall_31
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public setInfoWindowAdapter(Lcom/google/android/gms/maps/internal/d;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/maps/internal/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x21
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
.method public setLocationSource(Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x18
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
.method public setMapType(I)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x10
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
.method public setMyLocationEnabled(Z)V
.registers 7
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_11
const/4 v0, 0x1
:cond_11
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x16
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
.method public setOnCameraChangeListener(Lcom/google/android/gms/maps/internal/e;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/maps/internal/e;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x1b
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
.method public setOnInfoWindowClickListener(Lcom/google/android/gms/maps/internal/f;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/maps/internal/f;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x20
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
.method public setOnMapClickListener(Lcom/google/android/gms/maps/internal/h;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/maps/internal/h;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x1c
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
.method public setOnMapLoadedCallback(Lcom/google/android/gms/maps/internal/i;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/maps/internal/i;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x2a
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
.method public setOnMapLongClickListener(Lcom/google/android/gms/maps/internal/j;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/maps/internal/j;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x1d
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
.method public setOnMarkerClickListener(Lcom/google/android/gms/maps/internal/k;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/maps/internal/k;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x1e
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
.method public setOnMarkerDragListener(Lcom/google/android/gms/maps/internal/l;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/maps/internal/l;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x1f
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
.method public setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/internal/m;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/maps/internal/m;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x25
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
.method public setOnMyLocationChangeListener(Lcom/google/android/gms/maps/internal/n;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/maps/internal/n;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x24
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
.method public setPadding(IIII)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x27
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2b
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_2b
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public setTrafficEnabled(Z)V
.registers 7
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_11
const/4 v0, 0x1
:cond_11
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x12
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
.method public snapshot(Lcom/google/android/gms/maps/internal/o;Lcom/google/android/gms/dynamic/b;)V
.registers 8
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_32
invoke-interface {p1}, Lcom/google/android/gms/maps/internal/o;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_1d
invoke-interface {p2}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_1d
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v1, 0x26
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2b
.catchall {:try_start_9 .. :try_end_2b} :catchall_34
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_32
move-object v1, v0
goto :goto_14
:catchall_34
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public stopAnimation()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;->ky:Landroid/os/IBinder;
const/16 v3, 0x8
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