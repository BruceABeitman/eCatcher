.class public abstract Lcom/google/android/gms/internal/ln$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/ln;
.method public static bq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ln;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.wallet.internal.IOwService"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/internal/ln;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/ln;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/ln$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ln$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 10
const/4 v3, 0x1
const/4 v2, 0x0
sparse-switch p1, :sswitch_data_1a8
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.google.android.gms.wallet.internal.IOwService"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v3
goto :goto_9
:sswitch_11
const-string v0, "com.google.android.gms.wallet.internal.IOwService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_40
sget-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;
move-object v1, v0
:goto_25
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_42
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_33
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/lq$a;->bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;
move-result-object v2
invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ln$a;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/lq;)V
move v0, v3
goto :goto_9
:cond_40
move-object v1, v2
goto :goto_25
:cond_42
move-object v0, v2
goto :goto_33
:sswitch_44
const-string v0, "com.google.android.gms.wallet.internal.IOwService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_73
sget-object v0, Lcom/google/android/gms/wallet/FullWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wallet/FullWalletRequest;
move-object v1, v0
:goto_58
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_75
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_66
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/lq$a;->bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;
move-result-object v2
invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ln$a;->a(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/lq;)V
move v0, v3
goto :goto_9
:cond_73
move-object v1, v2
goto :goto_58
:cond_75
move-object v0, v2
goto :goto_66
:sswitch_77
const-string v0, "com.google.android.gms.wallet.internal.IOwService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_a0
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_92
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/lq$a;->bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;
move-result-object v2
invoke-virtual {p0, v1, v4, v0, v2}, Lcom/google/android/gms/internal/ln$a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/lq;)V
move v0, v3
goto/16 :goto_9
:cond_a0
move-object v0, v2
goto :goto_92
:sswitch_a2
const-string v0, "com.google.android.gms.wallet.internal.IOwService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_ca
sget-object v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
move-object v1, v0
:goto_b6
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_cc
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_c4
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ln$a;->a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Landroid/os/Bundle;)V
move v0, v3
goto/16 :goto_9
:cond_ca
move-object v1, v2
goto :goto_b6
:cond_cc
move-object v0, v2
goto :goto_c4
:sswitch_ce
const-string v0, "com.google.android.gms.wallet.internal.IOwService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_ef
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_e1
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/lq$a;->bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ln$a;->a(Landroid/os/Bundle;Lcom/google/android/gms/internal/lq;)V
move v0, v3
goto/16 :goto_9
:cond_ef
move-object v0, v2
goto :goto_e1
:sswitch_f1
const-string v0, "com.google.android.gms.wallet.internal.IOwService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_121
sget-object v0, Lcom/google/android/gms/wallet/d;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wallet/d;
move-object v1, v0
:goto_105
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_123
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_113
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/lq$a;->bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;
move-result-object v2
invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ln$a;->a(Lcom/google/android/gms/wallet/d;Landroid/os/Bundle;Lcom/google/android/gms/internal/lq;)V
move v0, v3
goto/16 :goto_9
:cond_121
move-object v1, v2
goto :goto_105
:cond_123
move-object v0, v2
goto :goto_113
:sswitch_125
const-string v0, "com.google.android.gms.wallet.internal.IOwService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_155
sget-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;
move-object v1, v0
:goto_139
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_157
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_147
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/lp$a;->bs(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lp;
move-result-object v2
invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ln$a;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V
move v0, v3
goto/16 :goto_9
:cond_155
move-object v1, v2
goto :goto_139
:cond_157
move-object v0, v2
goto :goto_147
:sswitch_159
const-string v0, "com.google.android.gms.wallet.internal.IOwService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_189
sget-object v0, Lcom/google/android/gms/internal/lh;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/lh;
move-object v1, v0
:goto_16d
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_18b
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_17b
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/lq$a;->bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;
move-result-object v2
invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ln$a;->a(Lcom/google/android/gms/internal/lh;Landroid/os/Bundle;Lcom/google/android/gms/internal/lq;)V
move v0, v3
goto/16 :goto_9
:cond_189
move-object v1, v2
goto :goto_16d
:cond_18b
move-object v0, v2
goto :goto_17b
:sswitch_18d
const-string v0, "com.google.android.gms.wallet.internal.IOwService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_1a6
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_1a0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ln$a;->o(Landroid/os/Bundle;)V
move v0, v3
goto/16 :goto_9
:cond_1a6
move-object v0, v2
goto :goto_1a0
:sswitch_data_1a8
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_44
0x3 -> :sswitch_77
0x4 -> :sswitch_a2
0x5 -> :sswitch_ce
0x6 -> :sswitch_f1
0x7 -> :sswitch_125
0x8 -> :sswitch_159
0x9 -> :sswitch_18d
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method