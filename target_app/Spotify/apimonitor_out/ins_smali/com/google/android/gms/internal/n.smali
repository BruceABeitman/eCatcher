.class public final Lcom/google/android/gms/internal/n;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ak;
.registers 12
const/4 v8, 0x0
const/4 v7, 0x0
invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v9
move v6, v7
move v5, v7
move v4, v7
move v3, v7
move-object v2, v8
move v1, v7
:goto_c
invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v9, :cond_4e
invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I
move-result v0
const v10, 0xffff
and-int/2addr v10, v0
packed-switch v10, :pswitch_data_70
invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_c
:pswitch_21
invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_c
:pswitch_26
invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_c
:pswitch_2b
invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v3
goto :goto_c
:pswitch_30
invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v4
goto :goto_c
:pswitch_35
invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v5
goto :goto_c
:pswitch_3a
invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v6
goto :goto_c
:pswitch_3f
invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v7
goto :goto_c
:pswitch_44
sget-object v8, Lcom/google/android/gms/internal/ak;->CREATOR:Lcom/google/android/gms/internal/n;
invoke-static {p0, v0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/android/gms/internal/ak;
move-object v8, v0
goto :goto_c
:cond_4e
invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v9, :cond_69
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Overread allowed size end="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_69
new-instance v0, Lcom/google/android/gms/internal/ak;
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ak;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/ak;)V
return-object v0
nop
:pswitch_data_70
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
.method static a(Lcom/google/android/gms/internal/ak;Landroid/os/Parcel;I)V
.registers 7
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/internal/ak;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/internal/ak;->b:Ljava/lang/String;
const/4 v3, 0x0
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget v2, p0, Lcom/google/android/gms/internal/ak;->c:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x4
iget v2, p0, Lcom/google/android/gms/internal/ak;->d:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x5
iget-boolean v2, p0, Lcom/google/android/gms/internal/ak;->e:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/4 v1, 0x6
iget v2, p0, Lcom/google/android/gms/internal/ak;->f:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x7
iget v2, p0, Lcom/google/android/gms/internal/ak;->g:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0x8
iget-object v2, p0, Lcom/google/android/gms/internal/ak;->h:[Lcom/google/android/gms/internal/ak;
invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/n;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ak;
move-result-object v0
return-object v0
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/ak;
return-object v0
.end method