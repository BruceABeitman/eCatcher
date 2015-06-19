.class public Lcom/google/android/gms/wallet/j;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/wallet/LoyaltyWalletObject;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->getVersionCode()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->eN:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YC:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YD:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YE:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x6
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YF:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x7
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YG:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x8
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YH:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x9
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YI:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xa
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YJ:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xb
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YK:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xc
iget v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->state:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/16 v1, 0xd
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YL:Ljava/util/ArrayList;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
const/16 v1, 0xe
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YM:Lcom/google/android/gms/internal/jr;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0xf
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YN:Ljava/util/ArrayList;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
const/16 v1, 0x11
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YP:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x10
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YO:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x13
iget-boolean v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YR:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0x12
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YQ:Ljava/util/ArrayList;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
const/16 v1, 0x15
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YT:Ljava/util/ArrayList;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
const/16 v1, 0x14
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YS:Ljava/util/ArrayList;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
const/16 v1, 0x17
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YV:Lcom/google/android/gms/internal/jl;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0x16
iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YU:Ljava/util/ArrayList;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V
return-void
.end method
.method public ba(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/LoyaltyWalletObject;
.registers 30
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I
move-result v26
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
invoke-static {}, Lcom/google/android/gms/internal/fj;->eH()Ljava/util/ArrayList;
move-result-object v15
const/16 v16, 0x0
invoke-static {}, Lcom/google/android/gms/internal/fj;->eH()Ljava/util/ArrayList;
move-result-object v17
const/16 v18, 0x0
const/16 v19, 0x0
invoke-static {}, Lcom/google/android/gms/internal/fj;->eH()Ljava/util/ArrayList;
move-result-object v20
const/16 v21, 0x0
invoke-static {}, Lcom/google/android/gms/internal/fj;->eH()Ljava/util/ArrayList;
move-result-object v22
invoke-static {}, Lcom/google/android/gms/internal/fj;->eH()Ljava/util/ArrayList;
move-result-object v23
invoke-static {}, Lcom/google/android/gms/internal/fj;->eH()Ljava/util/ArrayList;
move-result-object v24
const/16 v25, 0x0
:goto_32
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v2
move/from16 v0, v26
if-ge v2, v0, :cond_11c
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I
move-result v2
invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->S(I)I
move-result v27
packed-switch v27, :pswitch_data_144
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_32
:pswitch_4b
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v3
goto :goto_32
:pswitch_52
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_32
:pswitch_59
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v5
goto :goto_32
:pswitch_60
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v6
goto :goto_32
:pswitch_67
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v7
goto :goto_32
:pswitch_6e
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v8
goto :goto_32
:pswitch_75
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v9
goto :goto_32
:pswitch_7c
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v10
goto :goto_32
:pswitch_83
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v11
goto :goto_32
:pswitch_8a
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v12
goto :goto_32
:pswitch_91
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v13
goto :goto_32
:pswitch_98
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v14
goto :goto_32
:pswitch_9f
sget-object v15, Lcom/google/android/gms/internal/jv;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v2, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v15
goto :goto_32
:pswitch_a8
sget-object v16, Lcom/google/android/gms/internal/jr;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
move-object/from16 v1, v16
invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v2
check-cast v2, Lcom/google/android/gms/internal/jr;
move-object/from16 v16, v2
goto/16 :goto_32
:pswitch_b8
sget-object v17, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v17
goto/16 :goto_32
:pswitch_c4
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v19
goto/16 :goto_32
:pswitch_cc
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v18
goto/16 :goto_32
:pswitch_d4
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v21
goto/16 :goto_32
:pswitch_dc
sget-object v20, Lcom/google/android/gms/internal/jj;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
move-object/from16 v1, v20
invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v20
goto/16 :goto_32
:pswitch_e8
sget-object v23, Lcom/google/android/gms/internal/jp;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
move-object/from16 v1, v23
invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v23
goto/16 :goto_32
:pswitch_f4
sget-object v22, Lcom/google/android/gms/internal/jt;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
move-object/from16 v1, v22
invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v22
goto/16 :goto_32
:pswitch_100
sget-object v25, Lcom/google/android/gms/internal/jl;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
move-object/from16 v1, v25
invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v2
check-cast v2, Lcom/google/android/gms/internal/jl;
move-object/from16 v25, v2
goto/16 :goto_32
:pswitch_110
sget-object v24, Lcom/google/android/gms/internal/jt;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
move-object/from16 v1, v24
invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v24
goto/16 :goto_32
:cond_11c
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v2
move/from16 v0, v26
if-eq v2, v0, :cond_13d
new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Overread allowed size end="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move/from16 v0, v26
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p1
invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v2
:cond_13d
new-instance v2, Lcom/google/android/gms/wallet/LoyaltyWalletObject;
invoke-direct/range {v2 .. v25}, Lcom/google/android/gms/wallet/LoyaltyWalletObject;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/internal/jr;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gms/internal/jl;)V
return-object v2
nop
:pswitch_data_144
.packed-switch 0x1
:pswitch_4b
:pswitch_52
:pswitch_59
:pswitch_60
:pswitch_67
:pswitch_6e
:pswitch_75
:pswitch_7c
:pswitch_83
:pswitch_8a
:pswitch_91
:pswitch_98
:pswitch_9f
:pswitch_a8
:pswitch_b8
:pswitch_cc
:pswitch_c4
:pswitch_dc
:pswitch_d4
:pswitch_f4
:pswitch_e8
:pswitch_110
:pswitch_100
.end packed-switch
.end method
.method public cg(I)[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/wallet/LoyaltyWalletObject;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/j;->ba(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/LoyaltyWalletObject;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/j;->cg(I)[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
move-result-object v0
return-object v0
.end method