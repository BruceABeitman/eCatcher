.class public Lcom/google/android/gms/games/internal/game/b;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;Landroid/os/Parcel;I)V
.registers 8
const/4 v4, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->m()Lcom/google/android/gms/games/GameEntity;
move-result-object v2
invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0x3e8
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->l()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->d()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x3
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->e()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/4 v1, 0x4
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->f()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x5
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->g()J
move-result-wide v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/4 v1, 0x6
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->h()J
move-result-wide v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/4 v1, 0x7
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->i()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x8
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->j()J
move-result-wide v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/16 v1, 0x9
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->k()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xa
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->c()Ljava/util/ArrayList;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
.registers 20
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v16
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const-wide/16 v7, 0x0
const-wide/16 v9, 0x0
const/4 v11, 0x0
const-wide/16 v12, 0x0
const/4 v14, 0x0
const/4 v15, 0x0
:goto_12
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v1
move/from16 v0, v16
if-ge v1, v0, :cond_80
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I
move-result v1
const v17, 0xffff
and-int v17, v17, v1
sparse-switch v17, :sswitch_data_a8
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_12
:sswitch_2c
sget-object v3, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/games/GameEntity;
move-object v3, v1
goto :goto_12
:sswitch_38
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto :goto_12
:sswitch_3f
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v4
goto :goto_12
:sswitch_46
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v5
goto :goto_12
:sswitch_4d
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v6
goto :goto_12
:sswitch_54
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v7
goto :goto_12
:sswitch_5b
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v9
goto :goto_12
:sswitch_62
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v11
goto :goto_12
:sswitch_69
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v12
goto :goto_12
:sswitch_70
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v14
goto :goto_12
:sswitch_77
sget-object v15, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->CREATOR:Lcom/google/android/gms/games/internal/game/d;
move-object/from16 v0, p1
invoke-static {v0, v1, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v15
goto :goto_12
:cond_80
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v1
move/from16 v0, v16
if-eq v1, v0, :cond_a1
new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Overread allowed size end="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move/from16 v0, v16
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p1
invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v1
:cond_a1
new-instance v1, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;-><init>(ILcom/google/android/gms/games/GameEntity;IZIJJLjava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)V
return-object v1
nop
:sswitch_data_a8
.sparse-switch
0x1 -> :sswitch_2c
0x2 -> :sswitch_3f
0x3 -> :sswitch_46
0x4 -> :sswitch_4d
0x5 -> :sswitch_54
0x6 -> :sswitch_5b
0x7 -> :sswitch_62
0x8 -> :sswitch_69
0x9 -> :sswitch_70
0xa -> :sswitch_77
0x3e8 -> :sswitch_38
.end sparse-switch
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/b;->a(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
return-object v0
.end method