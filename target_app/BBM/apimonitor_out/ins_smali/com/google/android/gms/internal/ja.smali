.class public Lcom/google/android/gms/internal/ja;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/internal/ir$g;Landroid/os/Parcel;I)V
.registers 9
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I
move-result v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$g;->hB()Ljava/util/Set;
move-result-object v1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1c
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$g;->getVersionCode()I
move-result v2
invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
:cond_1c
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2d
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$g;->isPrimary()Z
move-result v2
invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
:cond_2d
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3e
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$g;->getValue()Ljava/lang/String;
move-result-object v1
invoke-static {p1, v5, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
:cond_3e
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V
return-void
.end method
.method public aQ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ir$g;
.registers 9
const/4 v1, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I
move-result v3
new-instance v4, Ljava/util/HashSet;
invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
const/4 v0, 0x0
move v2, v1
:goto_c
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v5
if-ge v5, v3, :cond_48
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I
move-result v5
invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->S(I)I
move-result v6
packed-switch v6, :pswitch_data_6a
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_c
:pswitch_21
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
const/4 v5, 0x1
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_c
:pswitch_2e
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v1
const/4 v5, 0x2
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_c
:pswitch_3b
invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v0
const/4 v5, 0x3
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_c
:cond_48
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v5
if-eq v5, v3, :cond_63
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Overread allowed size end="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_63
new-instance v3, Lcom/google/android/gms/internal/ir$g;
invoke-direct {v3, v4, v2, v1, v0}, Lcom/google/android/gms/internal/ir$g;-><init>(Ljava/util/Set;IZLjava/lang/String;)V
return-object v3
nop
:pswitch_data_6a
.packed-switch 0x1
:pswitch_21
:pswitch_2e
:pswitch_3b
.end packed-switch
.end method
.method public bN(I)[Lcom/google/android/gms/internal/ir$g;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/ir$g;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ja;->aQ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ir$g;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ja;->bN(I)[Lcom/google/android/gms/internal/ir$g;
move-result-object v0
return-object v0
.end method