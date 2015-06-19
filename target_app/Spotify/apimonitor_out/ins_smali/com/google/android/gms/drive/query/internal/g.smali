.class public final Lcom/google/android/gms/drive/query/internal/g;
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
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/16 v1, 0x3e8
iget v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->c:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->a:Lcom/google/android/gms/drive/query/internal/Operator;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->b:Ljava/util/List;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 8
const/4 v0, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v4
const/4 v1, 0x0
move-object v2, v0
move v3, v1
move-object v1, v0
:goto_9
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v4, :cond_36
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
const v5, 0xffff
and-int/2addr v5, v0
sparse-switch v5, :sswitch_data_58
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_9
:sswitch_1e
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v0
move v3, v0
goto :goto_9
:sswitch_24
sget-object v2, Lcom/google/android/gms/drive/query/internal/Operator;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/query/internal/Operator;
move-object v2, v0
goto :goto_9
:sswitch_2e
sget-object v1, Lcom/google/android/gms/drive/query/internal/FilterHolder;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v0
move-object v1, v0
goto :goto_9
:cond_36
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v4, :cond_51
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Overread allowed size end="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_51
new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;
invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(ILcom/google/android/gms/drive/query/internal/Operator;Ljava/util/List;)V
return-object v0
nop
:sswitch_data_58
.sparse-switch
0x1 -> :sswitch_24
0x2 -> :sswitch_2e
0x3e8 -> :sswitch_1e
.end sparse-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/query/internal/LogicalFilter;
return-object v0
.end method