.class public final Lcom/google/zxing/BinaryBitmap;
.super Ljava/lang/Object;
.source "BinaryBitmap.java"
.field private final binarizer:Lcom/google/zxing/Binarizer;
.field private matrix:Lcom/google/zxing/common/BitMatrix;
.method public constructor <init>(Lcom/google/zxing/Binarizer;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "Binarizer must be non-null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;
return-void
.end method
.method public crop(IIII)Lcom/google/zxing/BinaryBitmap;
.registers 8
iget-object v1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;
invoke-virtual {v1}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;
move-result-object v1
invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/zxing/LuminanceSource;->crop(IIII)Lcom/google/zxing/LuminanceSource;
move-result-object v0
new-instance v1, Lcom/google/zxing/BinaryBitmap;
iget-object v2, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;
invoke-virtual {v2, v0}, Lcom/google/zxing/Binarizer;->createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
move-result-object v2
invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
return-object v1
.end method
.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
.registers 2
iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;
if-nez v0, :cond_c
iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;
invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
move-result-object v0
iput-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;
:cond_c
iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;
return-object v0
.end method
.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
.registers 4
iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;
invoke-virtual {v0, p1, p2}, Lcom/google/zxing/Binarizer;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
move-result-object v0
return-object v0
.end method
.method public getHeight()I
.registers 2
iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;
invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->getHeight()I
move-result v0
return v0
.end method
.method public getWidth()I
.registers 2
iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;
invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->getWidth()I
move-result v0
return v0
.end method
.method public isCropSupported()Z
.registers 2
iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;
invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;
move-result-object v0
invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->isCropSupported()Z
move-result v0
return v0
.end method
.method public isRotateSupported()Z
.registers 2
iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;
invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;
move-result-object v0
invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->isRotateSupported()Z
move-result v0
return v0
.end method
.method public rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;
.registers 4
iget-object v1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;
invoke-virtual {v1}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;
move-result-object v0
new-instance v1, Lcom/google/zxing/BinaryBitmap;
iget-object v2, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;
invoke-virtual {v2, v0}, Lcom/google/zxing/Binarizer;->createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
move-result-object v2
invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
return-object v1
.end method
.method public rotateCounterClockwise45()Lcom/google/zxing/BinaryBitmap;
.registers 4
iget-object v1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;
invoke-virtual {v1}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;
move-result-object v0
new-instance v1, Lcom/google/zxing/BinaryBitmap;
iget-object v2, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;
invoke-virtual {v2, v0}, Lcom/google/zxing/Binarizer;->createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
move-result-object v2
invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
return-object v1
.end method
.method public toString()Ljava/lang/String;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->toString()Ljava/lang/String;
:try_end_7
.catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_7} :catch_9
move-result-object v1
:goto_8
return-object v1
:catch_9
move-exception v0
const-string/jumbo v1, ""
goto :goto_8
.end method