.class public Lcom/google/android/gms/internal/hy;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/internal/hx;Landroid/os/Parcel;I)V
.registers 8
const/4 v4, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/internal/hx;->getId()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/internal/hx;->gE()Landroid/os/Bundle;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
const/4 v1, 0x3
invoke-virtual {p0}, Lcom/google/android/gms/internal/hx;->gF()Lcom/google/android/gms/internal/hz;
move-result-object v2
invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x4
invoke-virtual {p0}, Lcom/google/android/gms/internal/hx;->gx()Lcom/google/android/gms/maps/model/LatLng;
move-result-object v2
invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x5
invoke-virtual {p0}, Lcom/google/android/gms/internal/hx;->gy()F
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/4 v1, 0x6
invoke-virtual {p0}, Lcom/google/android/gms/internal/hx;->gz()Lcom/google/android/gms/maps/model/LatLngBounds;
move-result-object v2
invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x7
invoke-virtual {p0}, Lcom/google/android/gms/internal/hx;->gG()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x8
invoke-virtual {p0}, Lcom/google/android/gms/internal/hx;->gA()Landroid/net/Uri;
move-result-object v2
invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0x9
invoke-virtual {p0}, Lcom/google/android/gms/internal/hx;->gB()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0xa
invoke-virtual {p0}, Lcom/google/android/gms/internal/hx;->getRating()F
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/16 v1, 0xb
invoke-virtual {p0}, Lcom/google/android/gms/internal/hx;->gC()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/16 v1, 0xc
invoke-virtual {p0}, Lcom/google/android/gms/internal/hx;->gD()J
move-result-wide v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/16 v1, 0xd
invoke-virtual {p0}, Lcom/google/android/gms/internal/hx;->gw()Ljava/util/List;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
const/16 v1, 0x3e8
iget v2, p0, Lcom/google/android/gms/internal/hx;->wj:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V
return-void
.end method
.method public aB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hx;
.registers 21
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I
move-result v17
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
const-wide/16 v15, 0x0
:goto_13
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v1
move/from16 v0, v17
if-ge v1, v0, :cond_a6
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I
move-result v1
invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->S(I)I
move-result v18
sparse-switch v18, :sswitch_data_ce
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_13
:sswitch_2c
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
goto :goto_13
:sswitch_33
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Landroid/os/Bundle;
move-result-object v5
goto :goto_13
:sswitch_3a
sget-object v6, Lcom/google/android/gms/internal/hz;->CREATOR:Lcom/google/android/gms/internal/ia;
move-object/from16 v0, p1
invoke-static {v0, v1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/hz;
move-object v6, v1
goto :goto_13
:sswitch_46
sget-object v7, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;
move-object/from16 v0, p1
invoke-static {v0, v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/maps/model/LatLng;
move-object v7, v1
goto :goto_13
:sswitch_52
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F
move-result v8
goto :goto_13
:sswitch_59
sget-object v9, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;
move-object/from16 v0, p1
invoke-static {v0, v1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/maps/model/LatLngBounds;
move-object v9, v1
goto :goto_13
:sswitch_65
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v10
goto :goto_13
:sswitch_6c
sget-object v11, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;
move-object/from16 v0, p1
invoke-static {v0, v1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/net/Uri;
move-object v11, v1
goto :goto_13
:sswitch_78
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v12
goto :goto_13
:sswitch_7f
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F
move-result v13
goto :goto_13
:sswitch_86
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v14
goto :goto_13
:sswitch_8d
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)J
move-result-wide v15
goto :goto_13
:sswitch_94
sget-object v4, Lcom/google/android/gms/internal/ht;->CREATOR:Lcom/google/android/gms/internal/hu;
move-object/from16 v0, p1
invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v4
goto/16 :goto_13
:sswitch_9e
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto/16 :goto_13
:cond_a6
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v1
move/from16 v0, v17
if-eq v1, v0, :cond_c7
new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Overread allowed size end="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move/from16 v0, v17
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p1
invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v1
:cond_c7
new-instance v1, Lcom/google/android/gms/internal/hx;
invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/internal/hx;-><init>(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJ)V
return-object v1
nop
:sswitch_data_ce
.sparse-switch
0x1 -> :sswitch_2c
0x2 -> :sswitch_33
0x3 -> :sswitch_3a
0x4 -> :sswitch_46
0x5 -> :sswitch_52
0x6 -> :sswitch_59
0x7 -> :sswitch_65
0x8 -> :sswitch_6c
0x9 -> :sswitch_78
0xa -> :sswitch_7f
0xb -> :sswitch_86
0xc -> :sswitch_8d
0xd -> :sswitch_94
0x3e8 -> :sswitch_9e
.end sparse-switch
.end method
.method public bw(I)[Lcom/google/android/gms/internal/hx;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/hx;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hy;->aB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hx;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hy;->bw(I)[Lcom/google/android/gms/internal/hx;
move-result-object v0
return-object v0
.end method