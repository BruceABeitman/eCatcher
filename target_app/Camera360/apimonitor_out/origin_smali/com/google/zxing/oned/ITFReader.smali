.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I = null

.field private static final END_PATTERN_REVERSED:[I = null

.field private static final MAX_AVG_VARIANCE:I = 0x6b

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xc7

.field private static final N:I = 0x1

.field static final PATTERNS:[[I = null

.field private static final START_PATTERN:[I = null

.field private static final W:I = 0x3


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x5

    new-array v0, v3, [I

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_7c

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_88

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_92

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_a0

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_ae

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_bc

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_ca

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_d8

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_e6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_f4

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_102

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_110

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void

    :array_6e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    :array_7c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_88
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_92
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_ae
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_bc
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_ca
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_d8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_e6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_f4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_102
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_110
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/16 v1, 0x6b

    const/4 v0, -0x1

    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v3, v6

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_1a

    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v4, v6, v2

    const/16 v6, 0xc7

    invoke-static {p0, v4, v6}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[II)I

    move-result v5

    if-ge v5, v1, :cond_17

    move v1, v5

    move v0, v2

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    if-ltz v0, :cond_1d

    return v0

    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v11, 0x5

    const/16 v10, 0xa

    new-array v4, v10, [I

    new-array v2, v11, [I

    new-array v5, v11, [I

    :cond_9
    if-ge p1, p2, :cond_3f

    invoke-static {p0, p1, v4}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v11, :cond_20

    shl-int/lit8 v9, v7, 0x1

    aget v10, v4, v9

    aput v10, v2, v7

    add-int/lit8 v10, v9, 0x1

    aget v10, v4, v10

    aput v10, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_20
    invoke-static {v2}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v1

    add-int/lit8 v10, v1, 0x30

    int-to-char v10, v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v1

    add-int/lit8 v10, v1, 0x30

    int-to-char v10, v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v0, v4

    array-length v8, v0

    const/4 v6, 0x0

    :goto_37
    if-ge v6, v8, :cond_9

    aget v3, v0, v6

    add-int/2addr p1, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_3f
    return-void
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    array-length v3, p2

    new-array v1, v3, [I

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v4, p1

    move v6, p1

    :goto_e
    if-ge v6, v5, :cond_55

    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v2

    if-eqz v9, :cond_20

    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    :goto_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_20
    add-int/lit8 v9, v3, -0x1

    if-ne v0, v9, :cond_50

    const/16 v9, 0xc7

    invoke-static {v1, p2, v9}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[II)I

    move-result v9

    const/16 v10, 0x6b

    if-ge v9, v10, :cond_35

    new-array v9, v11, [I

    aput v4, v9, v8

    aput v6, v9, v7

    return-object v9

    :cond_35
    aget v9, v1, v8

    aget v10, v1, v7

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    add-int/lit8 v9, v3, -0x2

    invoke-static {v1, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v3, -0x2

    aput v8, v1, v9

    add-int/lit8 v9, v3, -0x1

    aput v8, v1, v9

    add-int/lit8 v0, v0, -0x1

    :goto_4a
    aput v7, v1, v0

    if-nez v2, :cond_53

    move v2, v7

    :goto_4f
    goto :goto_1d

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_53
    move v2, v8

    goto :goto_4f

    :cond_55
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_10
    return v0
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v1, v2, 0xa

    if-ge v1, p2, :cond_19

    :goto_6
    add-int/lit8 v0, p2, -0x1

    :goto_8
    if-lez v1, :cond_12

    if-ltz v0, :cond_12

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_12
    if-eqz v1, :cond_20

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_19
    move v1, p2

    goto :goto_6

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    return-void
.end method


# virtual methods
.method decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    :try_start_3
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v1

    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    invoke-static {p1, v1, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    const/4 v3, 0x0

    aget v2, v0, v3

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    const/4 v5, 0x1

    aget v5, v0, v5

    sub-int/2addr v4, v5

    aput v4, v0, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    sub-int/2addr v4, v2

    aput v4, v0, v3
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2d

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    return-object v0

    :catchall_2d
    move-exception v3

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    throw v3
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v14, 0x14

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v14, 0x1

    aget v14, v13, v14

    const/4 v15, 0x0

    aget v15, v5, v15

    move-object/from16 v0, p2

    invoke-static {v0, v14, v15, v11}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x0

    if-eqz p3, :cond_36

    sget-object v14, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    move-object v3, v14

    check-cast v3, [I

    :cond_36
    if-nez v3, :cond_3a

    sget-object v3, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    :cond_3a
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    array-length v7, v4

    const/4 v6, 0x0

    :goto_43
    if-ge v6, v7, :cond_4a

    aget v2, v4, v6

    if-ne v8, v2, :cond_56

    const/4 v9, 0x1

    :cond_4a
    if-nez v9, :cond_4f

    if-le v8, v10, :cond_4f

    const/4 v9, 0x1

    :cond_4f
    if-nez v9, :cond_5c

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v14

    throw v14

    :cond_56
    if-le v2, v10, :cond_59

    move v10, v2

    :cond_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    :cond_5c
    new-instance v14, Lcom/google/zxing/Result;

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/google/zxing/ResultPoint;

    const/16 v19, 0x1

    aget v19, v13, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v16, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/google/zxing/ResultPoint;

    const/16 v19, 0x0

    aget v19, v5, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v16, v17

    sget-object v17, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v12, v15, v0, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v14
.end method

.method decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    sget-object v2, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v2}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v2, v1, v2

    aget v3, v1, v4

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    aget v2, v1, v4

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    return-object v1
.end method
