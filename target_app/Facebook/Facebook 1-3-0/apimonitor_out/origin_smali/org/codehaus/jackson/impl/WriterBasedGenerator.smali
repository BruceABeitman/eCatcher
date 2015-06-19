.class public final Lorg/codehaus/jackson/impl/WriterBasedGenerator;
.super Lorg/codehaus/jackson/impl/JsonGeneratorBase;


# static fields
.field static final HEX_CHARS:[C = null

.field static final SHORT_WRITE:I = 0x20


# instance fields
.field protected _entityBuffer:[C

.field protected final _ioContext:Lorg/codehaus/jackson/io/IOContext;

.field protected _outputBuffer:[C

.field protected _outputEnd:I

.field protected _outputHead:I

.field protected _outputTail:I

.field protected final _writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILorg/codehaus/jackson/ObjectCodec;Ljava/io/Writer;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILorg/codehaus/jackson/ObjectCodec;)V

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput-object p1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    iput-object p4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    return-void
.end method

.method private _appendSingleEscape(I[CI)V
    .registers 8

    const/16 v1, 0x5c

    const/16 v3, 0x30

    if-gez p1, :cond_2e

    add-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    aput-char v1, p2, p3

    add-int/lit8 v1, p3, 0x1

    const/16 v2, 0x75

    aput-char v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    aput-char v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    aput-char v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v3, v0, 0x4

    aget-char v2, v2, v3

    aput-char v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v2, v0

    aput-char v0, p2, v1

    :goto_2d
    return-void

    :cond_2e
    aput-char v1, p2, p3

    add-int/lit8 v0, p3, 0x1

    int-to-char v1, p1

    aput-char v1, p2, v0

    goto :goto_2d
.end method

.method private _writeLongString(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v5

    :cond_9
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    add-int v3, v1, v2

    if-le v3, v0, :cond_11

    sub-int v2, v0, v1

    :cond_11
    add-int v3, v1, v2

    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v1, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeSegment(I)V

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_9

    return-void
.end method

.method private final _writeSegment(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getOutputEscapes()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, p1, :cond_20

    move v3, v2

    :cond_9
    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v4, v4, v3

    if-ge v4, v1, :cond_21

    aget v4, v0, v4

    if-eqz v4, :cond_21

    :goto_13
    sub-int v4, v3, v2

    if-lez v4, :cond_26

    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v5, v6, v2, v4}, Ljava/io/Writer;->write([CII)V

    if-lt v3, p1, :cond_26

    :cond_20
    return-void

    :cond_21
    add-int/lit8 v3, v3, 0x1

    if-lt v3, p1, :cond_9

    goto :goto_13

    :cond_26
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v2, v2, v3

    aget v2, v0, v2

    add-int/lit8 v3, v3, 0x1

    if-gez v2, :cond_3a

    const/4 v4, 0x6

    :goto_31
    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v4, v5, :cond_3c

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeSingleEscape(I)V

    move v2, v3

    goto :goto_6

    :cond_3a
    const/4 v4, 0x2

    goto :goto_31

    :cond_3c
    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-direct {p0, v2, v4, v3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_appendSingleEscape(I[CI)V

    move v2, v3

    goto :goto_6
.end method

.method private _writeSingleEscape(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x30

    const/4 v6, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    if-nez v0, :cond_15

    new-array v0, v6, [C

    const/16 v1, 0x5c

    aput-char v1, v0, v5

    aput-char v4, v0, v2

    const/4 v1, 0x3

    aput-char v4, v0, v1

    :cond_15
    if-gez p1, :cond_36

    add-int/lit8 v1, p1, 0x1

    neg-int v1, v1

    const/16 v2, 0x75

    aput-char v2, v0, v3

    const/4 v2, 0x4

    sget-object v3, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, v0, v2

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1, v0, v5, v6}, Ljava/io/Writer;->write([CII)V

    :goto_35
    return-void

    :cond_36
    int-to-char v1, p1

    aput-char v1, v0, v3

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_35
.end method

.method private _writeString(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v0, v1, :cond_c

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeLongString(Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v1, v2, :cond_16

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_16
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v0, v1

    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getOutputEscapes()[I

    move-result-object v1

    array-length v2, v1

    :goto_26
    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-ge v3, v0, :cond_b

    :cond_2a
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v3, v3, v4

    if-ge v3, v2, :cond_63

    aget v3, v1, v3

    if-eqz v3, :cond_63

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_46

    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/Writer;->write([CII)V

    :cond_46
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v3, v3, v4

    aget v3, v1, v3

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-gez v3, :cond_6c

    const/4 v4, 0x6

    :goto_57
    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v4, v5, :cond_6e

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeSingleEscape(I)V

    goto :goto_26

    :cond_63
    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v3, v0, :cond_2a

    goto :goto_b

    :cond_6c
    const/4 v4, 0x2

    goto :goto_57

    :cond_6e
    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v4, v5, v4

    iput v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-direct {p0, v3, v5, v4}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_appendSingleEscape(I[CI)V

    goto :goto_26
.end method

.method private _writeString([CII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    add-int v0, p3, p2

    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getOutputEscapes()[I

    move-result-object v1

    array-length v2, v1

    move v3, p2

    :goto_8
    if-ge v3, v0, :cond_33

    move v4, v3

    :cond_b
    aget-char v5, p1, v4

    if-ge v5, v2, :cond_34

    aget v5, v1, v5

    if-eqz v5, :cond_34

    :goto_13
    sub-int v5, v4, v3

    const/16 v6, 0x20

    if-ge v5, v6, :cond_39

    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v5

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v7, :cond_23

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_23
    if-lez v5, :cond_31

    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v3, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v3, v5

    iput v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    :cond_31
    :goto_31
    if-lt v4, v0, :cond_42

    :cond_33
    return-void

    :cond_34
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_b

    goto :goto_13

    :cond_39
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, p1, v3, v5}, Ljava/io/Writer;->write([CII)V

    goto :goto_31

    :cond_42
    aget-char v3, p1, v4

    aget v3, v1, v3

    add-int/lit8 v4, v4, 0x1

    if-gez v3, :cond_63

    const/4 v5, 0x6

    :goto_4b
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v5

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v7, :cond_55

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_55
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-direct {p0, v3, v6, v7}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_appendSingleEscape(I[CI)V

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v3, v5

    iput v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    move v3, v4

    goto :goto_8

    :cond_63
    const/4 v5, 0x2

    goto :goto_4b
.end method

.method private writeRawLong(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/4 v5, 0x0

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v5, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_1d
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v0, v2, :cond_34

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    add-int v3, v1, v2

    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v1, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_1d

    :cond_34
    add-int v2, v1, v0

    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v1, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void
.end method


# virtual methods
.method protected final _flushBuffer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_15

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    const/4 v2, 0x0

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    :cond_15
    return-void
.end method

.method protected _releaseBuffers()V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseConcatBuffer([C)V

    :cond_c
    return-void
.end method

.method protected final _verifyPrettyValueWrite(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_36

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cantHappen()V

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeArrayValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_6

    :pswitch_d
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeObjectFieldValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_6

    :pswitch_13
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeRootValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_6

    :pswitch_19
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->beforeArrayValues(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_6

    :cond_27
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lorg/codehaus/jackson/JsonGenerator;)V

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
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeValue()I

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

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    :cond_25
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-nez v1, :cond_4b

    packed-switch v0, :pswitch_data_50

    :goto_2c
    return-void

    :pswitch_2d
    const/16 v0, 0x2c

    :goto_2f
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_38

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_38
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v0, v1, v2

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_2c

    :pswitch_45
    const/16 v0, 0x3a

    goto :goto_2f

    :pswitch_48
    const/16 v0, 0x20

    goto :goto_2f

    :cond_4b
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyPrettyValueWrite(Ljava/lang/String;I)V

    goto :goto_2c

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_45
        :pswitch_48
    .end packed-switch
.end method

.method protected _writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/4 v0, 0x3

    sub-int v0, p4, v0

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    move v3, p3

    :goto_e
    if-gt v3, v0, :cond_5b

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v4, v1, :cond_17

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_17
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v3, v5, v6}, Lorg/codehaus/jackson/Base64Variant;->encodeBase64Chunk(I[CI)I

    move-result v3

    iput v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_59

    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v5, 0x5c

    aput-char v5, v2, v3

    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v5, 0x6e

    aput-char v5, v2, v3

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    :cond_59
    move v3, v4

    goto :goto_e

    :cond_5b
    sub-int v0, p4, v3

    if-lez v0, :cond_82

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v2, v1, :cond_66

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_66
    add-int/lit8 v1, v3, 0x1

    aget-byte v2, p2, v3

    shl-int/lit8 v2, v2, 0x10

    const/4 v3, 0x2

    if-ne v0, v3, :cond_83

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    :goto_78
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v1, v0, v2, v3}, Lorg/codehaus/jackson/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    :cond_82
    return-void

    :cond_83
    move v1, v2

    goto :goto_78
.end method

.method protected _writeEndArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    return-void
.end method

.method protected _writeEndObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    return-void
.end method

.method protected _writeFieldName(Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x22

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writePPFieldName(Ljava/lang/String;Z)V

    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_15

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_15
    if-eqz p2, :cond_23

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    :cond_23
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isFeatureEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_9

    :cond_2f
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_45

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_45
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    goto :goto_9
.end method

.method protected final _writePPFieldName(Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x22

    if-eqz p2, :cond_3b

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeObjectEntrySeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    :goto_9
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isFeatureEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_1a
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_30

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_30
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_9

    :cond_41
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_3a
.end method

.method protected _writeStartArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    return-void
.end method

.method protected _writeStartObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    if-eqz v0, :cond_27

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isFeatureEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_f
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->getOutputContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeEndArray()V

    goto :goto_f

    :cond_1d
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeEndObject()V

    goto :goto_f

    :cond_27
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isFeatureEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_3a
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :goto_3f
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_releaseBuffers()V

    return-void

    :cond_43
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_3f
.end method

.method public final flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x22

    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_10
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    add-int v0, p3, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_28

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_28
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    return-void
.end method

.method public writeBoolean(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x65

    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_12

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_12
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    if-eqz p1, :cond_31

    const/16 v2, 0x74

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x72

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    :goto_2c
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void

    :cond_31
    const/16 v2, 0x66

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x61

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x6c

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x73

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_2c
.end method

.method public writeNull()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x6c

    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_12

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_12
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    const/16 v2, 0x6e

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void
.end method

.method public writeNumber(D)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeNumber(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeNumber(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_10
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void
.end method

.method public writeNumber(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_10
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the generator, can not serialize regular Java objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/ObjectCodec;->writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    return-void
.end method

.method public writeRaw(C)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char p1, v0, v1

    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int/2addr v1, v2

    :cond_13
    if-lt v1, v0, :cond_23

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    :goto_22
    return-void

    :cond_23
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_f

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int/2addr v0, v1

    :cond_f
    if-lt v0, p3, :cond_20

    add-int v0, p2, p3

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    :goto_1f
    return-void

    :cond_20
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public writeRaw([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x20

    if-ge p3, v0, :cond_1b

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_e

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_e
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_1a
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;II)V

    return-void
.end method

.method public writeRawValue([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x22

    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_10
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_26

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_26
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    return-void
.end method

.method public writeString([CII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v3, 0x22

    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_10
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString([CII)V

    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_26

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_26
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    return-void
.end method

.method public final writeTree(Lorg/codehaus/jackson/JsonNode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the generator, can not serialize JsonNode-based trees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/ObjectCodec;->writeTree(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/JsonNode;)V

    return-void
.end method
