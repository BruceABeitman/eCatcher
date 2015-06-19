.class public final Lcom/google/android/gms/games/multiplayer/turnbased/a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;Landroid/os/Parcel;I)V
.registers 8
const/4 v4, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->b()Lcom/google/android/gms/games/Game;
move-result-object v2
invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->c()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->d()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->e()J
move-result-wide v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/4 v1, 0x5
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->j()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x6
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->l()J
move-result-wide v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/4 v1, 0x7
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->m()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x8
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->f()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0xa
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->i()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0xb
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->o()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0xc
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->n()[B
move-result-object v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[B)V
const/16 v1, 0xd
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->k()Ljava/util/ArrayList;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
const/16 v1, 0xe
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->p()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xf
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->q()[B
move-result-object v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[B)V
const/16 v1, 0x11
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->s()Landroid/os/Bundle;
move-result-object v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;)V
const/16 v1, 0x10
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->r()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0x3e8
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->w()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0x13
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->u()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0x12
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->g()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0x15
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->v()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x14
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->h()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 30
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v26
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const-wide/16 v7, 0x0
const/4 v9, 0x0
const-wide/16 v10, 0x0
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
const/16 v24, 0x0
const/16 v25, 0x0
:goto_25
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v2
move/from16 v0, v26
if-ge v2, v0, :cond_e3
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I
move-result v2
const v27, 0xffff
and-int v27, v27, v2
sparse-switch v27, :sswitch_data_10a
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_25
:sswitch_3f
sget-object v4, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v2
check-cast v2, Lcom/google/android/gms/games/GameEntity;
move-object v4, v2
goto :goto_25
:sswitch_4b
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v5
goto :goto_25
:sswitch_52
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v6
goto :goto_25
:sswitch_59
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v7
goto :goto_25
:sswitch_60
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v9
goto :goto_25
:sswitch_67
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v10
goto :goto_25
:sswitch_6e
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v12
goto :goto_25
:sswitch_75
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v13
goto :goto_25
:sswitch_7c
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v14
goto :goto_25
:sswitch_83
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v15
goto :goto_25
:sswitch_8a
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)[B
move-result-object v16
goto :goto_25
:sswitch_91
sget-object v17, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v17
goto :goto_25
:sswitch_9c
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v18
goto :goto_25
:sswitch_a3
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)[B
move-result-object v19
goto/16 :goto_25
:sswitch_ab
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/Bundle;
move-result-object v21
goto/16 :goto_25
:sswitch_b3
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v20
goto/16 :goto_25
:sswitch_bb
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v3
goto/16 :goto_25
:sswitch_c3
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v23
goto/16 :goto_25
:sswitch_cb
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v22
goto/16 :goto_25
:sswitch_d3
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v25
goto/16 :goto_25
:sswitch_db
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v24
goto/16 :goto_25
:cond_e3
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v2
move/from16 v0, v26
if-eq v2, v0, :cond_104
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
:cond_104
new-instance v2, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;
invoke-direct/range {v2 .. v25}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;-><init>(ILcom/google/android/gms/games/GameEntity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;III[BLjava/util/ArrayList;Ljava/lang/String;[BILandroid/os/Bundle;IZLjava/lang/String;Ljava/lang/String;)V
return-object v2
:sswitch_data_10a
.sparse-switch
0x1 -> :sswitch_3f
0x2 -> :sswitch_4b
0x3 -> :sswitch_52
0x4 -> :sswitch_59
0x5 -> :sswitch_60
0x6 -> :sswitch_67
0x7 -> :sswitch_6e
0x8 -> :sswitch_75
0xa -> :sswitch_7c
0xb -> :sswitch_83
0xc -> :sswitch_8a
0xd -> :sswitch_91
0xe -> :sswitch_9c
0xf -> :sswitch_a3
0x10 -> :sswitch_b3
0x11 -> :sswitch_ab
0x12 -> :sswitch_cb
0x13 -> :sswitch_c3
0x14 -> :sswitch_db
0x15 -> :sswitch_d3
0x3e8 -> :sswitch_bb
.end sparse-switch
.end method
.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;
return-object v0
.end method