.class public final Lcom/google/android/gms/internal/ke;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/internal/ih$c;Landroid/os/Parcel;)V
.registers 7
const/4 v4, 0x2
const/4 v3, 0x1
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$c;->e()Ljava/util/Set;
move-result-object v1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1b
invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$c;->f()I
move-result v2
invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
:cond_1b
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2c
invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$c;->g()Ljava/lang/String;
move-result-object v1
invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
:cond_2c
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 8
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v2
new-instance v3, Ljava/util/HashSet;
invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
const/4 v1, 0x0
const/4 v0, 0x0
:goto_b
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v4
if-ge v4, v2, :cond_3a
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v4
const v5, 0xffff
and-int/2addr v5, v4
packed-switch v5, :pswitch_data_5c
invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_b
:pswitch_20
invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
const/4 v4, 0x1
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_b
:pswitch_2d
invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v0
const/4 v4, 0x2
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_3a
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v4
if-eq v4, v2, :cond_55
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Overread allowed size end="
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_55
new-instance v2, Lcom/google/android/gms/internal/ih$c;
invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/internal/ih$c;-><init>(Ljava/util/Set;ILjava/lang/String;)V
return-object v2
nop
:pswitch_data_5c
.packed-switch 0x1
:pswitch_20
:pswitch_2d
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/ih$c;
return-object v0
.end method