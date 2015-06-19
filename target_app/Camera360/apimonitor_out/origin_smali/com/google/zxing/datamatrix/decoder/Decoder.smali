.class public final Lcom/google/zxing/datamatrix/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    return-void
.end method

.method private correctErrors([BI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

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
    iget-object v5, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

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


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v13}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->getVersion()Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v16

    invoke-virtual {v13}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-result-object v5

    array-length v6, v5

    const/4 v15, 0x0

    move-object v1, v5

    array-length v11, v1

    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v11, :cond_27

    aget-object v7, v1, v9

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v17

    add-int v15, v15, v17

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_27
    new-array v14, v15, [B

    const/4 v10, 0x0

    :goto_2a
    if-ge v10, v6, :cond_4c

    aget-object v4, v5, v10

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getCodewords()[B

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/google/zxing/datamatrix/decoder/Decoder;->correctErrors([BI)V

    const/4 v8, 0x0

    :goto_3c
    if-ge v8, v12, :cond_49

    mul-int v17, v8, v6

    add-int v17, v17, v10

    aget-byte v18, v2, v8

    aput-byte v18, v14, v17

    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    :cond_49
    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    :cond_4c
    invoke-static {v14}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decode([B)Lcom/google/zxing/common/DecoderResult;

    move-result-object v17

    return-object v17
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

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
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v4

    return-object v4
.end method
