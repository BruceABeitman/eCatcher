.class public Lcom/google/android/gms/wallet/wobs/i;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/wallet/wobs/f;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/wallet/wobs/f;->getVersionCode()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/f;->label:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/f;->akP:Lcom/google/android/gms/wallet/wobs/g;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/f;->type:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/f;->ajp:Lcom/google/android/gms/wallet/wobs/l;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V
return-void
.end method
.method public cn(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/wobs/f;
.registers 10
const/4 v5, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I
move-result v6
const/4 v1, 0x0
move-object v4, v5
move-object v3, v5
move-object v2, v5
:goto_9
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v6, :cond_41
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I
move-result v7
packed-switch v7, :pswitch_data_66
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_9
:pswitch_1e
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_9
:pswitch_23
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_9
:pswitch_28
sget-object v3, Lcom/google/android/gms/wallet/wobs/g;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wallet/wobs/g;
move-object v3, v0
goto :goto_9
:pswitch_32
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_9
:pswitch_37
sget-object v5, Lcom/google/android/gms/wallet/wobs/l;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wallet/wobs/l;
move-object v5, v0
goto :goto_9
:cond_41
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v6, :cond_60
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Overread allowed size end="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_60
new-instance v0, Lcom/google/android/gms/wallet/wobs/f;
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wallet/wobs/f;-><init>(ILjava/lang/String;Lcom/google/android/gms/wallet/wobs/g;Ljava/lang/String;Lcom/google/android/gms/wallet/wobs/l;)V
return-object v0
:pswitch_data_66
.packed-switch 0x1
:pswitch_1e
:pswitch_23
:pswitch_28
:pswitch_32
:pswitch_37
.end packed-switch
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/wobs/i;->cn(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/wobs/f;
move-result-object v0
return-object v0
.end method
.method public dV(I)[Lcom/google/android/gms/wallet/wobs/f;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/wallet/wobs/f;
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/wobs/i;->dV(I)[Lcom/google/android/gms/wallet/wobs/f;
move-result-object v0
return-object v0
.end method