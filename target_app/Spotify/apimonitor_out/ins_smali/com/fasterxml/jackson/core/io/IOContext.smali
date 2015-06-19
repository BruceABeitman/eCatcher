.class public final Lcom/fasterxml/jackson/core/io/IOContext;
.super Ljava/lang/Object;
.source "SourceFile"
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
.method public final allocConcatBuffer()[C
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Trying to call allocConcatBuffer() second time"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;
sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;)[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C
return-object v0
.end method
.method public final allocNameCopyBuffer(I)[C
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Trying to call allocNameCopyBuffer() second time"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;
sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;I)[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C
return-object v0
.end method
.method public final allocReadIOBuffer()[B
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Trying to call allocReadIOBuffer() second time"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;
sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;)[B
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B
return-object v0
.end method
.method public final allocTokenBuffer()[C
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Trying to call allocTokenBuffer() second time"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;
sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;)[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C
return-object v0
.end method
.method public final allocWriteEncodingBuffer()[B
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Trying to call allocWriteEncodingBuffer() second time"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;
sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;)[B
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B
return-object v0
.end method
.method public final constructTextBuffer()Lcom/fasterxml/jackson/core/util/TextBuffer;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/core/util/TextBuffer;
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V
return-object v0
.end method
.method public final getEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_encoding:Lcom/fasterxml/jackson/core/JsonEncoding;
return-object v0
.end method
.method public final getSourceReference()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_sourceRef:Ljava/lang/Object;
return-object v0
.end method
.method public final isResourceManaged()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_managedResource:Z
return v0
.end method
.method public final releaseConcatBuffer([C)V
.registers 4
if-eqz p1, :cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C
if-eq p1, v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Trying to release buffer not owned by the context"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;
sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;[C)V
:cond_18
return-void
.end method
.method public final releaseNameCopyBuffer([C)V
.registers 4
if-eqz p1, :cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C
if-eq p1, v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Trying to release buffer not owned by the context"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;
sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;[C)V
:cond_18
return-void
.end method
.method public final releaseReadIOBuffer([B)V
.registers 4
if-eqz p1, :cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B
if-eq p1, v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Trying to release buffer not owned by the context"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;
sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;[B)V
:cond_18
return-void
.end method
.method public final releaseTokenBuffer([C)V
.registers 4
if-eqz p1, :cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C
if-eq p1, v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Trying to release buffer not owned by the context"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;
sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;[C)V
:cond_18
return-void
.end method
.method public final releaseWriteEncodingBuffer([B)V
.registers 4
if-eqz p1, :cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B
if-eq p1, v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Trying to release buffer not owned by the context"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;
sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;[B)V
:cond_18
return-void
.end method
.method public final setEncoding(Lcom/fasterxml/jackson/core/JsonEncoding;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_encoding:Lcom/fasterxml/jackson/core/JsonEncoding;
return-void
.end method