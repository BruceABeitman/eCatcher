.class public Lcom/google/android/gms/drive/query/internal/f;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/query/internal/LogicalFilter;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;)I
move-result v0
const/16 v1, 0x3e8
iget v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->c:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->a:Lcom/google/android/gms/drive/query/internal/Operator;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->b:Ljava/util/List;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/drive/query/internal/LogicalFilter;
.registers 9
const/4 v1, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;)I
move-result v4
const/4 v3, 0x0
move-object v2, v1
:goto_7
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v4, :cond_41
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(I)I
move-result v5
sparse-switch v5, :sswitch_data_66
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
move-object v0, v1
move-object v1, v2
move v2, v3
:goto_1e
move v3, v2
move-object v2, v1
move-object v1, v0
goto :goto_7
:sswitch_22
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v0
move-object v6, v1
move-object v1, v2
move v2, v0
move-object v0, v6
goto :goto_1e
:sswitch_2b
sget-object v2, Lcom/google/android/gms/drive/query/internal/Operator;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/query/internal/Operator;
move v2, v3
move-object v6, v0
move-object v0, v1
move-object v1, v6
goto :goto_1e
:sswitch_38
sget-object v1, Lcom/google/android/gms/drive/query/internal/FilterHolder;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v0
move-object v1, v2
move v2, v3
goto :goto_1e
:cond_41
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v4, :cond_60
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/b;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Overread allowed size end="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_60
new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;
invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(ILcom/google/android/gms/drive/query/internal/Operator;Ljava/util/List;)V
return-object v0
:sswitch_data_66
.sparse-switch
0x1 -> :sswitch_2b
0x2 -> :sswitch_38
0x3e8 -> :sswitch_22
.end sparse-switch
.end method
.method public a(I)[Lcom/google/android/gms/drive/query/internal/LogicalFilter;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/query/internal/LogicalFilter;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/internal/f;->a(Landroid/os/Parcel;)Lcom/google/android/gms/drive/query/internal/LogicalFilter;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/internal/f;->a(I)[Lcom/google/android/gms/drive/query/internal/LogicalFilter;
move-result-object v0
return-object v0
.end method