.class public Lcom/glympse/android/ws/WebSocketParser;
.super Ljava/lang/Object;
.source "WebSocketParser.java"


# static fields
.field public static final OP_BINARY:I = 0x2

.field public static final OP_CLOSE:I = 0x8

.field public static final OP_CONTINUATION:I = 0x0

.field public static final OP_PING:I = 0x9

.field public static final OP_PONG:I = 0xa

.field public static final OP_TEXT:I = 0x1

.field private static final wA:I = 0x1

.field private static final wB:I = 0x2

.field private static final wv:I = 0xff

.field private static final ww:I = 0x80

.field private static final wx:I = 0xf

.field private static final wy:I = 0x80

.field private static final wz:I = 0x7f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BII)J
    .registers 12

    const-wide/16 v1, 0x0

    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v3, v0, 0x8

    const/4 v0, 0x0

    move v6, v0

    move-wide v7, v1

    move-wide v0, v7

    move v2, v6

    :goto_b
    if-ge v2, p1, :cond_2b

    if-lez v2, :cond_1f

    add-int v4, p2, v2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v5, v2, 0x8

    sub-int v5, v3, v5

    shl-int/2addr v4, v5

    int-to-long v4, v4

    or-long/2addr v0, v4

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1f
    add-int v4, p2, v2

    aget-byte v4, p0, v4

    mul-int/lit8 v5, v2, 0x8

    sub-int v5, v3, v5

    shl-int/2addr v4, v5

    int-to-long v4, v4

    or-long/2addr v0, v4

    goto :goto_1c

    :cond_2b
    const/4 v2, 0x2

    if-ne p1, v2, :cond_32

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    :cond_32
    return-wide v0
.end method

