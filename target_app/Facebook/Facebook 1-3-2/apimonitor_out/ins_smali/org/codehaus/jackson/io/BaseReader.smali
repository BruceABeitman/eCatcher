.class abstract Lorg/codehaus/jackson/io/BaseReader;
.super Ljava/io/Reader;
.field protected static final LAST_VALID_UNICODE_CHAR:I = 0x10ffff
.field protected static final NULL_BYTE:C
.field protected static final NULL_CHAR:C
.field protected mBuffer:[B
.field protected final mContext:Lorg/codehaus/jackson/io/IOContext;
.field protected mIn:Ljava/io/InputStream;
.field protected mLength:I
.field protected mPtr:I
.field  mTmpBuf:[C
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V
.registers 7
invoke-direct {p0}, Ljava/io/Reader;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mTmpBuf:[C
iput-object p1, p0, Lorg/codehaus/jackson/io/BaseReader;->mContext:Lorg/codehaus/jackson/io/IOContext;
iput-object p2, p0, Lorg/codehaus/jackson/io/BaseReader;->mIn:Ljava/io/InputStream;
iput-object p3, p0, Lorg/codehaus/jackson/io/BaseReader;->mBuffer:[B
iput p4, p0, Lorg/codehaus/jackson/io/BaseReader;->mPtr:I
iput p5, p0, Lorg/codehaus/jackson/io/BaseReader;->mLength:I
return-void
.end method
.method public close()V
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mIn:Ljava/io/InputStream;
if-eqz v0, :cond_d
const/4 v1, 0x0
iput-object v1, p0, Lorg/codehaus/jackson/io/BaseReader;->mIn:Ljava/io/InputStream;
invoke-virtual {p0}, Lorg/codehaus/jackson/io/BaseReader;->freeBuffers()V
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:cond_d
return-void
.end method
.method public final freeBuffers()V
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mBuffer:[B
if-eqz v0, :cond_c
const/4 v1, 0x0
iput-object v1, p0, Lorg/codehaus/jackson/io/BaseReader;->mBuffer:[B
iget-object v1, p0, Lorg/codehaus/jackson/io/BaseReader;->mContext:Lorg/codehaus/jackson/io/IOContext;
invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V
:cond_c
return-void
.end method
.method public read()I
.registers 4
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mTmpBuf:[C
if-nez v0, :cond_a
new-array v0, v1, [C
iput-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mTmpBuf:[C
:cond_a
iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mTmpBuf:[C
invoke-virtual {p0, v0, v2, v1}, Lorg/codehaus/jackson/io/BaseReader;->read([CII)I
move-result v0
if-ge v0, v1, :cond_14
const/4 v0, -0x1
:goto_13
return v0
:cond_14
iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mTmpBuf:[C
aget-char v0, v0, v2
goto :goto_13
.end method
.method protected reportBounds([CII)V
.registers 7
new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "read(buf,"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
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