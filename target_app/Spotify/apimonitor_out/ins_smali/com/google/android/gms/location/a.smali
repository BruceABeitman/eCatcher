.class public final Lcom/google/android/gms/location/a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/location/ActivityRecognitionResult;Landroid/os/Parcel;)V
.registers 6
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;
const/4 v3, 0x0
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
const/16 v1, 0x3e8
invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/4 v1, 0x3
iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:J
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 10
const-wide/16 v4, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x0
move-wide v2, v4
:goto_8
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v6
if-ge v6, v0, :cond_32
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v6
const v7, 0xffff
and-int/2addr v7, v6
sparse-switch v7, :sswitch_data_54
invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_8
:sswitch_1d
sget-object v1, Lcom/google/android/gms/location/DetectedActivity;->CREATOR:Lcom/google/android/gms/location/c;
invoke-static {p1, v6, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v1
goto :goto_8
:sswitch_24
invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
goto :goto_8
:sswitch_28
invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v2
goto :goto_8
:sswitch_2d
invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v4
goto :goto_8
:cond_32
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v6
if-eq v6, v0, :cond_4d
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
new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResult;
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJ)V
return-object v0
nop
:sswitch_data_54
.sparse-switch
0x1 -> :sswitch_1d
0x2 -> :sswitch_28
0x3 -> :sswitch_2d
0x3e8 -> :sswitch_24
.end sparse-switch
.end method
.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/location/ActivityRecognitionResult;
return-object v0
.end method