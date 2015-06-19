.class  Lcom/google/android/gms/internal/lq$a$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/lq;
.field private ko:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/lq$a$a;->ko:Landroid/os/IBinder;
return-void
.end method
.method public a(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p2, :cond_35
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/wallet/FullWallet;->writeToParcel(Landroid/os/Parcel;I)V
:goto_1a
if-eqz p3, :cond_42
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_24
iget-object v0, p0, Lcom/google/android/gms/internal/lq$a$a;->ko:Landroid/os/IBinder;
const/4 v3, 0x2
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_2e
.catchall {:try_start_8 .. :try_end_2e} :catchall_3a
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_35
const/4 v0, 0x0
:try_start_36
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_39
.catchall {:try_start_36 .. :try_end_39} :catchall_3a
goto :goto_1a
:catchall_3a
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_42
const/4 v0, 0x0
:try_start_43
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_46
.catchall {:try_start_43 .. :try_end_46} :catchall_3a
goto :goto_24
.end method
.method public a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p2, :cond_35
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/wallet/MaskedWallet;->writeToParcel(Landroid/os/Parcel;I)V
:goto_1a
if-eqz p3, :cond_42
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_24
iget-object v0, p0, Lcom/google/android/gms/internal/lq$a$a;->ko:Landroid/os/IBinder;
const/4 v3, 0x1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_2e
.catchall {:try_start_8 .. :try_end_2e} :catchall_3a
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_35
const/4 v0, 0x0
:try_start_36
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_39
.catchall {:try_start_36 .. :try_end_39} :catchall_3a
goto :goto_1a
:catchall_3a
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_42
const/4 v0, 0x0
:try_start_43
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_46
.catchall {:try_start_43 .. :try_end_46} :catchall_3a
goto :goto_24
.end method
.method public a(IZLandroid/os/Bundle;)V
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_a
const-string v4, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"
invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p2, :cond_32
:goto_14
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p3, :cond_34
const/4 v0, 0x1
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_21
iget-object v0, p0, Lcom/google/android/gms/internal/lq$a$a;->ko:Landroid/os/IBinder;
const/4 v1, 0x3
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_2b
.catchall {:try_start_a .. :try_end_2b} :catchall_39
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_32
move v0, v1
goto :goto_14
:cond_34
const/4 v0, 0x0
:try_start_35
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_38
.catchall {:try_start_35 .. :try_end_38} :catchall_39
goto :goto_21
:catchall_39
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/lj;Landroid/os/Bundle;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3c
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/api/Status;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
if-eqz p2, :cond_49
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/lj;->writeToParcel(Landroid/os/Parcel;I)V
:goto_21
if-eqz p3, :cond_4e
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_2b
iget-object v0, p0, Lcom/google/android/gms/internal/lq$a$a;->ko:Landroid/os/IBinder;
const/4 v3, 0x5
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_35
.catchall {:try_start_8 .. :try_end_35} :catchall_41
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3c
const/4 v0, 0x0
:try_start_3d
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_40
.catchall {:try_start_3d .. :try_end_40} :catchall_41
goto :goto_17
:catchall_41
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_49
const/4 v0, 0x0
:try_start_4a
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_21
:cond_4e
const/4 v0, 0x0
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_52
.catchall {:try_start_4a .. :try_end_52} :catchall_41
goto :goto_2b
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/lq$a$a;->ko:Landroid/os/IBinder;
return-object v0
.end method
.method public i(ILandroid/os/Bundle;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p2, :cond_2b
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_1a
iget-object v0, p0, Lcom/google/android/gms/internal/lq$a$a;->ko:Landroid/os/IBinder;
const/4 v3, 0x4
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_30
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2b
const/4 v0, 0x0
:try_start_2c
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_2f
.catchall {:try_start_2c .. :try_end_2f} :catchall_30
goto :goto_1a
:catchall_30
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method