.class public final Lcom/google/android/gms/wallet/g;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/wallet/FullWalletRequest;->a()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->a:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->b:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->c:Lcom/google/android/gms/wallet/Cart;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 9
const/4 v0, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v4
const/4 v1, 0x0
move-object v2, v0
move v3, v1
move-object v1, v0
:goto_9
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v5
if-ge v5, v4, :cond_36
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v5
const v6, 0xffff
and-int/2addr v6, v5
packed-switch v6, :pswitch_data_58
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_9
:pswitch_1e
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v3
goto :goto_9
:pswitch_23
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_9
:pswitch_28
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v1
goto :goto_9
:pswitch_2d
sget-object v0, Lcom/google/android/gms/wallet/Cart;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v5, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wallet/Cart;
goto :goto_9
:cond_36
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v5
if-eq v5, v4, :cond_51
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
:cond_51
new-instance v4, Lcom/google/android/gms/wallet/FullWalletRequest;
invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/wallet/FullWalletRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;)V
return-object v4
nop
:pswitch_data_58
.packed-switch 0x1
:pswitch_1e
:pswitch_23
:pswitch_28
:pswitch_2d
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/wallet/FullWalletRequest;
return-object v0
.end method