.class public abstract Lorg/codehaus/jackson/impl/JsonParserBase;
.super Lorg/codehaus/jackson/JsonParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/impl/JsonParserBase$1;
    }
.end annotation


# static fields
.field static final INT_ASTERISK:I = 0x2a

.field static final INT_BACKSLASH:I = 0x5c

.field static final INT_COLON:I = 0x3a

.field static final INT_COMMA:I = 0x2c

.field static final INT_CR:I = 0xd

.field static final INT_LBRACKET:I = 0x5b

.field static final INT_LCURLY:I = 0x7b

.field static final INT_LF:I = 0xa

.field static final INT_QUOTE:I = 0x22

.field static final INT_RBRACKET:I = 0x5d

.field static final INT_RCURLY:I = 0x7d

.field static final INT_SLASH:I = 0x2f

.field static final INT_SPACE:I = 0x20

.field static final INT_TAB:I = 0x9

.field static final INT_b:I = 0x62

.field static final INT_f:I = 0x66

.field static final INT_n:I = 0x6e

.field static final INT_r:I = 0x72

.field static final INT_t:I = 0x74

.field static final INT_u:I = 0x75


# instance fields
.field protected _binaryValue:[B

.field _byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

.field protected _closed:Z

.field protected _currInputProcessed:J

.field protected _currInputRow:I

.field protected _currInputRowStart:I

.field protected _inputEnd:I

.field protected _inputPtr:I

.field protected final _ioContext:Lorg/codehaus/jackson/io/IOContext;

.field protected _nameCopied:Z

.field protected _nameCopyBuffer:[C

.field protected _nextToken:Lorg/codehaus/jackson/JsonToken;

.field protected _parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

.field protected final _textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

.field protected _tokenIncomplete:Z

.field protected _tokenInputCol:I

.field protected _tokenInputRow:I

.field protected _tokenInputTotal:J


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;I)V
    .registers 8

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/codehaus/jackson/JsonParser;-><init>()V

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    iput-wide v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    iput-wide v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    iput-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    iput-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    iput p2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_features:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->constructTextBuffer()Lorg/codehaus/jackson/util/TextBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-static {v0, v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->createRootContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    return-void
.end method

.method protected static final _getCharDesc(I)Ljava/lang/String;
    .registers 7

    const-string v5, "\' (code "

    const-string v4, "\'"

    const-string v3, ")"

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CTRL-CHAR, code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0

    :cond_27
    const/16 v1, 0xff

    if-le p0, v1, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method


# virtual methods
.method protected abstract _closeInput()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final _constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;
    .registers 4

    new-instance v0, Lorg/codehaus/jackson/JsonParseException;

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    return-object v0
.end method

.method protected final _constructError(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/codehaus/jackson/JsonParseException;
    .registers 5

    new-instance v0, Lorg/codehaus/jackson/JsonParseException;

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected abstract _decodeBase64(Lorg/codehaus/jackson/Base64Variant;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method protected abstract _finishString()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public _getByteArrayBuilder()Lorg/codehaus/jackson/util/ByteArrayBuilder;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    if-nez v0, :cond_e

    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    :goto_b
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    return-object v0

    :cond_e
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    goto :goto_b
.end method

.method protected _handleEOF()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->inRoot()Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": expected close marker for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method protected _releaseBuffers()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->releaseBuffers()V

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseNameCopyBuffer([C)V

    :cond_11
    return-void
.end method

.method protected final _reportError(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/JsonParserBase;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method protected _reportInvalidEOF()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF(Ljava/lang/String;)V

    return-void
.end method

.method protected _reportInvalidEOF(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected _reportMismatchedEndMarker(IC)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected close marker \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected _reportUnexpectedChar(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codehaus/jackson/impl/JsonParserBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_36
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected final _throwInternal()V
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: this code path should never get executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _throwInvalidSpace(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    int-to-char v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): only regular white space (\\r, \\n, \\t) is allowed between tokens"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected _throwUnquotedSpace(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    int-to-char v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal unquoted character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): has to be escaped using backslash to be included in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected final _wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonParserBase;->_constructError(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_closeInput()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    return-void
.end method

.method public final getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    :cond_24
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    if-eqz v0, :cond_31

    :try_start_28
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/JsonParserBase;->_decodeBase64(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2e} :catch_34

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    :cond_31
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B

    return-object v0

    :catch_34
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method public getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;
    .registers 9

    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParsingContext()Lorg/codehaus/jackson/JsonStreamContext;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getParsingContext()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lorg/codehaus/jackson/impl/JsonReadContext;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_30

    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :pswitch_18
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_1f
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_finishString()V

    :cond_29
    :pswitch_29
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_30
    const/4 v0, 0x0

    goto :goto_17

    :pswitch_data_32
    .packed-switch 0x5
        :pswitch_18
        :pswitch_1f
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public getTextCharacters()[C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_58

    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    :goto_18
    return-object v0

    :pswitch_19
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    if-nez v2, :cond_3e

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    :cond_33
    :goto_33
    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    :cond_3b
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    goto :goto_18

    :cond_3e
    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_33

    new-array v2, v1, [C

    iput-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    goto :goto_33

    :pswitch_48
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    if-eqz v0, :cond_51

    iput-boolean v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_finishString()V

    :cond_51
    :pswitch_51
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    goto :goto_18

    :cond_58
    const/4 v0, 0x0

    goto :goto_18

    :pswitch_data_5a
    .packed-switch 0x5
        :pswitch_19
        :pswitch_48
        :pswitch_51
        :pswitch_51
    .end packed-switch
.end method

.method public getTextLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_35

    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    :goto_19
    return v0

    :pswitch_1a
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_19

    :pswitch_25
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    if-eqz v0, :cond_2e

    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_finishString()V

    :cond_2e
    :pswitch_2e
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    goto :goto_19

    :cond_35
    move v0, v2

    goto :goto_19

    nop

    :pswitch_data_38
    .packed-switch 0x5
        :pswitch_1a
        :pswitch_25
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public getTextOffset()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_12

    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    :cond_12
    move v0, v2

    :goto_13
    return v0

    :pswitch_14
    move v0, v2

    goto :goto_13

    :pswitch_16
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    if-eqz v0, :cond_1f

    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_finishString()V

    :cond_1f
    :pswitch_1f
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v0

    goto :goto_13

    :pswitch_data_26
    .packed-switch 0x5
        :pswitch_14
        :pswitch_16
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public final getTokenCharacterOffset()J
    .registers 3

    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    return-wide v0
.end method

.method public final getTokenColumnNr()I
    .registers 2

    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getTokenLineNr()I
    .registers 2

    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    return v0
.end method

.method public getTokenLocation()Lorg/codehaus/jackson/JsonLocation;
    .registers 7

    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getTokenCharacterOffset()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getTokenLineNr()I

    move-result v4

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getTokenColumnNr()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    return v0
.end method

.method protected abstract loadMore()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final loadMoreGuaranteed()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->loadMore()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF()V

    :cond_9
    return-void
.end method

.method public abstract nextToken()Lorg/codehaus/jackson/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public final nextValue()Lorg/codehaus/jackson/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public skipChildren()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_d

    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x1

    :cond_e
    :goto_e
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_handleEOF()V

    goto :goto_c

    :cond_18
    sget-object v2, Lorg/codehaus/jackson/impl/JsonParserBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_2c

    goto :goto_e

    :pswitch_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :pswitch_27
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_e

    goto :goto_c

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method
