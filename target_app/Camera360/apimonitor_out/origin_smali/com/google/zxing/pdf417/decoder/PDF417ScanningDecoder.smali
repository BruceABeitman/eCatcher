.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final CODEWORD_SKEW_SIZE:I = 0x2

.field private static final MAX_EC_CODEWORDS:I = 0x200

.field private static final MAX_ERRORS:I = 0x3

.field private static final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v10, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v10

    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getRowHeights()[I

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-static {v9}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getMax([I)I

    move-result v4

    const/4 v6, 0x0

    move-object v0, v9

    array-length v3, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v3, :cond_1b

    aget v8, v0, v2

    sub-int v10, v4, v8

    add-int/2addr v6, v10

    if-lez v8, :cond_2b

    :cond_1b
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    const/4 v7, 0x0

    :goto_20
    if-lez v6, :cond_2e

    aget-object v10, v1, v7

    if-nez v10, :cond_2e

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2e
    const/4 v5, 0x0

    array-length v10, v9

    add-int/lit8 v7, v10, -0x1

    :goto_32
    if-ltz v7, :cond_3d

    aget v10, v9, v7

    sub-int v10, v4, v10

    add-int/2addr v5, v10

    aget v10, v9, v7

    if-lez v10, :cond_4b

    :cond_3d
    array-length v10, v1

    add-int/lit8 v7, v10, -0x1

    :goto_40
    if-lez v5, :cond_4e

    aget-object v10, v1, v7

    if-nez v10, :cond_4e

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_40

    :cond_4b
    add-int/lit8 v7, v7, -0x1

    goto :goto_32

    :cond_4e
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft()Z

    move-result v11

    invoke-virtual {v10, v6, v5, v11}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v10

    goto :goto_3
.end method

.method private static adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget-object v2, p1, v4

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getNumberOfECCodeWords(I)I

    move-result v3

    sub-int v0, v2, v3

    array-length v2, v1

    if-nez v2, :cond_33

    if-lt v0, v5, :cond_26

    const/16 v2, 0x3a0

    if-le v0, v2, :cond_2b

    :cond_26
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_2b
    aget-object v2, p1, v4

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    aget v2, v1, v4

    if-eq v2, v0, :cond_32

    aget-object v2, p1, v4

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_32
.end method

.method private static adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I
    .registers 12

    const/4 v5, 0x2

    const/4 v3, 0x1

    move v0, p4

    if-eqz p3, :cond_20

    const/4 v2, -0x1

    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v5, :cond_2d

    :goto_9
    if-eqz p3, :cond_d

    if-ge v0, p1, :cond_11

    :cond_d
    if-nez p3, :cond_24

    if-ge v0, p2, :cond_24

    :cond_11
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-ne p3, v4, :cond_24

    sub-int v4, p4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v5, :cond_22

    :goto_1f
    return p4

    :cond_20
    move v2, v3

    goto :goto_6

    :cond_22
    add-int/2addr v0, v2

    goto :goto_9

    :cond_24
    neg-int v2, v2

    if-nez p3, :cond_2b

    move p3, v3

    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2b
    const/4 p3, 0x0

    goto :goto_28

    :cond_2d
    move p4, v0

    goto :goto_1f
.end method

.method private static checkCodewordSkew(III)Z
    .registers 4

    add-int/lit8 v0, p1, -0x2

    if-gt v0, p0, :cond_a

    add-int/lit8 v0, p2, 0x2

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static correctErrors([I[II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    if-eqz p1, :cond_9

    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_f

    :cond_9
    if-ltz p2, :cond_f

    const/16 v0, 0x200

    if-le p2, v0, :cond_14

    :cond_f
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_14
    sget-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)I

    move-result v0

    return v0
.end method

.method private static createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .registers 14

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v12

    add-int/lit8 v12, v12, 0x2

    filled-new-array {v11, v12}, [I

    move-result-object v11

    const-class v12, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    const/4 v10, 0x0

    :goto_17
    array-length v11, v2

    if-ge v10, v11, :cond_2f

    const/4 v4, 0x0

    :goto_1b
    aget-object v11, v2, v10

    array-length v11, v11

    if-ge v4, v11, :cond_2c

    aget-object v11, v2, v10

    new-instance v12, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v12, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_2c
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_2f
    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v0

    array-length v8, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_37
    if-ge v7, v8, :cond_69

    aget-object v5, v0, v7

    add-int/lit8 v4, v4, 0x1

    if-nez v5, :cond_43

    :cond_3f
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_37

    :cond_43
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    array-length v9, v1

    const/4 v6, 0x0

    :goto_49
    if-ge v6, v9, :cond_3f

    aget-object v3, v1, v6

    if-eqz v3, :cond_56

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_59

    :cond_56
    :goto_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    :cond_59
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v11

    aget-object v11, v2, v11

    aget-object v11, v11, v4

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_56

    :cond_69
    return-object v2
.end method

.method private static createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v12

    mul-int/2addr v11, v12

    new-array v5, v11, [I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_22
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v11

    if-ge v9, v11, :cond_65

    const/4 v6, 0x0

    :goto_29
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v11

    if-ge v6, v11, :cond_62

    aget-object v11, v3, v9

    add-int/lit8 v12, v6, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v11

    mul-int/2addr v11, v9

    add-int v4, v11, v6

    array-length v11, v10

    if-nez v11, :cond_4d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_4d
    array-length v11, v10

    const/4 v12, 0x1

    if-ne v11, v12, :cond_57

    const/4 v11, 0x0

    aget v11, v10, v11

    aput v11, v5, v4

    goto :goto_4a

    :cond_57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_62
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    :cond_65
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-array v0, v11, [[I

    const/4 v8, 0x0

    :goto_6c
    array-length v11, v0

    if-ge v8, v11, :cond_7a

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    aput-object v11, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6c

    :cond_7a
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v11

    invoke-static {v7}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v12

    invoke-static {v2}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v13

    invoke-static {v11, v5, v12, v13, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v11

    return-object v11
.end method

.method private static createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    array-length v4, p3

    new-array v0, v4, [I

    const/16 v2, 0x64

    move v3, v2

    :goto_6
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_4e

    const/4 v1, 0x0

    :goto_b
    array-length v4, v0

    if-ge v1, v4, :cond_1b

    aget v4, p3, v1

    aget-object v5, p4, v1

    aget v6, v0, v1

    aget v5, v5, v6

    aput v5, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    :try_start_1b
    invoke-static {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    :try_end_1e
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1b .. :try_end_1e} :catch_20

    move-result-object v4

    return-object v4

    :catch_20
    move-exception v4

    array-length v4, v0

    if-nez v4, :cond_29

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    array-length v4, v0

    if-ge v1, v4, :cond_3c

    aget v4, v0, v1

    aget-object v5, p4, v1

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3e

    aget v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v1

    :cond_3c
    move v3, v2

    goto :goto_6

    :cond_3e
    const/4 v4, 0x0

    aput v4, v0, v1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_4b

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_4e
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4
.end method

.method public static decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    new-instance v2, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_16
    const/4 v3, 0x2

    move/from16 v0, v16

    if-ge v0, v3, :cond_78

    if-eqz p1, :cond_2b

    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v17

    :cond_2b
    if-eqz p3, :cond_3b

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v20

    :cond_3b
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;

    move-result-object v14

    if-nez v14, :cond_4a

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    :cond_4a
    if-nez v16, :cond_75

    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    if-eqz v3, :cond_75

    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v4

    if-lt v3, v4, :cond_6e

    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v4

    if-le v3, v4, :cond_75

    :cond_6e
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    add-int/lit8 v16, v16, 0x1

    goto :goto_16

    :cond_75
    invoke-virtual {v14, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    :cond_78
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    add-int/lit8 v18, v3, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    if-eqz v17, :cond_9f

    const/4 v6, 0x1

    :goto_8e
    const/4 v12, 0x1

    :goto_8f
    move/from16 v0, v18

    if-gt v12, v0, :cond_10e

    if-eqz v6, :cond_a1

    move v11, v12

    :goto_96
    invoke-virtual {v14, v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v3

    if-eqz v3, :cond_a4

    :cond_9c
    add-int/lit8 v12, v12, 0x1

    goto :goto_8f

    :cond_9f
    const/4 v6, 0x0

    goto :goto_8e

    :cond_a1
    sub-int v11, v18, v12

    goto :goto_96

    :cond_a4
    if-eqz v11, :cond_aa

    move/from16 v0, v18

    if-ne v11, v0, :cond_d8

    :cond_aa
    new-instance v15, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v11, :cond_d6

    const/4 v3, 0x1

    :goto_af
    invoke-direct {v15, v2, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    :goto_b2
    invoke-virtual {v14, v11, v15}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    const/4 v7, -0x1

    move/from16 v19, v7

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v8

    :goto_bc
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v3

    if-gt v8, v3, :cond_9c

    invoke-static {v14, v11, v8, v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I

    move-result v7

    if-ltz v7, :cond_ce

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v3

    if-le v7, v3, :cond_e0

    :cond_ce
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_de

    :cond_d3
    :goto_d3
    add-int/lit8 v8, v8, 0x1

    goto :goto_bc

    :cond_d6
    const/4 v3, 0x0

    goto :goto_af

    :cond_d8
    new-instance v15, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v15, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_b2

    :cond_de
    move/from16 v7, v19

    :cond_e0
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v5

    move-object/from16 v3, p0

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v13

    if-eqz v13, :cond_d3

    invoke-virtual {v15, v8, v13}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    move/from16 v19, v7

    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v3

    move/from16 v0, p5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p5

    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v3

    move/from16 v0, p6

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p6

    goto :goto_d3

    :cond_10e
    invoke-static {v14}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3

    return-object v3
.end method

.method private static decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    array-length v3, p0

    if-nez v3, :cond_8

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    :cond_8
    const/4 v3, 0x1

    add-int/lit8 v4, p1, 0x1

    shl-int v2, v3, v4

    invoke-static {p0, p2, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->correctErrors([I[II)I

    move-result v0

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->verifyCodewordCount([II)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/DecoderResult;->setErasures(Ljava/lang/Integer;)V

    return-object v1
.end method

.method private static detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .registers 19

    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I

    move-result p4

    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I

    move-result-object v7

    if-nez v7, :cond_c

    const/4 v9, 0x0

    :goto_b
    return-object v9

    :cond_c
    invoke-static {v7}, Lcom/google/zxing/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result v3

    if-eqz p3, :cond_20

    add-int v5, p4, v3

    :goto_14
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {v3, v0, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->checkCodewordSkew(III)Z

    move-result v9

    if-nez v9, :cond_3d

    const/4 v9, 0x0

    goto :goto_b

    :cond_20
    const/4 v6, 0x0

    :goto_21
    array-length v9, v7

    shr-int/lit8 v9, v9, 0x1

    if-ge v6, v9, :cond_39

    aget v8, v7, v6

    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aget v9, v7, v9

    aput v9, v7, v6

    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aput v8, v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_39
    move v5, p4

    sub-int p4, v5, v3

    goto :goto_14

    :cond_3d
    invoke-static {v7}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedValue([I)I

    move-result v4

    int-to-long v9, v4

    invoke-static {v9, v10}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(J)I

    move-result v2

    const/4 v9, -0x1

    if-ne v2, v9, :cond_4b

    const/4 v9, 0x0

    goto :goto_b

    :cond_4b
    new-instance v9, Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-static {v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber(I)I

    move-result v10

    invoke-direct {v9, p4, v5, v10, v2}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    goto :goto_b
.end method

.method private static getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .registers 7

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    if-nez v0, :cond_11

    :cond_9
    if-nez p1, :cond_c

    :cond_b
    :goto_b
    return-object v2

    :cond_c
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v2

    goto :goto_b

    :cond_11
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    if-nez v1, :cond_1b

    :cond_19
    move-object v2, v0

    goto :goto_b

    :cond_1b
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v4

    if-eq v3, v4, :cond_39

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v4

    if-eq v3, v4, :cond_39

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-ne v3, v4, :cond_b

    :cond_39
    move-object v2, v0

    goto :goto_b
.end method

.method private static getBitCountForCodeword(I)[I
    .registers 5

    const/16 v3, 0x8

    new-array v2, v3, [I

    const/4 v1, 0x0

    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    :goto_8
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_13

    and-int/lit8 v1, p0, 0x1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_13

    return-object v2

    :cond_13
    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    shr-int/lit8 p0, p0, 0x1

    goto :goto_8
.end method

.method private static getCodewordBucketNumber(I)I
    .registers 2

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBitCountForCodeword(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber([I)I

    move-result v0

    return v0
.end method

.method private static getCodewordBucketNumber([I)I
    .registers 3

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p0, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static getMax([I)I
    .registers 6

    const/4 v3, -0x1

    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_f

    aget v4, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return v3
.end method

.method private static getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I
    .registers 13

    const/4 v5, 0x1

    move v0, p4

    const/16 v6, 0x8

    new-array v2, v6, [I

    const/4 v3, 0x0

    if-eqz p3, :cond_24

    move v1, v5

    :goto_a
    move v4, p3

    :goto_b
    if-eqz p3, :cond_f

    if-lt v0, p2, :cond_13

    :cond_f
    if-nez p3, :cond_2e

    if-lt v0, p1, :cond_2e

    :cond_13
    array-length v6, v2

    if-ge v3, v6, :cond_2e

    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-ne v6, v4, :cond_26

    aget v6, v2, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v3

    add-int/2addr v0, v1

    goto :goto_b

    :cond_24
    const/4 v1, -0x1

    goto :goto_a

    :cond_26
    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_2c

    move v4, v5

    :goto_2b
    goto :goto_b

    :cond_2c
    const/4 v4, 0x0

    goto :goto_2b

    :cond_2e
    array-length v5, v2

    if-eq v3, v5, :cond_3e

    if-eqz p3, :cond_35

    if-eq v0, p2, :cond_39

    :cond_35
    if-nez p3, :cond_3f

    if-ne v0, p1, :cond_3f

    :cond_39
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_3f

    :cond_3e
    :goto_3e
    return-object v2

    :cond_3f
    const/4 v2, 0x0

    goto :goto_3e
.end method

.method private static getNumberOfECCodeWords(I)I
    .registers 2

    const/4 v0, 0x2

    shl-int/2addr v0, p0

    return v0
.end method

.method private static getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .registers 18

    new-instance v11, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    invoke-direct {v11, p1, p3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    const/4 v9, 0x0

    :goto_6
    const/4 v0, 0x2

    if-ge v9, v0, :cond_48

    if-nez v9, :cond_3e

    const/4 v10, 0x1

    :goto_c
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v5, v0

    :goto_16
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v5, v0, :cond_45

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    if-lt v5, v0, :cond_45

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    move-object v0, p0

    move v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v8

    if-eqz v8, :cond_3c

    invoke-virtual {v11, v5, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    if-eqz p3, :cond_40

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    :cond_3c
    :goto_3c
    add-int/2addr v5, v10

    goto :goto_16

    :cond_3e
    const/4 v10, -0x1

    goto :goto_c

    :cond_40
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_3c

    :cond_45
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_48
    return-object v11
.end method

.method private static getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I
    .registers 15

    if-eqz p3, :cond_1f

    const/4 v4, 0x1

    :goto_3
    const/4 v1, 0x0

    sub-int v7, p1, v4

    invoke-static {p0, v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v7

    if-eqz v7, :cond_16

    sub-int v7, p1, v4

    invoke-virtual {p0, v7}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    :cond_16
    if-eqz v1, :cond_26

    if-eqz p3, :cond_21

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v7

    :goto_1e
    return v7

    :cond_1f
    const/4 v4, -0x1

    goto :goto_3

    :cond_21
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    goto :goto_1e

    :cond_26
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    if-eqz v1, :cond_3c

    if-eqz p3, :cond_37

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    goto :goto_1e

    :cond_37
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v7

    goto :goto_1e

    :cond_3c
    sub-int v7, p1, v4

    invoke-static {p0, v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v7

    if-eqz v7, :cond_4e

    sub-int v7, p1, v4

    invoke-virtual {p0, v7}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    :cond_4e
    if-eqz v1, :cond_5c

    if-eqz p3, :cond_57

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v7

    goto :goto_1e

    :cond_57
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    goto :goto_1e

    :cond_5c
    const/4 v6, 0x0

    :goto_5d
    sub-int v7, p1, v4

    invoke-static {p0, v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v7

    if-eqz v7, :cond_95

    sub-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_70
    if-ge v2, v3, :cond_92

    aget-object v5, v0, v2

    if-eqz v5, :cond_8f

    if-eqz p3, :cond_8a

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v7

    :goto_7c
    mul-int v8, v4, v6

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v9

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v10

    sub-int/2addr v9, v10

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    goto :goto_1e

    :cond_8a
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    goto :goto_7c

    :cond_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    :cond_92
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    :cond_95
    if-eqz p3, :cond_a1

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v7

    goto/16 :goto_1e

    :cond_a1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v7

    goto/16 :goto_1e
.end method

.method private static isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z
    .registers 3

    if-ltz p1, :cond_c

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-object v2

    :cond_6
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    invoke-static {p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    new-instance v2, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_5
.end method

.method public static toString([[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)Ljava/lang/String;
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    const/4 v4, 0x0

    :goto_8
    array-length v5, p0

    if-ge v4, v5, :cond_63

    const-string/jumbo v5, "Row %2d: "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v1, 0x0

    :goto_1a
    aget-object v5, p0, v4

    array-length v5, v5

    if-ge v1, v5, :cond_58

    aget-object v5, p0, v4

    aget-object v0, v5, v1

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_36

    const-string/jumbo v6, "        "

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_36
    const-string/jumbo v5, "%4d(%2d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v8

    invoke-virtual {v0, v7}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getConfidence(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_33

    :cond_58
    const-string/jumbo v5, "%n"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_63
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    return-object v3
.end method

.method private static verifyCodewordCount([II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v3, 0x0

    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_a

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_a
    aget v0, p0, v3

    array-length v1, p0

    if-le v0, v1, :cond_14

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_14
    if-nez v0, :cond_1d

    array-length v1, p0

    if-ge p1, v1, :cond_1e

    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v3

    :cond_1d
    return-void

    :cond_1e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
.end method
