.class public final Lcom/google/zxing/datamatrix/DataMatrixWriter;
.super Ljava/lang/Object;
.source "DataMatrixWriter.java"
.implements Lcom/google/zxing/Writer;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)Lcom/google/zxing/common/BitMatrix;
.registers 8
invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I
move-result v3
invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I
move-result v2
new-instance v4, Lcom/google/zxing/common/BitMatrix;
invoke-direct {v4, v3, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V
invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->clear()V
const/4 v0, 0x0
:goto_11
if-ge v0, v3, :cond_26
const/4 v1, 0x0
:goto_14
if-ge v1, v2, :cond_23
invoke-virtual {p0, v0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B
move-result v5
const/4 v6, 0x1
if-ne v5, v6, :cond_20
invoke-virtual {v4, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V
:cond_20
add-int/lit8 v1, v1, 0x1
goto :goto_14
:cond_23
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_26
return-object v4
.end method
.method private static encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Lcom/google/zxing/common/BitMatrix;
.registers 13
const/4 v9, 0x0
const/4 v8, 0x1
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I
move-result v4
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I
move-result v3
new-instance v0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I
move-result v7
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I
move-result v10
invoke-direct {v0, v7, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V
const/4 v2, 0x0
const/4 v6, 0x0
:goto_19
if-ge v6, v3, :cond_8c
iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I
rem-int v7, v6, v7
if-nez v7, :cond_3a
const/4 v1, 0x0
const/4 v5, 0x0
:goto_23
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I
move-result v7
if-ge v5, v7, :cond_38
rem-int/lit8 v7, v5, 0x2
if-nez v7, :cond_36
move v7, v8
:goto_2e
invoke-virtual {v0, v1, v2, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V
add-int/lit8 v1, v1, 0x1
add-int/lit8 v5, v5, 0x1
goto :goto_23
:cond_36
move v7, v9
goto :goto_2e
:cond_38
add-int/lit8 v2, v2, 0x1
:cond_3a
const/4 v1, 0x0
const/4 v5, 0x0
:goto_3c
if-ge v5, v4, :cond_6b
iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I
rem-int v7, v5, v7
if-nez v7, :cond_49
invoke-virtual {v0, v1, v2, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V
add-int/lit8 v1, v1, 0x1
:cond_49
invoke-virtual {p0, v5, v6}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->getBit(II)Z
move-result v7
invoke-virtual {v0, v1, v2, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V
add-int/lit8 v1, v1, 0x1
iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I
rem-int v7, v5, v7
iget v10, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I
add-int/lit8 v10, v10, -0x1
if-ne v7, v10, :cond_66
rem-int/lit8 v7, v6, 0x2
if-nez v7, :cond_69
move v7, v8
:goto_61
invoke-virtual {v0, v1, v2, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V
add-int/lit8 v1, v1, 0x1
:cond_66
add-int/lit8 v5, v5, 0x1
goto :goto_3c
:cond_69
move v7, v9
goto :goto_61
:cond_6b
add-int/lit8 v2, v2, 0x1
iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I
rem-int v7, v6, v7
iget v10, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I
add-int/lit8 v10, v10, -0x1
if-ne v7, v10, :cond_89
const/4 v1, 0x0
const/4 v5, 0x0
:goto_79
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I
move-result v7
if-ge v5, v7, :cond_87
invoke-virtual {v0, v1, v2, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V
add-int/lit8 v1, v1, 0x1
add-int/lit8 v5, v5, 0x1
goto :goto_79
:cond_87
add-int/lit8 v2, v2, 0x1
:cond_89
add-int/lit8 v6, v6, 0x1
goto :goto_19
:cond_8c
invoke-static {v0}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)Lcom/google/zxing/common/BitMatrix;
move-result-object v7
return-object v7
.end method
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
move-result-object v0
return-object v0
.end method
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
.registers 20
invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
move-result v11
if-eqz v11, :cond_f
new-instance v11, Ljava/lang/IllegalArgumentException;
const-string/jumbo v12, "Found empty contents"
invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v11
:cond_f
sget-object v11, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;
move-object/from16 v0, p2
if-eq v0, v11, :cond_31
new-instance v11, Ljava/lang/IllegalArgumentException;
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v13, "Can only encode DATA_MATRIX, but got "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
move-object/from16 v0, p2
invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v11
:cond_31
if-ltz p3, :cond_35
if-gez p4, :cond_5d
:cond_35
new-instance v11, Ljava/lang/IllegalArgumentException;
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v13, "Requested dimensions are too small: "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
move/from16 v0, p3
invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const/16 v13, 0x78
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v12
move/from16 v0, p4
invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v11
:cond_5d
sget-object v9, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
const/4 v4, 0x0
const/4 v3, 0x0
if-eqz p5, :cond_8a
sget-object v11, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;
move-object/from16 v0, p5
invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
if-eqz v8, :cond_70
move-object v9, v8
:cond_70
sget-object v11, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;
move-object/from16 v0, p5
invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/google/zxing/Dimension;
if-eqz v7, :cond_7d
move-object v4, v7
:cond_7d
sget-object v11, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;
move-object/from16 v0, p5
invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/google/zxing/Dimension;
if-eqz v6, :cond_8a
move-object v3, v6
:cond_8a
invoke-static {p1, v9, v4, v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v11
const/4 v12, 0x1
invoke-static {v11, v9, v4, v3, v12}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
move-result-object v10
invoke-static {v2, v10}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->encodeECC200(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;
move-result-object v1
new-instance v5, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
invoke-virtual {v10}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I
move-result v11
invoke-virtual {v10}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I
move-result v12
invoke-direct {v5, v1, v11, v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;-><init>(Ljava/lang/CharSequence;II)V
invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->place()V
invoke-static {v5, v10}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Lcom/google/zxing/common/BitMatrix;
move-result-object v11
return-object v11
.end method