.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "GenericMultipleBarcodeReader.java"
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;
.field private static final MAX_DEPTH:I = 0x4
.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64
.field private final delegate:Lcom/google/zxing/Reader;
.method public constructor <init>(Lcom/google/zxing/Reader;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;
return-void
.end method
.method private doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
.registers 34
const/4 v3, 0x4
move/from16 v0, p6
if-le v0, v3, :cond_6
:goto_5
:cond_5
return-void
:try_start_6
:cond_6
move-object/from16 v0, p0
iget-object v3, v0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;
move-object/from16 v0, p1
move-object/from16 v1, p2
invoke-interface {v3, v0, v1}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
:try_end_11
.catch Lcom/google/zxing/ReaderException; {:try_start_6 .. :try_end_11} :catch_91
move-result-object v22
const/4 v10, 0x0
invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v14
:cond_17
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_32
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v12
check-cast v12, Lcom/google/zxing/Result;
invoke-virtual {v12}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;
move-result-object v3
invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_17
const/4 v10, 0x1
:cond_32
if-nez v10, :cond_43
move-object/from16 v0, v22
move/from16 v1, p4
move/from16 v2, p5
invoke-static {v0, v1, v2}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
move-result-object v3
move-object/from16 v0, p3
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_43
invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;
move-result-object v23
if-eqz v23, :cond_5
move-object/from16 v0, v23
array-length v3, v0
if-eqz v3, :cond_5
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I
move-result v24
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I
move-result v13
move/from16 v0, v24
int-to-float v0, v0
move/from16 v19, v0
int-to-float v0, v13
move/from16 v20, v0
const/16 v17, 0x0
const/16 v18, 0x0
move-object/from16 v11, v23
array-length v0, v11
move/from16 v16, v0
const/4 v14, 0x0
:goto_68
move/from16 v0, v16
if-ge v14, v0, :cond_94
aget-object v21, v11, v14
invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v25
invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v26
cmpg-float v3, v25, v19
if-gez v3, :cond_7c
move/from16 v19, v25
:cond_7c
cmpg-float v3, v26, v20
if-gez v3, :cond_82
move/from16 v20, v26
:cond_82
cmpl-float v3, v25, v17
if-lez v3, :cond_88
move/from16 v17, v25
:cond_88
cmpl-float v3, v26, v18
if-lez v3, :cond_8e
move/from16 v18, v26
:cond_8e
add-int/lit8 v14, v14, 0x1
goto :goto_68
:catch_91
move-exception v15
goto/16 :goto_5
:cond_94
const/high16 v3, 0x42c8
cmpl-float v3, v19, v3
if-lez v3, :cond_b4
const/4 v3, 0x0
const/4 v4, 0x0
move/from16 v0, v19
float-to-int v5, v0
move-object/from16 v0, p1
invoke-virtual {v0, v3, v4, v5, v13}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;
move-result-object v4
add-int/lit8 v9, p6, 0x1
move-object/from16 v3, p0
move-object/from16 v5, p2
move-object/from16 v6, p3
move/from16 v7, p4
move/from16 v8, p5
invoke-direct/range {v3 .. v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
:cond_b4
const/high16 v3, 0x42c8
cmpl-float v3, v20, v3
if-lez v3, :cond_d6
const/4 v3, 0x0
const/4 v4, 0x0
move/from16 v0, v20
float-to-int v5, v0
move-object/from16 v0, p1
move/from16 v1, v24
invoke-virtual {v0, v3, v4, v1, v5}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;
move-result-object v4
add-int/lit8 v9, p6, 0x1
move-object/from16 v3, p0
move-object/from16 v5, p2
move-object/from16 v6, p3
move/from16 v7, p4
move/from16 v8, p5
invoke-direct/range {v3 .. v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
:cond_d6
add-int/lit8 v3, v24, -0x64
int-to-float v3, v3
cmpg-float v3, v17, v3
if-gez v3, :cond_fe
move/from16 v0, v17
float-to-int v3, v0
const/4 v4, 0x0
move/from16 v0, v17
float-to-int v5, v0
sub-int v5, v24, v5
move-object/from16 v0, p1
invoke-virtual {v0, v3, v4, v5, v13}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;
move-result-object v4
move/from16 v0, v17
float-to-int v3, v0
add-int v7, p4, v3
add-int/lit8 v9, p6, 0x1
move-object/from16 v3, p0
move-object/from16 v5, p2
move-object/from16 v6, p3
move/from16 v8, p5
invoke-direct/range {v3 .. v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
:cond_fe
add-int/lit8 v3, v13, -0x64
int-to-float v3, v3
cmpg-float v3, v18, v3
if-gez v3, :cond_5
const/4 v3, 0x0
move/from16 v0, v18
float-to-int v4, v0
move/from16 v0, v18
float-to-int v5, v0
sub-int v5, v13, v5
move-object/from16 v0, p1
move/from16 v1, v24
invoke-virtual {v0, v3, v4, v1, v5}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;
move-result-object v4
move/from16 v0, v18
float-to-int v3, v0
add-int v8, p5, v3
add-int/lit8 v9, p6, 0x1
move-object/from16 v3, p0
move-object/from16 v5, p2
move-object/from16 v6, p3
move/from16 v7, p4
invoke-direct/range {v3 .. v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
goto/16 :goto_5
.end method
.method private static translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
.registers 12
invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;
move-result-object v4
if-nez v4, :cond_7
:goto_6
return-object p0
:cond_7
array-length v5, v4
new-array v2, v5, [Lcom/google/zxing/ResultPoint;
const/4 v0, 0x0
:goto_b
array-length v5, v4
if-ge v0, v5, :cond_26
aget-object v3, v4, v0
new-instance v5, Lcom/google/zxing/ResultPoint;
invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F
move-result v6
int-to-float v7, p1
add-float/2addr v6, v7
invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F
move-result v7
int-to-float v8, p2
add-float/2addr v7, v8
invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
aput-object v5, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_26
new-instance v1, Lcom/google/zxing/Result;
invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;
move-result-object v5
invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B
move-result-object v6
invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
move-result-object v7
invoke-direct {v1, v5, v6, v2, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;
move-result-object v5
invoke-virtual {v1, v5}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V
move-object p0, v1
goto :goto_6
.end method
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
move-result-object v0
return-object v0
.end method
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
.registers 10
const/4 v4, 0x0
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v5, v4
move v6, v4
invoke-direct/range {v0 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_19
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v0
throw v0
:cond_19
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Lcom/google/zxing/Result;
invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/zxing/Result;
return-object v0
.end method