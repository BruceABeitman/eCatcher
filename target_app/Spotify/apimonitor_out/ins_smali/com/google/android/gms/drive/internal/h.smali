.class public final Lcom/google/android/gms/drive/internal/h;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;Landroid/os/Parcel;)V
.registers 5
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-boolean v2, p0, Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;->b:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 7
const/4 v0, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v2
move v1, v0
:goto_6
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v3
if-ge v3, v2, :cond_25
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v3
const v4, 0xffff
and-int/2addr v4, v3
packed-switch v4, :pswitch_data_46
invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_6
:pswitch_1b
invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_6
:pswitch_20
invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v0
goto :goto_6
:cond_25
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v3
if-eq v3, v2, :cond_40
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
:cond_40
new-instance v2, Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;
invoke-direct {v2, v1, v0}, Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;-><init>(IZ)V
return-object v2
:pswitch_data_46
.packed-switch 0x1
:pswitch_1b
:pswitch_20
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;
return-object v0
.end method