.class public Lcom/google/android/gms/drive/internal/s;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Landroid/os/Parcel;I)V
.registers 6
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/drive/internal/CreateContentsRequest;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/CreateContentsRequest;
.registers 6
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;)I
move-result v1
const/4 v0, 0x0
:goto_5
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v2
if-ge v2, v1, :cond_1f
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v2
invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(I)I
move-result v3
packed-switch v3, :pswitch_data_44
invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_5
:pswitch_1a
invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v0
goto :goto_5
:cond_1f
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v2
if-eq v2, v1, :cond_3e
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/b;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Overread allowed size end="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_3e
new-instance v1, Lcom/google/android/gms/drive/internal/CreateContentsRequest;
invoke-direct {v1, v0}, Lcom/google/android/gms/drive/internal/CreateContentsRequest;-><init>(I)V
return-object v1
:pswitch_data_44
.packed-switch 0x1
:pswitch_1a
.end packed-switch
.end method
.method public a(I)[Lcom/google/android/gms/drive/internal/CreateContentsRequest;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/internal/CreateContentsRequest;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/s;->a(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/CreateContentsRequest;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/s;->a(I)[Lcom/google/android/gms/drive/internal/CreateContentsRequest;
move-result-object v0
return-object v0
.end method