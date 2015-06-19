.class public Lcom/fasterxml/jackson/core/util/BufferRecycler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _byteBuffers:[[B

.field protected final _charBuffers:[[C


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->values()[Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:[[B

    invoke-static {}, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->values()[Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:[[C

    return-void
.end method

.method private balloc(I)[B
    .registers 3

    new-array v0, p1, [B

    return-object v0
.end method

.method private calloc(I)[C
    .registers 3

    new-array v0, p1, [C

    return-object v0
.end method


# virtual methods
.method public final allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;)[B
    .registers 6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->ordinal()I

    move-result v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:[[B

    aget-object v0, v0, v1

    if-nez v0, :cond_11

    iget v0, p1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->size:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->balloc(I)[B

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:[[B

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_10
.end method

.method public final allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;)[C
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    return-object v0
.end method

.method public final allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;I)[C
    .registers 7

    iget v0, p1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->size:I

    if-le v0, p2, :cond_6

    iget p2, p1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->size:I

    :cond_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:[[C

    aget-object v0, v0, v1

    if-eqz v0, :cond_13

    array-length v2, v0

    if-ge v2, p2, :cond_18

    :cond_13
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->calloc(I)[C

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:[[C

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_17
.end method

.method public final releaseByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;[B)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:[[B

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    return-void
.end method

.method public final releaseCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;[C)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:[[C

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    return-void
.end method
