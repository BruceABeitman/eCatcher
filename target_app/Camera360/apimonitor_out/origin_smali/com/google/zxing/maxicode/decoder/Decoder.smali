.class public final Lcom/google/zxing/maxicode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final ALL:I = 0x0

.field private static final EVEN:I = 0x1

.field private static final ODD:I = 0x2


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/maxicode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    return-void
.end method

.method private correctErrors([BIIII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    add-int v0, p3, p4

    if-nez p5, :cond_21

    const/4 v2, 0x1

    :goto_5
    div-int v5, v0, v2

    new-array v1, v5, [I

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_23

    if-eqz p5, :cond_14

    rem-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, p5, -0x1

    if-ne v5, v6, :cond_1e

    :cond_14
    div-int v5, v3, v2

    add-int v6, v3, p2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v5

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_21
    const/4 v2, 0x2

    goto :goto_5

    :cond_23
    :try_start_23
    iget-object v5, p0, Lcom/google/zxing/maxicode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    div-int v6, p4, v2

    invoke-virtual {v5, v1, v6}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_2a
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_23 .. :try_end_2a} :catch_41

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, p3, :cond_47

    if-eqz p5, :cond_35

    rem-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, p5, -0x1

    if-ne v5, v6, :cond_3e

    :cond_35
    add-int v5, v3, p2

    div-int v6, v3, v2

    aget v6, v1, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :catch_41
    move-exception v4

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v5

    throw v5

    :cond_47
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/maxicode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    new-instance v8, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;

    invoke-direct {v8, p1}, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v8}, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/4 v0, 0x0

    aget-byte v0, v1, v0

    and-int/lit8 v7, v0, 0xf

    packed-switch v7, :pswitch_data_6c

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_20
    const/16 v2, 0x14

    const/16 v3, 0x54

    const/16 v4, 0x28

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/16 v2, 0x14

    const/16 v3, 0x54

    const/16 v4, 0x28

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/16 v0, 0x5e

    new-array v6, v0, [B

    :goto_3a
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v1, v0, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x14

    const/16 v2, 0xa

    array-length v3, v6

    add-int/lit8 v3, v3, -0xa

    invoke-static {v1, v0, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v7}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->decode([BI)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0

    :pswitch_50
    const/16 v2, 0x14

    const/16 v3, 0x44

    const/16 v4, 0x38

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/16 v2, 0x14

    const/16 v3, 0x44

    const/16 v4, 0x38

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/16 v0, 0x4e

    new-array v6, v0, [B

    goto :goto_3a

    nop

    :pswitch_data_6c
    .packed-switch 0x2
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_50
    .end packed-switch
.end method
