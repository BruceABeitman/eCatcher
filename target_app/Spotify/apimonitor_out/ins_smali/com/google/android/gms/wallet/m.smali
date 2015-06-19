.class public final Lcom/google/android/gms/wallet/m;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Landroid/os/Parcel;)V
.registers 6
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->b:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget v2, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->c:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->d:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 9
const/4 v0, 0x0
const/4 v1, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v4
move-object v2, v0
move v3, v1
:goto_8
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v5
if-ge v5, v4, :cond_31
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
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_8
:pswitch_27
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_8
:pswitch_2c
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:cond_31
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v5
if-eq v5, v4, :cond_4c
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
:cond_4c
new-instance v4, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;-><init>(ILjava/lang/String;ILjava/lang/String;)V
return-object v4
:pswitch_data_52
.packed-switch 0x1
:pswitch_1d
:pswitch_22
:pswitch_27
:pswitch_2c
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
return-object v0
.end method