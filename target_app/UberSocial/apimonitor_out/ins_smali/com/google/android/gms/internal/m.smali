.class  Lcom/google/android/gms/internal/m;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/k;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/m;->a:Landroid/os/IBinder;
return-void
.end method
.method public a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Lcom/google/android/gms/internal/as;I)Landroid/os/IBinder;
.registers 11
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.ads.internal.client.IAdManagerCreator"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_45
invoke-interface {p1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_47
const/4 v1, 0x1
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/ab;->writeToParcel(Landroid/os/Parcel;I)V
:goto_21
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p4, :cond_2a
invoke-interface {p4}, Lcom/google/android/gms/internal/as;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_2a
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/internal/m;->a:Landroid/os/IBinder;
const/4 v1, 0x1
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
:try_end_3d
.catchall {:try_start_9 .. :try_end_3d} :catchall_4c
move-result-object v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_45
move-object v1, v0
goto :goto_14
:cond_47
const/4 v1, 0x0
:try_start_48
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_4b
.catchall {:try_start_48 .. :try_end_4b} :catchall_4c
goto :goto_21
:catchall_4c
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/m;->a:Landroid/os/IBinder;
return-object v0
.end method