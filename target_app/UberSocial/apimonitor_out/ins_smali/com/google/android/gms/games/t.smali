.class public Lcom/google/android/gms/games/t;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/games/GameEntity;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->a()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->b()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->c()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->d()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x5
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->e()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x6
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->f()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x7
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->g()Landroid/net/Uri;
move-result-object v2
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0x8
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->k()Landroid/net/Uri;
move-result-object v2
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0x9
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->m()Landroid/net/Uri;
move-result-object v2
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0xa
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->o()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0xb
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->q()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0xc
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->r()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xd
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->s()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/16 v1, 0xe
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->t()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/16 v1, 0xf
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->u()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/16 v1, 0x11
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->w()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0x10
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->v()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0x3e8
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->x()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/16 v1, 0x13
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->l()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x12
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->j()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x15
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->p()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0x14
invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->n()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;
.registers 28
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;)I
move-result v24
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
const/4 v14, 0x0
const/4 v15, 0x0
const/16 v16, 0x0
const/16 v17, 0x0
const/16 v18, 0x0
const/16 v19, 0x0
const/16 v20, 0x0
const/16 v21, 0x0
const/16 v22, 0x0
const/16 v23, 0x0
:goto_22
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v1
move/from16 v0, v24
if-ge v1, v0, :cond_ee
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v1
invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(I)I
move-result v25
sparse-switch v25, :sswitch_data_11a
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_22
:sswitch_3b
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
goto :goto_22
:sswitch_42
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_22
:sswitch_49
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v5
goto :goto_22
:sswitch_50
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v6
goto :goto_22
:sswitch_57
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v7
goto :goto_22
:sswitch_5e
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v8
goto :goto_22
:sswitch_65
sget-object v9, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/net/Uri;
move-object v9, v1
goto :goto_22
:sswitch_71
sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/net/Uri;
move-object v10, v1
goto :goto_22
:sswitch_7d
sget-object v11, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/net/Uri;
move-object v11, v1
goto :goto_22
:sswitch_89
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v12
goto :goto_22
:sswitch_90
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v13
goto :goto_22
:sswitch_97
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v14
goto :goto_22
:sswitch_9e
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v15
goto/16 :goto_22
:sswitch_a6
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v16
goto/16 :goto_22
:sswitch_ae
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v17
goto/16 :goto_22
:sswitch_b6
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v19
goto/16 :goto_22
:sswitch_be
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v18
goto/16 :goto_22
:sswitch_c6
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto/16 :goto_22
:sswitch_ce
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v21
goto/16 :goto_22
:sswitch_d6
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v20
goto/16 :goto_22
:sswitch_de
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v23
goto/16 :goto_22
:sswitch_e6
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v22
goto/16 :goto_22
:cond_ee
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v1
move/from16 v0, v24
if-eq v1, v0, :cond_113
new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/b;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Overread allowed size end="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move/from16 v0, v24
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p1
invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v1
:cond_113
new-instance v1, Lcom/google/android/gms/games/GameEntity;
invoke-direct/range {v1 .. v23}, Lcom/google/android/gms/games/GameEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZZLjava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
return-object v1
nop
:sswitch_data_11a
.sparse-switch
0x1 -> :sswitch_3b
0x2 -> :sswitch_42
0x3 -> :sswitch_49
0x4 -> :sswitch_50
0x5 -> :sswitch_57
0x6 -> :sswitch_5e
0x7 -> :sswitch_65
0x8 -> :sswitch_71
0x9 -> :sswitch_7d
0xa -> :sswitch_89
0xb -> :sswitch_90
0xc -> :sswitch_97
0xd -> :sswitch_9e
0xe -> :sswitch_a6
0xf -> :sswitch_ae
0x10 -> :sswitch_be
0x11 -> :sswitch_b6
0x12 -> :sswitch_d6
0x13 -> :sswitch_ce
0x14 -> :sswitch_e6
0x15 -> :sswitch_de
0x3e8 -> :sswitch_c6
.end sparse-switch
.end method
.method public a(I)[Lcom/google/android/gms/games/GameEntity;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/games/GameEntity;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/t;->a(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/t;->a(I)[Lcom/google/android/gms/games/GameEntity;
move-result-object v0
return-object v0
.end method