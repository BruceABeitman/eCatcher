.class public final Lcom/google/android/gms/internal/do;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/cz;
.registers 28
invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v2
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
const-wide/16 v9, 0x0
const/4 v11, 0x0
const-wide/16 v12, 0x0
const/4 v14, 0x0
const-wide/16 v15, 0x0
const/16 v17, 0x0
const/16 v18, 0x0
const-wide/16 v19, 0x0
const/16 v21, 0x0
const/16 v22, 0x0
const/16 v23, 0x0
const/16 v24, 0x0
:goto_20
invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I
move-result v25
move/from16 v0, v25
if-ge v0, v2, :cond_e5
invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I
move-result v25
const v26, 0xffff
and-int v26, v26, v25
packed-switch v26, :pswitch_data_10a
:pswitch_34
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_20
:pswitch_3c
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v3
goto :goto_20
:pswitch_45
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_20
:pswitch_4e
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v5
goto :goto_20
:pswitch_57
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->u(Landroid/os/Parcel;I)Ljava/util/ArrayList;
move-result-object v6
goto :goto_20
:pswitch_60
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v7
goto :goto_20
:pswitch_69
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->u(Landroid/os/Parcel;I)Ljava/util/ArrayList;
move-result-object v8
goto :goto_20
:pswitch_72
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v9
goto :goto_20
:pswitch_7b
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v11
goto :goto_20
:pswitch_84
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v12
goto :goto_20
:pswitch_8d
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->u(Landroid/os/Parcel;I)Ljava/util/ArrayList;
move-result-object v14
goto :goto_20
:pswitch_96
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v15
goto :goto_20
:pswitch_9f
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v17
goto/16 :goto_20
:pswitch_a9
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v18
goto/16 :goto_20
:pswitch_b3
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v19
goto/16 :goto_20
:pswitch_bd
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v21
goto/16 :goto_20
:pswitch_c7
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v23
goto/16 :goto_20
:pswitch_d1
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v22
goto/16 :goto_20
:pswitch_db
move-object/from16 v0, p0
move/from16 v1, v25
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v24
goto/16 :goto_20
:cond_e5
invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I
move-result v25
move/from16 v0, v25
if-eq v0, v2, :cond_104
new-instance v3, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Overread allowed size end="
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
invoke-direct {v3, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v3
:cond_104
new-instance v2, Lcom/google/android/gms/internal/cz;
invoke-direct/range {v2 .. v24}, Lcom/google/android/gms/internal/cz;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
return-object v2
:pswitch_data_10a
.packed-switch 0x1
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
:pswitch_9f
:pswitch_a9
:pswitch_b3
:pswitch_bd
:pswitch_34
:pswitch_34
:pswitch_d1
:pswitch_c7
:pswitch_34
:pswitch_db
.end packed-switch
.end method
.method static a(Lcom/google/android/gms/internal/cz;Landroid/os/Parcel;)V
.registers 7
const/4 v4, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/internal/cz;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/internal/cz;->b:Ljava/lang/String;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/internal/cz;->c:Ljava/lang/String;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/internal/cz;->d:Ljava/util/List;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V
const/4 v1, 0x5
iget v2, p0, Lcom/google/android/gms/internal/cz;->e:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x6
iget-object v2, p0, Lcom/google/android/gms/internal/cz;->f:Ljava/util/List;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V
const/4 v1, 0x7
iget-wide v2, p0, Lcom/google/android/gms/internal/cz;->g:J
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/16 v1, 0x8
iget-boolean v2, p0, Lcom/google/android/gms/internal/cz;->h:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0x9
iget-wide v2, p0, Lcom/google/android/gms/internal/cz;->i:J
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/16 v1, 0xa
iget-object v2, p0, Lcom/google/android/gms/internal/cz;->j:Ljava/util/List;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V
const/16 v1, 0xb
iget-wide v2, p0, Lcom/google/android/gms/internal/cz;->k:J
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/16 v1, 0xc
iget v2, p0, Lcom/google/android/gms/internal/cz;->l:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0xd
iget-object v2, p0, Lcom/google/android/gms/internal/cz;->m:Ljava/lang/String;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xe
iget-wide v2, p0, Lcom/google/android/gms/internal/cz;->n:J
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/16 v1, 0xf
iget-object v2, p0, Lcom/google/android/gms/internal/cz;->o:Ljava/lang/String;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x13
iget-object v2, p0, Lcom/google/android/gms/internal/cz;->q:Ljava/lang/String;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x12
iget-boolean v2, p0, Lcom/google/android/gms/internal/cz;->p:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0x15
iget-object v2, p0, Lcom/google/android/gms/internal/cz;->r:Ljava/lang/String;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/do;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/cz;
move-result-object v0
return-object v0
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/cz;
return-object v0
.end method