.class public Lcom/google/android/gms/internal/ce;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/internal/cf;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/internal/cf;->versionCode:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/internal/cf;->nY:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/internal/cf;->nZ:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/internal/cf;->mimeType:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/internal/cf;->packageName:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x6
iget-object v2, p0, Lcom/google/android/gms/internal/cf;->oa:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x7
iget-object v2, p0, Lcom/google/android/gms/internal/cf;->ob:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x8
iget-object v2, p0, Lcom/google/android/gms/internal/cf;->oc:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V
return-void
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ce;->e(Landroid/os/Parcel;)Lcom/google/android/gms/internal/cf;
move-result-object v0
return-object v0
.end method
.method public e(Landroid/os/Parcel;)Lcom/google/android/gms/internal/cf;
.registers 13
const/4 v8, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x0
move-object v7, v8
move-object v6, v8
move-object v5, v8
move-object v4, v8
move-object v3, v8
move-object v2, v8
:goto_c
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v9
if-ge v9, v0, :cond_49
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I
move-result v9
invoke-static {v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I
move-result v10
packed-switch v10, :pswitch_data_6e
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_c
:pswitch_21
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_c
:pswitch_26
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_c
:pswitch_2b
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
goto :goto_c
:pswitch_30
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_c
:pswitch_35
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v5
goto :goto_c
:pswitch_3a
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v6
goto :goto_c
:pswitch_3f
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v7
goto :goto_c
:pswitch_44
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v8
goto :goto_c
:cond_49
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v9
if-eq v9, v0, :cond_68
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
:cond_68
new-instance v0, Lcom/google/android/gms/internal/cf;
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/cf;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v0
:pswitch_data_6e
.packed-switch 0x1
:pswitch_21
:pswitch_26
:pswitch_2b
:pswitch_30
:pswitch_35
:pswitch_3a
:pswitch_3f
:pswitch_44
.end packed-switch
.end method
.method public i(I)[Lcom/google/android/gms/internal/cf;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/cf;
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ce;->i(I)[Lcom/google/android/gms/internal/cf;
move-result-object v0
return-object v0
.end method