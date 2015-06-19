.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"
.implements Lcom/google/zxing/Reader;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/zxing/aztec/AztecReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
move-result-object v0
return-object v0
.end method
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
.registers 26
const/4 v15, 0x0
const/4 v12, 0x0
new-instance v8, Lcom/google/zxing/aztec/detector/Detector;
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
move-result-object v20
move-object/from16 v0, v20
invoke-direct {v8, v0}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V
const/16 v17, 0x0
const/4 v7, 0x0
const/16 v20, 0x0
:try_start_12
move/from16 v0, v20
invoke-virtual {v8, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
move-result-object v9
invoke-virtual {v9}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;
move-result-object v17
new-instance v20, Lcom/google/zxing/aztec/decoder/Decoder;
invoke-direct/range {v20 .. v20}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
:try_end_26
.catch Lcom/google/zxing/NotFoundException; {:try_start_12 .. :try_end_26} :catch_62
.catch Lcom/google/zxing/FormatException; {:try_start_12 .. :try_end_26} :catch_65
move-result-object v7
:goto_27
if-nez v7, :cond_40
const/16 v20, 0x1
:try_start_2b
move/from16 v0, v20
invoke-virtual {v8, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
move-result-object v9
invoke-virtual {v9}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;
move-result-object v17
new-instance v20, Lcom/google/zxing/aztec/decoder/Decoder;
invoke-direct/range {v20 .. v20}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
:try_end_3f
.catch Lcom/google/zxing/NotFoundException; {:try_start_2b .. :try_end_3f} :catch_68
.catch Lcom/google/zxing/FormatException; {:try_start_2b .. :try_end_3f} :catch_68
move-result-object v7
:cond_40
if-eqz p2, :cond_70
sget-object v20, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;
move-object/from16 v0, p2
move-object/from16 v1, v20
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v19
check-cast v19, Lcom/google/zxing/ResultPointCallback;
if-eqz v19, :cond_70
move-object/from16 v5, v17
array-length v14, v5
const/4 v13, 0x0
:goto_54
if-ge v13, v14, :cond_70
aget-object v16, v5, v13
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
add-int/lit8 v13, v13, 0x1
goto :goto_54
:catch_62
move-exception v10
move-object v15, v10
goto :goto_27
:catch_65
move-exception v10
move-object v12, v10
goto :goto_27
:catch_68
move-exception v10
if-eqz v15, :cond_6c
throw v15
:cond_6c
if-eqz v12, :cond_6f
throw v12
:cond_6f
throw v10
:cond_70
new-instance v18, Lcom/google/zxing/Result;
invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;
move-result-object v20
invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B
move-result-object v21
sget-object v22, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;
move-object/from16 v0, v18
move-object/from16 v1, v20
move-object/from16 v2, v21
move-object/from16 v3, v17
move-object/from16 v4, v22
invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;
move-result-object v6
if-eqz v6, :cond_98
sget-object v20, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-virtual {v0, v1, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
:cond_98
invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;
move-result-object v11
if-eqz v11, :cond_a7
sget-object v20, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-virtual {v0, v1, v11}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
:cond_a7
return-object v18
.end method
.method public reset()V
.registers 1
return-void
.end method