.class public final Lcom/google/android/gms/drive/internal/o;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;Landroid/os/Parcel;I)V
.registers 7
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-wide v2, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->b:J
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->c:Lcom/google/android/gms/drive/DriveId;
const/4 v3, 0x0
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 9
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v4
const/4 v3, 0x0
const-wide/16 v1, 0x0
const/4 v0, 0x0
:goto_8
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v5
if-ge v5, v4, :cond_30
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v5
const v6, 0xffff
and-int/2addr v6, v5
packed-switch v6, :pswitch_data_52
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_8
:pswitch_1d
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v3
goto :goto_8
:pswitch_22
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v1
goto :goto_8
:pswitch_27
sget-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v5, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/DriveId;
goto :goto_8
:cond_30
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v5
if-eq v5, v4, :cond_4b
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Overread allowed size end="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_4b
new-instance v4, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;
invoke-direct {v4, v3, v1, v2, v0}, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;-><init>(IJLcom/google/android/gms/drive/DriveId;)V
return-object v4
nop
:pswitch_data_52
.packed-switch 0x1
:pswitch_1d
:pswitch_22
:pswitch_27
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;
return-object v0
.end method