.class public Lcom/google/android/gms/drive/internal/m;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->xJ:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->Hw:Lcom/google/android/gms/drive/DriveId;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->IG:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V
return-void
.end method
.method public aW(I)[Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;
return-object v0
.end method
.method public aa(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;
.registers 9
const/4 v1, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I
move-result v4
const/4 v3, 0x0
move-object v2, v1
:goto_7
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v4, :cond_43
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I
move-result v5
packed-switch v5, :pswitch_data_68
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
move-object v0, v1
move-object v1, v2
move v2, v3
:goto_1e
move v3, v2
move-object v2, v1
move-object v1, v0
goto :goto_7
:pswitch_22
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v0
move-object v6, v1
move-object v1, v2
move v2, v0
move-object v0, v6
goto :goto_1e
:pswitch_2b
sget-object v2, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/DriveId;
move v2, v3
move-object v6, v0
move-object v0, v1
move-object v1, v6
goto :goto_1e
:pswitch_38
sget-object v1, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;
move-object v1, v2
move v2, v3
goto :goto_1e
:cond_43
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v4, :cond_62
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Overread allowed size end="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_62
new-instance v0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;
invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;-><init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/CustomPropertyKey;)V
return-object v0
:pswitch_data_68
.packed-switch 0x1
:pswitch_22
:pswitch_2b
:pswitch_38
.end packed-switch
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/m;->aa(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/m;->aW(I)[Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;
move-result-object v0
return-object v0
.end method