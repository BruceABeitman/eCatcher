.class public final Lcom/google/android/gms/drive/query/internal/h;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/drive/query/internal/MatchAllFilter;Landroid/os/Parcel;)V
.registers 5
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/16 v1, 0x3e8
iget v2, p0, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 6
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v1
const/4 v0, 0x0
:goto_5
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v2
if-ge v2, v1, :cond_1f
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
const v3, 0xffff
and-int/2addr v3, v2
packed-switch v3, :pswitch_data_40
invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_5
:pswitch_1a
invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v0
goto :goto_5
:cond_1f
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v2
if-eq v2, v1, :cond_3a
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Overread allowed size end="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_3a
new-instance v1, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
invoke-direct {v1, v0}, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;-><init>(I)V
return-object v1
:pswitch_data_40
.packed-switch 0x3e8
:pswitch_1a
.end packed-switch
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
return-object v0
.end method