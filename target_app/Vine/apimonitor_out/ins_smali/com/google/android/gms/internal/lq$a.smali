.class public abstract Lcom/google/android/gms/internal/lq$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/lq;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/lq$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/internal/lq;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/lq;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/lq$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lq$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 10
const/4 v3, 0x1
const/4 v2, 0x0
sparse-switch p1, :sswitch_data_fc
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v3
:goto_9
return v3
:sswitch_a
const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_10
const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_3d
sget-object v0, Lcom/google/android/gms/wallet/MaskedWallet;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wallet/MaskedWallet;
move-object v1, v0
:goto_28
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_3f
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_36
invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/internal/lq$a;->a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:cond_3d
move-object v1, v2
goto :goto_28
:cond_3f
move-object v0, v2
goto :goto_36
:sswitch_41
const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_6e
sget-object v0, Lcom/google/android/gms/wallet/FullWallet;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wallet/FullWallet;
move-object v1, v0
:goto_59
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_70
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_67
invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/internal/lq$a;->a(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:cond_6e
move-object v1, v2
goto :goto_59
:cond_70
move-object v0, v2
goto :goto_67
:sswitch_72
const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_98
move v1, v3
:goto_82
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_9b
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_90
invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/internal/lq$a;->a(IZLandroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_98
const/4 v0, 0x0
move v1, v0
goto :goto_82
:cond_9b
move-object v0, v2
goto :goto_90
:sswitch_9d
const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_bc
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_b4
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/lq$a;->i(ILandroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_bc
move-object v0, v2
goto :goto_b4
:sswitch_be
const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_f5
sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;
move-result-object v0
move-object v1, v0
:goto_d0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_f7
sget-object v0, Lcom/google/android/gms/internal/lj;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/lj;
move-object v4, v0
:goto_df
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_f9
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_ed
invoke-virtual {p0, v1, v4, v0}, Lcom/google/android/gms/internal/lq$a;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/lj;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_f5
move-object v1, v2
goto :goto_d0
:cond_f7
move-object v4, v2
goto :goto_df
:cond_f9
move-object v0, v2
goto :goto_ed
nop
:sswitch_data_fc
.sparse-switch
0x1 -> :sswitch_10
0x2 -> :sswitch_41
0x3 -> :sswitch_72
0x4 -> :sswitch_9d
0x5 -> :sswitch_be
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method