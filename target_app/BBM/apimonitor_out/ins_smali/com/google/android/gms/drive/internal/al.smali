.class public Lcom/google/android/gms/drive/internal/al;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/internal/TrashResourceRequest;Landroid/os/Parcel;I)V
.registers 7
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/drive/internal/TrashResourceRequest;->wj:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/drive/internal/TrashResourceRequest;->Do:Lcom/google/android/gms/drive/DriveId;
const/4 v3, 0x0
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V
return-void
.end method
.method public Y(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/TrashResourceRequest;
.registers 7
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I
move-result v2
const/4 v1, 0x0
const/4 v0, 0x0
:goto_6
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v3
if-ge v3, v2, :cond_29
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I
move-result v3
invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->S(I)I
move-result v4
packed-switch v4, :pswitch_data_4a
invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_6
:pswitch_1b
invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_6
:pswitch_20
sget-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/DriveId;
goto :goto_6
:cond_29
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v3
if-eq v3, v2, :cond_44
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Overread allowed size end="
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_44
new-instance v2, Lcom/google/android/gms/drive/internal/TrashResourceRequest;
invoke-direct {v2, v1, v0}, Lcom/google/android/gms/drive/internal/TrashResourceRequest;-><init>(ILcom/google/android/gms/drive/DriveId;)V
return-object v2
:pswitch_data_4a
.packed-switch 0x1
:pswitch_1b
:pswitch_20
.end packed-switch
.end method
.method public aD(I)[Lcom/google/android/gms/drive/internal/TrashResourceRequest;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/internal/TrashResourceRequest;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/al;->Y(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/TrashResourceRequest;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/al;->aD(I)[Lcom/google/android/gms/drive/internal/TrashResourceRequest;
move-result-object v0
return-object v0
.end method