.class public Lcom/google/android/gms/maps/GoogleMapOptionsCreator;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.field public static final CONTENT_DESCRIPTION:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V
.registers 7
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getVersionCode()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->gN()B
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V
const/4 v1, 0x3
invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->gO()B
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V
const/4 v1, 0x4
invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getMapType()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x5
invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getCamera()Lcom/google/android/gms/maps/model/CameraPosition;
move-result-object v2
const/4 v3, 0x0
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x6
invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->gP()B
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V
const/4 v1, 0x7
invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->gQ()B
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V
const/16 v1, 0x8
invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->gR()B
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V
const/16 v1, 0x9
invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->gS()B
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V
const/16 v1, 0xa
invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->gT()B
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V
const/16 v1, 0xb
invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->gU()B
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/GoogleMapOptions;
.registers 16
const/4 v11, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I
move-result v12
const/4 v5, 0x0
move v10, v11
move v9, v11
move v8, v11
move v7, v11
move v6, v11
move v4, v11
move v3, v11
move v2, v11
move v1, v11
:goto_f
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v12, :cond_60
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->S(I)I
move-result v13
packed-switch v13, :pswitch_data_82
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_f
:pswitch_24
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_f
:pswitch_29
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B
move-result v2
goto :goto_f
:pswitch_2e
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B
move-result v3
goto :goto_f
:pswitch_33
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v4
goto :goto_f
:pswitch_38
sget-object v5, Lcom/google/android/gms/maps/model/CameraPosition;->CREATOR:Lcom/google/android/gms/maps/model/CameraPositionCreator;
invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/CameraPosition;
move-object v5, v0
goto :goto_f
:pswitch_42
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B
move-result v6
goto :goto_f
:pswitch_47
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B
move-result v7
goto :goto_f
:pswitch_4c
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B
move-result v8
goto :goto_f
:pswitch_51
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B
move-result v9
goto :goto_f
:pswitch_56
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B
move-result v10
goto :goto_f
:pswitch_5b
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B
move-result v11
goto :goto_f
:cond_60
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v12, :cond_7b
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Overread allowed size end="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_7b
new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;
invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBB)V
return-object v0
nop
:pswitch_data_82
.packed-switch 0x1
:pswitch_24
:pswitch_29
:pswitch_2e
:pswitch_33
:pswitch_38
:pswitch_42
:pswitch_47
:pswitch_4c
:pswitch_51
:pswitch_56
:pswitch_5b
.end packed-switch
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/GoogleMapOptions;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Lcom/google/android/gms/maps/GoogleMapOptions;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/maps/GoogleMapOptions;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;->newArray(I)[Lcom/google/android/gms/maps/GoogleMapOptions;
move-result-object v0
return-object v0
.end method