.class public Lcom/google/android/gms/wallet/m;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->xJ:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->aiN:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget v2, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->status:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->ajO:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V
return-void
.end method
.method public cb(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
.registers 9
const/4 v0, 0x0
const/4 v1, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I
move-result v4
move-object v2, v0
move v3, v1
:goto_8
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v5
if-ge v5, v4, :cond_31
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I
move-result v5
invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I
move-result v6
packed-switch v6, :pswitch_data_56
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_8
:pswitch_1d
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v3
goto :goto_8
:pswitch_22
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_8
:pswitch_27
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_8
:pswitch_2c
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:cond_31
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v5
if-eq v5, v4, :cond_50
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Overread allowed size end="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_50
new-instance v4, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;-><init>(ILjava/lang/String;ILjava/lang/String;)V
return-object v4
:pswitch_data_56
.packed-switch 0x1
:pswitch_1d
:pswitch_22
:pswitch_27
:pswitch_2c
.end packed-switch
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/m;->cb(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
move-result-object v0
return-object v0
.end method
.method public dH(I)[Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/m;->dH(I)[Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
move-result-object v0
return-object v0
.end method