.class public Lcom/google/android/gms/wearable/d;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/wearable/c;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/wearable/c;->xJ:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/wearable/c;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
invoke-virtual {p0}, Lcom/google/android/gms/wearable/c;->getAddress()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
invoke-virtual {p0}, Lcom/google/android/gms/wearable/c;->getType()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x5
invoke-virtual {p0}, Lcom/google/android/gms/wearable/c;->getRole()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x6
invoke-virtual {p0}, Lcom/google/android/gms/wearable/c;->isEnabled()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V
return-void
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/d;->ct(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/c;
move-result-object v0
return-object v0
.end method
.method public ct(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/c;
.registers 11
const/4 v3, 0x0
const/4 v6, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I
move-result v0
move v5, v6
move v4, v6
move-object v2, v3
move v1, v6
:goto_a
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v7
if-ge v7, v0, :cond_3d
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I
move-result v7
invoke-static {v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I
move-result v8
packed-switch v8, :pswitch_data_62
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_a
:pswitch_1f
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_a
:pswitch_24
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_a
:pswitch_29
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
goto :goto_a
:pswitch_2e
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v4
goto :goto_a
:pswitch_33
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v5
goto :goto_a
:pswitch_38
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v6
goto :goto_a
:cond_3d
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v7
if-eq v7, v0, :cond_5c
new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Overread allowed size end="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v1
:cond_5c
new-instance v0, Lcom/google/android/gms/wearable/c;
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/wearable/c;-><init>(ILjava/lang/String;Ljava/lang/String;IIZ)V
return-object v0
:pswitch_data_62
.packed-switch 0x1
:pswitch_1f
:pswitch_24
:pswitch_29
:pswitch_2e
:pswitch_33
:pswitch_38
.end packed-switch
.end method
.method public eb(I)[Lcom/google/android/gms/wearable/c;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/wearable/c;
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/d;->eb(I)[Lcom/google/android/gms/wearable/c;
move-result-object v0
return-object v0
.end method