.class public Lcom/google/android/gms/wallet/z;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWalletRequest;->b()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->a:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->b:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/4 v1, 0x4
iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->c:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/4 v1, 0x5
iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->d:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/4 v1, 0x6
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->e:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x7
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->f:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x8
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->g:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x9
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->h:Lcom/google/android/gms/wallet/Cart;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0xa
iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->i:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0xb
iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->j:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0xc
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->k:[Lcom/google/android/gms/wallet/CountrySpecification;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
const/16 v1, 0xd
iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->l:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0xe
iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->m:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0xf
iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->n:Ljava/util/ArrayList;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/MaskedWalletRequest;
.registers 22
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;)I
move-result v18
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
const/4 v14, 0x0
const/4 v15, 0x1
const/16 v16, 0x1
const/16 v17, 0x0
:goto_15
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v2
move/from16 v0, v18
if-ge v2, v0, :cond_a7
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v2
invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(I)I
move-result v19
packed-switch v19, :pswitch_data_d2
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_15
:pswitch_2e
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v3
goto :goto_15
:pswitch_35
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_15
:pswitch_3c
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v5
goto :goto_15
:pswitch_43
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v6
goto :goto_15
:pswitch_4a
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v7
goto :goto_15
:pswitch_51
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v8
goto :goto_15
:pswitch_58
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v9
goto :goto_15
:pswitch_5f
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v10
goto :goto_15
:pswitch_66
sget-object v11, Lcom/google/android/gms/wallet/Cart;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v2, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v2
check-cast v2, Lcom/google/android/gms/wallet/Cart;
move-object v11, v2
goto :goto_15
:pswitch_72
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v12
goto :goto_15
:pswitch_79
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v13
goto :goto_15
:pswitch_80
sget-object v14, Lcom/google/android/gms/wallet/CountrySpecification;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v2, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
move-result-object v2
check-cast v2, [Lcom/google/android/gms/wallet/CountrySpecification;
move-object v14, v2
goto :goto_15
:pswitch_8c
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v15
goto :goto_15
:pswitch_93
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v16
goto/16 :goto_15
:pswitch_9b
sget-object v17, Lcom/google/android/gms/identity/intents/model/CountrySpecification;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v17
goto/16 :goto_15
:cond_a7
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v2
move/from16 v0, v18
if-eq v2, v0, :cond_cc
new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/b;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Overread allowed size end="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move/from16 v0, v18
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p1
invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v2
:cond_cc
new-instance v2, Lcom/google/android/gms/wallet/MaskedWalletRequest;
invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/wallet/MaskedWalletRequest;-><init>(ILjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;ZZ[Lcom/google/android/gms/wallet/CountrySpecification;ZZLjava/util/ArrayList;)V
return-object v2
:pswitch_data_d2
.packed-switch 0x1
:pswitch_2e
:pswitch_35
:pswitch_3c
:pswitch_43
:pswitch_4a
:pswitch_51
:pswitch_58
:pswitch_5f
:pswitch_66
:pswitch_72
:pswitch_79
:pswitch_80
:pswitch_8c
:pswitch_93
:pswitch_9b
.end packed-switch
.end method
.method public a(I)[Lcom/google/android/gms/wallet/MaskedWalletRequest;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/wallet/MaskedWalletRequest;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/z;->a(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/MaskedWalletRequest;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/z;->a(I)[Lcom/google/android/gms/wallet/MaskedWalletRequest;
move-result-object v0
return-object v0
.end method