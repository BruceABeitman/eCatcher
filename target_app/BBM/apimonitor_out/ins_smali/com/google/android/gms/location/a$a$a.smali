.class  Lcom/google/android/gms/location/a$a$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/location/a;
.field private ky:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/location/a$a$a;->ky:Landroid/os/IBinder;
return-void
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/location/a$a$a;->ky:Landroid/os/IBinder;
return-object v0
.end method
.method public onLocationChanged(Landroid/location/Location;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_4
const-string v0, "com.google.android.gms.location.ILocationListener"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_1f
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-static {p1, v1, v0}, Ldroidbox/android/location/Location;->writeToParcel(Landroid/location/Location;Landroid/os/Parcel;I)V
:goto_13
iget-object v0, p0, Lcom/google/android/gms/location/a$a$a;->ky:Landroid/os/IBinder;
const/4 v2, 0x1
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_1b
.catchall {:try_start_4 .. :try_end_1b} :catchall_24
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_1f
const/4 v0, 0x0
:try_start_20
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_23
.catchall {:try_start_20 .. :try_end_23} :catchall_24
goto :goto_13
:catchall_24
move-exception v0
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method