.class public Lcom/google/android/gms/internal/qc;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/internal/hz;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/internal/hz;->b:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x3e8
iget v2, p0, Lcom/google/android/gms/internal/hz;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/internal/hz;->c:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/internal/hz;->d:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/internal/hz;->e:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/internal/hz;->f:Ljava/util/List;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/util/List;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hz;
.registers 11
const/4 v6, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x0
move-object v5, v6
move-object v4, v6
move-object v3, v6
move-object v2, v6
:goto_a
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v7
if-ge v7, v0, :cond_3d
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v7
invoke-static {v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(I)I
move-result v8
sparse-switch v8, :sswitch_data_62
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_a
:sswitch_1f
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v2
goto :goto_a
:sswitch_24
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_a
:sswitch_29
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v3
goto :goto_a
:sswitch_2e
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v4
goto :goto_a
:sswitch_33
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v5
goto :goto_a
:sswitch_38
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->y(Landroid/os/Parcel;I)Ljava/util/ArrayList;
move-result-object v6
goto :goto_a
:cond_3d
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v7
if-eq v7, v0, :cond_5c
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
:cond_5c
new-instance v0, Lcom/google/android/gms/internal/hz;
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/hz;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
return-object v0
:sswitch_data_62
.sparse-switch
0x1 -> :sswitch_1f
0x2 -> :sswitch_29
0x3 -> :sswitch_2e
0x4 -> :sswitch_33
0x5 -> :sswitch_38
0x3e8 -> :sswitch_24
.end sparse-switch
.end method
.method public a(I)[Lcom/google/android/gms/internal/hz;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/hz;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qc;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hz;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qc;->a(I)[Lcom/google/android/gms/internal/hz;
move-result-object v0
return-object v0
.end method