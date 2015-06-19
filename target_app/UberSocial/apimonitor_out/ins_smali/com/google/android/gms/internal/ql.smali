.class  Lcom/google/android/gms/internal/ql;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/qj;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/ql;->a:Landroid/os/IBinder;
return-void
.end method
.method public a(Lcom/google/android/gms/internal/qg;Landroid/net/Uri;Landroid/os/Bundle;Z)V
.registers 10
const/4 v2, 0x0
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_7
const-string v4, "com.google.android.gms.panorama.internal.IPanoramaService"
invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_12
invoke-interface {p1}, Lcom/google/android/gms/internal/qg;->asBinder()Landroid/os/IBinder;
move-result-object v2
:cond_12
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_3a
const/4 v2, 0x1
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p2, v3, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V
:goto_1f
if-eqz p3, :cond_44
const/4 v2, 0x1
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_29
if-eqz p4, :cond_49
:goto_2b
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/internal/ql;->a:Landroid/os/IBinder;
const/4 v1, 0x1
const/4 v2, 0x0
const/4 v4, 0x1
invoke-interface {v0, v1, v3, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_36
.catchall {:try_start_7 .. :try_end_36} :catchall_3f
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3a
const/4 v2, 0x0
:try_start_3b
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_3e
.catchall {:try_start_3b .. :try_end_3e} :catchall_3f
goto :goto_1f
:catchall_3f
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_44
const/4 v2, 0x0
:try_start_45
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_48
.catchall {:try_start_45 .. :try_end_48} :catchall_3f
goto :goto_29
:cond_49
move v0, v1
goto :goto_2b
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ql;->a:Landroid/os/IBinder;
return-object v0
.end method