.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;
invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
return-void
.end method
.method private correctErrors([BI)V
.registers 9
array-length v3, p1
new-array v0, v3, [I
const/4 v1, 0x0
:goto_4
if-ge v1, v3, :cond_f
aget-byte v5, p1, v1
and-int/lit16 v5, v5, 0xff
aput v5, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_f
array-length v5, p1
sub-int v4, v5, p2
:try_start_12
iget-object v5, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
invoke-virtual {v5, v0, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
:try_end_17
.catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_12 .. :try_end_17} :catch_22
const/4 v1, 0x0
:goto_18
if-ge v1, p2, :cond_28
aget v5, v0, v1
int-to-byte v5, v5
aput-byte v5, p1, v1
add-int/lit8 v1, v1, 0x1
goto :goto_18
:catch_22
move-exception v2
invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;
move-result-object v5
throw v5
:cond_28
return-void
.end method
.method private decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
.registers 20
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;
move-result-object v15
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
move-result-object v6
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readCodewords()[B
move-result-object v3
invoke-static {v3, v15, v6}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
move-result-object v5
const/4 v14, 0x0
move-object v1, v5
array-length v9, v1
const/4 v8, 0x0
:goto_18
if-ge v8, v9, :cond_25
aget-object v4, v1, v8
invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I
move-result v16
add-int v14, v14, v16
add-int/lit8 v8, v8, 0x1
goto :goto_18
:cond_25
new-array v11, v14, [B
const/4 v12, 0x0
move-object v1, v5
array-length v9, v1
const/4 v8, 0x0
:goto_2b
if-ge v8, v9, :cond_4e
aget-object v4, v1, v8
invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getCodewords()[B
move-result-object v2
invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I
move-result v10
move-object/from16 v0, p0
invoke-direct {v0, v2, v10}, Lcom/google/zxing/qrcode/decoder/Decoder;->correctErrors([BI)V
const/4 v7, 0x0
move v13, v12
:goto_3e
if-ge v7, v10, :cond_4a
add-int/lit8 v12, v13, 0x1
aget-byte v16, v2, v7
aput-byte v16, v11, v13
add-int/lit8 v7, v7, 0x1
move v13, v12
goto :goto_3e
:cond_4a
add-int/lit8 v8, v8, 0x1
move v12, v13
goto :goto_2b
:cond_4e
move-object/from16 v0, p2
invoke-static {v11, v15, v6, v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
move-result-object v16
return-object v16
.end method
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
move-result-object v0
return-object v0
.end method
.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
.registers 10
new-instance v3, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
invoke-direct {v3, p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V
const/4 v2, 0x0
const/4 v0, 0x0
:try_start_7
invoke-direct {p0, v3, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
:try_end_a
.catch Lcom/google/zxing/FormatException; {:try_start_7 .. :try_end_a} :catch_c
.catch Lcom/google/zxing/ChecksumException; {:try_start_7 .. :try_end_a} :catch_30
move-result-object v4
:goto_b
return-object v4
:catch_c
move-exception v1
move-object v2, v1
:try_start_e
:goto_e
invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->remask()V
const/4 v5, 0x1
invoke-virtual {v3, v5}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->setMirror(Z)V
invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;
invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;
invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror()V
invoke-direct {p0, v3, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
move-result-object v4
new-instance v5, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;
const/4 v6, 0x1
invoke-direct {v5, v6}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;-><init>(Z)V
invoke-virtual {v4, v5}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V
:try_end_2b
.catch Lcom/google/zxing/FormatException; {:try_start_e .. :try_end_2b} :catch_2c
.catch Lcom/google/zxing/ChecksumException; {:try_start_e .. :try_end_2b} :catch_2c
goto :goto_b
:catch_2c
move-exception v1
if-eqz v2, :cond_33
throw v2
:catch_30
move-exception v1
move-object v0, v1
goto :goto_e
:cond_33
if-eqz v0, :cond_36
throw v0
:cond_36
throw v1
.end method
.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;
move-result-object v0
return-object v0
.end method
.method public decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;
.registers 8
array-length v1, p1
new-instance v0, Lcom/google/zxing/common/BitMatrix;
invoke-direct {v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V
const/4 v2, 0x0
:goto_7
if-ge v2, v1, :cond_1b
const/4 v3, 0x0
:goto_a
if-ge v3, v1, :cond_18
aget-object v4, p1, v2
aget-boolean v4, v4, v3
if-eqz v4, :cond_15
invoke-virtual {v0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V
:cond_15
add-int/lit8 v3, v3, 0x1
goto :goto_a
:cond_18
add-int/lit8 v2, v2, 0x1
goto :goto_7
:cond_1b
invoke-virtual {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
move-result-object v4
return-object v4
.end method