.method private static a([B[BI)[B
    .registers 7

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_16

    add-int v1, p2, v0

    add-int v2, p2, v0

    aget-byte v2, p0, v2

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-object p0
.end method

.method public static calculateFrameSize(I)I
    .registers 3

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/glympse/android/ws/WebSocketParser;->getHeaderLengthFromPayloadLength(J)I

    move-result v0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static checkHandshakeResponse(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-string v1, "101"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "\r\n"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v1, :cond_13

    if-ltz v2, :cond_13

    if-le v1, v2, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    const-string v1, "Sec-WebSocket-Accept"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_13

    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ltz v3, :cond_13

    if-lt v3, v1, :cond_13

    invoke-static {p0, v1, v3}, Lcom/glympse/android/hal/Helpers;->substrend(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static checkReserveBits(B)Z
    .registers 2

    and-int/lit8 v0, p0, 0x70

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static dF()[B
    .registers 7

    const/4 v6, 0x4

    new-array v1, v6, [B

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v6, :cond_18

    invoke-static {}, Lcom/glympse/android/hal/Platform;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4070

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_18
    return-object v1
.end method

.method public static generateHandshake(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HTTP/1.1\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Upgrade: websocket\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Connection: Upgrade\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Origin: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sec-WebSocket-Key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Sec-WebSocket-Version: 13\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateSecret()[B
    .registers 7

    const/16 v6, 0x10

    new-array v1, v6, [B

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v6, :cond_15

    invoke-static {}, Lcom/glympse/android/hal/Platform;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4070

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_15
    return-object v1
.end method

.method public static getHeaderLengthFromPayloadLength(J)I
    .registers 4

    const-wide/16 v0, 0x7d

    cmp-long v0, p0, v0

    if-gtz v0, :cond_8

    const/4 v0, 0x2

    :goto_7
    return v0

    :cond_8
    const-wide/32 v0, 0xffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_11

    const/4 v0, 0x4

    goto :goto_7

    :cond_11
    const/16 v0, 0xa

    goto :goto_7
.end method

.method public static parseExtendedPayloadLength(Lcom/glympse/android/hal/GByteVector;II)J
    .registers 5

    invoke-interface {p0}, Lcom/glympse/android/hal/GByteVector;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/glympse/android/ws/WebSocketParser;->a([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseFin(B)Z
    .registers 3

    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static parseHeaderIsValid([B)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0x70

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method public static parseOpCode(B)I
    .registers 2

    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method public static parsePayloadLength(B)I
    .registers 2

    and-int/lit8 v0, p0, 0x7f

    return v0
.end method

.method public static parseReasonCode(Lcom/glympse/android/hal/GByteVector;)I
    .registers 4

    const/4 v2, 0x2

    invoke-interface {p0}, Lcom/glympse/android/hal/GByteVector;->size()I

    move-result v0

    if-ge v0, v2, :cond_a

    const/16 v0, 0x3e8

    :goto_9
    return v0

    :cond_a
    invoke-interface {p0}, Lcom/glympse/android/hal/GByteVector;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/glympse/android/ws/WebSocketParser;->a([BII)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_9
.end method

.method public static parseReasonString(Lcom/glympse/android/hal/GByteVector;Z)Ljava/lang/String;
    .registers 6

    invoke-interface {p0}, Lcom/glympse/android/hal/GByteVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-gtz v0, :cond_f

    const-string v0, ""

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    new-instance v1, Lcom/glympse/android/hal/ByteVector;

    invoke-direct {v1, v0}, Lcom/glympse/android/hal/ByteVector;-><init>(I)V

    invoke-interface {p0}, Lcom/glympse/android/hal/GByteVector;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3, v0}, Lcom/glympse/android/hal/GByteVector;->appendRange([BII)V

    const-string v0, "UTF-8"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/glympse/android/hal/GByteVector;->stringEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static prepareFrame([BI)[B
    .registers 15

    const/4 v12, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v11, 0x0

    const-wide/high16 v9, 0x4000

    array-length v0, p0

    invoke-static {v0}, Lcom/glympse/android/ws/WebSocketParser;->calculateFrameSize(I)I

    move-result v1

    new-array v1, v1, [B

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/glympse/android/ws/WebSocketParser;->getHeaderLengthFromPayloadLength(J)I

    move-result v2

    add-int/lit8 v3, v2, 0x4

    int-to-byte v4, p1

    or-int/lit8 v4, v4, -0x80

    int-to-byte v4, v4

    aput-byte v4, v1, v11

    const/16 v4, 0x7d

    if-gt v0, v4, :cond_32

    or-int/lit16 v4, v0, 0x80

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    :goto_23
    invoke-static {p0, v11, v1, v3, v0}, Lcom/glympse/android/hal/Helpers;->copyByteArray([BI[BII)V

    invoke-static {}, Lcom/glympse/android/ws/WebSocketParser;->dF()[B

    move-result-object v0

    array-length v4, v0

    invoke-static {v0, v11, v1, v2, v4}, Lcom/glympse/android/hal/Helpers;->copyByteArray([BI[BII)V

    invoke-static {v1, v0, v3}, Lcom/glympse/android/ws/WebSocketParser;->a([B[BI)[B

    return-object v1

    :cond_32
    const v4, 0xffff

    if-gt v0, v4, :cond_4c

    const/4 v4, -0x2

    aput-byte v4, v1, v5

    int-to-double v4, v0

    const-wide/high16 v6, 0x4070

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v12

    goto :goto_23

    :cond_4c
    const/4 v4, -0x1

    aput-byte v4, v1, v5

    int-to-double v4, v0

    const-wide/high16 v6, 0x404c

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    int-to-double v4, v0

    const-wide/high16 v6, 0x4048

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v12

    const/4 v4, 0x4

    int-to-double v5, v0

    const-wide/high16 v7, 0x4044

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v4, 0x5

    int-to-double v5, v0

    const-wide/high16 v7, 0x4040

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v4, 0x6

    int-to-double v5, v0

    const-wide/high16 v7, 0x4038

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v4, 0x7

    int-to-double v5, v0

    const-wide/high16 v7, 0x4030

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x8

    int-to-double v5, v0

    const-wide/high16 v7, 0x4020

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x9

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    goto/16 :goto_23
.end method

.method public static prepareReasonCode(I)[B
    .registers 4

    const v0, 0xffff

    if-le p0, v0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    goto :goto_6
.end method
