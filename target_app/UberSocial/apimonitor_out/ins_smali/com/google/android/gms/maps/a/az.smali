.class  Lcom/google/android/gms/maps/a/az;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/maps/a/ax;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/maps/a/az;->a:Landroid/os/IBinder;
return-void
.end method
.method public a(Lcom/google/android/gms/maps/model/a/m;)Z
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.maps.internal.IOnMarkerClickListener"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2f
invoke-interface {p1}, Lcom/google/android/gms/maps/model/a/m;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v2, p0, Lcom/google/android/gms/maps/a/az;->a:Landroid/os/IBinder;
const/4 v5, 0x1
const/4 v6, 0x0
invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
:try_end_25
.catchall {:try_start_a .. :try_end_25} :catchall_33
move-result v2
if-eqz v2, :cond_31
:goto_28
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return v0
:cond_2f
const/4 v2, 0x0
goto :goto_15
:cond_31
move v0, v1
goto :goto_28
:catchall_33
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/a/az;->a:Landroid/os/IBinder;
return-object v0
.end method