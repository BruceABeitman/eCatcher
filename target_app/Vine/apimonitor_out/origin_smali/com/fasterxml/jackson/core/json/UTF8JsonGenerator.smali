.class public Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;
.super Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;
.source "UTF8JsonGenerator.java"


# static fields
.field private static final BYTE_0:B = 0x30t

.field private static final BYTE_BACKSLASH:B = 0x5ct

.field private static final BYTE_COLON:B = 0x3at

.field private static final BYTE_COMMA:B = 0x2ct

.field private static final BYTE_LBRACKET:B = 0x5bt

.field private static final BYTE_LCURLY:B = 0x7bt

.field private static final BYTE_QUOTE:B = 0x22t

.field private static final BYTE_RBRACKET:B = 0x5dt

.field private static final BYTE_RCURLY:B = 0x7dt

.field private static final BYTE_u:B = 0x75t

.field private static final FALSE_BYTES:[B = null

.field static final HEX_CHARS:[B = null

.field private static final MAX_BYTES_TO_BUFFER:I = 0x200

.field private static final NULL_BYTES:[B = null

.field protected static final SURR1_FIRST:I = 0xd800

.field protected static final SURR1_LAST:I = 0xdbff

.field protected static final SURR2_FIRST:I = 0xdc00

.field protected static final SURR2_LAST:I = 0xdfff

.field private static final TRUE_BYTES:[B


# instance fields
.field protected _bufferRecyclable:Z

.field protected final _cfgQuoteNames:Z

.field protected _charBuffer:[C

.field protected final _charBufferLength:I

.field protected _entityBuffer:[B

.field protected _outputBuffer:[B

.field protected final _outputEnd:I

.field protected final _outputMaxContiguous:I

.field protected final _outputStream:Ljava/io/OutputStream;

.field protected _outputTail:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x4

    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->NULL_BYTES:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_24

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->TRUE_BYTES:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->FALSE_BYTES:[B

    return-void

    :array_1e
    .array-data 0x1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    :array_24
    .array-data 0x1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    :array_2a
    .array-data 0x1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/OutputStream;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_bufferRecyclable:Z

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    :cond_34
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgQuoteNames:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/OutputStream;[BIZ)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    iput-boolean p7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_bufferRecyclable:Z

    iput p6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgQuoteNames:Z

    return-void
.end method

.method private final _handleLongCustomEscape([BII[BI)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/4 v3, 0x0

    array-length v1, p4

    add-int v0, p2, v1

    if-le v0, p3, :cond_25

    iput p2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    array-length v2, p1

    if-le v1, v2, :cond_16

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, p4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-static {p4, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    :goto_1a
    mul-int/lit8 v1, p5, 0x6

    add-int/2addr v1, v0

    if-le v1, p3, :cond_15

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_15

    :cond_25
    move v0, p2

    goto :goto_1a
.end method

.method private final _outputMultiByteChar(II)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    const v0, 0xd800

    if-lt p1, v0, :cond_47

    const v0, 0xdfff

    if-gt p1, v0, :cond_47

    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, v1, p2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x75

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v4, p1, 0x8

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v0

    add-int/lit8 v3, v2, 0x1

    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v4, p1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-byte v0, v0, v4

    aput-byte v0, v1, v2

    add-int/lit8 v0, v3, 0x1

    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    and-int/lit8 v4, p1, 0xf

    aget-byte v2, v2, v4

    aput-byte v2, v1, v3

    :goto_46
    return v0

    :cond_47
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v1, p2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_46
.end method

.method private final _outputRawMultiByteChar(I[CII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xd800

    if-lt p1, v0, :cond_1b

    const v0, 0xdfff

    if-gt p1, v0, :cond_1b

    if-ge p3, p4, :cond_e

    if-nez p2, :cond_13

    :cond_e
    const-string v0, "Split surrogate on writeRaw() input (last character)"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    :cond_13
    aget-char v0, p2, p3

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputSurrogates(II)V

    add-int/lit8 p3, p3, 0x1

    :goto_1a
    return p3

    :cond_1b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1a
.end method

.method private final _readMore(Ljava/io/InputStream;[BIII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge p3, p4, :cond_e

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, p3, 0x1

    aget-byte v3, p2, p3

    aput-byte v3, p2, v0

    move v0, v1

    move p3, v2

    goto :goto_1

    :cond_e
    array-length v1, p2

    invoke-static {p5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_13
    sub-int v2, v1, v0

    if-nez v2, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    invoke-virtual {p1, p2, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_17

    add-int/2addr v0, v2

    const/4 v2, 0x3

    if-lt v0, v2, :cond_13

    goto :goto_17
.end method

.method private final _writeBytes([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    array-length v0, p1

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_16

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    const/16 v1, 0x200

    if-le v0, v1, :cond_16

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    :goto_15
    return-void

    :cond_16
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_15
.end method

.method private final _writeBytes([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    const/16 v0, 0x200

    if-le p3, v0, :cond_14

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_13
.end method

.method private final _writeCustomEscape([BILcom/fasterxml/jackson/core/SerializableString;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    invoke-interface {p3}, Lcom/fasterxml/jackson/core/SerializableString;->asUnquotedUTF8()[B

    move-result-object v4

    array-length v0, v4

    const/4 v1, 0x6

    if-le v0, v1, :cond_13

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_handleLongCustomEscape([BII[BI)I

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v1, 0x0

    invoke-static {v4, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p2

    goto :goto_12
.end method

.method private final _writeCustomStringSegment2([CII)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_e
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    if-gtz v0, :cond_33

    const v0, 0xffff

    :goto_1b
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    :goto_1d
    if-ge p2, p3, :cond_b2

    add-int/lit8 v3, p2, 0x1

    aget-char v7, p1, p2

    const/16 v2, 0x7f

    if-gt v7, v2, :cond_7e

    aget v2, v5, v7

    if-nez v2, :cond_36

    add-int/lit8 v2, v1, 0x1

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    move v1, v2

    move p2, v3

    goto :goto_1d

    :cond_33
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    goto :goto_1b

    :cond_36
    aget v2, v5, v7

    if-lez v2, :cond_47

    add-int/lit8 v7, v1, 0x1

    const/16 v8, 0x5c

    aput-byte v8, v4, v1

    add-int/lit8 v1, v7, 0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v7

    move p2, v3

    goto :goto_1d

    :cond_47
    const/4 v8, -0x2

    if-ne v2, v8, :cond_78

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v2

    if-nez v2, :cond_70

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", although was supposed to have one"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    :cond_70
    sub-int v7, p3, v3

    invoke-direct {p0, v4, v1, v2, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeCustomEscape([BILcom/fasterxml/jackson/core/SerializableString;I)I

    move-result v1

    move p2, v3

    goto :goto_1d

    :cond_78
    invoke-direct {p0, v7, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v1

    move p2, v3

    goto :goto_1d

    :cond_7e
    if-le v7, v0, :cond_86

    invoke-direct {p0, v7, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v1

    move p2, v3

    goto :goto_1d

    :cond_86
    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v2

    if-eqz v2, :cond_94

    sub-int v7, p3, v3

    invoke-direct {p0, v4, v1, v2, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeCustomEscape([BILcom/fasterxml/jackson/core/SerializableString;I)I

    move-result v1

    move p2, v3

    goto :goto_1d

    :cond_94
    const/16 v2, 0x7ff

    if-gt v7, v2, :cond_ad

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v8, v7, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v4, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v4, v2

    :goto_aa
    move p2, v3

    goto/16 :goto_1d

    :cond_ad
    invoke-direct {p0, v7, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMultiByteChar(II)I

    move-result v1

    goto :goto_aa

    :cond_b2
    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    return-void
.end method

.method private _writeGenericEscape(II)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x30

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, v1, p2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x75

    aput-byte v3, v1, v0

    const/16 v0, 0xff

    if-le p1, v0, :cond_43

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v3, v0, 0xff

    add-int/lit8 v4, v2, 0x1

    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v5, v3, 0x4

    aget-byte v0, v0, v5

    aput-byte v0, v1, v2

    add-int/lit8 v0, v4, 0x1

    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v1, v4

    and-int/lit16 p1, p1, 0xff

    :goto_2e
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v4, p1, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    and-int/lit8 v4, p1, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    return v0

    :cond_43
    add-int/lit8 v3, v2, 0x1

    aput-byte v4, v1, v2

    add-int/lit8 v0, v3, 0x1

    aput-byte v4, v1, v3

    goto :goto_2e
.end method

.method private _writeLongString(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x22

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_21

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_21
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    return-void
.end method

.method private _writeLongString([CII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x22

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments([CII)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_24

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_24
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    return-void
.end method

.method private final _writeNull()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_b
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->NULL_BYTES:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    return-void
.end method

.method private final _writeQuotedInt(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x22

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    return-void
.end method

.method private final _writeQuotedLong(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x22

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    return-void
.end method

.method private final _writeQuotedRaw(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x22

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_25

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_25
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    return-void
.end method

.method private final _writeQuotedShort(S)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x22

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    return-void
.end method

.method private final _writeSegmentedRaw([CII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    move v0, p2

    :goto_5
    if-ge v0, p3, :cond_50

    :cond_7
    aget-char v1, p1, v0

    const/16 v4, 0x80

    if-lt v1, v4, :cond_3c

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v1, v1, 0x3

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v4, :cond_18

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_18
    add-int/lit8 v1, v0, 0x1

    aget-char v0, p1, v0

    const/16 v4, 0x800

    if-ge v0, v4, :cond_51

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    move v0, v1

    goto :goto_5

    :cond_3c
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-lt v4, v2, :cond_43

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_43
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_7

    :cond_50
    return-void

    :cond_51
    invoke-direct {p0, v0, p1, v1, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputRawMultiByteChar(I[CII)I

    move-result v0

    goto :goto_5
.end method

.method private final _writeStringSegment([CII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    add-int v2, p3, p2

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    :goto_8
    if-ge p2, v2, :cond_14

    aget-char v5, p1, p2

    const/16 v1, 0x7f

    if-gt v5, v1, :cond_14

    aget v1, v4, v5

    if-eqz v1, :cond_20

    :cond_14
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-ge p2, v2, :cond_1f

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v0, :cond_29

    invoke-direct {p0, p1, p2, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeCustomStringSegment2([CII)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    add-int/lit8 p2, p2, 0x1

    move v0, v1

    goto :goto_8

    :cond_29
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    if-nez v0, :cond_31

    invoke-direct {p0, p1, p2, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment2([CII)V

    goto :goto_1f

    :cond_31
    invoke-direct {p0, p1, p2, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegmentASCII2([CII)V

    goto :goto_1f
.end method

.method private final _writeStringSegment2([CII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_e
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    :goto_14
    if-ge p2, p3, :cond_5e

    add-int/lit8 v2, p2, 0x1

    aget-char v5, p1, p2

    const/16 v1, 0x7f

    if-gt v5, v1, :cond_41

    aget v1, v4, v5

    if-nez v1, :cond_2a

    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    move v0, v1

    move p2, v2

    goto :goto_14

    :cond_2a
    aget v1, v4, v5

    if-lez v1, :cond_3b

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x5c

    aput-byte v6, v3, v0

    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v5

    move p2, v2

    goto :goto_14

    :cond_3b
    invoke-direct {p0, v5, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v0

    move p2, v2

    goto :goto_14

    :cond_41
    const/16 v1, 0x7ff

    if-gt v5, v1, :cond_59

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    :goto_57
    move p2, v2

    goto :goto_14

    :cond_59
    invoke-direct {p0, v5, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMultiByteChar(II)I

    move-result v0

    goto :goto_57

    :cond_5e
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    return-void
.end method

.method private final _writeStringSegmentASCII2([CII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_e
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    :goto_16
    if-ge p2, p3, :cond_68

    add-int/lit8 v2, p2, 0x1

    aget-char v6, p1, p2

    const/16 v1, 0x7f

    if-gt v6, v1, :cond_43

    aget v1, v4, v6

    if-nez v1, :cond_2c

    add-int/lit8 v1, v0, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    move p2, v2

    goto :goto_16

    :cond_2c
    aget v1, v4, v6

    if-lez v1, :cond_3d

    add-int/lit8 v6, v0, 0x1

    const/16 v7, 0x5c

    aput-byte v7, v3, v0

    add-int/lit8 v0, v6, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    move p2, v2

    goto :goto_16

    :cond_3d
    invoke-direct {p0, v6, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v0

    move p2, v2

    goto :goto_16

    :cond_43
    if-le v6, v5, :cond_4b

    invoke-direct {p0, v6, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v0

    move p2, v2

    goto :goto_16

    :cond_4b
    const/16 v1, 0x7ff

    if-gt v6, v1, :cond_63

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v7, v6, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v0

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    :goto_61
    move p2, v2

    goto :goto_16

    :cond_63
    invoke-direct {p0, v6, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMultiByteChar(II)I

    move-result v0

    goto :goto_61

    :cond_68
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    return-void
.end method

.method private final _writeStringSegments(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    move v2, v0

    move v0, v1

    :goto_9
    if-lez v2, :cond_26

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v5, v0, v4

    invoke-virtual {p1, v0, v5, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v5, v6, :cond_20

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_20
    invoke-direct {p0, v3, v1, v4}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    add-int/2addr v0, v4

    sub-int/2addr v2, v4

    goto :goto_9

    :cond_26
    return-void
.end method

.method private final _writeStringSegments([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_10
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_0

    return-void
.end method

.method private final _writeUTF8Segment([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    add-int v3, p2, p3

    move v0, p2

    :goto_5
    if-ge v0, v3, :cond_17

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_15

    aget v0, v2, v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUTF8Segment2([BII)V

    :goto_14
    return-void

    :cond_15
    move v0, v1

    goto :goto_5

    :cond_17
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v0, v1, :cond_21

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_21
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_14
.end method

.method private final _writeUTF8Segment2([BII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    mul-int/lit8 v1, p3, 0x6

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    :cond_e
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    add-int v5, p3, p2

    :goto_14
    if-ge p2, v5, :cond_3d

    add-int/lit8 v2, p2, 0x1

    aget-byte v6, p1, p2

    if-ltz v6, :cond_20

    aget v1, v4, v6

    if-nez v1, :cond_27

    :cond_20
    add-int/lit8 v1, v0, 0x1

    aput-byte v6, v3, v0

    move v0, v1

    move p2, v2

    goto :goto_14

    :cond_27
    aget v1, v4, v6

    if-lez v1, :cond_38

    add-int/lit8 v6, v0, 0x1

    const/16 v7, 0x5c

    aput-byte v7, v3, v0

    add-int/lit8 v0, v6, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    :goto_36
    move p2, v2

    goto :goto_14

    :cond_38
    invoke-direct {p0, v6, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v0

    goto :goto_36

    :cond_3d
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    return-void
.end method

.method private final _writeUTF8Segments([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUTF8Segment([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_0

    return-void
.end method


# virtual methods
.method protected final _decodeSurrogate(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v2, 0xdc00

    if-lt p2, v2, :cond_a

    const v0, 0xdfff

    if-le p2, v0, :cond_32

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incomplete surrogate pair: first char 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", second 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    :cond_32
    const/high16 v0, 0x1

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    return v0
.end method

.method protected final _flushBuffer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-lez v0, :cond_e

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_e
    return-void
.end method

.method protected final _outputSurrogates(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_decodeSurrogate(II)I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_f

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_f
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v3, v0, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    return-void
.end method

.method protected _releaseBuffers()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_bufferRecyclable:Z

    if-eqz v1, :cond_10

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseWriteEncodingBuffer([B)V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    if-eqz v0, :cond_1b

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseConcatBuffer([C)V

    :cond_1b
    return-void
.end method

.method protected final _verifyPrettyValueWrite(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_36

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_throwInternal()V

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeArrayValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_6

    :pswitch_d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_6

    :pswitch_13
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeRootValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_6

    :pswitch_19
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inArray()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeArrayValues(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_6

    :cond_27
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_6

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_19
        :pswitch_7
        :pswitch_d
        :pswitch_13
    .end packed-switch
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    :cond_25
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-nez v1, :cond_59

    packed-switch v0, :pswitch_data_5e

    :cond_2c
    :goto_2c
    return-void

    :pswitch_2d
    const/16 v0, 0x2c

    :goto_2f
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_38

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_38
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v0, v1, v2

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_2c

    :pswitch_45
    const/16 v0, 0x3a

    goto :goto_2f

    :pswitch_48
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/SerializableString;->asUnquotedUTF8()[B

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_2c

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    goto :goto_2c

    :cond_59
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyPrettyValueWrite(Ljava/lang/String;I)V

    goto :goto_2c

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_45
        :pswitch_48
    .end packed-switch
.end method

.method protected final _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, -0x3

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    add-int/lit8 v10, v1, -0x6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    move v9, v1

    move v8, v6

    move v4, v6

    move v3, v6

    :goto_11
    if-le v3, v0, :cond_46

    array-length v5, p3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v4

    const/4 v0, 0x3

    if-ge v4, v0, :cond_43

    if-ge v6, v4, :cond_97

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v0, v10, :cond_27

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_27
    aget-byte v0, p3, v6

    shl-int/lit8 v0, v0, 0x10

    if-ge v7, v4, :cond_94

    aget-byte v1, p3, v7

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    const/4 v0, 0x2

    :goto_35
    add-int v2, v8, v0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v1, v0, v3, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    move v0, v2

    :goto_42
    return v0

    :cond_43
    add-int/lit8 v0, v4, -0x3

    move v3, v6

    :cond_46
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v1, v10, :cond_4d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_4d
    add-int/lit8 v1, v3, 0x1

    aget-byte v2, p3, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v5, 0x1

    aget-byte v2, p3, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v8, v8, 0x3

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v1, v2, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[BI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v1, v9, -0x1

    if-gtz v1, :cond_91

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v5, 0x5c

    aput-byte v5, v1, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v5, 0x6e

    aput-byte v5, v1, v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    :cond_91
    move v9, v1

    goto/16 :goto_11

    :cond_94
    move v1, v0

    move v0, v7

    goto :goto_35

    :cond_97
    move v0, v8

    goto :goto_42
.end method

.method protected final _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, -0x3

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    add-int/lit8 v7, v1, -0x6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    move v6, v1

    move v5, p4

    :goto_f
    const/4 v1, 0x2

    if-le v5, v1, :cond_1f

    if-le v3, v0, :cond_4f

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v4

    const/4 v3, 0x0

    const/4 v0, 0x3

    if-ge v4, v0, :cond_4d

    :cond_1f
    if-lez v5, :cond_4c

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4c

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v2, v7, :cond_32

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_32
    const/4 v2, 0x1

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x10

    if-ge v2, v0, :cond_9d

    aget-byte v0, p3, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    const/4 v0, 0x2

    :goto_41
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[BI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    sub-int/2addr v5, v0

    :cond_4c
    return v5

    :cond_4d
    add-int/lit8 v0, v4, -0x3

    :cond_4f
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v1, v7, :cond_56

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_56
    add-int/lit8 v1, v3, 0x1

    aget-byte v2, p3, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v8, v1, 0x1

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v8, 0x1

    aget-byte v2, p3, v8

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v5, v5, -0x3

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v1, v2, v8}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[BI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v1, v6, -0x1

    if-gtz v1, :cond_9a

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v6, 0x5c

    aput-byte v6, v1, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v6, 0x6e

    aput-byte v6, v1, v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    :cond_9a
    move v6, v1

    goto/16 :goto_f

    :cond_9d
    const/4 v0, 0x1

    goto :goto_41
.end method

.method protected final _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    add-int/lit8 v1, p4, -0x3

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    add-int/lit8 v2, v0, -0x6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    :cond_c
    :goto_c
    if-gt p3, v1, :cond_58

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v3, v2, :cond_15

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_15
    add-int/lit8 v3, p3, 0x1

    aget-byte v4, p2, p3

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 p3, v5, 0x1

    aget-byte v4, p2, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[BI)I

    move-result v3

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_c

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v4, 0x5c

    aput-byte v4, v0, v3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v4, 0x6e

    aput-byte v4, v0, v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    goto :goto_c

    :cond_58
    sub-int v1, p4, p3

    if-lez v1, :cond_7f

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v0, v2, :cond_63

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_63
    add-int/lit8 v2, p3, 0x1

    aget-byte v0, p2, p3

    shl-int/lit8 v0, v0, 0x10

    const/4 v3, 0x2

    if-ne v1, v3, :cond_75

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    :cond_75
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    :cond_7f
    return-void
.end method

.method protected final _writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x22

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgQuoteNames:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/core/SerializableString;->appendQuotedUTF8([BI)I

    move-result v0

    if-gez v0, :cond_18

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    :goto_17
    return-void

    :cond_18
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_17

    :cond_1e
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_27

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_27
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/core/SerializableString;->appendQuotedUTF8([BI)I

    move-result v0

    if-gez v0, :cond_56

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    :goto_42
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_4b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_4b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    goto :goto_17

    :cond_56
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_42
.end method

.method protected final _writeFieldName(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v4, 0x22

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgQuoteNames:Z

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    if-gt v0, v1, :cond_58

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-gt v0, v1, :cond_52

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_39

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_39
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v3, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    :goto_3e
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_47

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_47
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v0, v1

    goto :goto_a

    :cond_52
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v3, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments([CII)V

    goto :goto_3e

    :cond_58
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method protected final _writePPFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v4, 0x22

    if-eqz p2, :cond_3d

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :goto_9
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgQuoteNames:Z

    if-eqz v0, :cond_20

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_16

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_16
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v1, v2

    :cond_20
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    if-eqz v0, :cond_3c

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_32

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_32
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v0, v1

    :cond_3c
    return-void

    :cond_3d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_9
.end method

.method protected final _writePPFieldName(Ljava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v4, 0x22

    const/4 v3, 0x0

    if-eqz p2, :cond_55

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :goto_a
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgQuoteNames:Z

    if-eqz v0, :cond_65

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_17

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_17
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    if-gt v0, v1, :cond_61

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-gt v0, v1, :cond_5b

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_3c

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_3c
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v3, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    :goto_41
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_4a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_4a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v0, v1

    :goto_54
    return-void

    :cond_55
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_a

    :cond_5b
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v3, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments([CII)V

    goto :goto_41

    :cond_61
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;)V

    goto :goto_41

    :cond_65
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;)V

    goto :goto_54
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->close()V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    if-eqz v0, :cond_27

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_f
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeEndArray()V

    goto :goto_f

    :cond_1d
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeEndObject()V

    goto :goto_f

    :cond_27
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_3e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_releaseBuffers()V

    return-void

    :cond_47
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_43
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_14
    return-void
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v4, 0x22

    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B

    move-result-object v1

    if-gez p3, :cond_3f

    :try_start_22
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_6c

    move-result p3

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_34

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_34
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v0, v1

    return p3

    :cond_3f
    :try_start_3f
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I

    move-result v0

    if-lez v0, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too few bytes available: missing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes (out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_3f .. :try_end_6b} :catchall_6c

    goto :goto_26

    :catchall_6c
    move-exception v0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    throw v0
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x22

    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    add-int v0, p3, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_28

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_28
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    return-void
.end method

.method public writeBoolean(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_10
    if-eqz p1, :cond_23

    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->TRUE_BYTES:[B

    :goto_14
    array-length v1, v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    return-void

    :cond_23
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->FALSE_BYTES:[B

    goto :goto_14
.end method

.method public final writeEndArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    :cond_24
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeEndArray(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    :goto_33
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    return-void

    :cond_3c
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_45

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_45
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    goto :goto_33
.end method

.method public final writeEndObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    :cond_24
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeEndObject(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    :goto_33
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    return-void

    :cond_3c
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_45

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_45
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    goto :goto_33
.end method

.method public writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    :cond_13
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v2, :cond_1f

    if-ne v1, v0, :cond_1d

    :goto_19
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writePPFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V

    :goto_1c
    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_19

    :cond_1f
    if-ne v1, v0, :cond_36

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_2a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    :cond_36
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    goto :goto_1c
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    :cond_f
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v2, :cond_1b

    if-ne v1, v0, :cond_19

    :goto_15
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writePPFieldName(Ljava/lang/String;Z)V

    :goto_18
    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_15

    :cond_1b
    if-ne v1, v0, :cond_32

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_26

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_26
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    :cond_32
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeFieldName(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public writeNull()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeNull()V

    return-void
.end method

.method public writeNumber(D)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_18

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_18
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public writeNumber(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_18

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_18
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public writeNumber(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_10
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_18

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedInt(I)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_17
.end method

.method public writeNumber(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedLong(J)V

    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_18
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_c
.end method

.method public writeNumber(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeNull()V

    :goto_a
    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_a

    :cond_13
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_a

    :cond_23
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeNull()V

    :goto_a
    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public writeNumber(S)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_10
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_18

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedShort(S)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_17
.end method

.method public writeRaw(C)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1c

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :goto_1b
    return-void

    :cond_1c
    const/16 v1, 0x800

    if-ge p1, v1, :cond_3b

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v2, p1, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1b

    :cond_3b
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputRawMultiByteChar(I[CII)I

    goto :goto_1b
.end method

.method public writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asUnquotedUTF8()[B

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_a

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    :cond_a
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v3

    :goto_6
    if-lez v1, :cond_19

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    array-length v0, v4

    if-ge v1, v0, :cond_e

    move v0, v1

    :cond_e
    add-int v5, v2, v0

    invoke-virtual {p1, v2, v5, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v4, v3, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw([CII)V

    add-int/2addr v2, v0

    sub-int/2addr v1, v0

    goto :goto_6

    :cond_19
    return-void
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/4 v4, 0x0

    move v1, p3

    :goto_2
    if-lez v1, :cond_15

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    array-length v0, v2

    if-ge v1, v0, :cond_a

    move v0, v1

    :cond_a
    add-int v3, p2, v0

    invoke-virtual {p1, p2, v3, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v2, v4, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw([CII)V

    add-int/2addr p2, v0

    sub-int/2addr v1, v0

    goto :goto_2

    :cond_15
    return-void
.end method

.method public final writeRaw([CII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    add-int v0, p3, p3

    add-int/2addr v0, p3

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_15

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-ge v1, v0, :cond_12

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeSegmentedRaw([CII)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_15
    add-int v2, p3, p2

    move v0, p2

    :goto_18
    if-ge v0, v2, :cond_11

    :cond_1a
    aget-char v1, p1, v0

    const/16 v3, 0x7f

    if-le v1, v3, :cond_48

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p1, v0

    const/16 v3, 0x800

    if-ge v0, v3, :cond_58

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    move v0, v1

    goto :goto_18

    :cond_48
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_1a

    goto :goto_11

    :cond_58
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputRawMultiByteChar(I[CII)I

    move-result v0

    goto :goto_18
.end method

.method public writeRawUTF8String([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x22

    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([BII)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_26

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_26
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    return-void
.end method

.method public final writeStartArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildArrayContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :goto_16
    return-void

    :cond_17
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_20

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_20
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    goto :goto_16
.end method

.method public final writeStartObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildObjectContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeStartObject(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :goto_16
    return-void

    :cond_17
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_20

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_20
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    goto :goto_16
.end method

.method public final writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x22

    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/core/SerializableString;->appendQuotedUTF8([BI)I

    move-result v0

    if-gez v0, :cond_3f

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    :goto_2b
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_34

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_34
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    return-void

    :cond_3f
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_2b
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v5, 0x22

    const/4 v4, 0x0

    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    if-nez p1, :cond_e

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeNull()V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    if-le v0, v1, :cond_1a

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeLongString(Ljava/lang/String;)V

    goto :goto_d

    :cond_1a
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-virtual {p1, v4, v0, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-le v0, v1, :cond_29

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v4, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeLongString([CII)V

    goto :goto_d

    :cond_29
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_33

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_33
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v5, v1, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v4, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_4b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_4b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v5, v0, v1

    goto :goto_d
.end method

.method public writeString([CII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x22

    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-gt p3, v0, :cond_3f

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v0, v1, :cond_28

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_28
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    :goto_2b
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_34

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_34
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    return-void

    :cond_3f
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments([CII)V

    goto :goto_2b
.end method

.method public writeUTF8String([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x22

    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-gt p3, v0, :cond_35

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUTF8Segment([BII)V

    :goto_21
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    :cond_2a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    return-void

    :cond_35
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUTF8Segments([BII)V

    goto :goto_21
.end method
