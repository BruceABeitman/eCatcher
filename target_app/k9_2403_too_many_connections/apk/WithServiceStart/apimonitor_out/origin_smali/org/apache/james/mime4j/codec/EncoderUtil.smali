.class public Lorg/apache/james/mime4j/codec/EncoderUtil;
.super Ljava/lang/Object;
.source "EncoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;,
        Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    }
.end annotation


# static fields
.field private static final ATEXT_CHARS:Ljava/util/BitSet; = null

.field private static final BASE64_PAD:B = 0x3dt

.field static final BASE64_TABLE:[B = null

.field private static final ENCODED_WORD_MAX_LENGTH:I = 0x4b

.field private static final ENC_WORD_PREFIX:Ljava/lang/String; = "=?"

.field private static final ENC_WORD_SUFFIX:Ljava/lang/String; = "?="

.field private static final MAX_USED_CHARACTERS:I = 0x32

.field private static final Q_REGULAR_CHARS:Ljava/util/BitSet;

.field private static final Q_RESTRICTED_CHARS:Ljava/util/BitSet;

.field private static final TOKEN_CHARS:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    const-string v0, "=_?"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    const-string v0, "()<>@,;:\\\"/[]?="

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->TOKEN_CHARS:Ljava/util/BitSet;

    const-string v0, "()<>@.,;:\\\"[]"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    return-void

    :array_2a
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
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
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bEncodedLength([B)I
    .registers 2

    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_1b

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0xff

    if-le v1, v4, :cond_13

    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    :goto_12
    return-object v4

    :cond_13
    const/16 v4, 0x7f

    if-le v1, v4, :cond_18

    const/4 v0, 0x0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    if-eqz v0, :cond_20

    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    goto :goto_12

    :cond_20
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_12
.end method

.method private static determineEncoding([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    .registers 9

    array-length v5, p0

    if-nez v5, :cond_6

    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    :goto_5
    return-object v5

    :cond_6
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v5, :cond_25

    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    move-object v2, v5

    :goto_d
    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_f
    array-length v5, p0

    if-ge v0, v5, :cond_29

    aget-byte v5, p0, v0

    and-int/lit16 v4, v5, 0xff

    const/16 v5, 0x20

    if-eq v4, v5, :cond_22

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_22

    add-int/lit8 v3, v3, 0x1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_25
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    move-object v2, v5

    goto :goto_d

    :cond_29
    mul-int/lit8 v5, v3, 0x64

    array-length v6, p0

    div-int v1, v5, v6

    const/16 v5, 0x1e

    if-le v1, v5, :cond_35

    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    goto :goto_5

    :cond_35
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    goto :goto_5
.end method

.method private static encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .registers 5

    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public static encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isAtomPhrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_16
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static encodeAddressLocalPart(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isDotAtomText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private static encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .registers 7

    invoke-static {p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->bEncodedLength([B)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "?="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x4b

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_31

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "?="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_30
    return-object p0

    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    const/4 v0, -0x1

    invoke-virtual {p1, p4, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    const/4 p4, 0x0

    invoke-virtual {p1, p4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-static {p0, v0, p2, p3, p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p2, v0, p3, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_30
.end method

.method public static encodeB([B)Ljava/lang/String;
    .registers 9

    const/4 v7, 0x2

    const/16 v6, 0x3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    array-length v1, p0

    :goto_a
    sub-int v4, v1, v7

    if-ge v2, v4, :cond_56

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    and-int/lit8 v5, v0, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3

    goto :goto_a

    :cond_56
    sub-int v4, v1, v7

    if-ne v2, v4, :cond_96

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int v0, v4, v5

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_91
    :goto_91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_96
    const/4 v4, 0x1

    sub-int v4, v1, v4

    if-ne v2, v4, :cond_91

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x10

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_91
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;
    .registers 12

    const-string v3, "=?"

    if-nez p0, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_a
    if-ltz p2, :cond_10

    const/16 v1, 0x32

    if-le p2, v1, :cond_16

    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_16
    if-nez p3, :cond_1c

    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    :cond_1c
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/util/CharsetUtil;->toMimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported charset"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    invoke-static {p0, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    if-nez p4, :cond_38

    invoke-static {v5, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->determineEncoding([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    move-result-object p4

    :cond_38
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    if-ne p4, v1, :cond_5a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?B?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p2, p3, v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    :goto_59
    return-object v1

    :cond_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?Q?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    goto :goto_59
.end method

.method public static encodeHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v2, "="

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_25
    return-object v0

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method public static encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    move-object v0, p0

    goto :goto_a
.end method

.method private static encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->qEncodedLength([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const-string v4, "?="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x4b

    sub-int v4, v4, p3

    if-gt v3, v4, :cond_3d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    move-object v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "?="

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3c
    return-object p0

    :cond_3d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    const/4 v3, -0x1

    move-object/from16 v0, p1

    move/from16 v1, p5

    move v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p5

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v8

    move-object v3, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v3 .. v8}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v14

    const/4 v12, 0x0

    move-object v9, p0

    move-object/from16 v11, p2

    move-object/from16 v13, p4

    invoke-static/range {v9 .. v14}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3c
.end method

.method public static encodeQ([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
    .registers 8

    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v5, :cond_20

    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    move-object v2, v5

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_47

    aget-byte v5, p0, v1

    and-int/lit16 v4, v5, 0xff

    const/16 v5, 0x20

    if-ne v4, v5, :cond_24

    const/16 v5, 0x5f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    move-object v2, v5

    goto :goto_7

    :cond_24
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_42

    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v5, v4, 0x4

    invoke-static {v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v4, 0xf

    invoke-static {v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_42
    int-to-char v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static hasToBeEncoded(Ljava/lang/String;I)Z
    .registers 8

    const/16 v5, 0x20

    const/4 v4, 0x1

    if-nez p0, :cond_b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_b
    if-ltz p1, :cond_11

    const/16 v3, 0x32

    if-le p1, v3, :cond_17

    :cond_11
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_17
    move v2, p1

    const/4 v1, 0x0

    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_29

    if-ne v0, v5, :cond_2d

    :cond_29
    const/4 v2, 0x0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x4d

    if-le v2, v3, :cond_35

    move v3, v4

    :goto_34
    return v3

    :cond_35
    if-lt v0, v5, :cond_3b

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_2a

    :cond_3b
    move v3, v4

    goto :goto_34

    :cond_3d
    const/4 v3, 0x0

    goto :goto_34
.end method

.method private static hexDigit(I)C
    .registers 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    :goto_7
    return v0

    :cond_8
    sub-int v0, p0, v0

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    goto :goto_7
.end method

.method private static initChars(Ljava/lang/String;)Ljava/util/BitSet;
    .registers 5

    new-instance v0, Ljava/util/BitSet;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    const/16 v1, 0x21

    :goto_9
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_1b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_17
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_9

    :cond_1b
    return-object v0
.end method

.method private static isAtomPhrase(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_20

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v1, 0x1

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_15

    const/4 v4, 0x0

    :goto_1f
    return v4

    :cond_20
    move v4, v1

    goto :goto_1f
.end method

.method private static isDotAtomText(Ljava/lang/String;)Z
    .registers 9

    const/16 v7, 0x2e

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v3, 0x2e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_e

    move v4, v5

    :goto_d
    return v4

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v2, :cond_2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_1f

    if-eq v3, v7, :cond_1d

    sub-int v4, v2, v6

    if-ne v1, v4, :cond_29

    :cond_1d
    move v4, v5

    goto :goto_d

    :cond_1f
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_29

    move v4, v5

    goto :goto_d

    :cond_29
    move v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2d
    move v4, v6

    goto :goto_d
.end method

.method public static isToken(Ljava/lang/String;)Z
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    move v3, v4

    :goto_8
    return v3

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_1d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v3, Lorg/apache/james/mime4j/codec/EncoderUtil;->TOKEN_CHARS:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1a

    move v3, v4

    goto :goto_8

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1d
    const/4 v3, 0x1

    goto :goto_8
.end method

.method private static qEncodedLength([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)I
    .registers 7

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v4, :cond_19

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    move-object v2, v4

    :goto_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    array-length v4, p0

    if-ge v1, v4, :cond_29

    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1d

    add-int/lit8 v0, v0, 0x1

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    move-object v2, v4

    goto :goto_7

    :cond_1d
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_26

    add-int/lit8 v0, v0, 0x3

    goto :goto_16

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_29
    return v0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v3, "\""

    const-string v1, "[\\\\\"]"

    const-string v2, "\\\\$0"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
