.class public Lcom/google/android/gms/cast/b;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/cast/CastDevice;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getVersionCode()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->wD:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x5
invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getModelName()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x6
invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceVersion()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x7
invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getServicePort()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/16 v1, 0x8
invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getIcons()Ljava/util/List;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V
return-void
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/b;->k(Landroid/os/Parcel;)Lcom/google/android/gms/cast/CastDevice;
move-result-object v0
return-object v0
.end method
.method public k(Landroid/os/Parcel;)Lcom/google/android/gms/cast/CastDevice;
.registers 13
const/4 v7, 0x0
const/4 v8, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I
move-result v0
move-object v6, v8
move-object v5, v8
move-object v4, v8
move-object v3, v8
move-object v2, v8
move v1, v7
:goto_c
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v9
if-ge v9, v0, :cond_4b
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I
move-result v9
invoke-static {v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->S(I)I
move-result v10
packed-switch v10, :pswitch_data_6c
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_c
:pswitch_21
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_c
:pswitch_26
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_c
:pswitch_2b
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
goto :goto_c
:pswitch_30
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_c
:pswitch_35
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v5
goto :goto_c
:pswitch_3a
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v6
goto :goto_c
:pswitch_3f
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v7
goto :goto_c
:pswitch_44
sget-object v8, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v9, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v8
goto :goto_c
:cond_4b
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v9
if-eq v9, v0, :cond_66
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
:cond_66
new-instance v0, Lcom/google/android/gms/cast/CastDevice;
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/cast/CastDevice;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
return-object v0
:pswitch_data_6c
.packed-switch 0x1
:pswitch_21
:pswitch_26
:pswitch_2b
:pswitch_30
:pswitch_35
:pswitch_3a
:pswitch_3f
:pswitch_44
.end packed-switch
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/b;->y(I)[Lcom/google/android/gms/cast/CastDevice;
move-result-object v0
return-object v0
.end method
.method public y(I)[Lcom/google/android/gms/cast/CastDevice;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/cast/CastDevice;
return-object v0
.end method