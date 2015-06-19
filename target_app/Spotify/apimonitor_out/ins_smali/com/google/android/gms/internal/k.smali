.class public final Lcom/google/android/gms/internal/k;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ah;
.registers 18
invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v15
const/4 v2, 0x0
const-wide/16 v3, 0x0
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
:goto_11
invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I
move-result v1
if-ge v1, v15, :cond_87
invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I
move-result v1
const v16, 0xffff
and-int v16, v16, v1
packed-switch v16, :pswitch_data_aa
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_11
:pswitch_29
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto :goto_11
:pswitch_30
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v3
goto :goto_11
:pswitch_37
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/Bundle;
move-result-object v5
goto :goto_11
:pswitch_3e
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v6
goto :goto_11
:pswitch_45
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->u(Landroid/os/Parcel;I)Ljava/util/ArrayList;
move-result-object v7
goto :goto_11
:pswitch_4c
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v8
goto :goto_11
:pswitch_53
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v9
goto :goto_11
:pswitch_5a
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v10
goto :goto_11
:pswitch_61
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v11
goto :goto_11
:pswitch_68
sget-object v12, Lcom/google/android/gms/internal/av;->CREATOR:Lcom/google/android/gms/internal/ag;
move-object/from16 v0, p0
invoke-static {v0, v1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/av;
move-object v12, v1
goto :goto_11
:pswitch_74
sget-object v13, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p0
invoke-static {v0, v1, v13}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/location/Location;
move-object v13, v1
goto :goto_11
:pswitch_80
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v14
goto :goto_11
:cond_87
invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I
move-result v1
if-eq v1, v15, :cond_a4
new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Overread allowed size end="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v1
:cond_a4
new-instance v1, Lcom/google/android/gms/internal/ah;
invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ah;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/av;Landroid/location/Location;Ljava/lang/String;)V
return-object v1
:pswitch_data_aa
.packed-switch 0x1
:pswitch_29
:pswitch_30
:pswitch_37
:pswitch_3e
:pswitch_45
:pswitch_4c
:pswitch_53
:pswitch_5a
:pswitch_61
:pswitch_68
:pswitch_74
:pswitch_80
.end packed-switch
.end method
.method static a(Lcom/google/android/gms/internal/ah;Landroid/os/Parcel;I)V
.registers 8
const/4 v4, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/internal/ah;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-wide v2, p0, Lcom/google/android/gms/internal/ah;->b:J
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/internal/ah;->c:Landroid/os/Bundle;
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;)V
const/4 v1, 0x4
iget v2, p0, Lcom/google/android/gms/internal/ah;->d:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/internal/ah;->e:Ljava/util/List;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V
const/4 v1, 0x6
iget-boolean v2, p0, Lcom/google/android/gms/internal/ah;->f:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/4 v1, 0x7
iget v2, p0, Lcom/google/android/gms/internal/ah;->g:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0x8
iget-boolean v2, p0, Lcom/google/android/gms/internal/ah;->h:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0x9
iget-object v2, p0, Lcom/google/android/gms/internal/ah;->i:Ljava/lang/String;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xa
iget-object v2, p0, Lcom/google/android/gms/internal/ah;->j:Lcom/google/android/gms/internal/av;
invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0xb
iget-object v2, p0, Lcom/google/android/gms/internal/ah;->k:Landroid/location/Location;
invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0xc
iget-object v2, p0, Lcom/google/android/gms/internal/ah;->l:Ljava/lang/String;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/k;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ah;
move-result-object v0
return-object v0
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/ah;
return-object v0
.end method