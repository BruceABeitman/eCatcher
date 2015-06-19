.class public Lcom/fasterxml/jackson/core/io/IOContext;
.super Ljava/lang/Object;
.source "IOContext.java"


# instance fields
.field protected _base64Buffer:[B

.field protected final _bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

.field protected _concatCBuffer:[C

.field protected _encoding:Lcom/fasterxml/jackson/core/JsonEncoding;

.field protected final _managedResource:Z

.field protected _nameCopyBuffer:[C

.field protected _readIOBuffer:[B

.field protected final _sourceRef:Ljava/lang/Object;

.field protected _tokenCBuffer:[C

.field protected _writeEncodingBuffer:[B


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;Ljava/lang/Object;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_sourceRef:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_managedResource:Z

    return-void
.end method

.method private wrongBuf()Ljava/lang/IllegalArgumentException;
    .registers 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected _verifyAlloc(Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call same allocXxx() method second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method

.method protected _verifyRelease([B[B)V
    .registers 5

    if-eq p1, p2, :cond_b

    array-length v0, p1

    array-length v1, p2

    if-gt v0, v1, :cond_b

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/IOContext;->wrongBuf()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_b
    return-void
.end method

.method protected _verifyRelease([C[C)V
    .registers 5

    if-eq p1, p2, :cond_b

    array-length v0, p1

    array-length v1, p2

    if-gt v0, v1, :cond_b

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/IOContext;->wrongBuf()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_b
    return-void
.end method

.method public allocBase64Buffer()[B
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->BASE64_CODEC_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    return-object v0
.end method

.method public allocConcatBuffer()[C
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    return-object v0
.end method

.method public allocNameCopyBuffer(I)[C
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    return-object v0
.end method

.method public allocReadIOBuffer()[B
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    return-object v0
.end method

.method public allocReadIOBuffer(I)[B
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    return-object v0
.end method

.method public allocTokenBuffer()[C
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    return-object v0
.end method

.method public allocWriteEncodingBuffer()[B
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    return-object v0
.end method

.method public allocWriteEncodingBuffer(I)[B
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    return-object v0
.end method

.method public constructTextBuffer()Lcom/fasterxml/jackson/core/util/TextBuffer;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    return-object v0
.end method

.method public getEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_encoding:Lcom/fasterxml/jackson/core/JsonEncoding;

    return-object v0
.end method

.method public getSourceReference()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_sourceRef:Ljava/lang/Object;

    return-object v0
.end method

.method public isResourceManaged()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_managedResource:Z

    return v0
.end method

.method public releaseBase64Buffer([B)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([B[B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->BASE64_CODEC_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;[B)V

    :cond_11
    return-void
.end method

.method public releaseConcatBuffer([C)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([C[C)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;[C)V

    :cond_11
    return-void
.end method

.method public releaseNameCopyBuffer([C)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([C[C)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;[C)V

    :cond_11
    return-void
.end method

.method public releaseReadIOBuffer([B)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([B[B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;[B)V

    :cond_11
    return-void
.end method

.method public releaseTokenBuffer([C)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([C[C)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;[C)V

    :cond_11
    return-void
.end method

.method public releaseWriteEncodingBuffer([B)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([B[B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;[B)V

    :cond_11
    return-void
.end method

.method public setEncoding(Lcom/fasterxml/jackson/core/JsonEncoding;)V
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_encoding:Lcom/fasterxml/jackson/core/JsonEncoding;

    return-void
.end method
