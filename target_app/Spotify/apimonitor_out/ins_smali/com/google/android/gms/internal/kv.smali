.class public final Lcom/google/android/gms/internal/kv;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/internal/jy;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->a()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->a:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->b:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->c:Lcom/google/android/gms/internal/ju;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->d:Lcom/google/android/gms/internal/jw;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x6
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->e:Lcom/google/android/gms/internal/jw;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 11
const/4 v6, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v7
const/4 v1, 0x0
move-object v5, v6
move-object v4, v6
move-object v3, v6
move-object v2, v6
:goto_a
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v7, :cond_4c
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
const v8, 0xffff
and-int/2addr v8, v0
packed-switch v8, :pswitch_data_6e
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_a
:pswitch_1f
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_a
:pswitch_24
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_a
:pswitch_29
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
goto :goto_a
:pswitch_2e
sget-object v4, Lcom/google/android/gms/internal/ju;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ju;
move-object v4, v0
goto :goto_a
:pswitch_38
sget-object v5, Lcom/google/android/gms/internal/jw;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/jw;
move-object v5, v0
goto :goto_a
:pswitch_42
sget-object v6, Lcom/google/android/gms/internal/jw;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/jw;
move-object v6, v0
goto :goto_a
:cond_4c
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v7, :cond_67
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Overread allowed size end="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_67
new-instance v0, Lcom/google/android/gms/internal/jy;
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/jy;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/jw;Lcom/google/android/gms/internal/jw;)V
return-object v0
nop
:pswitch_data_6e
.packed-switch 0x1
:pswitch_1f
:pswitch_24
:pswitch_29
:pswitch_2e
:pswitch_38
:pswitch_42
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/jy;
return-object v0
.end method