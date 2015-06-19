.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/common/data/b;
.field private static final l:Lcom/google/android/gms/common/data/a;
.field  a:Landroid/os/Bundle;
.field  b:[I
.field  c:I
.field  d:Z
.field private final e:I
.field private final f:[Ljava/lang/String;
.field private final g:[Landroid/database/CursorWindow;
.field private final h:I
.field private final i:Landroid/os/Bundle;
.field private j:Ljava/lang/Object;
.field private k:Z
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/google/android/gms/common/data/b;
invoke-direct {v0}, Lcom/google/android/gms/common/data/b;-><init>()V
sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/b;
new-instance v0, Lcom/google/android/gms/common/data/DataHolder$1;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-direct {v0, v1}, Lcom/google/android/gms/common/data/DataHolder$1;-><init>([Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->l:Lcom/google/android/gms/common/data/a;
return-void
.end method
.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->k:Z
iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->e:I
iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->h:I
iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->i:Landroid/os/Bundle;
return-void
.end method
.method private a(Ljava/lang/String;I)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_21
:cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No such column: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
invoke-direct {p0}, Lcom/google/android/gms/common/data/DataHolder;->g()Z
move-result v0
if-eqz v0, :cond_2f
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Buffer is closed."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f
if-ltz p2, :cond_35
iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->c:I
if-lt p2, v0, :cond_3d
:cond_35
new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;
iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->c:I
invoke-direct {v0, p2, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V
throw v0
:cond_3d
return-void
.end method
.method private g()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Z
monitor-exit p0
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_5
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method private h()V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Z
if-nez v0, :cond_18
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Z
const/4 v0, 0x0
:goto_9
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
array-length v1, v1
if-ge v0, v1, :cond_18
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
aget-object v1, v1, v0
invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_18
monitor-exit p0
:try_end_19
.catchall {:try_start_1 .. :try_end_19} :catchall_1a
return-void
:catchall_1a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(I)I
.registers 4
const/4 v1, 0x0
if-ltz p1, :cond_20
iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->c:I
if-ge p1, v0, :cond_20
const/4 v0, 0x1
:goto_8
invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Z)V
:goto_b
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[I
array-length v0, v0
if-ge v1, v0, :cond_18
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[I
aget v0, v0, v1
if-ge p1, v0, :cond_22
add-int/lit8 v1, v1, -0x1
:cond_18
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[I
array-length v0, v0
if-ne v1, v0, :cond_1f
add-int/lit8 v1, v1, -0x1
:cond_1f
return v1
:cond_20
move v0, v1
goto :goto_8
:cond_22
add-int/lit8 v1, v1, 0x1
goto :goto_b
.end method
.method public final a(Ljava/lang/String;II)J
.registers 6
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J
move-result-wide v0
return-wide v0
.end method
.method public final a()V
.registers 5
const/4 v1, 0x0
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;
move v0, v1
:goto_9
iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Ljava/lang/String;
array-length v2, v2
if-ge v0, v2, :cond_1a
iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;
iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Ljava/lang/String;
aget-object v3, v3, v0
invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_1a
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
array-length v0, v0
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[I
move v0, v1
:goto_22
iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
array-length v2, v2
if-ge v1, v2, :cond_43
iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[I
aput v0, v2, v1
iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
aget-object v2, v2, v1
invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I
move-result v2
sub-int v2, v0, v2
iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
aget-object v3, v3, v1
invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I
move-result v3
sub-int v2, v3, v2
add-int/2addr v0, v2
add-int/lit8 v1, v1, 0x1
goto :goto_22
:cond_43
iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->c:I
return-void
.end method
.method final b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->e:I
return v0
.end method
.method public final b(Ljava/lang/String;II)I
.registers 6
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getInt(II)I
move-result v0
return v0
.end method
.method public final c(Ljava/lang/String;II)Ljava/lang/String;
.registers 6
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final c()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Ljava/lang/String;
return-object v0
.end method
.method public final d(Ljava/lang/String;II)Z
.registers 8
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
const-wide/16 v2, 0x1
cmp-long v0, v0, v2
if-nez v0, :cond_21
const/4 v0, 0x1
:goto_20
return v0
:cond_21
const/4 v0, 0x0
goto :goto_20
.end method
.method final d()[Landroid/database/CursorWindow;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
return-object v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->h:I
return v0
.end method
.method public final e(Ljava/lang/String;II)[B
.registers 6
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getBlob(II)[B
move-result-object v0
return-object v0
.end method
.method public final f(Ljava/lang/String;II)Landroid/net/Uri;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
goto :goto_7
.end method
.method public final f()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->i:Landroid/os/Bundle;
return-object v0
.end method
.method protected final finalize()V
.registers 5
:try_start_0
iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->k:Z
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
array-length v0, v0
if-lez v0, :cond_43
invoke-direct {p0}, Lcom/google/android/gms/common/data/DataHolder;->g()Z
move-result v0
if-nez v0, :cond_43
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->j:Ljava/lang/Object;
if-nez v0, :cond_47
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "internal object: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_26
const-string v1, "DataBuffer"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call close() on all DataBuffer extending objects when you are done with them. ("
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ")"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/google/android/gms/common/data/DataHolder;->h()V
:try_end_43
.catchall {:try_start_0 .. :try_end_43} :catchall_4e
:cond_43
invoke-super {p0}, Ljava/lang/Object;->finalize()V
return-void
:try_start_47
:cond_47
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->j:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
:try_end_4c
.catchall {:try_start_47 .. :try_end_4c} :catchall_4e
move-result-object v0
goto :goto_26
:catchall_4e
move-exception v0
invoke-super {p0}, Ljava/lang/Object;->finalize()V
throw v0
.end method
.method public final g(Ljava/lang/String;II)Z
.registers 6
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->isNull(II)Z
move-result v0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/data/b;->a(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcel;I)V
return-void
.end method