.class public Lcom/google/android/gms/wearable/internal/ap;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/wearable/internal/ao;Landroid/os/Parcel;I)V
.registers 7
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/wearable/internal/ao;->xJ:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/ao;->nj()Landroid/os/IBinder;
move-result-object v2
const/4 v3, 0x0
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V
return-void
.end method
.method public cI(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/internal/ao;
.registers 7
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I
move-result v2
const/4 v1, 0x0
const/4 v0, 0x0
:goto_6
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v3
if-ge v3, v2, :cond_25
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I
move-result v3
invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I
move-result v4
packed-switch v4, :pswitch_data_4a
invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_6
:pswitch_1b
invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_6
:pswitch_20
invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/IBinder;
move-result-object v0
goto :goto_6
:cond_25
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v3
if-eq v3, v2, :cond_44
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Overread allowed size end="
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_44
new-instance v2, Lcom/google/android/gms/wearable/internal/ao;
invoke-direct {v2, v1, v0}, Lcom/google/android/gms/wearable/internal/ao;-><init>(ILandroid/os/IBinder;)V
return-object v2
:pswitch_data_4a
.packed-switch 0x1
:pswitch_1b
:pswitch_20
.end packed-switch
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ap;->cI(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/internal/ao;
move-result-object v0
return-object v0
.end method
.method public er(I)[Lcom/google/android/gms/wearable/internal/ao;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/wearable/internal/ao;
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ap;->er(I)[Lcom/google/android/gms/wearable/internal/ao;
move-result-object v0
return-object v0
.end method