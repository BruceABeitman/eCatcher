.class public Lcom/google/android/gms/wallet/p;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/wallet/Address;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/wallet/Address;->a()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->a:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->b:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->c:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->d:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x6
iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->e:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x7
iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->f:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x8
iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->g:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x9
iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->h:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xa
iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->i:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xb
iget-boolean v2, p0, Lcom/google/android/gms/wallet/Address;->j:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0xc
iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->k:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/Address;
.registers 18
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;)I
move-result v1
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
move-result v14
if-ge v14, v1, :cond_7b
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v14
invoke-static {v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(I)I
move-result v15
packed-switch v15, :pswitch_data_a2
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_10
:pswitch_27
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto :goto_10
:pswitch_2e
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
goto :goto_10
:pswitch_35
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_10
:pswitch_3c
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v5
goto :goto_10
:pswitch_43
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v6
goto :goto_10
:pswitch_4a
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v7
goto :goto_10
:pswitch_51
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v8
goto :goto_10
:pswitch_58
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v9
goto :goto_10
:pswitch_5f
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v10
goto :goto_10
:pswitch_66
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v11
goto :goto_10
:pswitch_6d
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v12
goto :goto_10
:pswitch_74
move-object/from16 v0, p1
invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v13
goto :goto_10
:cond_7b
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v14
if-eq v14, v1, :cond_9c
new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/b;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Overread allowed size end="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
move-object/from16 v0, p1
invoke-direct {v2, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v2
:cond_9c
new-instance v1, Lcom/google/android/gms/wallet/Address;
invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/wallet/Address;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
return-object v1
:pswitch_data_a2
.packed-switch 0x1
:pswitch_27
:pswitch_2e
:pswitch_35
:pswitch_3c
:pswitch_43
:pswitch_4a
:pswitch_51
:pswitch_58
:pswitch_5f
:pswitch_66
:pswitch_6d
:pswitch_74
.end packed-switch
.end method
.method public a(I)[Lcom/google/android/gms/wallet/Address;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/wallet/Address;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/p;->a(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/Address;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/p;->a(I)[Lcom/google/android/gms/wallet/Address;
move-result-object v0
return-object v0
.end method