.class public Lcom/google/android/gms/maps/model/o;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.field public static final a:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->a()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->c()Ljava/util/List;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
const/4 v1, 0x3
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->b()Ljava/util/List;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->c(Landroid/os/Parcel;ILjava/util/List;Z)V
const/4 v1, 0x4
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->e()F
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V
const/4 v1, 0x5
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->f()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x6
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->g()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x7
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->h()F
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V
const/16 v1, 0x8
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->i()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0x9
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->j()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/PolygonOptions;
.registers 14
const/4 v7, 0x0
const/4 v9, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;)I
move-result v0
const/4 v2, 0x0
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
move v8, v9
move v6, v9
move v5, v9
move v4, v7
move v1, v9
:goto_11
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v10
if-ge v10, v0, :cond_5c
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v10
invoke-static {v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(I)I
move-result v11
packed-switch v11, :pswitch_data_82
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_11
:pswitch_26
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_11
:pswitch_2b
sget-object v2, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/k;
invoke-static {p1, v10, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v2
goto :goto_11
:pswitch_32
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v11
invoke-static {p1, v10, v3, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/util/List;Ljava/lang/ClassLoader;)V
goto :goto_11
:pswitch_3e
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F
move-result v4
goto :goto_11
:pswitch_43
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v5
goto :goto_11
:pswitch_48
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v6
goto :goto_11
:pswitch_4d
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F
move-result v7
goto :goto_11
:pswitch_52
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v8
goto :goto_11
:pswitch_57
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v9
goto :goto_11
:cond_5c
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v10
if-eq v10, v0, :cond_7b
new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/b;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Overread allowed size end="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v1
:cond_7b
new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptions;
invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>(ILjava/util/List;Ljava/util/List;FIIFZZ)V
return-object v0
nop
:pswitch_data_82
.packed-switch 0x1
:pswitch_26
:pswitch_2b
:pswitch_32
:pswitch_3e
:pswitch_43
:pswitch_48
:pswitch_4d
:pswitch_52
:pswitch_57
.end packed-switch
.end method
.method public a(I)[Lcom/google/android/gms/maps/model/PolygonOptions;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/maps/model/PolygonOptions;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/o;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/PolygonOptions;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/o;->a(I)[Lcom/google/android/gms/maps/model/PolygonOptions;
move-result-object v0
return-object v0
.end method