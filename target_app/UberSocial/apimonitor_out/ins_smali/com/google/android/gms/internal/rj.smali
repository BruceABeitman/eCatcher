.class public Lcom/google/android/gms/internal/rj;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/internal/ir$d;Landroid/os/Parcel;I)V
.registers 11
const/4 v7, 0x5
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v3, 0x2
const/4 v4, 0x1
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;)I
move-result v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$d;->d()Ljava/util/Set;
move-result-object v1
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1e
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$d;->e()I
move-result v2
invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
:cond_1e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2f
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$d;->f()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v3, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
:cond_2f
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_40
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$d;->j()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v5, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
:cond_40
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_51
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$d;->l()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v6, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
:cond_51
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_62
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$d;->n()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v7, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
:cond_62
const/4 v2, 0x6
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_75
const/4 v2, 0x6
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$d;->p()Ljava/lang/String;
move-result-object v3
invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
:cond_75
const/4 v2, 0x7
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_88
const/4 v1, 0x7
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$d;->r()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
:cond_88
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ir$d;
.registers 13
const/4 v8, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;)I
move-result v0
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
const/4 v2, 0x0
move-object v7, v8
move-object v6, v8
move-object v5, v8
move-object v4, v8
move-object v3, v8
:goto_10
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v9
if-ge v9, v0, :cond_80
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v9
invoke-static {v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(I)I
move-result v10
packed-switch v10, :pswitch_data_a6
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_10
:pswitch_25
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
const/4 v9, 0x1
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_10
:pswitch_32
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
const/4 v9, 0x2
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_10
:pswitch_3f
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
const/4 v9, 0x3
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_10
:pswitch_4c
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v5
const/4 v9, 0x4
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_10
:pswitch_59
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v6
const/4 v9, 0x5
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_10
:pswitch_66
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v7
const/4 v9, 0x6
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_10
:pswitch_73
invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v8
const/4 v9, 0x7
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_10
:cond_80
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v9
if-eq v9, v0, :cond_9f
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
:cond_9f
new-instance v0, Lcom/google/android/gms/internal/ir$d;
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ir$d;-><init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v0
nop
:pswitch_data_a6
.packed-switch 0x1
:pswitch_25
:pswitch_32
:pswitch_3f
:pswitch_4c
:pswitch_59
:pswitch_66
:pswitch_73
.end packed-switch
.end method
.method public a(I)[Lcom/google/android/gms/internal/ir$d;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/ir$d;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ir$d;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rj;->a(I)[Lcom/google/android/gms/internal/ir$d;
move-result-object v0
return-object v0
.end method