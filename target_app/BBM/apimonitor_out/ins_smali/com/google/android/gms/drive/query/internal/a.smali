.class public Lcom/google/android/gms/drive/query/internal/a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/query/internal/ComparisonFilter;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I
move-result v0
const/16 v1, 0x3e8
iget v2, p0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->wj:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->EO:Lcom/google/android/gms/drive/query/internal/Operator;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->EP:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V
return-void
.end method
.method public aH(I)[Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
return-object v0
.end method
.method public ac(Landroid/os/Parcel;)Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
.registers 8
const/4 v0, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I
move-result v4
const/4 v1, 0x0
move-object v2, v0
move v3, v1
move-object v1, v0
:goto_9
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v4, :cond_38
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->S(I)I
move-result v5
sparse-switch v5, :sswitch_data_5a
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
sget-object v1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-object v1, v0
goto :goto_9
:cond_38
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v4, :cond_53
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
:cond_53
new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(ILcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
return-object v0
nop
:sswitch_data_5a
.sparse-switch
0x1 -> :sswitch_24
0x2 -> :sswitch_2e
0x3e8 -> :sswitch_1e
.end sparse-switch
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/internal/a;->ac(Landroid/os/Parcel;)Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/internal/a;->aH(I)[Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
move-result-object v0
return-object v0
.end method