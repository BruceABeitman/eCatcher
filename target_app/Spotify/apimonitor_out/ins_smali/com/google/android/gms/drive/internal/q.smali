.class public final Lcom/google/android/gms/drive/internal/q;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Landroid/os/Parcel;I)V
.registers 7
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->b:Lcom/google/android/gms/drive/Contents;
const/4 v3, 0x0
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
iget-object v1, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->c:Ljava/lang/Boolean;
invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;Ljava/lang/Boolean;)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 8
const/4 v0, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v4
const/4 v1, 0x0
move-object v2, v0
move v3, v1
move-object v1, v0
:goto_9
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v4, :cond_34
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
const v5, 0xffff
and-int/2addr v5, v0
packed-switch v5, :pswitch_data_56
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_9
:pswitch_1e
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v0
move v3, v0
goto :goto_9
:pswitch_24
sget-object v2, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/Contents;
move-object v2, v0
goto :goto_9
:pswitch_2e
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->d(Landroid/os/Parcel;I)Ljava/lang/Boolean;
move-result-object v0
move-object v1, v0
goto :goto_9
:cond_34
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v4, :cond_4f
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
:cond_4f
new-instance v0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;
invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;-><init>(ILcom/google/android/gms/drive/Contents;Ljava/lang/Boolean;)V
return-object v0
nop
:pswitch_data_56
.packed-switch 0x1
:pswitch_1e
:pswitch_24
:pswitch_2e
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/internal/CloseContentsRequest;
return-object v0
.end method