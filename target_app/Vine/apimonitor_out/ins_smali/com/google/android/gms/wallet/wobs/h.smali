.class public Lcom/google/android/gms/wallet/wobs/h;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/wallet/wobs/g;Landroid/os/Parcel;I)V
.registers 8
const/4 v4, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/wallet/wobs/g;->getVersionCode()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget v2, p0, Lcom/google/android/gms/wallet/wobs/g;->akQ:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/g;->akR:Ljava/lang/String;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
iget-wide v2, p0, Lcom/google/android/gms/wallet/wobs/g;->akS:D
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/g;->akT:Ljava/lang/String;
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x6
iget-wide v2, p0, Lcom/google/android/gms/wallet/wobs/g;->akU:J
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/4 v1, 0x7
iget v2, p0, Lcom/google/android/gms/wallet/wobs/g;->akV:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V
return-void
.end method
.method public cm(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/wobs/g;
.registers 14
const/4 v6, 0x0
const/4 v2, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I
move-result v0
const-wide/16 v4, 0x0
const-wide/16 v7, 0x0
const/4 v9, -0x1
move-object v3, v6
move v1, v2
:goto_d
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v10
if-ge v10, v0, :cond_45
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I
move-result v10
invoke-static {v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I
move-result v11
packed-switch v11, :pswitch_data_6a
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_d
:pswitch_22
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_d
:pswitch_27
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto :goto_d
:pswitch_2c
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
goto :goto_d
:pswitch_31
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)D
move-result-wide v4
goto :goto_d
:pswitch_36
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v6
goto :goto_d
:pswitch_3b
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v7
goto :goto_d
:pswitch_40
invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v9
goto :goto_d
:cond_45
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v10
if-eq v10, v0, :cond_64
new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Overread allowed size end="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v1
:cond_64
new-instance v0, Lcom/google/android/gms/wallet/wobs/g;
invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/wallet/wobs/g;-><init>(IILjava/lang/String;DLjava/lang/String;JI)V
return-object v0
:pswitch_data_6a
.packed-switch 0x1
:pswitch_22
:pswitch_27
:pswitch_2c
:pswitch_31
:pswitch_36
:pswitch_3b
:pswitch_40
.end packed-switch
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/wobs/h;->cm(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/wobs/g;
move-result-object v0
return-object v0
.end method
.method public dU(I)[Lcom/google/android/gms/wallet/wobs/g;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/wallet/wobs/g;
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/wobs/h;->dU(I)[Lcom/google/android/gms/wallet/wobs/g;
move-result-object v0
return-object v0
.end method