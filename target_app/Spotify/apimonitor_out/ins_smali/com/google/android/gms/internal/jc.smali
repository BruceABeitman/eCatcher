.class public final Lcom/google/android/gms/internal/jc;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/internal/hd;Landroid/os/Parcel;)V
.registers 6
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->f()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x3e8
invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->a()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->g()J
move-result-wide v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->b()S
move-result v1
invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;S)V
const/4 v1, 0x4
invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->c()D
move-result-wide v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V
const/4 v1, 0x5
invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->d()D
move-result-wide v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V
const/4 v1, 0x6
invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->e()F
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/4 v1, 0x7
invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->h()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0x8
invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->i()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0x9
invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->j()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 19
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v1
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const-wide/16 v6, 0x0
const-wide/16 v8, 0x0
const/4 v10, 0x0
const-wide/16 v11, 0x0
const/4 v13, 0x0
const/4 v14, -0x1
:goto_11
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v15
if-ge v15, v1, :cond_6f
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I
move-result v15
const v16, 0xffff
and-int v16, v16, v15
sparse-switch v16, :sswitch_data_92
move-object/from16 v0, p1
invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_11
:sswitch_29
move-object/from16 v0, p1
invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
goto :goto_11
:sswitch_30
move-object/from16 v0, p1
invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto :goto_11
:sswitch_37
move-object/from16 v0, p1
invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v11
goto :goto_11
:sswitch_3e
move-object/from16 v0, p1
invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->f(Landroid/os/Parcel;I)S
move-result v5
goto :goto_11
:sswitch_45
move-object/from16 v0, p1
invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)D
move-result-wide v6
goto :goto_11
:sswitch_4c
move-object/from16 v0, p1
invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)D
move-result-wide v8
goto :goto_11
:sswitch_53
move-object/from16 v0, p1
invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F
move-result v10
goto :goto_11
:sswitch_5a
move-object/from16 v0, p1
invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v4
goto :goto_11
:sswitch_61
move-object/from16 v0, p1
invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v13
goto :goto_11
:sswitch_68
move-object/from16 v0, p1
invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v14
goto :goto_11
:cond_6f
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v15
if-eq v15, v1, :cond_8c
new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Overread allowed size end="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
move-object/from16 v0, p1
invoke-direct {v2, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v2
:cond_8c
new-instance v1, Lcom/google/android/gms/internal/hd;
invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/hd;-><init>(ILjava/lang/String;ISDDFJII)V
return-object v1
:sswitch_data_92
.sparse-switch
0x1 -> :sswitch_29
0x2 -> :sswitch_37
0x3 -> :sswitch_3e
0x4 -> :sswitch_45
0x5 -> :sswitch_4c
0x6 -> :sswitch_53
0x7 -> :sswitch_5a
0x8 -> :sswitch_61
0x9 -> :sswitch_68
0x3e8 -> :sswitch_30
.end sparse-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/hd;
return-object v0
.end method