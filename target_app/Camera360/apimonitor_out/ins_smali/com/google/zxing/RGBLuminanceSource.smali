.class public final Lcom/google/zxing/RGBLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "RGBLuminanceSource.java"
.field private final dataHeight:I
.field private final dataWidth:I
.field private final left:I
.field private final luminances:[B
.field private final top:I
.method public constructor <init>(II[I)V
.registers 14
const/4 v7, 0x0
invoke-direct {p0, p1, p2}, Lcom/google/zxing/LuminanceSource;-><init>(II)V
iput p1, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I
iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I
iput v7, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I
iput v7, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I
mul-int v7, p1, p2
new-array v7, v7, [B
iput-object v7, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B
const/4 v6, 0x0
:goto_13
if-ge v6, p2, :cond_47
mul-int v2, v6, p1
const/4 v5, 0x0
:goto_18
if-ge v5, p1, :cond_44
add-int v7, v2, v5
aget v3, p3, v7
shr-int/lit8 v7, v3, 0x10
and-int/lit16 v4, v7, 0xff
shr-int/lit8 v7, v3, 0x8
and-int/lit16 v1, v7, 0xff
and-int/lit16 v0, v3, 0xff
if-ne v4, v1, :cond_36
if-ne v1, v0, :cond_36
iget-object v7, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B
add-int v8, v2, v5
int-to-byte v9, v4
aput-byte v9, v7, v8
:goto_33
add-int/lit8 v5, v5, 0x1
goto :goto_18
:cond_36
iget-object v7, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B
add-int v8, v2, v5
add-int v9, v4, v1
add-int/2addr v9, v1
add-int/2addr v9, v0
shr-int/lit8 v9, v9, 0x2
int-to-byte v9, v9
aput-byte v9, v7, v8
goto :goto_33
:cond_44
add-int/lit8 v6, v6, 0x1
goto :goto_13
:cond_47
return-void
.end method
.method private constructor <init>([BIIIIII)V
.registers 10
invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V
add-int v0, p4, p6
if-gt v0, p2, :cond_b
add-int v0, p5, p7
if-le v0, p3, :cond_14
:cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "Crop rectangle does not fit within image data."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iput-object p1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B
iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I
iput p3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I
iput p4, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I
iput p5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I
return-void
.end method
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
.registers 13
new-instance v0, Lcom/google/zxing/RGBLuminanceSource;
iget-object v1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B
iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I
iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I
iget v4, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I
add-int/2addr v4, p1
iget v5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I
add-int/2addr v5, p2
move v6, p3
move v7, p4
invoke-direct/range {v0 .. v7}, Lcom/google/zxing/RGBLuminanceSource;-><init>([BIIIIII)V
return-object v0
.end method
.method public getMatrix()[B
.registers 11
invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I
move-result v6
invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I
move-result v1
iget v8, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I
if-ne v6, v8, :cond_13
iget v8, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I
if-ne v1, v8, :cond_13
iget-object v3, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B
:cond_12
:goto_12
return-object v3
:cond_13
mul-int v0, v6, v1
new-array v3, v0, [B
iget v8, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I
iget v9, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I
mul-int/2addr v8, v9
iget v9, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I
add-int v2, v8, v9
iget v8, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I
if-ne v6, v8, :cond_2b
iget-object v8, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B
const/4 v9, 0x0
invoke-static {v8, v2, v3, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_12
:cond_2b
iget-object v5, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B
const/4 v7, 0x0
:goto_2e
if-ge v7, v1, :cond_12
mul-int v4, v7, v6
invoke-static {v5, v2, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v8, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I
add-int/2addr v2, v8
add-int/lit8 v7, v7, 0x1
goto :goto_2e
.end method
.method public getRow(I[B)[B
.registers 8
if-ltz p1, :cond_8
invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I
move-result v2
if-lt p1, v2, :cond_22
:cond_8
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "Requested row is outside the image: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_22
invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I
move-result v1
if-eqz p2, :cond_2b
array-length v2, p2
if-ge v2, v1, :cond_2d
:cond_2b
new-array p2, v1, [B
:cond_2d
iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I
add-int/2addr v2, p1
iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I
mul-int/2addr v2, v3
iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I
add-int v0, v2, v3
iget-object v2, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B
const/4 v3, 0x0
invoke-static {v2, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object p2
.end method
.method public isCropSupported()Z
.registers 2
const/4 v0, 0x1
return v0
.end method