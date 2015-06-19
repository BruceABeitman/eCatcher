.class public final Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
.super Lcom/google/zxing/qrcode/QRCodeReader;
.source "QRCodeMultiReader.java"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$1;,
        Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;
    }
.end annotation


# static fields
.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [Lcom/google/zxing/Result;

    sput-object v0, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    new-array v0, v1, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    return-void
.end method

.method private static processStructuredAppend(Ljava/util/List;)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/Result;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/Result;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/Result;

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/4 v8, 0x1

    :cond_1e
    if-nez v8, :cond_21

    :goto_20
    return-object p0

    :cond_21
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2f
    :goto_2f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_54

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/Result;

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2f

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_54
    new-instance v21, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;

    const/16 v22, 0x0

    invoke-direct/range {v21 .. v22}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;-><init>(Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_be

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/zxing/Result;

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int v16, v16, v21

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6e

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_aa
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    add-int v4, v4, v21

    goto :goto_aa

    :cond_be
    move/from16 v0, v16

    new-array v12, v0, [B

    new-array v11, v4, [B

    const/4 v13, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_ca
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_139

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/zxing/Result;

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v12, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int v13, v13, v21

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_ca

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_115
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_ca

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    const/16 v21, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v11, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    add-int v3, v3, v21

    goto :goto_115

    :cond_139
    new-instance v14, Lcom/google/zxing/Result;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    sget-object v23, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v14, v0, v12, v1, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    if-lez v4, :cond_15d

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v21, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_15d
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 p0, v15

    goto/16 :goto_20
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->detectMulti(Ljava/util/Map;)[Lcom/google/zxing/common/DetectorResult;

    move-result-object v5

    move-object v1, v5

    array-length v8, v1

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v8, :cond_89

    aget-object v4, v1, v7

    :try_start_1b
    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->getDecoder()Lcom/google/zxing/qrcode/decoder/Decoder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    if-eqz v12, :cond_3e

    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-virtual {v12, v9}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->applyMirroredCorrection([Lcom/google/zxing/ResultPoint;)V

    :cond_3e
    new-instance v10, Lcom/google/zxing/Result;

    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v13

    sget-object v14, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v10, v12, v13, v9, v14}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_58

    sget-object v12, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v10, v12, v2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_58
    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_63

    sget-object v12, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v10, v12, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_63
    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->hasStructuredAppend()Z

    move-result v12

    if-eqz v12, :cond_83

    sget-object v12, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getStructuredAppendSequenceNumber()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    sget-object v12, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getStructuredAppendParity()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_83
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catch Lcom/google/zxing/ReaderException; {:try_start_1b .. :try_end_86} :catch_a3

    :goto_86
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_89
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_92

    sget-object v12, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    :goto_91
    return-object v12

    :cond_92
    invoke-static {v11}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->processStructuredAppend(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Lcom/google/zxing/Result;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/google/zxing/Result;

    goto :goto_91

    :catch_a3
    move-exception v12

    goto :goto_86
.end method
