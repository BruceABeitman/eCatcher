.class final Lcom/google/zxing/pdf417/decoder/DetectionResult;
.super Ljava/lang/Object;
.source "DetectionResult.java"
.field private static final ADJUST_ROW_NUMBER_SKIP:I = 0x2
.field private final barcodeColumnCount:I
.field private final barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
.field private boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;
.field private final detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I
move-result v0
iput v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;
iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
add-int/lit8 v0, v0, 0x2
new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
return-void
.end method
.method private adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
.registers 3
if-eqz p1, :cond_9
check-cast p1, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
invoke-virtual {p1, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I
:cond_9
return-void
.end method
.method private static adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z
.registers 5
const/4 v0, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return v0
:cond_4
invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z
move-result v1
if-eqz v1, :cond_3
invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I
move-result v1
invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I
move-result v2
if-ne v1, v2, :cond_3
invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V
const/4 v0, 0x1
goto :goto_3
.end method
.method private static adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I
.registers 5
if-nez p2, :cond_4
move v0, p1
:goto_3
return v0
:cond_4
invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z
move-result v1
if-nez v1, :cond_14
invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z
move-result v1
if-eqz v1, :cond_16
invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V
const/4 p1, 0x0
:goto_14
:cond_14
move v0, p1
goto :goto_3
:cond_16
add-int/lit8 p1, p1, 0x1
goto :goto_14
.end method
.method private adjustRowNumbers()I
.registers 6
invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersByRow()I
move-result v3
if-nez v3, :cond_8
const/4 v3, 0x0
:cond_7
return v3
:cond_8
const/4 v0, 0x1
:goto_9
iget v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
add-int/lit8 v4, v4, 0x1
if-ge v0, v4, :cond_7
iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aget-object v4, v4, v0
invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v1
const/4 v2, 0x0
:goto_18
array-length v4, v1
if-ge v2, v4, :cond_2e
aget-object v4, v1, v2
if-nez v4, :cond_22
:goto_1f
:cond_1f
add-int/lit8 v2, v2, 0x1
goto :goto_18
:cond_22
aget-object v4, v1, v2
invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z
move-result v4
if-nez v4, :cond_1f
invoke-direct {p0, v0, v2, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V
goto :goto_1f
:cond_2e
add-int/lit8 v0, v0, 0x1
goto :goto_9
.end method
.method private adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V
.registers 15
const/4 v10, 0x1
aget-object v1, p3, p2
iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
add-int/lit8 v9, p1, -0x1
aget-object v8, v8, v9
invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v7
move-object v4, v7
iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
add-int/lit8 v9, p1, 0x1
aget-object v8, v8, v9
if-eqz v8, :cond_20
iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
add-int/lit8 v9, p1, 0x1
aget-object v8, v8, v9
invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v4
:cond_20
const/16 v8, 0xe
new-array v6, v8, [Lcom/google/zxing/pdf417/decoder/Codeword;
const/4 v8, 0x2
aget-object v9, v7, p2
aput-object v9, v6, v8
const/4 v8, 0x3
aget-object v9, v4, p2
aput-object v9, v6, v8
if-lez p2, :cond_45
const/4 v8, 0x0
add-int/lit8 v9, p2, -0x1
aget-object v9, p3, v9
aput-object v9, v6, v8
const/4 v8, 0x4
add-int/lit8 v9, p2, -0x1
aget-object v9, v7, v9
aput-object v9, v6, v8
const/4 v8, 0x5
add-int/lit8 v9, p2, -0x1
aget-object v9, v4, v9
aput-object v9, v6, v8
:cond_45
if-le p2, v10, :cond_5f
const/16 v8, 0x8
add-int/lit8 v9, p2, -0x2
aget-object v9, p3, v9
aput-object v9, v6, v8
const/16 v8, 0xa
add-int/lit8 v9, p2, -0x2
aget-object v9, v7, v9
aput-object v9, v6, v8
const/16 v8, 0xb
add-int/lit8 v9, p2, -0x2
aget-object v9, v4, v9
aput-object v9, v6, v8
:cond_5f
array-length v8, p3
add-int/lit8 v8, v8, -0x1
if-ge p2, v8, :cond_78
add-int/lit8 v8, p2, 0x1
aget-object v8, p3, v8
aput-object v8, v6, v10
const/4 v8, 0x6
add-int/lit8 v9, p2, 0x1
aget-object v9, v7, v9
aput-object v9, v6, v8
const/4 v8, 0x7
add-int/lit8 v9, p2, 0x1
aget-object v9, v4, v9
aput-object v9, v6, v8
:cond_78
array-length v8, p3
add-int/lit8 v8, v8, -0x2
if-ge p2, v8, :cond_95
const/16 v8, 0x9
add-int/lit8 v9, p2, 0x2
aget-object v9, p3, v9
aput-object v9, v6, v8
const/16 v8, 0xc
add-int/lit8 v9, p2, 0x2
aget-object v9, v7, v9
aput-object v9, v6, v8
const/16 v8, 0xd
add-int/lit8 v9, p2, 0x2
aget-object v9, v4, v9
aput-object v9, v6, v8
:cond_95
move-object v0, v6
array-length v3, v0
const/4 v2, 0x0
:goto_98
if-ge v2, v3, :cond_a2
aget-object v5, v0, v2
invoke-static {v1, v5}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z
move-result v8
if-eqz v8, :cond_a3
:cond_a2
return-void
:cond_a3
add-int/lit8 v2, v2, 0x1
goto :goto_98
.end method
.method private adjustRowNumbersByRow()I
.registers 3
invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromBothRI()V
invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromLRI()I
move-result v0
invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromRRI()I
move-result v1
add-int/2addr v1, v0
return v1
.end method
.method private adjustRowNumbersFromBothRI()V
.registers 9
const/4 v7, 0x0
iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aget-object v5, v5, v7
if-eqz v5, :cond_11
iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
add-int/lit8 v6, v6, 0x1
aget-object v5, v5, v6
if-nez v5, :cond_12
:cond_11
return-void
:cond_12
iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aget-object v5, v5, v7
invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v0
iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
add-int/lit8 v6, v6, 0x1
aget-object v5, v5, v6
invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v1
const/4 v4, 0x0
:goto_27
array-length v5, v0
if-ge v4, v5, :cond_11
aget-object v5, v0, v4
if-eqz v5, :cond_6f
aget-object v5, v1, v4
if-eqz v5, :cond_6f
aget-object v5, v0, v4
invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I
move-result v5
aget-object v6, v1, v4
invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I
move-result v6
if-ne v5, v6, :cond_6f
const/4 v2, 0x1
:goto_41
iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
if-gt v2, v5, :cond_6f
iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aget-object v5, v5, v2
invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v5
aget-object v3, v5, v4
if-nez v3, :cond_54
:goto_51
:cond_51
add-int/lit8 v2, v2, 0x1
goto :goto_41
:cond_54
aget-object v5, v0, v4
invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I
move-result v5
invoke-virtual {v3, v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V
invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z
move-result v5
if-nez v5, :cond_51
iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aget-object v5, v5, v2
invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v5
const/4 v6, 0x0
aput-object v6, v5, v4
goto :goto_51
:cond_6f
add-int/lit8 v4, v4, 0x1
goto :goto_27
.end method
.method private adjustRowNumbersFromLRI()I
.registers 10
const/4 v7, 0x0
iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aget-object v8, v8, v7
if-nez v8, :cond_9
move v6, v7
:cond_8
return v6
:cond_9
const/4 v6, 0x0
iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aget-object v7, v8, v7
invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v2
const/4 v3, 0x0
:goto_13
array-length v7, v2
if-ge v3, v7, :cond_8
aget-object v7, v2, v3
if-nez v7, :cond_1d
:cond_1a
add-int/lit8 v3, v3, 0x1
goto :goto_13
:cond_1d
aget-object v7, v2, v3
invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I
move-result v5
const/4 v4, 0x0
const/4 v0, 0x1
:goto_25
iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
add-int/lit8 v7, v7, 0x1
if-ge v0, v7, :cond_1a
const/4 v7, 0x2
if-ge v4, v7, :cond_1a
iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aget-object v7, v7, v0
invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v7
aget-object v1, v7, v3
if-eqz v1, :cond_46
invoke-static {v5, v4, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I
move-result v4
invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z
move-result v7
if-nez v7, :cond_46
add-int/lit8 v6, v6, 0x1
:cond_46
add-int/lit8 v0, v0, 0x1
goto :goto_25
.end method
.method private adjustRowNumbersFromRRI()I
.registers 10
iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
iget v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
add-int/lit8 v8, v8, 0x1
aget-object v7, v7, v8
if-nez v7, :cond_c
const/4 v6, 0x0
:cond_b
return v6
:cond_c
const/4 v6, 0x0
iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
iget v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
add-int/lit8 v8, v8, 0x1
aget-object v7, v7, v8
invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v2
const/4 v3, 0x0
:goto_1a
array-length v7, v2
if-ge v3, v7, :cond_b
aget-object v7, v2, v3
if-nez v7, :cond_24
:cond_21
add-int/lit8 v3, v3, 0x1
goto :goto_1a
:cond_24
aget-object v7, v2, v3
invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I
move-result v5
const/4 v4, 0x0
iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
add-int/lit8 v0, v7, 0x1
:goto_2f
if-lez v0, :cond_21
const/4 v7, 0x2
if-ge v4, v7, :cond_21
iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aget-object v7, v7, v0
invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v7
aget-object v1, v7, v3
if-eqz v1, :cond_4c
invoke-static {v5, v4, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I
move-result v4
invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z
move-result v7
if-nez v7, :cond_4c
add-int/lit8 v6, v6, 0x1
:cond_4c
add-int/lit8 v0, v0, -0x1
goto :goto_2f
.end method
.method  getBarcodeColumnCount()I
.registers 2
iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
return v0
.end method
.method  getBarcodeECLevel()I
.registers 2
iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I
move-result v0
return v0
.end method
.method  getBarcodeRowCount()I
.registers 2
iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I
move-result v0
return v0
.end method
.method  getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;
.registers 2
iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;
return-object v0
.end method
.method  getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.registers 3
iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aget-object v0, v0, p1
return-object v0
.end method
.method  getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.registers 5
iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-direct {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
iget v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
add-int/lit8 v3, v3, 0x1
aget-object v2, v2, v3
invoke-direct {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
const/16 v1, 0x3a0
:cond_15
move v0, v1
invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers()I
move-result v1
if-lez v1, :cond_1e
if-lt v1, v0, :cond_15
:cond_1e
iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
return-object v2
.end method
.method public setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;
return-void
.end method
.method  setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
.registers 4
iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aput-object p2, v0, p1
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 12
const/4 v10, 0x1
const/4 v9, 0x0
iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aget-object v5, v6, v9
if-nez v5, :cond_10
iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
add-int/lit8 v7, v7, 0x1
aget-object v5, v6, v7
:cond_10
new-instance v3, Ljava/util/Formatter;
invoke-direct {v3}, Ljava/util/Formatter;-><init>()V
const/4 v2, 0x0
:goto_16
invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v6
array-length v6, v6
if-ge v2, v6, :cond_81
const-string/jumbo v6, "CW %3d:"
new-array v7, v10, [Ljava/lang/Object;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v7, v9
invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
const/4 v0, 0x0
:goto_2c
iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I
add-int/lit8 v6, v6, 0x2
if-ge v0, v6, :cond_76
iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aget-object v6, v6, v0
if-nez v6, :cond_43
const-string/jumbo v6, "    |   "
new-array v7, v9, [Ljava/lang/Object;
invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
:goto_40
add-int/lit8 v0, v0, 0x1
goto :goto_2c
:cond_43
iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
aget-object v6, v6, v0
invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
move-result-object v6
aget-object v1, v6, v2
if-nez v1, :cond_58
const-string/jumbo v6, "    |   "
new-array v7, v9, [Ljava/lang/Object;
invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
goto :goto_40
:cond_58
const-string/jumbo v6, " %3d|%3d"
const/4 v7, 0x2
new-array v7, v7, [Ljava/lang/Object;
invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I
move-result v8
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v7, v9
invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I
move-result v8
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v7, v10
invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
goto :goto_40
:cond_76
const-string/jumbo v6, "%n"
new-array v7, v9, [Ljava/lang/Object;
invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
add-int/lit8 v2, v2, 0x1
goto :goto_16
:cond_81
invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3}, Ljava/util/Formatter;->close()V
return-object v4
.end method