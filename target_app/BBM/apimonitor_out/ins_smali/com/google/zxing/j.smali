.class public final Lcom/google/zxing/j;
.super Lcom/google/zxing/g;
.source "PlanarYUVLuminanceSource.java"
.field private final c:[B
.field private final d:I
.field private final e:I
.field private final f:I
.field private final g:I
.method public constructor <init>([BIIIIII)V
.registers 10
invoke-direct {p0, p6, p7}, Lcom/google/zxing/g;-><init>(II)V
add-int v0, p4, p6
if-gt v0, p2, :cond_b
add-int v0, p5, p7
if-le v0, p3, :cond_13
:cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Crop rectangle does not fit within image data."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
iput-object p1, p0, Lcom/google/zxing/j;->c:[B
iput p2, p0, Lcom/google/zxing/j;->d:I
iput p3, p0, Lcom/google/zxing/j;->e:I
iput p4, p0, Lcom/google/zxing/j;->f:I
iput p5, p0, Lcom/google/zxing/j;->g:I
return-void
.end method
.method public final a()[B
.registers 8
const/4 v1, 0x0
iget v3, p0, Lcom/google/zxing/g;->a:I
iget v4, p0, Lcom/google/zxing/g;->b:I
iget v0, p0, Lcom/google/zxing/j;->d:I
if-ne v3, v0, :cond_10
iget v0, p0, Lcom/google/zxing/j;->e:I
if-ne v4, v0, :cond_10
iget-object v0, p0, Lcom/google/zxing/j;->c:[B
:goto_f
:cond_f
return-object v0
:cond_10
mul-int v5, v3, v4
new-array v0, v5, [B
iget v2, p0, Lcom/google/zxing/j;->g:I
iget v6, p0, Lcom/google/zxing/j;->d:I
mul-int/2addr v2, v6
iget v6, p0, Lcom/google/zxing/j;->f:I
add-int/2addr v2, v6
iget v6, p0, Lcom/google/zxing/j;->d:I
if-ne v3, v6, :cond_26
iget-object v3, p0, Lcom/google/zxing/j;->c:[B
invoke-static {v3, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_f
:cond_26
iget-object v5, p0, Lcom/google/zxing/j;->c:[B
:goto_28
if-ge v1, v4, :cond_f
mul-int v6, v1, v3
invoke-static {v5, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v6, p0, Lcom/google/zxing/j;->d:I
add-int/2addr v2, v6
add-int/lit8 v1, v1, 0x1
goto :goto_28
.end method
.method public final a(I[B)[B
.registers 7
if-ltz p1, :cond_6
iget v0, p0, Lcom/google/zxing/g;->b:I
if-lt p1, v0, :cond_1b
:cond_6
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Requested row is outside the image: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iget v0, p0, Lcom/google/zxing/g;->a:I
if-eqz p2, :cond_22
array-length v1, p2
if-ge v1, v0, :cond_24
:cond_22
new-array p2, v0, [B
:cond_24
iget v1, p0, Lcom/google/zxing/j;->g:I
add-int/2addr v1, p1
iget v2, p0, Lcom/google/zxing/j;->d:I
mul-int/2addr v1, v2
iget v2, p0, Lcom/google/zxing/j;->f:I
add-int/2addr v1, v2
iget-object v2, p0, Lcom/google/zxing/j;->c:[B
const/4 v3, 0x0
invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object p2
.end method
.method public final b()[I
.registers 14
const/4 v1, 0x0
iget v4, p0, Lcom/google/zxing/g;->a:I
iget v5, p0, Lcom/google/zxing/g;->b:I
mul-int v0, v4, v5
new-array v6, v0, [I
iget-object v7, p0, Lcom/google/zxing/j;->c:[B
iget v0, p0, Lcom/google/zxing/j;->g:I
iget v2, p0, Lcom/google/zxing/j;->d:I
mul-int/2addr v0, v2
iget v2, p0, Lcom/google/zxing/j;->f:I
add-int/2addr v0, v2
move v2, v1
move v3, v0
:goto_15
if-ge v2, v5, :cond_37
mul-int v8, v2, v4
move v0, v1
:goto_1a
if-ge v0, v4, :cond_30
add-int v9, v3, v0
aget-byte v9, v7, v9
and-int/lit16 v9, v9, 0xff
add-int v10, v8, v0
const/high16 v11, -0x100
const v12, 0x10101
mul-int/2addr v9, v12
or-int/2addr v9, v11
aput v9, v6, v10
add-int/lit8 v0, v0, 0x1
goto :goto_1a
:cond_30
iget v0, p0, Lcom/google/zxing/j;->d:I
add-int/2addr v3, v0
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_15
:cond_37
return-object v6
.end method