.class public final Lcom/google/zxing/b/a;
.super Ljava/lang/Object;
.source "BitArray.java"
.field public a:[I
.field public b:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/google/zxing/b/a;->b:I
const/4 v0, 0x1
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/b/a;->a:[I
return-void
.end method
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/b/a;->b:I
invoke-static {p1}, Lcom/google/zxing/b/a;->f(I)[I
move-result-object v0
iput-object v0, p0, Lcom/google/zxing/b/a;->a:[I
return-void
.end method
.method private e(I)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/zxing/b/a;->a:[I
array-length v0, v0
shl-int/lit8 v0, v0, 0x5
if-le p1, v0, :cond_16
invoke-static {p1}, Lcom/google/zxing/b/a;->f(I)[I
move-result-object v0
iget-object v1, p0, Lcom/google/zxing/b/a;->a:[I
iget-object v2, p0, Lcom/google/zxing/b/a;->a:[I
array-length v2, v2
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/google/zxing/b/a;->a:[I
:cond_16
return-void
.end method
.method private static f(I)[I
.registers 2
add-int/lit8 v0, p0, 0x1f
shr-int/lit8 v0, v0, 0x5
new-array v0, v0, [I
return-object v0
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/zxing/b/a;->b:I
add-int/lit8 v0, v0, 0x7
shr-int/lit8 v0, v0, 0x3
return v0
.end method
.method public final a(I[BI)V
.registers 11
const/4 v2, 0x0
move v4, v2
move v0, p1
:goto_3
if-ge v4, p3, :cond_26
move v1, v2
move v3, v0
move v0, v2
:goto_8
const/16 v5, 0x8
if-ge v1, v5, :cond_1c
invoke-virtual {p0, v3}, Lcom/google/zxing/b/a;->a(I)Z
move-result v5
if-eqz v5, :cond_17
const/4 v5, 0x1
rsub-int/lit8 v6, v1, 0x7
shl-int/2addr v5, v6
or-int/2addr v0, v5
:cond_17
add-int/lit8 v3, v3, 0x1
add-int/lit8 v1, v1, 0x1
goto :goto_8
:cond_1c
add-int/lit8 v1, v4, 0x0
int-to-byte v0, v0
aput-byte v0, p2, v1
add-int/lit8 v0, v4, 0x1
move v4, v0
move v0, v3
goto :goto_3
:cond_26
return-void
.end method
.method public final a(Lcom/google/zxing/b/a;)V
.registers 5
iget v1, p1, Lcom/google/zxing/b/a;->b:I
iget v0, p0, Lcom/google/zxing/b/a;->b:I
add-int/2addr v0, v1
invoke-direct {p0, v0}, Lcom/google/zxing/b/a;->e(I)V
const/4 v0, 0x0
:goto_9
if-ge v0, v1, :cond_15
invoke-virtual {p1, v0}, Lcom/google/zxing/b/a;->a(I)Z
move-result v2
invoke-virtual {p0, v2}, Lcom/google/zxing/b/a;->a(Z)V
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_15
return-void
.end method
.method public final a(Z)V
.registers 7
iget v0, p0, Lcom/google/zxing/b/a;->b:I
add-int/lit8 v0, v0, 0x1
invoke-direct {p0, v0}, Lcom/google/zxing/b/a;->e(I)V
if-eqz p1, :cond_1a
iget-object v0, p0, Lcom/google/zxing/b/a;->a:[I
iget v1, p0, Lcom/google/zxing/b/a;->b:I
shr-int/lit8 v1, v1, 0x5
aget v2, v0, v1
const/4 v3, 0x1
iget v4, p0, Lcom/google/zxing/b/a;->b:I
and-int/lit8 v4, v4, 0x1f
shl-int/2addr v3, v4
or-int/2addr v2, v3
aput v2, v0, v1
:cond_1a
iget v0, p0, Lcom/google/zxing/b/a;->b:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/zxing/b/a;->b:I
return-void
.end method
.method public final a(I)Z
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Lcom/google/zxing/b/a;->a:[I
shr-int/lit8 v2, p1, 0x5
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
.method public final a(II)Z
.registers 14
const/16 v5, 0x1f
const/4 v1, 0x1
const/4 v2, 0x0
if-ge p2, p1, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_c
if-ne p2, p1, :cond_10
move v0, v1
:goto_f
return v0
:cond_10
add-int/lit8 v8, p2, -0x1
shr-int/lit8 v7, p1, 0x5
shr-int/lit8 v9, v8, 0x5
move v6, v7
:goto_17
if-gt v6, v9, :cond_42
if-le v6, v7, :cond_2d
move v0, v2
:goto_1c
if-ge v6, v9, :cond_30
move v4, v5
:goto_1f
if-nez v0, :cond_34
if-ne v4, v5, :cond_34
const/4 v0, -0x1
:cond_24
iget-object v3, p0, Lcom/google/zxing/b/a;->a:[I
aget v3, v3, v6
and-int/2addr v0, v3
if-eqz v0, :cond_3e
move v0, v2
goto :goto_f
:cond_2d
and-int/lit8 v0, p1, 0x1f
goto :goto_1c
:cond_30
and-int/lit8 v3, v8, 0x1f
move v4, v3
goto :goto_1f
:cond_34
move v3, v0
move v0, v2
:goto_36
if-gt v3, v4, :cond_24
shl-int v10, v1, v3
or-int/2addr v0, v10
add-int/lit8 v3, v3, 0x1
goto :goto_36
:cond_3e
add-int/lit8 v0, v6, 0x1
move v6, v0
goto :goto_17
:cond_42
move v0, v1
goto :goto_f
.end method
.method public final b()V
.registers 8
iget-object v0, p0, Lcom/google/zxing/b/a;->a:[I
array-length v0, v0
new-array v1, v0, [I
iget v2, p0, Lcom/google/zxing/b/a;->b:I
const/4 v0, 0x0
:goto_8
if-ge v0, v2, :cond_22
sub-int v3, v2, v0
add-int/lit8 v3, v3, -0x1
invoke-virtual {p0, v3}, Lcom/google/zxing/b/a;->a(I)Z
move-result v3
if-eqz v3, :cond_1f
shr-int/lit8 v3, v0, 0x5
aget v4, v1, v3
const/4 v5, 0x1
and-int/lit8 v6, v0, 0x1f
shl-int/2addr v5, v6
or-int/2addr v4, v5
aput v4, v1, v3
:cond_1f
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_22
iput-object v1, p0, Lcom/google/zxing/b/a;->a:[I
return-void
.end method
.method public final b(I)V
.registers 7
iget-object v0, p0, Lcom/google/zxing/b/a;->a:[I
shr-int/lit8 v1, p1, 0x5
aget v2, v0, v1
const/4 v3, 0x1
and-int/lit8 v4, p1, 0x1f
shl-int/2addr v3, v4
or-int/2addr v2, v3
aput v2, v0, v1
return-void
.end method
.method public final b(II)V
.registers 5
const/4 v1, 0x1
if-ltz p2, :cond_7
const/16 v0, 0x20
if-le p2, v0, :cond_f
:cond_7
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Num bits must be between 0 and 32"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
iget v0, p0, Lcom/google/zxing/b/a;->b:I
add-int/2addr v0, p2
invoke-direct {p0, v0}, Lcom/google/zxing/b/a;->e(I)V
:goto_15
if-lez p2, :cond_28
add-int/lit8 v0, p2, -0x1
shr-int v0, p1, v0
and-int/lit8 v0, v0, 0x1
if-ne v0, v1, :cond_26
move v0, v1
:goto_20
invoke-virtual {p0, v0}, Lcom/google/zxing/b/a;->a(Z)V
add-int/lit8 p2, p2, -0x1
goto :goto_15
:cond_26
const/4 v0, 0x0
goto :goto_20
:cond_28
return-void
.end method
.method public final c(I)I
.registers 6
iget v0, p0, Lcom/google/zxing/b/a;->b:I
if-lt p1, v0, :cond_7
iget v0, p0, Lcom/google/zxing/b/a;->b:I
:goto_6
:cond_6
return v0
:cond_7
shr-int/lit8 v0, p1, 0x5
iget-object v1, p0, Lcom/google/zxing/b/a;->a:[I
aget v1, v1, v0
const/4 v2, 0x1
and-int/lit8 v3, p1, 0x1f
shl-int/2addr v2, v3
add-int/lit8 v2, v2, -0x1
xor-int/lit8 v2, v2, -0x1
and-int/2addr v1, v2
:goto_16
if-nez v1, :cond_27
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lcom/google/zxing/b/a;->a:[I
array-length v1, v1
if-ne v0, v1, :cond_22
iget v0, p0, Lcom/google/zxing/b/a;->b:I
goto :goto_6
:cond_22
iget-object v1, p0, Lcom/google/zxing/b/a;->a:[I
aget v1, v1, v0
goto :goto_16
:cond_27
shl-int/lit8 v0, v0, 0x5
invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I
move-result v1
add-int/2addr v0, v1
iget v1, p0, Lcom/google/zxing/b/a;->b:I
if-le v0, v1, :cond_6
iget v0, p0, Lcom/google/zxing/b/a;->b:I
goto :goto_6
.end method
.method public final d(I)I
.registers 6
iget v0, p0, Lcom/google/zxing/b/a;->b:I
if-lt p1, v0, :cond_7
iget v0, p0, Lcom/google/zxing/b/a;->b:I
:goto_6
:cond_6
return v0
:cond_7
shr-int/lit8 v0, p1, 0x5
iget-object v1, p0, Lcom/google/zxing/b/a;->a:[I
aget v1, v1, v0
xor-int/lit8 v1, v1, -0x1
const/4 v2, 0x1
and-int/lit8 v3, p1, 0x1f
shl-int/2addr v2, v3
add-int/lit8 v2, v2, -0x1
xor-int/lit8 v2, v2, -0x1
and-int/2addr v1, v2
:goto_18
if-nez v1, :cond_2b
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lcom/google/zxing/b/a;->a:[I
array-length v1, v1
if-ne v0, v1, :cond_24
iget v0, p0, Lcom/google/zxing/b/a;->b:I
goto :goto_6
:cond_24
iget-object v1, p0, Lcom/google/zxing/b/a;->a:[I
aget v1, v1, v0
xor-int/lit8 v1, v1, -0x1
goto :goto_18
:cond_2b
shl-int/lit8 v0, v0, 0x5
invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I
move-result v1
add-int/2addr v0, v1
iget v1, p0, Lcom/google/zxing/b/a;->b:I
if-le v0, v1, :cond_6
iget v0, p0, Lcom/google/zxing/b/a;->b:I
goto :goto_6
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v2, Ljava/lang/StringBuilder;
iget v0, p0, Lcom/google/zxing/b/a;->b:I
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v0, 0x0
:goto_8
iget v1, p0, Lcom/google/zxing/b/a;->b:I
if-ge v0, v1, :cond_26
and-int/lit8 v1, v0, 0x7
if-nez v1, :cond_15
const/16 v1, 0x20
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_15
invoke-virtual {p0, v0}, Lcom/google/zxing/b/a;->a(I)Z
move-result v1
if-eqz v1, :cond_23
const/16 v1, 0x58
:goto_1d
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_23
const/16 v1, 0x2e
goto :goto_1d
:cond_26
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method