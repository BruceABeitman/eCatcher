.class public final Lcom/google/android/gms/internal/hv;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/internal/ga$a;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->a()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->b()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x3
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->c()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/4 v1, 0x4
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->d()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x5
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->e()Z
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/4 v1, 0x6
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->f()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x7
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->g()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/16 v1, 0x8
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->i()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x9
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->k()Lcom/google/android/gms/internal/fv;
move-result-object v2
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 14
const/4 v9, 0x0
const/4 v7, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v10
move-object v8, v9
move-object v6, v9
move v5, v7
move v4, v7
move v3, v7
move v2, v7
move v1, v7
:goto_d
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v10, :cond_54
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
const v11, 0xffff
and-int/2addr v11, v0
packed-switch v11, :pswitch_data_76
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_d
:pswitch_22
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_d
:pswitch_27
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto :goto_d
:pswitch_2c
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v3
goto :goto_d
:pswitch_31
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v4
goto :goto_d
:pswitch_36
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v5
goto :goto_d
:pswitch_3b
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v6
goto :goto_d
:pswitch_40
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v7
goto :goto_d
:pswitch_45
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v8
goto :goto_d
:pswitch_4a
sget-object v9, Lcom/google/android/gms/internal/fv;->CREATOR:Lcom/google/android/gms/internal/hp;
invoke-static {p1, v0, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fv;
move-object v9, v0
goto :goto_d
:cond_54
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v10, :cond_6f
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Overread allowed size end="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_6f
new-instance v0, Lcom/google/android/gms/internal/ga$a;
invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ga$a;-><init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/fv;)V
return-object v0
nop
:pswitch_data_76
.packed-switch 0x1
:pswitch_22
:pswitch_27
:pswitch_2c
:pswitch_31
:pswitch_36
:pswitch_3b
:pswitch_40
:pswitch_45
:pswitch_4a
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/ga$a;
return-object v0
.end method