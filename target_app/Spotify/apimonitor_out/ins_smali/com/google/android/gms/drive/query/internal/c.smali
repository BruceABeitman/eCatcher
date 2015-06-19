.class public final Lcom/google/android/gms/drive/query/internal/c;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;Landroid/os/Parcel;)V
.registers 6
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/16 v1, 0x3e8
iget v2, p0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->c:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->a:Ljava/lang/String;
const/4 v3, 0x0
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/4 v1, 0x2
iget-boolean v2, p0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->b:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 8
const/4 v0, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v3
const/4 v1, 0x0
move v2, v0
:goto_7
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v4
if-ge v4, v3, :cond_2b
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v4
const v5, 0xffff
and-int/2addr v5, v4
sparse-switch v5, :sswitch_data_4c
invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_7
:sswitch_1c
invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto :goto_7
:sswitch_21
invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v1
goto :goto_7
:sswitch_26
invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v0
goto :goto_7
:cond_2b
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v4
if-eq v4, v3, :cond_46
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
:cond_46
new-instance v3, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;
invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;-><init>(ILjava/lang/String;Z)V
return-object v3
:sswitch_data_4c
.sparse-switch
0x1 -> :sswitch_21
0x2 -> :sswitch_26
0x3e8 -> :sswitch_1c
.end sparse-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;
return-object v0
.end method