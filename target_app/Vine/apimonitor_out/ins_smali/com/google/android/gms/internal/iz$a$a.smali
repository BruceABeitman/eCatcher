.class  Lcom/google/android/gms/internal/iz$a$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/iz;
.field private ko:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/iz$a$a;->ko:Landroid/os/IBinder;
return-void
.end method
.method public a(Lcom/google/android/gms/internal/iy;Lcom/google/android/gms/identity/intents/UserAddressRequest;Landroid/os/Bundle;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.identity.intents.internal.IAddressService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3b
invoke-interface {p1}, Lcom/google/android/gms/internal/iy;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_3d
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/identity/intents/UserAddressRequest;->writeToParcel(Landroid/os/Parcel;I)V
:goto_20
if-eqz p3, :cond_4a
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_2a
iget-object v0, p0, Lcom/google/android/gms/internal/iz$a$a;->ko:Landroid/os/IBinder;
const/4 v3, 0x2
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
goto :goto_20
:catchall_42
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_4a
const/4 v0, 0x0
:try_start_4b
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_4e
.catchall {:try_start_4b .. :try_end_4e} :catchall_42
goto :goto_2a
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/iz$a$a;->ko:Landroid/os/IBinder;
return-object v0
.end method