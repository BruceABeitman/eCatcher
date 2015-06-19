.class public Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"
.field private static final BUFFER_SIZE:I = 0x800
.field private static final CHUNK_CRLF:I = 0x3
.field private static final CHUNK_DATA:I = 0x2
.field private static final CHUNK_LEN:I = 0x1
.field private final buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
.field private chunkSize:I
.field private closed:Z
.field private eof:Z
.field private footers:[Lch/boye/httpclientandroidlib/Header;
.field private final in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
.field private pos:I
.field private state:I
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
iput-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z
iput-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z
new-array v0, v1, [Lch/boye/httpclientandroidlib/Header;
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->footers:[Lch/boye/httpclientandroidlib/Header;
if-nez p1, :cond_16
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Session input buffer may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I
new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
const/16 v1, 0x10
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
const/4 v0, 0x1
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I
return-void
.end method
.method private getChunkSize()I
.registers 5
const/4 v3, -0x1
const/4 v0, 0x0
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I
packed-switch v1, :pswitch_data_68
:pswitch_7
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Inconsistent codec state"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_f
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
move-result v1
if-ne v1, v3, :cond_1f
:cond_1e
:goto_1e
return v0
:cond_1f
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->isEmpty()Z
move-result v1
if-nez v1, :cond_2f
new-instance v0, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;
const-string v1, "Unexpected content at the end of chunk"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f
const/4 v1, 0x1
iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I
:pswitch_32
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
move-result v1
if-eq v1, v3, :cond_1e
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
const/16 v1, 0x3b
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->indexOf(I)I
move-result v0
if-gez v0, :cond_51
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v0
:try_start_51
:cond_51
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
const/4 v2, 0x0
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
move-result-object v0
const/16 v1, 0x10
invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
:try_end_5d
.catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_5d} :catch_5f
move-result v0
goto :goto_1e
:catch_5f
move-exception v0
new-instance v0, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;
const-string v1, "Bad chunk header"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_data_68
.packed-switch 0x1
:pswitch_32
:pswitch_7
:pswitch_f
.end packed-switch
.end method
.method private nextChunk()V
.registers 3
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->getChunkSize()I
move-result v0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I
iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I
if-gez v0, :cond_12
new-instance v0, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;
const-string v1, "Negative chunk size"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
const/4 v0, 0x2
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I
const/4 v0, 0x0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I
iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I
if-nez v0, :cond_22
const/4 v0, 0x1
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->parseTrailerHeaders()V
:cond_22
return-void
.end method
.method private parseTrailerHeaders()V
.registers 5
:try_start_0
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
const/4 v1, -0x1
const/4 v2, -0x1
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->footers:[Lch/boye/httpclientandroidlib/Header;
:try_end_b
.catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Invalid footer: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/HttpException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V
invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/util/ExceptionUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
throw v1
.end method
.method public available()I
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
instance-of v0, v0, Lch/boye/httpclientandroidlib/io/BufferInfo;
if-eqz v0, :cond_18
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
check-cast v0, Lch/boye/httpclientandroidlib/io/BufferInfo;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/BufferInfo;->length()I
move-result v0
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I
iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I
sub-int/2addr v1, v2
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public close()V
.registers 4
const/4 v2, 0x1
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z
if-nez v0, :cond_17
:try_start_5
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z
if-nez v0, :cond_13
const/16 v0, 0x800
new-array v0, v0, [B
:cond_d
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->read([B)I
:try_end_10
.catchall {:try_start_5 .. :try_end_10} :catchall_18
move-result v1
if-gez v1, :cond_d
:cond_13
iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z
iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z
:cond_17
return-void
:catchall_18
move-exception v0
iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z
iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z
throw v0
.end method
.method public getFooters()[Lch/boye/httpclientandroidlib/Header;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->footers:[Lch/boye/httpclientandroidlib/Header;
invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/Header;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lch/boye/httpclientandroidlib/Header;
check-cast v0, [Lch/boye/httpclientandroidlib/Header;
return-object v0
.end method
.method public read()I
.registers 4
const/4 v0, -0x1
iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z
if-eqz v1, :cond_d
new-instance v0, Ljava/io/IOException;
const-string v1, "Attempted read from closed stream."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z
if-eqz v1, :cond_12
:cond_11
:goto_11
return v0
:cond_12
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I
const/4 v2, 0x2
if-eq v1, v2, :cond_1e
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->nextChunk()V
iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z
if-nez v1, :cond_11
:cond_1e
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read()I
move-result v1
if-eq v1, v0, :cond_35
iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I
iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I
iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I
if-lt v0, v2, :cond_35
const/4 v0, 0x3
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I
:cond_35
move v0, v1
goto :goto_11
.end method
.method public read([B)I
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->read([BII)I
move-result v0
return v0
.end method
.method public read([BII)I
.registers 7
const/4 v0, -0x1
iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z
if-eqz v1, :cond_d
new-instance v0, Ljava/io/IOException;
const-string v1, "Attempted read from closed stream."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z
if-eqz v1, :cond_12
:cond_11
:goto_11
return v0
:cond_12
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I
const/4 v2, 0x2
if-eq v1, v2, :cond_1e
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->nextChunk()V
iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z
if-nez v1, :cond_11
:cond_1e
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I
iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I
sub-int/2addr v1, v2
invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I
move-result p3
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
invoke-interface {v1, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read([BII)I
move-result v1
if-eq v1, v0, :cond_3f
iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I
add-int/2addr v0, v1
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I
iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I
iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I
if-lt v0, v2, :cond_3d
const/4 v0, 0x3
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I
:cond_3d
move v0, v1
goto :goto_11
:cond_3f
const/4 v0, 0x1
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z
new-instance v0, Lch/boye/httpclientandroidlib/TruncatedChunkException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Truncated chunk ( expected size: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; actual size: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/TruncatedChunkException;-><init>(Ljava/lang/String;)V
throw v0
.end method