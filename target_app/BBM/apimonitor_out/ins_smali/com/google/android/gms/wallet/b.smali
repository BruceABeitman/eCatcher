.class public Lcom/google/android/gms/wallet/b;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/wallet/Cart;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/wallet/Cart;->getVersionCode()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/wallet/Cart;->Yf:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/wallet/Cart;->Yg:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/wallet/Cart;->Yh:Ljava/util/ArrayList;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V
return-void
.end method
.method public aT(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/Cart;
.registers 9
const/4 v1, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I
move-result v4
const/4 v2, 0x0
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
move v3, v2
move-object v2, v1
:goto_d
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v5
if-ge v5, v4, :cond_38
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I
move-result v5
invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->S(I)I
move-result v6
packed-switch v6, :pswitch_data_5a
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_d
:pswitch_22
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v3
goto :goto_d
:pswitch_27
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_d
:pswitch_2c
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v1
goto :goto_d
:pswitch_31
sget-object v0, Lcom/google/android/gms/wallet/LineItem;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v5, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v0
goto :goto_d
:cond_38
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v5
if-eq v5, v4, :cond_53
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
:cond_53
new-instance v4, Lcom/google/android/gms/wallet/Cart;
invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/wallet/Cart;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
return-object v4
nop
:pswitch_data_5a
.packed-switch 0x1
:pswitch_22
:pswitch_27
:pswitch_2c
:pswitch_31
.end packed-switch
.end method
.method public bZ(I)[Lcom/google/android/gms/wallet/Cart;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/wallet/Cart;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/b;->aT(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/Cart;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/b;->bZ(I)[Lcom/google/android/gms/wallet/Cart;
move-result-object v0
return-object v0
.end method