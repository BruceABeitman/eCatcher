.class public final Lcom/google/android/gms/drive/b;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/DriveId;Landroid/os/Parcel;)V
.registers 6
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/drive/DriveId;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/drive/DriveId;->b:Ljava/lang/String;
const/4 v3, 0x0
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->c:J
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/4 v1, 0x4
iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->d:J
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 11
const-wide/16 v5, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x0
const/4 v2, 0x0
move-wide v3, v5
:goto_9
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v7
if-ge v7, v0, :cond_32
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v7
const v8, 0xffff
and-int/2addr v8, v7
packed-switch v8, :pswitch_data_54
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_9
:pswitch_1e
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_9
:pswitch_23
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_9
:pswitch_28
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v3
goto :goto_9
:pswitch_2d
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v5
goto :goto_9
:cond_32
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v7
if-eq v7, v0, :cond_4d
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
:cond_4d
new-instance v0, Lcom/google/android/gms/drive/DriveId;
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/DriveId;-><init>(ILjava/lang/String;JJ)V
return-object v0
nop
:pswitch_data_54
.packed-switch 0x1
:pswitch_1e
:pswitch_23
:pswitch_28
:pswitch_2d
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/DriveId;
return-object v0
.end method