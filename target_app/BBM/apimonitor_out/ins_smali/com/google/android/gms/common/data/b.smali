.class public abstract Lcom/google/android/gms/common/data/b;
.super Ljava/lang/Object;
.field public final zU:Lcom/google/android/gms/common/data/DataHolder;
.field public final zW:I
.field private final zX:I
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/data/DataHolder;
iput-object v0, p0, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
if-ltz p2, :cond_22
invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I
move-result v0
if-ge p2, v0, :cond_22
const/4 v0, 0x1
:goto_14
invoke-static {v0}, Lcom/google/android/gms/internal/er;->v(Z)V
iput p2, p0, Lcom/google/android/gms/common/data/b;->zW:I
iget v0, p0, Lcom/google/android/gms/common/data/b;->zW:I
invoke-virtual {p1, v0}, Lcom/google/android/gms/common/data/DataHolder;->I(I)I
move-result v0
iput v0, p0, Lcom/google/android/gms/common/data/b;->zX:I
return-void
:cond_22
const/4 v0, 0x0
goto :goto_14
.end method
.method public a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
iget v1, p0, Lcom/google/android/gms/common/data/b;->zW:I
iget v2, p0, Lcom/google/android/gms/common/data/b;->zX:I
invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/gms/common/data/DataHolder;->copyToBuffer(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
return-void
.end method
.method public aa(Ljava/lang/String;)Landroid/net/Uri;
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
iget v1, p0, Lcom/google/android/gms/common/data/b;->zW:I
iget v2, p0, Lcom/google/android/gms/common/data/b;->zX:I
invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->parseUri(Ljava/lang/String;II)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public ab(Ljava/lang/String;)Z
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
iget v1, p0, Lcom/google/android/gms/common/data/b;->zW:I
iget v2, p0, Lcom/google/android/gms/common/data/b;->zX:I
invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Lcom/google/android/gms/common/data/b;
if-eqz v1, :cond_32
check-cast p1, Lcom/google/android/gms/common/data/b;
iget v1, p1, Lcom/google/android/gms/common/data/b;->zW:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
iget v2, p0, Lcom/google/android/gms/common/data/b;->zW:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_32
iget v1, p1, Lcom/google/android/gms/common/data/b;->zX:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
iget v2, p0, Lcom/google/android/gms/common/data/b;->zX:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_32
iget-object v1, p1, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
iget-object v2, p0, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
if-ne v1, v2, :cond_32
const/4 v0, 0x1
:cond_32
return v0
.end method
.method public getBoolean(Ljava/lang/String;)Z
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
iget v1, p0, Lcom/google/android/gms/common/data/b;->zW:I
iget v2, p0, Lcom/google/android/gms/common/data/b;->zX:I
invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->getBoolean(Ljava/lang/String;II)Z
move-result v0
return v0
.end method
.method public getByteArray(Ljava/lang/String;)[B
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
iget v1, p0, Lcom/google/android/gms/common/data/b;->zW:I
iget v2, p0, Lcom/google/android/gms/common/data/b;->zX:I
invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->getByteArray(Ljava/lang/String;II)[B
move-result-object v0
return-object v0
.end method
.method public getInteger(Ljava/lang/String;)I
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
iget v1, p0, Lcom/google/android/gms/common/data/b;->zW:I
iget v2, p0, Lcom/google/android/gms/common/data/b;->zX:I
invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->getInteger(Ljava/lang/String;II)I
move-result v0
return v0
.end method
.method public getLong(Ljava/lang/String;)J
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
iget v1, p0, Lcom/google/android/gms/common/data/b;->zW:I
iget v2, p0, Lcom/google/android/gms/common/data/b;->zX:I
invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J
move-result-wide v0
return-wide v0
.end method
.method public getString(Ljava/lang/String;)Ljava/lang/String;
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
iget v1, p0, Lcom/google/android/gms/common/data/b;->zW:I
iget v2, p0, Lcom/google/android/gms/common/data/b;->zX:I
invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public hasColumn(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataHolder;->hasColumn(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public hashCode()I
.registers 4
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget v2, p0, Lcom/google/android/gms/common/data/b;->zW:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/common/data/b;->zX:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public isDataValid()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method