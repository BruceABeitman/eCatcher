.class public Lcom/fsck/k9/codec/binary/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# static fields
.field static final CHUNK_SEPARATOR:[B = null

.field static final CHUNK_SIZE:I = 0x4c

.field private static final MASK_6BITS:I = 0x3f

.field private static final MASK_8BITS:I = 0xff

.field private static final PAD:B = 0x3dt

.field private static final base64ToInt:[B

.field private static final intToBase64:[B


# instance fields
.field private buf:[B

.field private currentLinePos:I

.field private final decodeSize:I

.field private final encodeSize:I

.field private eof:Z

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private readPos:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/fsck/k9/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Lcom/fsck/k9/codec/binary/Base64;->intToBase64:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_46

    sput-object v0, Lcom/fsck/k9/codec/binary/Base64;->base64ToInt:[B

    return-void

    nop

    :array_1c
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    nop

    :array_22
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

    :array_46
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x3et
        0xfft
        0xfft
        0xfft
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x4c

    sget-object v1, Lcom/fsck/k9/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/codec/binary/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    sget-object v0, Lcom/fsck/k9/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/codec/binary/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fsck/k9/codec/binary/Base64;->lineLength:I

    array-length v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/fsck/k9/codec/binary/Base64;->lineSeparator:[B

    iget-object v2, p0, Lcom/fsck/k9/codec/binary/Base64;->lineSeparator:[B

    array-length v3, p2

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p1, :cond_4a

    array-length v2, p2

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/fsck/k9/codec/binary/Base64;->encodeSize:I

    :goto_18
    iget v2, p0, Lcom/fsck/k9/codec/binary/Base64;->encodeSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/fsck/k9/codec/binary/Base64;->decodeSize:I

    invoke-static {p2}, Lcom/fsck/k9/codec/binary/Base64;->containsBase64Byte([B)Z

    move-result v2

    if-eqz v2, :cond_56

    :try_start_24
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2b} :catch_4e

    :goto_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lineSeperator must not contain base64 characters: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4a
    const/4 v2, 0x4

    iput v2, p0, Lcom/fsck/k9/codec/binary/Base64;->encodeSize:I

    goto :goto_18

    :catch_4e
    move-exception v2

    move-object v1, v2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_2b

    :cond_56
    return-void
.end method

.method private static containsBase64Byte([B)Z
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/fsck/k9/codec/binary/Base64;->isBase64(B)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static decodeBase64([B)[B
    .registers 8

    const/4 v6, 0x0

    if-eqz p0, :cond_6

    array-length v5, p0

    if-nez v5, :cond_8

    :cond_6
    move-object v5, p0

    :goto_7
    return-object v5

    :cond_8
    new-instance v0, Lcom/fsck/k9/codec/binary/Base64;

    invoke-direct {v0}, Lcom/fsck/k9/codec/binary/Base64;-><init>()V

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    int-to-long v2, v5

    long-to-int v5, v2

    new-array v1, v5, [B

    array-length v5, v1

    invoke-virtual {v0, v1, v6, v5}, Lcom/fsck/k9/codec/binary/Base64;->setInitialBuffer([BII)V

    array-length v5, p0

    invoke-virtual {v0, p0, v6, v5}, Lcom/fsck/k9/codec/binary/Base64;->decode([BII)V

    const/4 v5, -0x1

    invoke-virtual {v0, p0, v6, v5}, Lcom/fsck/k9/codec/binary/Base64;->decode([BII)V

    iget v5, v0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    new-array v4, v5, [B

    array-length v5, v4

    invoke-virtual {v0, v4, v6, v5}, Lcom/fsck/k9/codec/binary/Base64;->readResults([BII)I

    move-object v5, v4

    goto :goto_7
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .registers 4

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/fsck/k9/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method static discardNonBase64([B)[B
    .registers 8

    const/4 v6, 0x0

    array-length v5, p0

    new-array v2, v5, [B

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_6
    array-length v5, p0

    if-ge v3, v5, :cond_1b

    aget-byte v5, p0, v3

    invoke-static {v5}, Lcom/fsck/k9/codec/binary/Base64;->isBase64(B)Z

    move-result v5

    if-eqz v5, :cond_18

    add-int/lit8 v1, v0, 0x1

    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1b
    new-array v4, v0, [B

    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method static discardWhitespace([B)[B
    .registers 8

    const/4 v6, 0x0

    array-length v5, p0

    new-array v2, v5, [B

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_6
    array-length v5, p0

    if-ge v3, v5, :cond_18

    aget-byte v5, p0, v3

    sparse-switch v5, :sswitch_data_1e

    add-int/lit8 v1, v0, 0x1

    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    :sswitch_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_18
    new-array v4, v0, [B

    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :sswitch_data_1e
    .sparse-switch
        0x9 -> :sswitch_15
        0xa -> :sswitch_15
        0xd -> :sswitch_15
        0x20 -> :sswitch_15
    .end sparse-switch
.end method

.method public static encodeBase64([B)[B
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fsck/k9/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .registers 13

    const-wide/16 v8, 0x4

    const/4 v10, 0x0

    if-eqz p0, :cond_8

    array-length v6, p0

    if-nez v6, :cond_a

    :cond_8
    move-object v6, p0

    :goto_9
    return-object v6

    :cond_a
    if-eqz p1, :cond_41

    new-instance v6, Lcom/fsck/k9/codec/binary/Base64;

    invoke-direct {v6}, Lcom/fsck/k9/codec/binary/Base64;-><init>()V

    move-object v0, v6

    :goto_12
    array-length v6, p0

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x3

    int-to-long v2, v6

    rem-long v4, v2, v8

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_23

    sub-long v6, v8, v4

    add-long/2addr v2, v6

    :cond_23
    if-eqz p1, :cond_32

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x4c

    div-long v8, v2, v8

    add-long/2addr v6, v8

    sget-object v8, Lcom/fsck/k9/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v8, v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    :cond_32
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v2, v6

    if-lez v6, :cond_48

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Input array too big, output array would be bigger than Integer.MAX_VALUE=2147483647"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_41
    new-instance v6, Lcom/fsck/k9/codec/binary/Base64;

    invoke-direct {v6, v10}, Lcom/fsck/k9/codec/binary/Base64;-><init>(I)V

    move-object v0, v6

    goto :goto_12

    :cond_48
    long-to-int v6, v2

    new-array v1, v6, [B

    array-length v6, v1

    invoke-virtual {v0, v1, v10, v6}, Lcom/fsck/k9/codec/binary/Base64;->setInitialBuffer([BII)V

    array-length v6, p0

    invoke-virtual {v0, p0, v10, v6}, Lcom/fsck/k9/codec/binary/Base64;->encode([BII)V

    const/4 v6, -0x1

    invoke-virtual {v0, p0, v10, v6}, Lcom/fsck/k9/codec/binary/Base64;->encode([BII)V

    iget-object v6, v0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    if-eq v6, v1, :cond_5f

    array-length v6, v1

    invoke-virtual {v0, v1, v10, v6}, Lcom/fsck/k9/codec/binary/Base64;->readResults([BII)I

    :cond_5f
    move-object v6, v1

    goto :goto_9
.end method

.method public static encodeBase64Chunked([B)[B
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fsck/k9/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p0}, Lcom/fsck/k9/codec/binary/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_19

    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/fsck/k9/codec/binary/Base64;->isBase64(B)Z

    move-result v1

    if-nez v1, :cond_16

    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/fsck/k9/codec/binary/Base64;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    :goto_15
    return v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 v1, 0x1

    goto :goto_15
.end method

.method public static isBase64(B)Z
    .registers 3

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_12

    if-ltz p0, :cond_14

    sget-object v0, Lcom/fsck/k9/codec/binary/Base64;->base64ToInt:[B

    array-length v0, v0

    if-ge p0, v0, :cond_14

    sget-object v0, Lcom/fsck/k9/codec/binary/Base64;->base64ToInt:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static isWhiteSpace(B)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method private resizeBuf()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    if-nez v1, :cond_10

    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iput v3, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iput v3, p0, Lcom/fsck/k9/codec/binary/Base64;->readPos:I

    :goto_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget-object v2, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    goto :goto_f
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .registers 9

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v6, v1, 0x7

    shr-int/lit8 v6, v6, 0x3

    shl-int/lit8 v1, v6, 0x3

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_24

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v1, 0x8

    if-ne v6, v7, :cond_24

    move-object v6, v0

    :goto_23
    return-object v6

    :cond_24
    const/4 v5, 0x0

    array-length v2, v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_31

    const/4 v5, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_31
    div-int/lit8 v6, v1, 0x8

    sub-int v4, v6, v2

    div-int/lit8 v6, v1, 0x8

    new-array v3, v6, [B

    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v3

    goto :goto_23
.end method


# virtual methods
.method avail()I
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iget v1, p0, Lcom/fsck/k9/codec/binary/Base64;->readPos:I

    sub-int/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    instance-of v0, p1, [B

    if-nez v0, :cond_c

    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/fsck/k9/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method decode([BII)V
    .registers 12

    const/4 v7, 0x1

    iget-boolean v4, p0, Lcom/fsck/k9/codec/binary/Base64;->eof:Z

    if-eqz v4, :cond_6

    :goto_5
    return-void

    :cond_6
    if-gez p3, :cond_a

    iput-boolean v7, p0, Lcom/fsck/k9/codec/binary/Base64;->eof:Z

    :cond_a
    const/4 v1, 0x0

    move v2, p2

    :goto_c
    if-ge v1, p3, :cond_c8

    iget-object v4, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    array-length v4, v4

    iget v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/fsck/k9/codec/binary/Base64;->decodeSize:I

    if-ge v4, v5, :cond_1f

    :cond_1c
    invoke-direct {p0}, Lcom/fsck/k9/codec/binary/Base64;->resizeBuf()V

    :cond_1f
    add-int/lit8 p2, v2, 0x1

    aget-byte v0, p1, v2

    const/16 v4, 0x3d

    if-ne v0, v4, :cond_70

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->modulus:I

    packed-switch v4, :pswitch_data_cc

    :goto_32
    iput-boolean v7, p0, Lcom/fsck/k9/codec/binary/Base64;->eof:Z

    goto :goto_5

    :pswitch_35
    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    iget-object v4, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_32

    :pswitch_4d
    iget-object v4, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_32

    :cond_70
    if-ltz v0, :cond_c3

    sget-object v4, Lcom/fsck/k9/codec/binary/Base64;->base64ToInt:[B

    array-length v4, v4

    if-ge v0, v4, :cond_c3

    sget-object v4, Lcom/fsck/k9/codec/binary/Base64;->base64ToInt:[B

    aget-byte v3, v4, v0

    if-ltz v3, :cond_c3

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->modulus:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fsck/k9/codec/binary/Base64;->modulus:I

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/fsck/k9/codec/binary/Base64;->modulus:I

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iput v4, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->modulus:I

    if-nez v4, :cond_c3

    iget-object v4, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    :cond_c3
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    goto/16 :goto_c

    :cond_c8
    move p2, v2

    goto/16 :goto_5

    nop

    :pswitch_data_cc
    .packed-switch 0x2
        :pswitch_35
        :pswitch_4d
    .end packed-switch
.end method

.method public decode([B)[B
    .registers 3

    invoke-static {p1}, Lcom/fsck/k9/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    instance-of v0, p1, [B

    if-nez v0, :cond_c

    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/fsck/k9/codec/binary/Base64;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method encode([BII)V
    .registers 13

    const/16 v8, 0x3d

    const/4 v7, 0x0

    iget-boolean v3, p0, Lcom/fsck/k9/codec/binary/Base64;->eof:Z

    if-eqz v3, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    if-gez p3, :cond_c1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fsck/k9/codec/binary/Base64;->eof:Z

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->encodeSize:I

    if-ge v3, v4, :cond_1e

    :cond_1b
    invoke-direct {p0}, Lcom/fsck/k9/codec/binary/Base64;->resizeBuf()V

    :cond_1e
    iget v3, p0, Lcom/fsck/k9/codec/binary/Base64;->modulus:I

    packed-switch v3, :pswitch_data_170

    :goto_23
    iget v3, p0, Lcom/fsck/k9/codec/binary/Base64;->lineLength:I

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->lineSeparator:[B

    iget-object v4, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/fsck/k9/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iget-object v4, p0, Lcom/fsck/k9/codec/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    goto :goto_7

    :pswitch_3c
    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    aput-byte v8, v3, v4

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    aput-byte v8, v3, v4

    goto :goto_23

    :pswitch_79
    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0xa

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    aput-byte v8, v3, v4

    goto/16 :goto_23

    :cond_c1
    const/4 v1, 0x0

    move v2, p2

    :goto_c3
    if-ge v1, p3, :cond_16c

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    if-eqz v3, :cond_d3

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->encodeSize:I

    if-ge v3, v4, :cond_d6

    :cond_d3
    invoke-direct {p0}, Lcom/fsck/k9/codec/binary/Base64;->resizeBuf()V

    :cond_d6
    iget v3, p0, Lcom/fsck/k9/codec/binary/Base64;->modulus:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fsck/k9/codec/binary/Base64;->modulus:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/fsck/k9/codec/binary/Base64;->modulus:I

    add-int/lit8 p2, v2, 0x1

    aget-byte v0, p1, v2

    if-gez v0, :cond_e8

    add-int/lit16 v0, v0, 0x100

    :cond_e8
    iget v3, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    iget v3, p0, Lcom/fsck/k9/codec/binary/Base64;->modulus:I

    if-nez v3, :cond_167

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/fsck/k9/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/fsck/k9/codec/binary/Base64;->x:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget v3, p0, Lcom/fsck/k9/codec/binary/Base64;->currentLinePos:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/fsck/k9/codec/binary/Base64;->currentLinePos:I

    iget v3, p0, Lcom/fsck/k9/codec/binary/Base64;->lineLength:I

    if-lez v3, :cond_167

    iget v3, p0, Lcom/fsck/k9/codec/binary/Base64;->lineLength:I

    iget v4, p0, Lcom/fsck/k9/codec/binary/Base64;->currentLinePos:I

    if-gt v3, v4, :cond_167

    iget-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->lineSeparator:[B

    iget-object v4, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/fsck/k9/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iget-object v4, p0, Lcom/fsck/k9/codec/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iput v7, p0, Lcom/fsck/k9/codec/binary/Base64;->currentLinePos:I

    :cond_167
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    goto/16 :goto_c3

    :cond_16c
    move p2, v2

    goto/16 :goto_7

    nop

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_79
    .end packed-switch
.end method

.method public encode([B)[B
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fsck/k9/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method hasData()Z
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method readResults([BII)I
    .registers 8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/fsck/k9/codec/binary/Base64;->avail()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    if-eq v1, p1, :cond_27

    iget-object v1, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iget v2, p0, Lcom/fsck/k9/codec/binary/Base64;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/fsck/k9/codec/binary/Base64;->readPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fsck/k9/codec/binary/Base64;->readPos:I

    iget v1, p0, Lcom/fsck/k9/codec/binary/Base64;->readPos:I

    iget v2, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    if-lt v1, v2, :cond_25

    iput-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    :cond_25
    :goto_25
    move v1, v0

    :goto_26
    return v1

    :cond_27
    iput-object v3, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    goto :goto_25

    :cond_2a
    iget-boolean v1, p0, Lcom/fsck/k9/codec/binary/Base64;->eof:Z

    if-eqz v1, :cond_30

    const/4 v1, -0x1

    goto :goto_26

    :cond_30
    const/4 v1, 0x0

    goto :goto_26
.end method

.method setInitialBuffer([BII)V
    .registers 5

    if-eqz p1, :cond_b

    array-length v0, p1

    if-ne v0, p3, :cond_b

    iput-object p1, p0, Lcom/fsck/k9/codec/binary/Base64;->buf:[B

    iput p2, p0, Lcom/fsck/k9/codec/binary/Base64;->pos:I

    iput p2, p0, Lcom/fsck/k9/codec/binary/Base64;->readPos:I

    :cond_b
    return-void
.end method
