.class final Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"
.field private final bitMatrix:Lcom/google/zxing/common/BitMatrix;
.field private mirror:Z
.field private parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
.field private parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v0
const/16 v1, 0x15
if-lt v0, v1, :cond_10
and-int/lit8 v1, v0, 0x3
const/4 v2, 0x1
if-eq v1, v2, :cond_15
:cond_10
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v1
throw v1
:cond_15
iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
return-void
.end method
.method private copyBit(III)I
.registers 6
iget-boolean v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror:Z
if-eqz v1, :cond_11
iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v1, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v0
:goto_a
if-eqz v0, :cond_18
shl-int/lit8 v1, p3, 0x1
or-int/lit8 v1, v1, 0x1
:goto_10
return v1
:cond_11
iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v1, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v0
goto :goto_a
:cond_18
shl-int/lit8 v1, p3, 0x1
goto :goto_10
.end method
.method  mirror()V
.registers 5
const/4 v0, 0x0
:goto_1
iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I
move-result v2
if-ge v0, v2, :cond_31
add-int/lit8 v1, v0, 0x1
:goto_b
iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v2
if-ge v1, v2, :cond_2e
iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v2
iget-object v3, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v3, v1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v3
if-eq v2, v3, :cond_2b
iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;->flip(II)V
iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->flip(II)V
:cond_2b
add-int/lit8 v1, v1, 0x1
goto :goto_b
:cond_2e
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_31
return-void
.end method
.method  readCodewords()[B
.registers 20
invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;
move-result-object v8
invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;
move-result-object v16
invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B
move-result v17
invoke-static/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/DataMask;->forReference(I)Lcom/google/zxing/qrcode/decoder/DataMask;
move-result-object v6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v6, v0, v7}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V
invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;
move-result-object v9
const/4 v12, 0x1
invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I
move-result v17
move/from16 v0, v17
new-array v13, v0, [B
const/4 v14, 0x0
const/4 v5, 0x0
const/4 v2, 0x0
add-int/lit8 v11, v7, -0x1
:goto_37
if-lez v11, :cond_92
const/16 v17, 0x6
move/from16 v0, v17
if-ne v11, v0, :cond_41
add-int/lit8 v11, v11, -0x1
:cond_41
const/4 v4, 0x0
:goto_42
if-ge v4, v7, :cond_8d
if-eqz v12, :cond_87
add-int/lit8 v17, v7, -0x1
sub-int v10, v17, v4
:goto_4a
const/4 v3, 0x0
move v15, v14
:goto_4c
const/16 v17, 0x2
move/from16 v0, v17
if-ge v3, v0, :cond_89
sub-int v17, v11, v3
move/from16 v0, v17
invoke-virtual {v9, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v17
if-nez v17, :cond_a0
add-int/lit8 v2, v2, 0x1
shl-int/lit8 v5, v5, 0x1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
move-object/from16 v17, v0
sub-int v18, v11, v3
move-object/from16 v0, v17
move/from16 v1, v18
invoke-virtual {v0, v1, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v17
if-eqz v17, :cond_74
or-int/lit8 v5, v5, 0x1
:cond_74
const/16 v17, 0x8
move/from16 v0, v17
if-ne v2, v0, :cond_a0
add-int/lit8 v14, v15, 0x1
int-to-byte v0, v5
move/from16 v17, v0
aput-byte v17, v13, v15
const/4 v2, 0x0
const/4 v5, 0x0
:goto_83
add-int/lit8 v3, v3, 0x1
move v15, v14
goto :goto_4c
:cond_87
move v10, v4
goto :goto_4a
:cond_89
add-int/lit8 v4, v4, 0x1
move v14, v15
goto :goto_42
:cond_8d
xor-int/lit8 v12, v12, 0x1
add-int/lit8 v11, v11, -0x2
goto :goto_37
:cond_92
invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I
move-result v17
move/from16 v0, v17
if-eq v14, v0, :cond_9f
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v17
throw v17
:cond_9f
return-object v13
:cond_a0
move v14, v15
goto :goto_83
.end method
.method  readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;
.registers 10
const/4 v8, 0x7
const/16 v7, 0x8
iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
if-eqz v6, :cond_a
iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
:goto_9
return-object v6
:cond_a
const/4 v1, 0x0
const/4 v3, 0x0
:goto_c
const/4 v6, 0x6
if-ge v3, v6, :cond_16
invoke-direct {p0, v3, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I
move-result v1
add-int/lit8 v3, v3, 0x1
goto :goto_c
:cond_16
invoke-direct {p0, v8, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I
move-result v1
invoke-direct {p0, v7, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I
move-result v1
invoke-direct {p0, v7, v8, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I
move-result v1
const/4 v4, 0x5
:goto_23
if-ltz v4, :cond_2c
invoke-direct {p0, v7, v4, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I
move-result v1
add-int/lit8 v4, v4, -0x1
goto :goto_23
:cond_2c
iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v0
const/4 v2, 0x0
add-int/lit8 v5, v0, -0x7
add-int/lit8 v4, v0, -0x1
:goto_37
if-lt v4, v5, :cond_40
invoke-direct {p0, v7, v4, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I
move-result v2
add-int/lit8 v4, v4, -0x1
goto :goto_37
:cond_40
add-int/lit8 v3, v0, -0x8
:goto_42
if-ge v3, v0, :cond_4b
invoke-direct {p0, v3, v7, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I
move-result v2
add-int/lit8 v3, v3, 0x1
goto :goto_42
:cond_4b
invoke-static {v1, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
move-result-object v6
iput-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
if-eqz v6, :cond_58
iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
goto :goto_9
:cond_58
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v6
throw v6
.end method
.method  readVersion()Lcom/google/zxing/qrcode/decoder/Version;
.registers 9
iget-object v7, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;
if-eqz v7, :cond_7
iget-object v5, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;
:goto_6
return-object v5
:cond_7
iget-object v7, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v0
add-int/lit8 v7, v0, -0x11
shr-int/lit8 v4, v7, 0x2
const/4 v7, 0x6
if-gt v4, v7, :cond_19
invoke-static {v4}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
move-result-object v5
goto :goto_6
:cond_19
const/4 v6, 0x0
add-int/lit8 v2, v0, -0xb
const/4 v3, 0x5
:goto_1d
if-ltz v3, :cond_2d
add-int/lit8 v1, v0, -0x9
:goto_21
if-lt v1, v2, :cond_2a
invoke-direct {p0, v1, v3, v6}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I
move-result v6
add-int/lit8 v1, v1, -0x1
goto :goto_21
:cond_2a
add-int/lit8 v3, v3, -0x1
goto :goto_1d
:cond_2d
invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;
move-result-object v5
if-eqz v5, :cond_3c
invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I
move-result v7
if-ne v7, v0, :cond_3c
iput-object v5, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;
goto :goto_6
:cond_3c
const/4 v6, 0x0
const/4 v1, 0x5
:goto_3e
if-ltz v1, :cond_4e
add-int/lit8 v3, v0, -0x9
:goto_42
if-lt v3, v2, :cond_4b
invoke-direct {p0, v1, v3, v6}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I
move-result v6
add-int/lit8 v3, v3, -0x1
goto :goto_42
:cond_4b
add-int/lit8 v1, v1, -0x1
goto :goto_3e
:cond_4e
invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;
move-result-object v5
if-eqz v5, :cond_5d
invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I
move-result v7
if-ne v7, v0, :cond_5d
iput-object v5, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;
goto :goto_6
:cond_5d
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v7
throw v7
.end method
.method  remask()V
.registers 4
iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
if-nez v2, :cond_5
:goto_4
return-void
:cond_5
iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B
move-result v2
invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DataMask;->forReference(I)Lcom/google/zxing/qrcode/decoder/DataMask;
move-result-object v0
iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v1
iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;
invoke-virtual {v0, v2, v1}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V
goto :goto_4
.end method
.method  setMirror(Z)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;
iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
iput-boolean p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror:Z
return-void
.end method