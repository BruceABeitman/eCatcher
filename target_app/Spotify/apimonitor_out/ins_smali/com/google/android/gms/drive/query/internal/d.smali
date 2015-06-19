.class public final Lcom/google/android/gms/drive/query/internal/d;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/query/internal/FilterHolder;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->b:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/16 v1, 0x3e8
iget v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->c:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->d:Lcom/google/android/gms/drive/query/internal/LogicalFilter;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->e:Lcom/google/android/gms/drive/query/internal/NotFilter;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->f:Lcom/google/android/gms/drive/query/internal/InFilter;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x6
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->g:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 12
const/4 v7, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v8
const/4 v1, 0x0
move-object v6, v7
move-object v5, v7
move-object v4, v7
move-object v3, v7
move-object v2, v7
:goto_b
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v8, :cond_61
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
const v9, 0xffff
and-int/2addr v9, v0
sparse-switch v9, :sswitch_data_82
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_b
:sswitch_20
sget-object v2, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/a;
invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
move-object v2, v0
goto :goto_b
:sswitch_2a
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_b
:sswitch_2f
sget-object v3, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;
move-object v3, v0
goto :goto_b
:sswitch_39
sget-object v4, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;
move-object v4, v0
goto :goto_b
:sswitch_43
sget-object v5, Lcom/google/android/gms/drive/query/internal/NotFilter;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/query/internal/NotFilter;
move-object v5, v0
goto :goto_b
:sswitch_4d
sget-object v6, Lcom/google/android/gms/drive/query/internal/InFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/f;
invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/query/internal/InFilter;
move-object v6, v0
goto :goto_b
:sswitch_57
sget-object v7, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/h;
invoke-static {p1, v0, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
move-object v7, v0
goto :goto_b
:cond_61
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v8, :cond_7c
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Overread allowed size end="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_7c
new-instance v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;
invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(ILcom/google/android/gms/drive/query/internal/ComparisonFilter;Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;Lcom/google/android/gms/drive/query/internal/LogicalFilter;Lcom/google/android/gms/drive/query/internal/NotFilter;Lcom/google/android/gms/drive/query/internal/InFilter;Lcom/google/android/gms/drive/query/internal/MatchAllFilter;)V
return-object v0
:sswitch_data_82
.sparse-switch
0x1 -> :sswitch_20
0x2 -> :sswitch_2f
0x3 -> :sswitch_39
0x4 -> :sswitch_43
0x5 -> :sswitch_4d
0x6 -> :sswitch_57
0x3e8 -> :sswitch_2a
.end sparse-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/query/internal/FilterHolder;
return-object v0
.end method