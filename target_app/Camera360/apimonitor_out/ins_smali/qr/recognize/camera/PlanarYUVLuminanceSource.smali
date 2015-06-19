.class public final Lqr/recognize/camera/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"
.field private final dataHeight:I
.field private final dataWidth:I
.field private final left:I
.field private final top:I
.field private final yuvData:[B
.method public constructor <init>([BIIIIII)V
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
iput-object p1, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->yuvData:[B
iput p2, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->dataWidth:I
iput p3, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->dataHeight:I
iput p4, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->left:I
iput p5, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->top:I
return-void
.end method
.method public getMatrix()[B
.registers 11
invoke-virtual {p0}, Lqr/recognize/camera/PlanarYUVLuminanceSource;->getWidth()I
move-result v5
invoke-virtual {p0}, Lqr/recognize/camera/PlanarYUVLuminanceSource;->getHeight()I
move-result v1
iget v8, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->dataWidth:I
if-ne v5, v8, :cond_13
iget v8, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->dataHeight:I
if-ne v1, v8, :cond_13
iget-object v3, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->yuvData:[B
:cond_12
:goto_12
return-object v3
:cond_13
mul-int v0, v5, v1
new-array v3, v0, [B
iget v8, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->top:I
iget v9, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->dataWidth:I
mul-int/2addr v8, v9
iget v9, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->left:I
add-int v2, v8, v9
iget v8, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->dataWidth:I
if-ne v5, v8, :cond_2b
iget-object v8, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->yuvData:[B
const/4 v9, 0x0
invoke-static {v8, v2, v3, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_12
:cond_2b
iget-object v7, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->yuvData:[B
const/4 v6, 0x0
:goto_2e
if-ge v6, v1, :cond_12
mul-int v4, v6, v5
invoke-static {v7, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v8, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->dataWidth:I
add-int/2addr v2, v8
add-int/lit8 v6, v6, 0x1
goto :goto_2e
.end method
.method public getRow(I[B)[B
.registers 8
if-ltz p1, :cond_8
invoke-virtual {p0}, Lqr/recognize/camera/PlanarYUVLuminanceSource;->getHeight()I
move-result v2
if-lt p1, v2, :cond_1e
:cond_8
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Requested row is outside the image: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_1e
invoke-virtual {p0}, Lqr/recognize/camera/PlanarYUVLuminanceSource;->getWidth()I
move-result v1
if-eqz p2, :cond_27
array-length v2, p2
if-ge v2, v1, :cond_29
:cond_27
new-array p2, v1, [B
:cond_29
iget v2, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->top:I
add-int/2addr v2, p1
iget v3, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->dataWidth:I
mul-int/2addr v2, v3
iget v3, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->left:I
add-int v0, v2, v3
iget-object v2, p0, Lqr/recognize/camera/PlanarYUVLuminanceSource;->yuvData:[B
const/4 v3, 0x0
invoke-static {v2, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object p2
.end method
.method public isCropSupported()Z
.registers 2
const/4 v0, 0x1
return v0
.end method