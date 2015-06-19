.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"
.implements Ljava/lang/Cloneable;
.field private final bits:[I
.field private final height:I
.field private final rowSize:I
.field private final width:I
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V
return-void
.end method
.method public constructor <init>(II)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-lt p1, v0, :cond_8
if-ge p2, v0, :cond_11
:cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "Both dimensions must be greater than 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I
iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I
add-int/lit8 v0, p1, 0x1f
shr-int/lit8 v0, v0, 0x5
iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
mul-int/2addr v0, p2
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
return-void
.end method
.method private constructor <init>(III[I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I
iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I
iput p3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
iput-object p4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
return-void
.end method
.method public clear()V
.registers 5
iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
array-length v1, v2
const/4 v0, 0x0
:goto_4
if-ge v0, v1, :cond_e
iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
const/4 v3, 0x0
aput v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_e
return-void
.end method
.method public clone()Lcom/google/zxing/common/BitMatrix;
.registers 6
new-instance v1, Lcom/google/zxing/common/BitMatrix;
iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I
iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I
iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
invoke-virtual {v0}, [I->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(III[I)V
return-object v1
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;
move-result-object v0
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/zxing/common/BitMatrix;
if-nez v2, :cond_6
:cond_5
:goto_5
return v1
:cond_6
move-object v0, p1
check-cast v0, Lcom/google/zxing/common/BitMatrix;
iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I
iget v3, v0, Lcom/google/zxing/common/BitMatrix;->width:I
if-ne v2, v3, :cond_5
iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I
iget v3, v0, Lcom/google/zxing/common/BitMatrix;->height:I
if-ne v2, v3, :cond_5
iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
iget v3, v0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
if-ne v2, v3, :cond_5
iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
iget-object v3, v0, Lcom/google/zxing/common/BitMatrix;->bits:[I
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z
move-result v2
if-eqz v2, :cond_5
const/4 v1, 0x1
goto :goto_5
.end method
.method public flip(II)V
.registers 8
iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
mul-int/2addr v1, p2
shr-int/lit8 v2, p1, 0x5
add-int v0, v1, v2
iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
aget v2, v1, v0
const/4 v3, 0x1
and-int/lit8 v4, p1, 0x1f
shl-int/2addr v3, v4
xor-int/2addr v2, v3
aput v2, v1, v0
return-void
.end method
.method public get(II)Z
.registers 6
iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
mul-int/2addr v1, p2
shr-int/lit8 v2, p1, 0x5
add-int v0, v1, v2
iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
aget v1, v1, v0
and-int/lit8 v2, p1, 0x1f
ushr-int/2addr v1, v2
and-int/lit8 v1, v1, 0x1
if-eqz v1, :cond_14
const/4 v1, 0x1
:goto_13
return v1
:cond_14
const/4 v1, 0x0
goto :goto_13
.end method
.method public getBottomRightOnBit()[I
.registers 8
iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
array-length v5, v5
add-int/lit8 v1, v5, -0x1
:goto_5
if-ltz v1, :cond_10
iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
aget v5, v5, v1
if-nez v5, :cond_10
add-int/lit8 v1, v1, -0x1
goto :goto_5
:cond_10
if-gez v1, :cond_14
const/4 v5, 0x0
:goto_13
return-object v5
:cond_14
iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
div-int v4, v1, v5
iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
rem-int v5, v1, v5
shl-int/lit8 v3, v5, 0x5
iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
aget v2, v5, v1
const/16 v0, 0x1f
:goto_24
ushr-int v5, v2, v0
if-nez v5, :cond_2b
add-int/lit8 v0, v0, -0x1
goto :goto_24
:cond_2b
add-int/2addr v3, v0
const/4 v5, 0x2
new-array v5, v5, [I
const/4 v6, 0x0
aput v3, v5, v6
const/4 v6, 0x1
aput v4, v5, v6
goto :goto_13
.end method
.method public getEnclosingRectangle()[I
.registers 13
iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I
iget v6, p0, Lcom/google/zxing/common/BitMatrix;->height:I
const/4 v4, -0x1
const/4 v1, -0x1
const/4 v9, 0x0
:goto_7
iget v10, p0, Lcom/google/zxing/common/BitMatrix;->height:I
if-ge v9, v10, :cond_55
const/4 v8, 0x0
:goto_c
iget v10, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
if-ge v8, v10, :cond_52
iget-object v10, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
iget v11, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
mul-int/2addr v11, v9
add-int/2addr v11, v8
aget v5, v10, v11
if-eqz v5, :cond_4f
if-ge v9, v6, :cond_1d
move v6, v9
:cond_1d
if-le v9, v1, :cond_20
move v1, v9
:cond_20
mul-int/lit8 v10, v8, 0x20
if-ge v10, v3, :cond_37
const/4 v0, 0x0
:goto_25
rsub-int/lit8 v10, v0, 0x1f
shl-int v10, v5, v10
if-nez v10, :cond_2e
add-int/lit8 v0, v0, 0x1
goto :goto_25
:cond_2e
mul-int/lit8 v10, v8, 0x20
add-int/2addr v10, v0
if-ge v10, v3, :cond_37
mul-int/lit8 v10, v8, 0x20
add-int v3, v10, v0
:cond_37
mul-int/lit8 v10, v8, 0x20
add-int/lit8 v10, v10, 0x1f
if-le v10, v4, :cond_4f
const/16 v0, 0x1f
:goto_3f
ushr-int v10, v5, v0
if-nez v10, :cond_46
add-int/lit8 v0, v0, -0x1
goto :goto_3f
:cond_46
mul-int/lit8 v10, v8, 0x20
add-int/2addr v10, v0
if-le v10, v4, :cond_4f
mul-int/lit8 v10, v8, 0x20
add-int v4, v10, v0
:cond_4f
add-int/lit8 v8, v8, 0x1
goto :goto_c
:cond_52
add-int/lit8 v9, v9, 0x1
goto :goto_7
:cond_55
sub-int v7, v4, v3
sub-int v2, v1, v6
if-ltz v7, :cond_5d
if-gez v2, :cond_5f
:cond_5d
const/4 v10, 0x0
:goto_5e
return-object v10
:cond_5f
const/4 v10, 0x4
new-array v10, v10, [I
const/4 v11, 0x0
aput v3, v10, v11
const/4 v11, 0x1
aput v6, v10, v11
const/4 v11, 0x2
aput v7, v10, v11
const/4 v11, 0x3
aput v2, v10, v11
goto :goto_5e
.end method
.method public getHeight()I
.registers 2
iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I
return v0
.end method
.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
.registers 8
if-eqz p2, :cond_a
invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v2
iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I
if-ge v2, v3, :cond_28
:cond_a
new-instance p2, Lcom/google/zxing/common/BitArray;
iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I
invoke-direct {p2, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V
:goto_11
iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
mul-int v0, p1, v2
const/4 v1, 0x0
:goto_16
iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
if-ge v1, v2, :cond_2c
shl-int/lit8 v2, v1, 0x5
iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
add-int v4, v0, v1
aget v3, v3, v4
invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->setBulk(II)V
add-int/lit8 v1, v1, 0x1
goto :goto_16
:cond_28
invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V
goto :goto_11
:cond_2c
return-object p2
.end method
.method public getTopLeftOnBit()[I
.registers 8
const/4 v1, 0x0
:goto_1
iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
array-length v5, v5
if-ge v1, v5, :cond_f
iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
aget v5, v5, v1
if-nez v5, :cond_f
add-int/lit8 v1, v1, 0x1
goto :goto_1
:cond_f
iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
array-length v5, v5
if-ne v1, v5, :cond_16
const/4 v5, 0x0
:goto_15
return-object v5
:cond_16
iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
div-int v4, v1, v5
iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
rem-int v5, v1, v5
shl-int/lit8 v3, v5, 0x5
iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
aget v2, v5, v1
const/4 v0, 0x0
:goto_25
rsub-int/lit8 v5, v0, 0x1f
shl-int v5, v2, v5
if-nez v5, :cond_2e
add-int/lit8 v0, v0, 0x1
goto :goto_25
:cond_2e
add-int/2addr v3, v0
const/4 v5, 0x2
new-array v5, v5, [I
const/4 v6, 0x0
aput v3, v5, v6
const/4 v6, 0x1
aput v4, v5, v6
goto :goto_15
.end method
.method public getWidth()I
.registers 2
iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I
return v0
.end method
.method public hashCode()I
.registers 4
iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I
move-result v2
add-int v0, v1, v2
return v0
.end method
.method public rotate180()V
.registers 7
invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I
move-result v4
invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v1
new-instance v3, Lcom/google/zxing/common/BitArray;
invoke-direct {v3, v4}, Lcom/google/zxing/common/BitArray;-><init>(I)V
new-instance v0, Lcom/google/zxing/common/BitArray;
invoke-direct {v0, v4}, Lcom/google/zxing/common/BitArray;-><init>(I)V
const/4 v2, 0x0
:goto_13
add-int/lit8 v5, v1, 0x1
div-int/lit8 v5, v5, 0x2
if-ge v2, v5, :cond_36
invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
move-result-object v3
add-int/lit8 v5, v1, -0x1
sub-int/2addr v5, v2
invoke-virtual {p0, v5, v0}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
move-result-object v0
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->reverse()V
invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->reverse()V
invoke-virtual {p0, v2, v0}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V
add-int/lit8 v5, v1, -0x1
sub-int/2addr v5, v2
invoke-virtual {p0, v5, v3}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V
add-int/lit8 v2, v2, 0x1
goto :goto_13
:cond_36
return-void
.end method
.method public set(II)V
.registers 8
iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
mul-int/2addr v1, p2
shr-int/lit8 v2, p1, 0x5
add-int v0, v1, v2
iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
aget v2, v1, v0
const/4 v3, 0x1
and-int/lit8 v4, p1, 0x1f
shl-int/2addr v3, v4
or-int/2addr v2, v3
aput v2, v1, v0
return-void
.end method
.method public setRegion(IIII)V
.registers 15
const/4 v9, 0x1
if-ltz p2, :cond_5
if-gez p1, :cond_e
:cond_5
new-instance v5, Ljava/lang/IllegalArgumentException;
const-string/jumbo v6, "Left and top must be nonnegative"
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_e
if-lt p4, v9, :cond_12
if-ge p3, v9, :cond_1b
:cond_12
new-instance v5, Ljava/lang/IllegalArgumentException;
const-string/jumbo v6, "Height and width must be at least 1"
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_1b
add-int v2, p1, p3
add-int v0, p2, p4
iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I
if-gt v0, v5, :cond_27
iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I
if-le v2, v5, :cond_30
:cond_27
new-instance v5, Ljava/lang/IllegalArgumentException;
const-string/jumbo v6, "The region must fit inside the matrix"
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_30
move v4, p2
:goto_31
if-ge v4, v0, :cond_4e
iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
mul-int v1, v4, v5
move v3, p1
:goto_38
if-ge v3, v2, :cond_4b
iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
shr-int/lit8 v6, v3, 0x5
add-int/2addr v6, v1
aget v7, v5, v6
and-int/lit8 v8, v3, 0x1f
shl-int v8, v9, v8
or-int/2addr v7, v8
aput v7, v5, v6
add-int/lit8 v3, v3, 0x1
goto :goto_38
:cond_4b
add-int/lit8 v4, v4, 0x1
goto :goto_31
:cond_4e
return-void
.end method
.method public setRow(ILcom/google/zxing/common/BitArray;)V
.registers 8
invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I
move-result-object v0
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I
iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
mul-int/2addr v3, p1
iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I
iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I
add-int/lit8 v4, v4, 0x1
mul-int/2addr v3, v4
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v2, 0x0
:goto_d
iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I
if-ge v2, v3, :cond_31
const/4 v1, 0x0
:goto_12
iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I
if-ge v1, v3, :cond_29
invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v3
if-eqz v3, :cond_25
const-string/jumbo v3, "X "
:goto_1f
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_12
:cond_25
const-string/jumbo v3, "  "
goto :goto_1f
:cond_29
const/16 v3, 0xa
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, v2, 0x1
goto :goto_d
:cond_31
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method