.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C = null

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2d

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x20t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x3at 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/zxing/qrcode/decoder/Version;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    new-instance v2, Lcom/google/zxing/common/BitSource;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v7, 0x32

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v5, 0x0

    const/4 v15, 0x0

    :cond_18
    :try_start_18
    invoke-virtual {v2}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_50

    sget-object v17, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    :goto_21
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_34

    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_33

    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v17

    if-ne v0, v7, :cond_5a

    :cond_33
    const/4 v15, 0x1

    :cond_34
    :goto_34
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_36} :catch_6d

    move-object/from16 v0, v17

    if-ne v0, v7, :cond_18

    new-instance v7, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_f4

    const/4 v10, 0x0

    :goto_47
    if-nez p2, :cond_f7

    const/4 v11, 0x0

    :goto_4a
    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    return-object v7

    :cond_50
    const/4 v7, 0x4

    :try_start_51
    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v17

    goto :goto_21

    :cond_5a
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v17

    if-ne v0, v7, :cond_80

    invoke-virtual {v2}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    const/16 v8, 0x10

    if-ge v7, v8, :cond_73

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7
    :try_end_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_6d} :catch_6d

    :catch_6d
    move-exception v16

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    :cond_73
    const/16 v7, 0x8

    :try_start_75
    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v13

    goto :goto_34

    :cond_80
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v17

    if-ne v0, v7, :cond_95

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v5

    if-nez v5, :cond_34

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    :cond_95
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v17

    if-ne v0, v7, :cond_b5

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v14

    const/4 v7, 0x1

    move/from16 v0, v18

    if-ne v0, v7, :cond_34

    invoke-static {v2, v3, v14}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_34

    :cond_b5
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v17

    if-ne v0, v7, :cond_cc

    invoke-static {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto/16 :goto_34

    :cond_cc
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v17

    if-ne v0, v7, :cond_d7

    invoke-static {v2, v3, v4, v15}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    goto/16 :goto_34

    :cond_d7
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v17

    if-ne v0, v7, :cond_e4

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    goto/16 :goto_34

    :cond_e4
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v17

    if-ne v0, v7, :cond_ef

    invoke-static {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto/16 :goto_34

    :cond_ef
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7
    :try_end_f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_f4} :catch_6d

    :cond_f4
    move-object v10, v6

    goto/16 :goto_47

    :cond_f7
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4a
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v7, 0x25

    const/16 v6, 0xb

    const/4 v5, 0x6

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    :goto_a
    if-le p2, v4, :cond_30

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v6, :cond_17

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    :cond_17
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    div-int/lit8 v3, v1, 0x2d

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v1, 0x2d

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x2

    goto :goto_a

    :cond_30
    if-ne p2, v4, :cond_48

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v5, :cond_3d

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    :cond_3d
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_48
    if-eqz p3, :cond_75

    move v0, v2

    :goto_4b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_75

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_6c

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6f

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_6f

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_6f
    const/16 v3, 0x1d

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_6c

    :cond_75
    return-void
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/zxing/common/CharacterSetECI;",
            "Ljava/util/Collection",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    shl-int/lit8 v4, p2, 0x3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-le v4, v5, :cond_d

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    :cond_d
    new-array v3, p2, [B

    const/4 v1, 0x0

    :goto_10
    if-ge v1, p2, :cond_1e

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    if-nez p3, :cond_30

    invoke-static {v3, p5}, Lcom/google/zxing/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    :try_start_24
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2c} :catch_35

    invoke-interface {p4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_30
    invoke-virtual {p3}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :catch_35
    move-exception v2

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4
.end method

.method private static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    mul-int/lit8 v5, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-le v5, v6, :cond_d

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    :cond_d
    mul-int/lit8 v5, p2, 0x2

    new-array v1, v5, [B

    const/4 v3, 0x0

    :goto_12
    if-lez p2, :cond_42

    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    div-int/lit8 v5, v4, 0x60

    shl-int/lit8 v5, v5, 0x8

    rem-int/lit8 v6, v4, 0x60

    or-int v0, v5, v6

    const/16 v5, 0x3bf

    if-ge v0, v5, :cond_3d

    const v5, 0xa1a1

    add-int/2addr v0, v5

    :goto_2a
    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    and-int/lit16 v6, v0, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_12

    :cond_3d
    const v5, 0xa6a1

    add-int/2addr v0, v5

    goto :goto_2a

    :cond_42
    :try_start_42
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v6, "GB2312"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_42 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    move-exception v2

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    mul-int/lit8 v5, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-le v5, v6, :cond_d

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    :cond_d
    mul-int/lit8 v5, p2, 0x2

    new-array v1, v5, [B

    const/4 v3, 0x0

    :goto_12
    if-lez p2, :cond_3e

    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    div-int/lit16 v5, v4, 0xc0

    shl-int/lit8 v5, v5, 0x8

    rem-int/lit16 v6, v4, 0xc0

    or-int v0, v5, v6

    const/16 v5, 0x1f00

    if-ge v0, v5, :cond_39

    const v5, 0x8140

    add-int/2addr v0, v5

    :goto_2a
    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    int-to-byte v6, v0

    aput-byte v6, v1, v5

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_12

    :cond_39
    const v5, 0xc140

    add-int/2addr v0, v5

    goto :goto_2a

    :cond_3e
    :try_start_3e
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v6, "SJIS"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_49
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3e .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception v2

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v6, 0x7

    const/4 v5, 0x4

    const/16 v4, 0xa

    :goto_4
    const/4 v3, 0x3

    if-lt p2, v3, :cond_3f

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v4, :cond_12

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    :cond_12
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_1f

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    :cond_1f
    div-int/lit8 v3, v1, 0x64

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v3, v1, 0xa

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v1, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x3

    goto :goto_4

    :cond_3f
    const/4 v3, 0x2

    if-ne p2, v3, :cond_6d

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v6, :cond_4d

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    :cond_4d
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_5a

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    :cond_5a
    div-int/lit8 v3, v2, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v2, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    const/4 v3, 0x1

    if-ne p2, v3, :cond_6c

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v5, :cond_7b

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    :cond_7b
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    if-lt v0, v4, :cond_86

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    :cond_86
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6c
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_d

    and-int/lit8 v3, v0, 0x7f

    :goto_c
    return v3

    :cond_d
    and-int/lit16 v3, v0, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1d

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    and-int/lit8 v3, v0, 0x3f

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v1

    goto :goto_c

    :cond_1d
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2f

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v2

    goto :goto_c

    :cond_2f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static toAlphaNumericChar(I)C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v0, v0

    if-lt p0, v0, :cond_a

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_a
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    aget-char v0, v0, p0

    return v0
.end method
