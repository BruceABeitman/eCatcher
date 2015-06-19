.class final Lcom/google/android/gms/internal/dr;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/dp;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/dr;->a:Landroid/os/IBinder;
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/cz;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_34
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/cx;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/google/android/gms/internal/dr;->a:Landroid/os/IBinder;
const/4 v3, 0x1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_41
sget-object v0, Lcom/google/android/gms/internal/cz;->CREATOR:Lcom/google/android/gms/internal/do;
invoke-static {v2}, Lcom/google/android/gms/internal/do;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/cz;
:try_end_2c
.catchall {:try_start_8 .. :try_end_2c} :catchall_39
move-result-object v0
:goto_2d
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
:cond_41
const/4 v0, 0x0
goto :goto_2d
.end method
.method public final asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/dr;->a:Landroid/os/IBinder;
return-object v0
.end method