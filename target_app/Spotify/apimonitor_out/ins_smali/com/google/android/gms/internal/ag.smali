.class public final Lcom/google/android/gms/internal/ag;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/internal/av;Landroid/os/Parcel;)V
.registers 6
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/internal/av;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget v2, p0, Lcom/google/android/gms/internal/av;->b:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x3
iget v2, p0, Lcom/google/android/gms/internal/av;->c:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x4
iget v2, p0, Lcom/google/android/gms/internal/av;->d:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x5
iget v2, p0, Lcom/google/android/gms/internal/av;->e:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x6
iget v2, p0, Lcom/google/android/gms/internal/av;->f:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x7
iget v2, p0, Lcom/google/android/gms/internal/av;->g:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0x8
iget v2, p0, Lcom/google/android/gms/internal/av;->h:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0x9
iget v2, p0, Lcom/google/android/gms/internal/av;->i:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0xa
iget-object v2, p0, Lcom/google/android/gms/internal/av;->j:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xb
iget v2, p0, Lcom/google/android/gms/internal/av;->k:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0xc
iget-object v2, p0, Lcom/google/android/gms/internal/av;->l:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xd
iget v2, p0, Lcom/google/android/gms/internal/av;->m:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0xe
iget v2, p0, Lcom/google/android/gms/internal/av;->n:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0xf
iget-object v2, p0, Lcom/google/android/gms/internal/av;->o:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 22
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
:goto_15
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v18
move/from16 v0, v18
if-ge v0, v2, :cond_bc
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I
move-result v18
const v19, 0xffff
and-int v19, v19, v18
packed-switch v19, :pswitch_data_e2
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_15
:pswitch_31
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v3
goto :goto_15
:pswitch_3a
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v4
goto :goto_15
:pswitch_43
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v5
goto :goto_15
:pswitch_4c
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v6
goto :goto_15
:pswitch_55
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v7
goto :goto_15
:pswitch_5e
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v8
goto :goto_15
:pswitch_67
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v9
goto :goto_15
:pswitch_70
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v10
goto :goto_15
:pswitch_79
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v11
goto :goto_15
:pswitch_82
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v12
goto :goto_15
:pswitch_8b
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v13
goto :goto_15
:pswitch_94
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v14
goto/16 :goto_15
:pswitch_9e
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v15
goto/16 :goto_15
:pswitch_a8
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v16
goto/16 :goto_15
:pswitch_b2
move-object/from16 v0, p1
move/from16 v1, v18
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v17
goto/16 :goto_15
:cond_bc
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v18
move/from16 v0, v18
if-eq v0, v2, :cond_db
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
:cond_db
new-instance v2, Lcom/google/android/gms/internal/av;
invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/av;-><init>(IIIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
return-object v2
nop
:pswitch_data_e2
.packed-switch 0x1
:pswitch_31
:pswitch_3a
:pswitch_43
:pswitch_4c
:pswitch_55
:pswitch_5e
:pswitch_67
:pswitch_70
:pswitch_79
:pswitch_82
:pswitch_8b
:pswitch_94
:pswitch_9e
:pswitch_a8
:pswitch_b2
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/av;
return-object v0
.end method