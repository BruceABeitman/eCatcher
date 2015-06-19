.class public final Lcom/google/android/gms/maps/model/h;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->a()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->c()Lcom/google/android/gms/maps/model/LatLng;
move-result-object v2
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x3
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->d()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->e()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x5
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->b()Landroid/os/IBinder;
move-result-object v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V
const/4 v1, 0x6
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->f()F
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/4 v1, 0x7
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->g()F
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/16 v1, 0x8
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->h()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0x9
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->i()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0xa
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->j()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0xb
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->k()F
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/16 v1, 0xc
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->l()F
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/16 v1, 0xd
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->m()F
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/16 v1, 0xe
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->n()F
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 20
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v16
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
const/high16 v13, 0x3f00
const/4 v14, 0x0
const/high16 v15, 0x3f80
:goto_14
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v1
move/from16 v0, v16
if-ge v1, v0, :cond_95
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I
move-result v1
const v17, 0xffff
and-int v17, v17, v1
packed-switch v17, :pswitch_data_bc
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_14
:pswitch_2e
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto :goto_14
:pswitch_35
sget-object v3, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/g;
move-object/from16 v0, p1
invoke-static {v0, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/maps/model/LatLng;
move-object v3, v1
goto :goto_14
:pswitch_41
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_14
:pswitch_48
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v5
goto :goto_14
:pswitch_4f
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Landroid/os/IBinder;
move-result-object v6
goto :goto_14
:pswitch_56
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F
move-result v7
goto :goto_14
:pswitch_5d
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F
move-result v8
goto :goto_14
:pswitch_64
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v9
goto :goto_14
:pswitch_6b
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v10
goto :goto_14
:pswitch_72
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v11
goto :goto_14
:pswitch_79
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F
move-result v12
goto :goto_14
:pswitch_80
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F
move-result v13
goto :goto_14
:pswitch_87
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F
move-result v14
goto :goto_14
:pswitch_8e
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F
move-result v15
goto :goto_14
:cond_95
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v1
move/from16 v0, v16
if-eq v1, v0, :cond_b6
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
:cond_b6
new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;
invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFF)V
return-object v1
:pswitch_data_bc
.packed-switch 0x1
:pswitch_2e
:pswitch_35
:pswitch_41
:pswitch_48
:pswitch_4f
:pswitch_56
:pswitch_5d
:pswitch_64
:pswitch_6b
:pswitch_72
:pswitch_79
:pswitch_80
:pswitch_87
:pswitch_8e
.end packed-switch
.end method
.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/maps/model/MarkerOptions;
return-object v0
.end method