.class  Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.super Ljava/lang/Object;
.source "DetectionResultColumn.java"
.field private static final MAX_NEARBY_DISTANCE:I = 0x5
.field private final boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;
.field private final codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/zxing/pdf417/decoder/BoundingBox;
invoke-direct {v0, p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;
invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I
move-result v0
invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I
move-result v1
sub-int/2addr v0, v1
add-int/lit8 v0, v0, 0x1
new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/Codeword;
iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;
return-void
.end method
.method final getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;
.registers 2
iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;
return-object v0
.end method
.method final getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;
.registers 4
iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;
invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I
move-result v1
aget-object v0, v0, v1
return-object v0
.end method
.method final getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;
.registers 6
invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v0
if-eqz v0, :cond_8
move-object v3, v0
:goto_7
return-object v3
:cond_8
const/4 v1, 0x1
:goto_9
const/4 v3, 0x5
if-ge v1, v3, :cond_32
invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I
move-result v3
sub-int v2, v3, v1
if-ltz v2, :cond_1c
iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;
aget-object v0, v3, v2
if-eqz v0, :cond_1c
move-object v3, v0
goto :goto_7
:cond_1c
invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I
move-result v3
add-int v2, v3, v1
iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;
array-length v3, v3
if-ge v2, v3, :cond_2f
iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;
aget-object v0, v3, v2
if-eqz v0, :cond_2f
move-object v3, v0
goto :goto_7
:cond_2f
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_32
const/4 v3, 0x0
goto :goto_7
.end method
.method final getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
.registers 2
iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;
return-object v0
.end method
.method final imageRowToCodewordIndex(I)I
.registers 3
iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;
invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I
move-result v0
sub-int v0, p1, v0
return v0
.end method
.method final setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V
.registers 5
iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;
invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I
move-result v1
aput-object p2, v0, v1
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 15
const/4 v13, 0x1
const/4 v12, 0x0
new-instance v2, Ljava/util/Formatter;
invoke-direct {v2}, Ljava/util/Formatter;-><init>()V
const/4 v6, 0x0
iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;
array-length v4, v0
const/4 v3, 0x0
move v7, v6
:goto_d
if-ge v3, v4, :cond_4e
aget-object v1, v0, v3
if-nez v1, :cond_27
const-string/jumbo v8, "%3d:    |   %n"
new-array v9, v13, [Ljava/lang/Object;
add-int/lit8 v6, v7, 0x1
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v9, v12
invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
:goto_23
add-int/lit8 v3, v3, 0x1
move v7, v6
goto :goto_d
:cond_27
const-string/jumbo v8, "%3d: %3d|%3d%n"
const/4 v9, 0x3
new-array v9, v9, [Ljava/lang/Object;
add-int/lit8 v6, v7, 0x1
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v9, v12
invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I
move-result v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v9, v13
const/4 v10, 0x2
invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I
move-result v11
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
aput-object v11, v9, v10
invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
goto :goto_23
:cond_4e
invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2}, Ljava/util/Formatter;->close()V
return-object v5
.end method