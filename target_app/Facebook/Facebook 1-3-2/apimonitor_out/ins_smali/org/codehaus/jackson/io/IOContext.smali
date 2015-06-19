.class public final Lorg/codehaus/jackson/io/IOContext;
.super Ljava/lang/Object;
.field final _bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;
.field protected _concatBuffer:[C
.field protected _encoding:Lorg/codehaus/jackson/JsonEncoding;
.field protected final _managedResource:Z
.field protected _nameCopyBuffer:[C
.field protected _readIOBuffer:[B
.field final _sourceRef:Ljava/lang/Object;
.field protected _tokenBuffer:[C
.field protected _writeIOBuffer:[B
.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeIOBuffer:[B
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenBuffer:[C
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatBuffer:[C
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C
iput-object p1, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;
iput-object p2, p0, Lorg/codehaus/jackson/io/IOContext;->_sourceRef:Ljava/lang/Object;
iput-boolean p3, p0, Lorg/codehaus/jackson/io/IOContext;->_managedResource:Z
return-void
.end method
.method public allocConcatBuffer()[C
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatBuffer:[C
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Trying to call allocConcatBuffer() second time"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;
sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;
invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatBuffer:[C
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatBuffer:[C
return-object v0
.end method
.method public allocNameCopyBuffer(I)[C
.registers 4
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Trying to call allocNameCopyBuffer() second time"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;
sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;
invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C
return-object v0
.end method
.method public allocReadIOBuffer()[B
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Trying to call allocReadIOBuffer() second time"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;
sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;
invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B
return-object v0
.end method
.method public allocTokenBuffer()[C
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenBuffer:[C
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Trying to call allocTokenBuffer() second time"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;
sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;
invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenBuffer:[C
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenBuffer:[C
return-object v0
.end method
.method public allocWriteIOBuffer()[B
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeIOBuffer:[B
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Trying to call allocWriteIOBuffer() second time"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;
sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;
invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeIOBuffer:[B
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeIOBuffer:[B
return-object v0
.end method
.method public constructTextBuffer()Lorg/codehaus/jackson/util/TextBuffer;
.registers 3
new-instance v0, Lorg/codehaus/jackson/util/TextBuffer;
iget-object v1, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;
invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V
return-object v0
.end method
.method public getEncoding()Lorg/codehaus/jackson/JsonEncoding;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_encoding:Lorg/codehaus/jackson/JsonEncoding;
return-object v0
.end method
.method public getSourceReference()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_sourceRef:Ljava/lang/Object;
return-object v0
.end method
.method public isResourceManaged()Z
.registers 2
iget-boolean v0, p0, Lorg/codehaus/jackson/io/IOContext;->_managedResource:Z
return v0
.end method
.method public releaseConcatBuffer([C)V
.registers 4
if-eqz p1, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatBuffer:[C
if-eq p1, v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Trying to release buffer not owned by the context"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatBuffer:[C
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;
sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;
invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V
:cond_18
return-void
.end method
.method public releaseNameCopyBuffer([C)V
.registers 4
if-eqz p1, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C
if-eq p1, v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Trying to release buffer not owned by the context"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;
sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;
invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V
:cond_18
return-void
.end method
.method public releaseReadIOBuffer([B)V
.registers 4
if-eqz p1, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B
if-eq p1, v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Trying to release buffer not owned by the context"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;
sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;
invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V
:cond_18
return-void
.end method
.method public releaseTokenBuffer([C)V
.registers 4
if-eqz p1, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenBuffer:[C
if-eq p1, v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Trying to release buffer not owned by the context"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenBuffer:[C
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;
sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;
invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V
:cond_18
return-void
.end method
.method public releaseWriteIOBuffer([B)V
.registers 4
if-eqz p1, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeIOBuffer:[B
if-eq p1, v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Trying to release buffer not owned by the context"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeIOBuffer:[B
iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;
sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;
invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V
:cond_18
return-void
.end method
.method public setEncoding(Lorg/codehaus/jackson/JsonEncoding;)V
.registers 2
iput-object p1, p0, Lorg/codehaus/jackson/io/IOContext;->_encoding:Lorg/codehaus/jackson/JsonEncoding;
return-void
.end method