.class public abstract Lcom/google/android/gms/internal/lo$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/lo;
.method public static br(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lo;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.wallet.internal.IWalletDynamiteCreator"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/internal/lo;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/lo;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/lo$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lo$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 11
const/4 v1, 0x0
const/4 v2, 0x1
sparse-switch p1, :sswitch_data_50
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.google.android.gms.wallet.internal.IWalletDynamiteCreator"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v2
goto :goto_9
:sswitch_11
const-string v0, "com.google.android.gms.wallet.internal.IWalletDynamiteCreator"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;
move-result-object v3
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/c$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/c;
move-result-object v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_4e
sget-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
:goto_34
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v5
invoke-static {v5}, Lcom/google/android/gms/internal/lm$a;->bp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lm;
move-result-object v5
invoke-virtual {p0, v3, v4, v0, v5}, Lcom/google/android/gms/internal/lo$a;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/dynamic/c;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/internal/lm;)Lcom/google/android/gms/internal/ll;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_49
invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->asBinder()Landroid/os/IBinder;
move-result-object v1
:cond_49
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v2
goto :goto_9
:cond_4e
move-object v0, v1
goto :goto_34
:sswitch_data_50
.sparse-switch
0x1 -> :sswitch_11
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method