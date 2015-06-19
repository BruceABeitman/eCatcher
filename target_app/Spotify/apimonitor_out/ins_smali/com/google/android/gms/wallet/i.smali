.class public final Lcom/google/android/gms/wallet/i;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/wallet/LineItem;Landroid/os/Parcel;)V
.registers 6
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/wallet/LineItem;->a()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/wallet/LineItem;->a:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/wallet/LineItem;->b:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/wallet/LineItem;->c:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/wallet/LineItem;->d:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x6
iget v2, p0, Lcom/google/android/gms/wallet/LineItem;->e:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x7
iget-object v2, p0, Lcom/google/android/gms/wallet/LineItem;->f:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 12
const/4 v6, 0x0
const/4 v7, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v0
move-object v5, v7
move-object v4, v7
move-object v3, v7
move-object v2, v7
move v1, v6
:goto_b
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v8
if-ge v8, v0, :cond_43
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v8
const v9, 0xffff
and-int/2addr v9, v8
packed-switch v9, :pswitch_data_64
invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_b
:pswitch_20
invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_b
:pswitch_25
invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_b
:pswitch_2a
invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
goto :goto_b
:pswitch_2f
invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_b
:pswitch_34
invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v5
goto :goto_b
:pswitch_39
invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v6
goto :goto_b
:pswitch_3e
invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v7
goto :goto_b
:cond_43
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v8
if-eq v8, v0, :cond_5e
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
:cond_5e
new-instance v0, Lcom/google/android/gms/wallet/LineItem;
invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/wallet/LineItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
return-object v0
:pswitch_data_64
.packed-switch 0x1
:pswitch_20
:pswitch_25
:pswitch_2a
:pswitch_2f
:pswitch_34
:pswitch_39
:pswitch_3e
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/wallet/LineItem;
return-object v0
.end method