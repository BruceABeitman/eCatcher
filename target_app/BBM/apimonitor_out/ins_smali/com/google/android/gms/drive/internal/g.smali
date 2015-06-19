.class public Lcom/google/android/gms/drive/internal/g;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->wj:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->Ds:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x3
iget v2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->CQ:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->CX:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->CY:Lcom/google/android/gms/drive/DriveId;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V
return-void
.end method
.method public H(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
.registers 10
const/4 v3, 0x0
const/4 v5, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I
move-result v6
move-object v4, v5
move-object v2, v5
move v1, v3
:goto_9
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v6, :cond_41
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->S(I)I
move-result v7
packed-switch v7, :pswitch_data_62
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_9
:pswitch_1e
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_9
:pswitch_23
sget-object v2, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-object v2, v0
goto :goto_9
:pswitch_2d
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v3
goto :goto_9
:pswitch_32
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_9
:pswitch_37
sget-object v5, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/DriveId;
move-object v5, v0
goto :goto_9
:cond_41
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v6, :cond_5c
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Overread allowed size end="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_5c
new-instance v0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;-><init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;)V
return-object v0
:pswitch_data_62
.packed-switch 0x1
:pswitch_1e
:pswitch_23
:pswitch_2d
:pswitch_32
:pswitch_37
.end packed-switch
.end method
.method public am(I)[Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/g;->H(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/g;->am(I)[Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
move-result-object v0
return-object v0
.end method