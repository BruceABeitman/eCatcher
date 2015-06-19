.class public final Lcom/google/android/gms/identity/intents/model/b;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/identity/intents/model/UserAddress;Landroid/os/Parcel;)V
.registers 6
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/identity/intents/model/UserAddress;->a()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->a:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->b:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->c:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->d:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x6
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->e:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x7
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->f:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x8
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->g:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x9
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->h:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xa
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->i:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xb
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->j:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xc
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->k:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xd
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->l:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xe
iget-boolean v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->m:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0xf
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->n:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x10
iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->o:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 23
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v2
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
const/4 v15, 0x0
const/16 v16, 0x0
const/16 v17, 0x0
const/16 v18, 0x0
:goto_17
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v19
move/from16 v0, v19
if-ge v0, v2, :cond_c8
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I
move-result v19
const v20, 0xffff
and-int v20, v20, v19
packed-switch v20, :pswitch_data_ee
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_17
:pswitch_33
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v3
goto :goto_17
:pswitch_3c
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_17
:pswitch_45
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v5
goto :goto_17
:pswitch_4e
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v6
goto :goto_17
:pswitch_57
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v7
goto :goto_17
:pswitch_60
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v8
goto :goto_17
:pswitch_69
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v9
goto :goto_17
:pswitch_72
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v10
goto :goto_17
:pswitch_7b
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v11
goto :goto_17
:pswitch_84
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v12
goto :goto_17
:pswitch_8d
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v13
goto :goto_17
:pswitch_96
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v14
goto/16 :goto_17
:pswitch_a0
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v15
goto/16 :goto_17
:pswitch_aa
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v16
goto/16 :goto_17
:pswitch_b4
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v17
goto/16 :goto_17
:pswitch_be
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v18
goto/16 :goto_17
:cond_c8
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v19
move/from16 v0, v19
if-eq v0, v2, :cond_e7
new-instance v3, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Overread allowed size end="
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p1
invoke-direct {v3, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v3
:cond_e7
new-instance v2, Lcom/google/android/gms/identity/intents/model/UserAddress;
invoke-direct/range {v2 .. v18}, Lcom/google/android/gms/identity/intents/model/UserAddress;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
return-object v2
nop
:pswitch_data_ee
.packed-switch 0x1
:pswitch_33
:pswitch_3c
:pswitch_45
:pswitch_4e
:pswitch_57
:pswitch_60
:pswitch_69
:pswitch_72
:pswitch_7b
:pswitch_84
:pswitch_8d
:pswitch_96
:pswitch_a0
:pswitch_aa
:pswitch_b4
:pswitch_be
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/identity/intents/model/UserAddress;
return-object v0
.end method