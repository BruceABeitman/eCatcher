.class public Lcom/google/android/gms/drive/realtime/internal/a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;Landroid/os/Parcel;I)V
.registers 7
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->xJ:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-boolean v2, p0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->Lg:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->mName:Ljava/lang/String;
const/4 v3, 0x0
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V
return-void
.end method
.method public aP(Landroid/os/Parcel;)Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;
.registers 8
const/4 v1, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I
move-result v3
const/4 v0, 0x0
move v2, v1
:goto_7
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v4
if-ge v4, v3, :cond_2b
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I
move-result v4
invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I
move-result v5
packed-switch v5, :pswitch_data_50
invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_7
:pswitch_1c
invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto :goto_7
:pswitch_21
invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v1
goto :goto_7
:pswitch_26
invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v0
goto :goto_7
:cond_2b
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v4
if-eq v4, v3, :cond_4a
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Overread allowed size end="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_4a
new-instance v3, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;
invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;-><init>(IZLjava/lang/String;)V
return-object v3
:pswitch_data_50
.packed-switch 0x1
:pswitch_1c
:pswitch_21
:pswitch_26
.end packed-switch
.end method
.method public bL(I)[Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/realtime/internal/a;->aP(Landroid/os/Parcel;)Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/realtime/internal/a;->bL(I)[Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;
move-result-object v0
return-object v0
.end method