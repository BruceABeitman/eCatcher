.class final Lcom/google/android/gms/internal/v;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/t;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
return-void
.end method
.method public final a()Lcom/google/android/gms/dynamic/b;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/4 v3, 0x1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;
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
.method public final a(Lcom/google/android/gms/internal/ak;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_29
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ak;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/16 v3, 0xd
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_22
.catchall {:try_start_8 .. :try_end_22} :catchall_2e
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_29
const/4 v0, 0x0
:try_start_2a
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_2d
.catchall {:try_start_2a .. :try_end_2d} :catchall_2e
goto :goto_17
:catchall_2e
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public final a(Lcom/google/android/gms/internal/ct;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/internal/ct;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/16 v3, 0xe
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
.method public final a(Lcom/google/android/gms/internal/q;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_27
invoke-interface {p1}, Lcom/google/android/gms/internal/q;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/4 v3, 0x7
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
.method public final a(Lcom/google/android/gms/internal/z;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/google/android/gms/internal/z;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/16 v3, 0x8
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
.method public final a(Lcom/google/android/gms/internal/ah;)Z
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_a
const-string v4, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_30
const/4 v4, 0x1
invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
const/4 v4, 0x0
invoke-virtual {p1, v2, v4}, Lcom/google/android/gms/internal/ah;->writeToParcel(Landroid/os/Parcel;I)V
:goto_19
iget-object v4, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/4 v5, 0x4
const/4 v6, 0x0
invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
:try_end_26
.catchall {:try_start_a .. :try_end_26} :catchall_35
move-result v4
if-eqz v4, :cond_3d
:goto_29
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return v0
:cond_30
const/4 v4, 0x0
:try_start_31
invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
:try_end_34
.catchall {:try_start_31 .. :try_end_34} :catchall_35
goto :goto_19
:catchall_35
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_3d
move v0, v1
goto :goto_29
.end method
.method public final asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
return-object v0
.end method
.method public final b()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/4 v3, 0x2
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_1e
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1e
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public final c()Z
.registers 7
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_9
const-string v3, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/4 v4, 0x3
const/4 v5, 0x0
invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
:try_end_1b
.catchall {:try_start_9 .. :try_end_1b} :catchall_26
move-result v3
if-eqz v3, :cond_1f
const/4 v0, 0x1
:cond_1f
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return v0
:catchall_26
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public final d()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/4 v3, 0x5
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_1e
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1e
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public final e()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/4 v3, 0x6
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_1e
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1e
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public final f()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/16 v3, 0x9
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
.method public final g()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/16 v3, 0xa
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
.method public final h()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/16 v3, 0xb
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
.method public final i()Lcom/google/android/gms/internal/ak;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Landroid/os/IBinder;
const/16 v3, 0xc
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2b
sget-object v0, Lcom/google/android/gms/internal/ak;->CREATOR:Lcom/google/android/gms/internal/n;
invoke-static {v2}, Lcom/google/android/gms/internal/n;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ak;
:try_end_23
.catchall {:try_start_8 .. :try_end_23} :catchall_2d
move-result-object v0
:goto_24
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_2b
const/4 v0, 0x0
goto :goto_24
:catchall_2d
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method