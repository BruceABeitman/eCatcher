.class  Lcom/google/android/gms/internal/lo$a$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/lo;
.field private ko:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/lo$a$a;->ko:Landroid/os/IBinder;
return-void
.end method
.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/dynamic/c;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/internal/lm;)Lcom/google/android/gms/internal/ll;
.registers 10
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.wallet.internal.IWalletDynamiteCreator"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_4c
invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_4e
invoke-interface {p2}, Lcom/google/android/gms/dynamic/c;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_1d
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p3, :cond_50
const/4 v1, 0x1
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p3, v2, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->writeToParcel(Landroid/os/Parcel;I)V
:goto_2a
if-eqz p4, :cond_30
invoke-interface {p4}, Lcom/google/android/gms/internal/lm;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_30
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/internal/lo$a$a;->ko:Landroid/os/IBinder;
const/4 v1, 0x1
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ll$a;->bo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ll;
:try_end_44
.catchall {:try_start_9 .. :try_end_44} :catchall_55
move-result-object v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_4c
move-object v1, v0
goto :goto_14
:cond_4e
move-object v1, v0
goto :goto_1d
:cond_50
const/4 v1, 0x0
:try_start_51
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_54
.catchall {:try_start_51 .. :try_end_54} :catchall_55
goto :goto_2a
:catchall_55
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/lo$a$a;->ko:Landroid/os/IBinder;
return-object v0
.end method