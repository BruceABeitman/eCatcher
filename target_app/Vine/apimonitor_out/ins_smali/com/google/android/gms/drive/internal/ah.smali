.class public Lcom/google/android/gms/drive/internal/ah;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;Landroid/os/Parcel;I)V
.registers 7
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->xJ:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-wide v2, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->Jt:J
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/4 v1, 0x3
iget-wide v2, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->Ju:J
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V
return-void
.end method
.method public ai(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
.registers 10
const-wide/16 v4, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x0
move-wide v2, v4
:goto_8
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v6
if-ge v6, v0, :cond_2c
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I
move-result v6
invoke-static {v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I
move-result v7
packed-switch v7, :pswitch_data_52
invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_8
:pswitch_1d
invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_8
:pswitch_22
invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v2
goto :goto_8
:pswitch_27
invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v4
goto :goto_8
:cond_2c
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v6
if-eq v6, v0, :cond_4b
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
:cond_4b
new-instance v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;-><init>(IJJ)V
return-object v0
nop
:pswitch_data_52
.packed-switch 0x1
:pswitch_1d
:pswitch_22
:pswitch_27
.end packed-switch
.end method
.method public be(I)[Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/ah;->ai(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/ah;->be(I)[Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
move-result-object v0
return-object v0
.end method