.class public final Lcom/google/android/gms/wallet/k;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->a()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->a:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->b:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->c:[Ljava/lang/String;
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;)V
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->d:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x6
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->e:Lcom/google/android/gms/wallet/Address;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x7
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->f:Lcom/google/android/gms/wallet/Address;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0x8
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->g:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V
const/16 v1, 0x9
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->h:[Lcom/google/android/gms/wallet/OfferWalletObject;
invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V
const/16 v1, 0xa
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->i:Lcom/google/android/gms/identity/intents/model/UserAddress;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0xb
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->j:Lcom/google/android/gms/identity/intents/model/UserAddress;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0xc
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->k:[Lcom/google/android/gms/wallet/InstrumentInfo;
invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 18
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v14
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
const/4 v13, 0x0
:goto_10
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v1
if-ge v1, v14, :cond_a0
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I
move-result v1
const v15, 0xffff
and-int/2addr v15, v1
packed-switch v15, :pswitch_data_c4
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_10
:pswitch_27
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto :goto_10
:pswitch_2e
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
goto :goto_10
:pswitch_35
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_10
:pswitch_3c
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->t(Landroid/os/Parcel;I)[Ljava/lang/String;
move-result-object v5
goto :goto_10
:pswitch_43
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v6
goto :goto_10
:pswitch_4a
sget-object v7, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/wallet/Address;
move-object v7, v1
goto :goto_10
:pswitch_56
sget-object v8, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/wallet/Address;
move-object v8, v1
goto :goto_10
:pswitch_62
sget-object v9, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
move-result-object v1
check-cast v1, [Lcom/google/android/gms/wallet/LoyaltyWalletObject;
move-object v9, v1
goto :goto_10
:pswitch_6e
sget-object v10, Lcom/google/android/gms/wallet/OfferWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
move-result-object v1
check-cast v1, [Lcom/google/android/gms/wallet/OfferWalletObject;
move-object v10, v1
goto :goto_10
:pswitch_7a
sget-object v11, Lcom/google/android/gms/identity/intents/model/UserAddress;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/identity/intents/model/UserAddress;
move-object v11, v1
goto :goto_10
:pswitch_86
sget-object v12, Lcom/google/android/gms/identity/intents/model/UserAddress;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/identity/intents/model/UserAddress;
move-object v12, v1
goto/16 :goto_10
:pswitch_93
sget-object v13, Lcom/google/android/gms/wallet/InstrumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v1, v13}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
move-result-object v1
check-cast v1, [Lcom/google/android/gms/wallet/InstrumentInfo;
move-object v13, v1
goto/16 :goto_10
:cond_a0
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v1
if-eq v1, v14, :cond_bd
new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Overread allowed size end="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p1
invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v1
:cond_bd
new-instance v1, Lcom/google/android/gms/wallet/MaskedWallet;
invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/wallet/MaskedWallet;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Lcom/google/android/gms/wallet/LoyaltyWalletObject;[Lcom/google/android/gms/wallet/OfferWalletObject;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;)V
return-object v1
nop
:pswitch_data_c4
.packed-switch 0x1
:pswitch_27
:pswitch_2e
:pswitch_35
:pswitch_3c
:pswitch_43
:pswitch_4a
:pswitch_56
:pswitch_62
:pswitch_6e
:pswitch_7a
:pswitch_86
:pswitch_93
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/wallet/MaskedWallet;
return-object v0
.end method