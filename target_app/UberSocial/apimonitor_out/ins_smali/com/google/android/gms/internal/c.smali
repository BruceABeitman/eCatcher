.class public Lcom/google/android/gms/internal/c;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/internal/ab;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/internal/ab;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/internal/ab;->b:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget v2, p0, Lcom/google/android/gms/internal/ab;->c:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x4
iget v2, p0, Lcom/google/android/gms/internal/ab;->d:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x5
iget-boolean v2, p0, Lcom/google/android/gms/internal/ab;->e:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/4 v1, 0x6
iget v2, p0, Lcom/google/android/gms/internal/ab;->f:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x7
iget v2, p0, Lcom/google/android/gms/internal/ab;->g:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/16 v1, 0x8
iget-object v2, p0, Lcom/google/android/gms/internal/ab;->h:[Lcom/google/android/gms/internal/ab;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ab;
.registers 13
const/4 v8, 0x0
const/4 v7, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;)I
move-result v9
move v6, v7
move v5, v7
move v4, v7
move v3, v7
move-object v2, v8
move v1, v7
:goto_c
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v9, :cond_4e
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(I)I
move-result v10
packed-switch v10, :pswitch_data_74
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_c
:pswitch_21
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_c
:pswitch_26
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_c
:pswitch_2b
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v3
goto :goto_c
:pswitch_30
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v4
goto :goto_c
:pswitch_35
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v5
goto :goto_c
:pswitch_3a
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v6
goto :goto_c
:pswitch_3f
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v7
goto :goto_c
:pswitch_44
sget-object v8, Lcom/google/android/gms/internal/ab;->CREATOR:Lcom/google/android/gms/internal/c;
invoke-static {p1, v0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/android/gms/internal/ab;
move-object v8, v0
goto :goto_c
:cond_4e
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v9, :cond_6d
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/b;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Overread allowed size end="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_6d
new-instance v0, Lcom/google/android/gms/internal/ab;
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ab;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/ab;)V
return-object v0
nop
:pswitch_data_74
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
.method public a(I)[Lcom/google/android/gms/internal/ab;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/ab;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ab;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c;->a(I)[Lcom/google/android/gms/internal/ab;
move-result-object v0
return-object v0
.end method