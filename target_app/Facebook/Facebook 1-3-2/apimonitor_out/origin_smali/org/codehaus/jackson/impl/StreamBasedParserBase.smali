.class public abstract Lorg/codehaus/jackson/impl/StreamBasedParserBase;
.super Lorg/codehaus/jackson/impl/JsonNumericParserBase;


# instance fields
.field protected _bufferRecyclable:Z

.field protected _inputBuffer:[B

.field protected _inputStream:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;I)V

    iput-object p3, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    iput-object p4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    iput p5, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    iput p6, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    iput-boolean p7, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_bufferRecyclable:Z

    return-void
.end method


# virtual methods
.method protected _closeInput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->isFeatureEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_14
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    :cond_1c
    return-void
.end method

.method protected _releaseBuffers()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_releaseBuffers()V

    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_bufferRecyclable:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    iget-object v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    :cond_13
    return-void
.end method

.method protected final loadMore()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-wide v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputProcessed:J

    iget v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputProcessed:J

    iget v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputRowStart:I

    iget v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputRowStart:I

    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    iget-object v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_27

    iput v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    iput v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_closeInput()V

    if-nez v0, :cond_47

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    move v0, v4

    goto :goto_26
.end method
