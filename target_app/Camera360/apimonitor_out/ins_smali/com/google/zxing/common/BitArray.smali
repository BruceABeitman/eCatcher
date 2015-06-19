.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"
.implements Ljava/lang/Cloneable;
.field private bits:[I
.field private size:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I
const/4 v0, 0x1
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I
return-void
.end method
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I
invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I
move-result-object v0
iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I
return-void
.end method
.method constructor <init>([II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I
iput p2, p0, Lcom/google/zxing/common/BitArray;->size:I
return-void
.end method
.method private ensureCapacity(I)V
.registers 6
const/4 v3, 0x0
iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I
array-length v1, v1
mul-int/lit8 v1, v1, 0x20
if-le p1, v1, :cond_16
invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I
move-result-object v0
iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I
iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I
array-length v2, v2
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I
:cond_16
return-void
.end method
.method private static makeArray(I)[I
.registers 2
add-int/lit8 v0, p0, 0x1f
div-int/lit8 v0, v0, 0x20
new-array v0, v0, [I
return-object v0
.end method
.method public appendBit(Z)V
.registers 7
iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I
add-int/lit8 v0, v0, 0x1
invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V
if-eqz p1, :cond_1a
iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I
iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I
div-int/lit8 v1, v1, 0x20
aget v2, v0, v1
const/4 v3, 0x1
iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I
and-int/lit8 v4, v4, 0x1f
shl-int/2addr v3, v4
or-int/2addr v2, v3
aput v2, v0, v1
:cond_1a
iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I
return-void
.end method
.method public appendBitArray(Lcom/google/zxing/common/BitArray;)V
.registers 5
iget v1, p1, Lcom/google/zxing/common/BitArray;->size:I
iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I
add-int/2addr v2, v1
invoke-direct {p0, v2}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V
const/4 v0, 0x0
:goto_9
if-ge v0, v1, :cond_15
invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z
move-result v2
invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_15
return-void
.end method
.method public appendBits(II)V
.registers 6
const/4 v2, 0x1
if-ltz p2, :cond_7
const/16 v1, 0x20
if-le p2, v1, :cond_10
:cond_7
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string/jumbo v2, "Num bits must be between 0 and 32"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_10
iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I
add-int/2addr v1, p2
invoke-direct {p0, v1}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V
move v0, p2
:goto_17
if-lez v0, :cond_2a
add-int/lit8 v1, v0, -0x1
shr-int v1, p1, v1
and-int/lit8 v1, v1, 0x1
if-ne v1, v2, :cond_28
move v1, v2
:goto_22
invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V
add-int/lit8 v0, v0, -0x1
goto :goto_17
:cond_28
const/4 v1, 0x0
goto :goto_22
:cond_2a
return-void
.end method
.method public clear()V
.registers 5
iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I
array-length v1, v2
const/4 v0, 0x0
:goto_4
if-ge v0, v1, :cond_e
iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I
const/4 v3, 0x0
aput v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_e
return-void
.end method
.method public clone()Lcom/google/zxing/common/BitArray;
.registers 4
new-instance v1, Lcom/google/zxing/common/BitArray;
iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I
invoke-virtual {v0}, [I->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I
invoke-direct {v1, v0, v2}, Lcom/google/zxing/common/BitArray;-><init>([II)V
return-object v1
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->clone()Lcom/google/zxing/common/BitArray;
move-result-object v0
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/zxing/common/BitArray;
if-nez v2, :cond_6
:cond_5
:goto_5
return v1
:cond_6
move-object v0, p1
check-cast v0, Lcom/google/zxing/common/BitArray;
iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I
iget v3, v0, Lcom/google/zxing/common/BitArray;->size:I
if-ne v2, v3, :cond_5
iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I
iget-object v3, v0, Lcom/google/zxing/common/BitArray;->bits:[I
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z
move-result v2
if-eqz v2, :cond_5
const/4 v1, 0x1
goto :goto_5
.end method
.method public flip(I)V
.registers 7
iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I
div-int/lit8 v1, p1, 0x20
aget v2, v0, v1
const/4 v3, 0x1
and-int/lit8 v4, p1, 0x1f
shl-int/2addr v3, v4
xor-int/2addr v2, v3
aput v2, v0, v1
return-void
.end method
.method public get(I)Z
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I
div-int/lit8 v2, p1, 0x20
aget v1, v1, v2
and-int/lit8 v2, p1, 0x1f
shl-int v2, v0, v2
and-int/2addr v1, v2
if-eqz v1, :cond_f
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public getBitArray()[I
.registers 2
iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I
return-object v0
.end method
.method public getNextSet(I)I
.registers 7
iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I
if-lt p1, v3, :cond_7
iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I
:goto_6
:cond_6
return v2
:cond_7
div-int/lit8 v0, p1, 0x20
iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I
aget v1, v3, v0
const/4 v3, 0x1
and-int/lit8 v4, p1, 0x1f
shl-int/2addr v3, v4
add-int/lit8 v3, v3, -0x1
xor-int/lit8 v3, v3, -0x1
and-int/2addr v1, v3
:goto_16
if-nez v1, :cond_27
add-int/lit8 v0, v0, 0x1
iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I
array-length v3, v3
if-ne v0, v3, :cond_22
iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I
goto :goto_6
:cond_22
iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I
aget v1, v3, v0
goto :goto_16
:cond_27
mul-int/lit8 v3, v0, 0x20
invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I
move-result v4
add-int v2, v3, v4
iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I
if-le v2, v3, :cond_6
iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I
goto :goto_6
.end method
.method public getNextUnset(I)I
.registers 7
iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I
if-lt p1, v3, :cond_7
iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I
:goto_6
:cond_6
return v2
:cond_7
div-int/lit8 v0, p1, 0x20
iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I
aget v3, v3, v0
xor-int/lit8 v1, v3, -0x1
const/4 v3, 0x1
and-int/lit8 v4, p1, 0x1f
shl-int/2addr v3, v4
add-int/lit8 v3, v3, -0x1
xor-int/lit8 v3, v3, -0x1
and-int/2addr v1, v3
:goto_18
if-nez v1, :cond_2b
add-int/lit8 v0, v0, 0x1
iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I
array-length v3, v3
if-ne v0, v3, :cond_24
iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I
goto :goto_6
:cond_24
iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I
aget v3, v3, v0
xor-int/lit8 v1, v3, -0x1
goto :goto_18
:cond_2b
mul-int/lit8 v3, v0, 0x20
invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I
move-result v4
add-int v2, v3, v4
iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I
if-le v2, v3, :cond_6
iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I
goto :goto_6
.end method
.method public getSize()I
.registers 2
iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I
return v0
.end method
.method public getSizeInBytes()I
.registers 2
iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I
add-int/lit8 v0, v0, 0x7
div-int/lit8 v0, v0, 0x8
return v0
.end method
.method public hashCode()I
.registers 3
iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I
invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public isRange(IIZ)Z
.registers 15
const/16 v9, 0x1f
const/4 v7, 0x1
const/4 v8, 0x0
if-ge p2, p1, :cond_c
new-instance v7, Ljava/lang/IllegalArgumentException;
invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v7
:cond_c
if-ne p2, p1, :cond_f
:goto_e
:cond_e
return v7
:cond_f
add-int/lit8 p2, p2, -0x1
div-int/lit8 v1, p1, 0x20
div-int/lit8 v5, p2, 0x20
move v2, v1
:goto_16
if-gt v2, v5, :cond_e
if-le v2, v1, :cond_2e
move v0, v8
:goto_1b
if-ge v2, v5, :cond_31
move v4, v9
:goto_1e
if-nez v0, :cond_34
if-ne v4, v9, :cond_34
const/4 v6, -0x1
:cond_23
iget-object v10, p0, Lcom/google/zxing/common/BitArray;->bits:[I
aget v10, v10, v2
and-int/2addr v10, v6
if-eqz p3, :cond_3e
:goto_2a
if-eq v10, v6, :cond_40
move v7, v8
goto :goto_e
:cond_2e
and-int/lit8 v0, p1, 0x1f
goto :goto_1b
:cond_31
and-int/lit8 v4, p2, 0x1f
goto :goto_1e
:cond_34
const/4 v6, 0x0
move v3, v0
:goto_36
if-gt v3, v4, :cond_23
shl-int v10, v7, v3
or-int/2addr v6, v10
add-int/lit8 v3, v3, 0x1
goto :goto_36
:cond_3e
move v6, v8
goto :goto_2a
:cond_40
add-int/lit8 v2, v2, 0x1
goto :goto_16
.end method
.method public reverse()V
.registers 16
iget-object v10, p0, Lcom/google/zxing/common/BitArray;->bits:[I
array-length v10, v10
new-array v5, v10, [I
iget v10, p0, Lcom/google/zxing/common/BitArray;->size:I
add-int/lit8 v10, v10, -0x1
div-int/lit8 v3, v10, 0x20
add-int/lit8 v7, v3, 0x1
const/4 v1, 0x0
:goto_e
if-ge v1, v7, :cond_6c
iget-object v10, p0, Lcom/google/zxing/common/BitArray;->bits:[I
aget v10, v10, v1
int-to-long v8, v10
const/4 v10, 0x1
shr-long v10, v8, v10
const-wide/32 v12, 0x55555555
and-long/2addr v10, v12
const-wide/32 v12, 0x55555555
and-long/2addr v12, v8
const/4 v14, 0x1
shl-long/2addr v12, v14
or-long v8, v10, v12
const/4 v10, 0x2
shr-long v10, v8, v10
const-wide/32 v12, 0x33333333
and-long/2addr v10, v12
const-wide/32 v12, 0x33333333
and-long/2addr v12, v8
const/4 v14, 0x2
shl-long/2addr v12, v14
or-long v8, v10, v12
const/4 v10, 0x4
shr-long v10, v8, v10
const-wide/32 v12, 0xf0f0f0f
and-long/2addr v10, v12
const-wide/32 v12, 0xf0f0f0f
and-long/2addr v12, v8
const/4 v14, 0x4
shl-long/2addr v12, v14
or-long v8, v10, v12
const/16 v10, 0x8
shr-long v10, v8, v10
const-wide/32 v12, 0xff00ff
and-long/2addr v10, v12
const-wide/32 v12, 0xff00ff
and-long/2addr v12, v8
const/16 v14, 0x8
shl-long/2addr v12, v14
or-long v8, v10, v12
const/16 v10, 0x10
shr-long v10, v8, v10
const-wide/32 v12, 0xffff
and-long/2addr v10, v12
const-wide/32 v12, 0xffff
and-long/2addr v12, v8
const/16 v14, 0x10
shl-long/2addr v12, v14
or-long v8, v10, v12
sub-int v10, v3, v1
long-to-int v11, v8
aput v11, v5, v10
add-int/lit8 v1, v1, 0x1
goto :goto_e
:cond_6c
iget v10, p0, Lcom/google/zxing/common/BitArray;->size:I
mul-int/lit8 v11, v7, 0x20
if-eq v10, v11, :cond_a4
mul-int/lit8 v10, v7, 0x20
iget v11, p0, Lcom/google/zxing/common/BitArray;->size:I
sub-int v2, v10, v11
const/4 v4, 0x1
const/4 v1, 0x0
:goto_7a
rsub-int/lit8 v10, v2, 0x1f
if-ge v1, v10, :cond_85
shl-int/lit8 v10, v4, 0x1
or-int/lit8 v4, v10, 0x1
add-int/lit8 v1, v1, 0x1
goto :goto_7a
:cond_85
const/4 v10, 0x0
aget v10, v5, v10
shr-int/2addr v10, v2
and-int v0, v10, v4
const/4 v1, 0x1
:goto_8c
if-ge v1, v7, :cond_a0
aget v6, v5, v1
rsub-int/lit8 v10, v2, 0x20
shl-int v10, v6, v10
or-int/2addr v0, v10
add-int/lit8 v10, v1, -0x1
aput v0, v5, v10
shr-int v10, v6, v2
and-int v0, v10, v4
add-int/lit8 v1, v1, 0x1
goto :goto_8c
:cond_a0
add-int/lit8 v10, v7, -0x1
aput v0, v5, v10
:cond_a4
iput-object v5, p0, Lcom/google/zxing/common/BitArray;->bits:[I
return-void
.end method
.method public set(I)V
.registers 7
iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I
div-int/lit8 v1, p1, 0x20
aget v2, v0, v1
const/4 v3, 0x1
and-int/lit8 v4, p1, 0x1f
shl-int/2addr v3, v4
or-int/2addr v2, v3
aput v2, v0, v1
return-void
.end method
.method public setBulk(II)V
.registers 5
iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I
div-int/lit8 v1, p1, 0x20
aput p2, v0, v1
return-void
.end method
.method public setRange(II)V
.registers 13
const/16 v7, 0x1f
if-ge p2, p1, :cond_a
new-instance v7, Ljava/lang/IllegalArgumentException;
invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v7
:cond_a
if-ne p2, p1, :cond_d
:cond_c
return-void
:cond_d
add-int/lit8 p2, p2, -0x1
div-int/lit8 v1, p1, 0x20
div-int/lit8 v5, p2, 0x20
move v2, v1
:goto_14
if-gt v2, v5, :cond_c
if-le v2, v1, :cond_2b
const/4 v0, 0x0
:goto_19
if-ge v2, v5, :cond_2e
move v4, v7
:goto_1c
if-nez v0, :cond_31
if-ne v4, v7, :cond_31
const/4 v6, -0x1
:cond_21
iget-object v8, p0, Lcom/google/zxing/common/BitArray;->bits:[I
aget v9, v8, v2
or-int/2addr v9, v6
aput v9, v8, v2
add-int/lit8 v2, v2, 0x1
goto :goto_14
:cond_2b
and-int/lit8 v0, p1, 0x1f
goto :goto_19
:cond_2e
and-int/lit8 v4, p2, 0x1f
goto :goto_1c
:cond_31
const/4 v6, 0x0
move v3, v0
:goto_33
if-gt v3, v4, :cond_21
const/4 v8, 0x1
shl-int/2addr v8, v3
or-int/2addr v6, v8
add-int/lit8 v3, v3, 0x1
goto :goto_33
.end method
.method public toBytes(I[BII)V
.registers 10
const/4 v0, 0x0
:goto_1
if-ge v0, p4, :cond_21
const/4 v2, 0x0
const/4 v1, 0x0
:goto_5
const/16 v3, 0x8
if-ge v1, v3, :cond_19
invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z
move-result v3
if-eqz v3, :cond_14
const/4 v3, 0x1
rsub-int/lit8 v4, v1, 0x7
shl-int/2addr v3, v4
or-int/2addr v2, v3
:cond_14
add-int/lit8 p1, p1, 0x1
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_19
add-int v3, p3, v0
int-to-byte v4, v2
aput-byte v4, p2, v3
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_21
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v1, Ljava/lang/StringBuilder;
iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v0, 0x0
:goto_8
iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I
if-ge v0, v2, :cond_26
and-int/lit8 v2, v0, 0x7
if-nez v2, :cond_15
const/16 v2, 0x20
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_15
invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z
move-result v2
if-eqz v2, :cond_23
const/16 v2, 0x58
:goto_1d
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_23
const/16 v2, 0x2e
goto :goto_1d
:cond_26
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public xor(Lcom/google/zxing/common/BitArray;)V
.registers 6
iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I
array-length v1, v1
iget-object v2, p1, Lcom/google/zxing/common/BitArray;->bits:[I
array-length v2, v2
if-eq v1, v2, :cond_11
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string/jumbo v2, "Sizes don\'t match"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_11
const/4 v0, 0x0
:goto_12
iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I
array-length v1, v1
if-ge v0, v1, :cond_25
iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I
aget v2, v1, v0
iget-object v3, p1, Lcom/google/zxing/common/BitArray;->bits:[I
aget v3, v3, v0
xor-int/2addr v2, v3
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_25
return-void
.end method