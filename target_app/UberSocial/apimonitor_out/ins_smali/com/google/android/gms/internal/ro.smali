.class public Lcom/google/android/gms/internal/ro;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/internal/ir$h;Landroid/os/Parcel;I)V
.registers 11
const/4 v7, 0x6
const/4 v6, 0x5
const/4 v5, 0x4
const/4 v4, 0x3
const/4 v3, 0x1
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;)I
move-result v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$h;->d()Ljava/util/Set;
move-result-object v1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1e
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$h;->e()I
move-result v2
invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
:cond_1e
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2f
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$h;->j()I
move-result v2
invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
:cond_2f
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_40
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$h;->m()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v5, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
:cond_40
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_51
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$h;->f()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v6, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
:cond_51
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_62
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$h;->k()I
move-result v1
invoke-static {p1, v7, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
:cond_62
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ir$h;
.registers 11
const/4 v5, 0x0
const/4 v6, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;)I
move-result v0
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
move v4, v6
move-object v3, v5
move v2, v6
:goto_e
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v7
if-ge v7, v0, :cond_64
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v7
invoke-static {v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(I)I
move-result v8
packed-switch v8, :pswitch_data_8a
:pswitch_1f
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_e
:pswitch_23
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
const/4 v7, 0x1
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_e
:pswitch_30
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v6
const/4 v7, 0x3
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_e
:pswitch_3d
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v5
const/4 v7, 0x4
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_e
:pswitch_4a
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
const/4 v7, 0x5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_e
:pswitch_57
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v4
const/4 v7, 0x6
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_e
:cond_64
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v7
if-eq v7, v0, :cond_83
new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/b;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Overread allowed size end="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v1
:cond_83
new-instance v0, Lcom/google/android/gms/internal/ir$h;
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ir$h;-><init>(Ljava/util/Set;ILjava/lang/String;ILjava/lang/String;I)V
return-object v0
nop
:pswitch_data_8a
.packed-switch 0x1
:pswitch_23
:pswitch_1f
:pswitch_30
:pswitch_3d
:pswitch_4a
:pswitch_57
.end packed-switch
.end method
.method public a(I)[Lcom/google/android/gms/internal/ir$h;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/ir$h;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ro;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ir$h;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ro;->a(I)[Lcom/google/android/gms/internal/ir$h;
move-result-object v0
return-object v0
.end method