.class abstract Lcom/fasterxml/jackson/core/io/BaseReader;
.super Ljava/io/Reader;
.source "SourceFile"
.field protected _buffer:[B
.field protected final _context:Lcom/fasterxml/jackson/core/io/IOContext;
.field protected _in:Ljava/io/InputStream;
.field protected _length:I
.field protected _ptr:I
.field protected _tmpBuf:[C
.method protected constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V
.registers 7
invoke-direct {p0}, Ljava/io/Reader;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C
iput-object p1, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;
iput-object p2, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_in:Ljava/io/InputStream;
iput-object p3, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_buffer:[B
iput p4, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_ptr:I
iput p5, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_length:I
return-void
.end method
.method public close()V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_in:Ljava/io/InputStream;
if-eqz v0, :cond_d
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_in:Ljava/io/InputStream;
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/BaseReader;->freeBuffers()V
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:cond_d
return-void
.end method
.method public final freeBuffers()V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_buffer:[B
if-eqz v0, :cond_c
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_buffer:[B
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V
:cond_c
return-void
.end method
.method public read()I
.registers 4
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C
if-nez v0, :cond_a
new-array v0, v2, [C
iput-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C
invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/io/BaseReader;->read([CII)I
move-result v0
if-gtz v0, :cond_14
const/4 v0, -0x1
:goto_13
return v0
:cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C
aget-char v0, v0, v1
goto :goto_13
.end method
.method protected reportBounds([CII)V
.registers 7
new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "read(buf,"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "), cbuf["
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
array-length v2, p1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected reportStrangeStream()V
.registers 3
new-instance v0, Ljava/io/IOException;
const-string v1, "Strange I/O stream, returned 0 bytes on read"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method