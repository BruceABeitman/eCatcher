.class public Lcom/google/android/gms/games/PlayerLevelCreator;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.field public static final CONTENT_DESCRIPTION:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/games/PlayerLevel;Landroid/os/Parcel;I)V
.registers 7
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getLevelNumber()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/16 v1, 0x3e8
invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getVersionCode()I
move-result v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getMinXp()J
move-result-wide v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
const/4 v1, 0x3
invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getMaxXp()J
move-result-wide v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerLevel;
.registers 11
const-wide/16 v5, 0x0
const/4 v2, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I
move-result v0
move-wide v3, v5
move v1, v2
:goto_9
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v7
if-ge v7, v0, :cond_32
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I
move-result v7
invoke-static {v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I
move-result v8
sparse-switch v8, :sswitch_data_58
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_9
:sswitch_1e
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto :goto_9
:sswitch_23
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v1
goto :goto_9
:sswitch_28
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v3
goto :goto_9
:sswitch_2d
invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J
move-result-wide v5
goto :goto_9
:cond_32
invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
move-result v7
if-eq v7, v0, :cond_51
new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Overread allowed size end="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v1
:cond_51
new-instance v0, Lcom/google/android/gms/games/PlayerLevel;
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IIJJ)V
return-object v0
nop
:sswitch_data_58
.sparse-switch
0x1 -> :sswitch_1e
0x2 -> :sswitch_28
0x3 -> :sswitch_2d
0x3e8 -> :sswitch_23
.end sparse-switch
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerLevelCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerLevel;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Lcom/google/android/gms/games/PlayerLevel;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/games/PlayerLevel;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerLevelCreator;->newArray(I)[Lcom/google/android/gms/games/PlayerLevel;
move-result-object v0
return-object v0
.end method