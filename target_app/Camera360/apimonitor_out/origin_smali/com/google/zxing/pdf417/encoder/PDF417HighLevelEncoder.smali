.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# static fields
.field private static final BYTE_COMPACTION:I = 0x1

.field static final DEFAULT_ENCODING:Ljava/nio/charset/Charset; = null

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final LATCH_TO_BYTE:I = 0x39c

.field private static final LATCH_TO_BYTE_PADDED:I = 0x385

.field private static final LATCH_TO_NUMERIC:I = 0x386

.field private static final LATCH_TO_TEXT:I = 0x384

.field private static final MIXED:[B = null

.field private static final NUMERIC_COMPACTION:I = 0x2

.field private static final PUNCTUATION:[B = null

.field private static final SHIFT_TO_BYTE:I = 0x391

.field private static final SUBMODE_ALPHA:I = 0x0

.field private static final SUBMODE_LOWER:I = 0x1

.field private static final SUBMODE_MIXED:I = 0x2

.field private static final SUBMODE_PUNCTUATION:I = 0x3

.field private static final TEXT_COMPACTION:I

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x80

    const/16 v4, 0x1e

    const/4 v3, -0x1

    new-array v2, v4, [B

    fill-array-data v2, :array_58

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    new-array v2, v4, [B

    fill-array-data v2, :array_6c

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    new-array v2, v5, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    new-array v2, v5, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    const-string/jumbo v2, "Cp437"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_2a
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3d

    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    aget-byte v0, v2, v1

    if-lez v0, :cond_39

    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aput-byte v1, v2, v0

    :cond_39
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_2a

    :cond_3d
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_43
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    array-length v2, v2

    if-ge v1, v2, :cond_56

    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    aget-byte v0, v2, v1

    if-lez v0, :cond_52

    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aput-byte v1, v2, v0

    :cond_52
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_43

    :cond_56
    return-void

    nop

    :array_58
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6c
    .array-data 0x1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v9, 0x3f

    const/16 v8, 0xd

    const/4 v7, 0x5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v2, p2

    :goto_a
    if-ge v2, v3, :cond_7a

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v8, :cond_1f

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1f

    add-int/lit8 v4, v4, 0x1

    add-int v1, v2, v4

    if-lt v1, v3, :cond_24

    :cond_1f
    if-lt v4, v8, :cond_29

    sub-int v6, v2, p2

    :goto_23
    return v6

    :cond_24
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_11

    :cond_29
    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v7, :cond_38

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v6

    if-eqz v6, :cond_38

    add-int/lit8 v5, v5, 0x1

    add-int v1, v2, v5

    if-lt v1, v3, :cond_3d

    :cond_38
    if-lt v5, v7, :cond_42

    sub-int v6, v2, p2

    goto :goto_23

    :cond_3d
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_2a

    :cond_42
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    aget-byte v6, p1, v2

    if-ne v6, v9, :cond_77

    if-eq v0, v9, :cond_77

    new-instance v6, Lcom/google/zxing/WriterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Non-encodable character detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (Unicode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_7a
    sub-int v6, v2, p2

    goto :goto_23
.end method

.method private static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .registers 7

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v2, p1

    if-ge v2, v3, :cond_1f

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :cond_c
    :goto_c
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    if-ge v2, v3, :cond_1f

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_c

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_c

    :cond_1f
    return v1
.end method

.method private static determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I
    .registers 8

    const/16 v5, 0xd

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, p1

    :cond_7
    :goto_7
    if-ge v1, v2, :cond_35

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v3, 0x0

    :cond_e
    :goto_e
    if-ge v3, v5, :cond_23

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_23

    if-ge v1, v2, :cond_23

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_e

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_e

    :cond_23
    if-lt v3, v5, :cond_29

    sub-int v4, v1, p1

    sub-int/2addr v4, v3

    :goto_28
    return v4

    :cond_29
    if-gtz v3, :cond_7

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v4

    if-nez v4, :cond_38

    :cond_35
    sub-int v4, v1, p1

    goto :goto_28

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private static encodeBinary([BIIILjava/lang/StringBuilder;)V
    .registers 14

    const/4 v7, 0x1

    if-ne p2, v7, :cond_2b

    if-nez p3, :cond_2b

    const/16 v7, 0x391

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_a
    move v3, p1

    const/4 v7, 0x6

    if-lt p2, v7, :cond_62

    const/4 v7, 0x5

    new-array v1, v7, [C

    :goto_11
    add-int v7, p1, p2

    sub-int/2addr v7, v3

    const/4 v8, 0x6

    if-lt v7, v8, :cond_62

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    :goto_1a
    const/4 v7, 0x6

    if-ge v2, v7, :cond_40

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    add-int v7, v3, v2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2b
    rem-int/lit8 v7, p2, 0x6

    if-nez v7, :cond_38

    const/4 v4, 0x1

    :goto_30
    if-eqz v4, :cond_3a

    const/16 v7, 0x39c

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_38
    const/4 v4, 0x0

    goto :goto_30

    :cond_3a
    const/16 v7, 0x385

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_40
    const/4 v2, 0x0

    :goto_41
    const/4 v7, 0x5

    if-ge v2, v7, :cond_52

    const-wide/16 v7, 0x384

    rem-long v7, v5, v7

    long-to-int v7, v7

    int-to-char v7, v7

    aput-char v7, v1, v2

    const-wide/16 v7, 0x384

    div-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_52
    array-length v7, v1

    add-int/lit8 v2, v7, -0x1

    :goto_55
    if-ltz v2, :cond_5f

    aget-char v7, v1, v2

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_55

    :cond_5f
    add-int/lit8 v3, v3, 0x6

    goto :goto_11

    :cond_62
    move v2, v3

    :goto_63
    add-int v7, p1, p2

    if-ge v2, v7, :cond_72

    aget-byte v7, p0, v2

    and-int/lit16 v0, v7, 0xff

    int-to-char v7, v0

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_72
    return-void
.end method

.method static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v12, 0x386

    const/4 v11, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v10, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v10, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v10

    invoke-static {v10, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    :cond_25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    sget-object v10, Lcom/google/zxing/pdf417/encoder/Compaction;->TEXT:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v10, :cond_38

    invoke-static {p0, v6, v4, v7, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    :cond_33
    :goto_33
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    :cond_38
    sget-object v10, Lcom/google/zxing/pdf417/encoder/Compaction;->BYTE:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v10, :cond_45

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v10, v1

    invoke-static {v1, v6, v10, v11, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_33

    :cond_45
    sget-object v10, Lcom/google/zxing/pdf417/encoder/Compaction;->NUMERIC:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v10, :cond_50

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v6, v4, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_33

    :cond_50
    const/4 v3, 0x0

    :goto_51
    if-ge v6, v4, :cond_33

    invoke-static {p0, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v5

    const/16 v10, 0xd

    if-lt v5, v10, :cond_65

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v9, 0x0

    invoke-static {p0, v6, v5, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    add-int/2addr v6, v5

    goto :goto_51

    :cond_65
    invoke-static {p0, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I

    move-result v8

    const/4 v10, 0x5

    if-ge v8, v10, :cond_6e

    if-ne v5, v4, :cond_7d

    :cond_6e
    if-eqz v3, :cond_77

    const/16 v10, 0x384

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v9, 0x0

    :cond_77
    invoke-static {p0, v6, v8, v7, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v9

    add-int/2addr v6, v8

    goto :goto_51

    :cond_7d
    if-nez v1, :cond_83

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    :cond_83
    invoke-static {p0, v1, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I

    move-result v0

    if-nez v0, :cond_8a

    const/4 v0, 0x1

    :cond_8a
    if-ne v0, v11, :cond_94

    if-nez v3, :cond_94

    const/4 v10, 0x0

    invoke-static {v1, v6, v11, v10, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    :goto_92
    add-int/2addr v6, v0

    goto :goto_51

    :cond_94
    invoke-static {v1, v6, v0, v3, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    const/4 v3, 0x1

    const/4 v9, 0x0

    goto :goto_92
.end method

.method private static encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .registers 15

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    div-int/lit8 v8, p2, 0x3

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-wide/16 v8, 0x384

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    :goto_16
    add-int/lit8 v8, p2, -0x1

    if-ge v2, v8, :cond_71

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v8, 0x2c

    sub-int v9, p2, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x31

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int v9, p1, v2

    add-int v10, p1, v2

    add-int/2addr v10, v3

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_47
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_63
    if-ltz v1, :cond_6f

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_63

    :cond_6f
    add-int/2addr v2, v3

    goto :goto_16

    :cond_71
    return-void
.end method

.method private static encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .registers 16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v7, p4

    const/4 v3, 0x0

    :cond_7
    :goto_7
    add-int v9, p1, v3

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    packed-switch v7, :pswitch_data_13a

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_11c

    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1e
    add-int/lit8 v3, v3, 0x1

    if-lt v3, p2, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v4, :cond_12d

    rem-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_124

    const/4 v6, 0x1

    :goto_2f
    if-eqz v6, :cond_127

    mul-int/lit8 v9, v1, 0x1e

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    add-int/2addr v9, v10

    int-to-char v1, v9

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :pswitch_3f
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_56

    const/16 v9, 0x20

    if-ne v0, v9, :cond_4f

    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_4f
    add-int/lit8 v9, v0, -0x41

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_56
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_63

    const/4 v7, 0x1

    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_63
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_70

    const/4 v7, 0x2

    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_70
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    :pswitch_7e
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_95

    const/16 v9, 0x20

    if-ne v0, v9, :cond_8e

    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_8e
    add-int/lit8 v9, v0, -0x61

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_95
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_a8

    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v0, -0x41

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    :cond_a8
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_b6

    const/4 v7, 0x2

    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_b6
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    :pswitch_c5
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_d5

    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    :cond_d5
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_e3

    const/4 v7, 0x0

    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_e3
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_f1

    const/4 v7, 0x1

    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_f1
    add-int v9, p1, v3

    add-int/lit8 v9, v9, 0x1

    if-ge v9, p2, :cond_10d

    add-int v9, p1, v3

    add-int/lit8 v9, v9, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_10d

    const/4 v7, 0x3

    const/16 v9, 0x19

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_10d
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    :cond_11c
    const/4 v7, 0x0

    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_124
    const/4 v6, 0x0

    goto/16 :goto_2f

    :cond_127
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    goto/16 :goto_3c

    :cond_12d
    rem-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_139

    mul-int/lit8 v9, v1, 0x1e

    add-int/lit8 v9, v9, 0x1d

    int-to-char v9, v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_139
    return v7

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_7e
        :pswitch_c5
    .end packed-switch
.end method

.method private static encodingECI(ILjava/lang/StringBuilder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const v1, 0xc5f94

    if-ltz p0, :cond_13

    const/16 v0, 0x384

    if-ge p0, v0, :cond_13

    const/16 v0, 0x39f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_12
    return-void

    :cond_13
    if-ge p0, v1, :cond_29

    const/16 v0, 0x39e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit16 v0, p0, 0x384

    add-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit16 v0, p0, 0x384

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_29
    const v0, 0xc6318

    if-ge p0, v0, :cond_3a

    const/16 v0, 0x39d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int v0, v1, p0

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_3a
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ECI number not in valid range from 0..811799, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlphaLower(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_c

    const/16 v0, 0x61

    if-lt p0, v0, :cond_e

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isAlphaUpper(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_c

    const/16 v0, 0x41

    if-lt p0, v0, :cond_e

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isDigit(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isMixed(C)Z
    .registers 3

    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static isPunctuation(C)Z
    .registers 3

    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static isText(C)Z
    .registers 2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_14

    const/16 v0, 0xa

    if-eq p0, v0, :cond_14

    const/16 v0, 0xd

    if-eq p0, v0, :cond_14

    const/16 v0, 0x20

    if-lt p0, v0, :cond_16

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
