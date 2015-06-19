.class public Lcom/google/android/gms/maps/model/LatLngCreator;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.field public static final CONTENT_DESCRIPTION:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/maps/model/LatLng;Landroid/os/Parcel;I)V
.registers 7
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/LatLng;->getVersionCode()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V
const/4 v1, 0x3
iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
.registers 10
const-wide/16 v4, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x0
move-wide v2, v4
:goto_8
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v6
if-ge v6, v0, :cond_2c
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I
move-result v6
invoke-static {v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->S(I)I
move-result v7
packed-switch v7, :pswitch_data_4e
invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_8
:pswitch_1d
invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_8
:pswitch_22
invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)D
move-result-wide v2
goto :goto_8
:pswitch_27
invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)D
move-result-wide v4
goto :goto_8
:cond_2c
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v6
if-eq v6, v0, :cond_47
new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Overread allowed size end="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v1
:cond_47
new-instance v0, Lcom/google/android/gms/maps/model/LatLng;
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(IDD)V
return-object v0
nop
:pswitch_data_4e
.packed-switch 0x1
:pswitch_1d
:pswitch_22
:pswitch_27
.end packed-switch
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Lcom/google/android/gms/maps/model/LatLng;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/maps/model/LatLng;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/LatLngCreator;->newArray(I)[Lcom/google/android/gms/maps/model/LatLng;
move-result-object v0
return-object v0
.end method