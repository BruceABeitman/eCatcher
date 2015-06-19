.class public abstract Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionInputBuffer.java"
.implements Lch/boye/httpclientandroidlib/io/BufferInfo;
.implements Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
.field private ascii:Z
.field private buffer:[B
.field private bufferlen:I
.field private bufferpos:I
.field private charset:Ljava/lang/String;
.field private instream:Ljava/io/InputStream;
.field private linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
.field private maxLineLen:I
.field private metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
.field private minChunkLimit:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
const-string v0, "US-ASCII"
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ascii:Z
const/4 v0, -0x1
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->maxLineLen:I
const/16 v0, 0x200
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I
return-void
.end method
.method private lineFromLineBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
.registers 7
const/4 v4, 0x0
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I
move-result v0
if-lez v0, :cond_31
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
add-int/lit8 v2, v0, -0x1
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->byteAt(I)I
move-result v1
const/16 v2, 0xa
if-ne v1, v2, :cond_1c
add-int/lit8 v0, v0, -0x1
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->setLength(I)V
:cond_1c
if-lez v0, :cond_31
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
add-int/lit8 v2, v0, -0x1
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->byteAt(I)I
move-result v1
const/16 v2, 0xd
if-ne v1, v2, :cond_31
add-int/lit8 v0, v0, -0x1
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->setLength(I)V
:cond_31
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I
move-result v0
iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ascii:Z
if-eqz v1, :cond_46
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
invoke-virtual {p1, v1, v4, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;II)V
:goto_40
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->clear()V
return v0
:cond_46
new-instance v1, Ljava/lang/String;
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer()[B
move-result-object v2
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;
invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
goto :goto_40
.end method
.method private lineFromReadBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;I)I
.registers 8
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
add-int/lit8 v0, p2, 0x1
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
if-lez p2, :cond_14
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
add-int/lit8 v2, p2, -0x1
aget-byte v0, v0, v2
const/16 v2, 0xd
if-ne v0, v2, :cond_14
add-int/lit8 p2, p2, -0x1
:cond_14
sub-int v0, p2, v1
iget-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ascii:Z
if-eqz v2, :cond_20
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
invoke-virtual {p1, v2, v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([BII)V
:goto_1f
return v0
:cond_20
new-instance v2, Ljava/lang/String;
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;
invoke-direct {v2, v3, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v0
goto :goto_1f
.end method
.method private locateLF()I
.registers 4
iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
:goto_2
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I
if-ge v0, v1, :cond_12
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
aget-byte v1, v1, v0
const/16 v2, 0xa
if-ne v1, v2, :cond_f
:goto_e
return v0
:cond_f
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_12
const/4 v0, -0x1
goto :goto_e
.end method
.method public available()I
.registers 3
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->capacity()I
move-result v0
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->length()I
move-result v1
sub-int/2addr v0, v1
return v0
.end method
.method public capacity()I
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
array-length v0, v0
return v0
.end method
.method protected createTransportMetrics()Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
.registers 2
new-instance v0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;-><init>()V
return-object v0
.end method
.method protected fillBuffer()I
.registers 7
const/4 v5, 0x0
const/4 v0, -0x1
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
if-lez v1, :cond_1a
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I
iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
sub-int/2addr v1, v2
if-lez v1, :cond_16
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
iget v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_16
iput v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I
:cond_1a
iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
array-length v1, v1
sub-int/2addr v1, v2
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I
move-result v1
if-ne v1, v0, :cond_2b
:goto_2a
return v0
:cond_2b
add-int v0, v2, v1
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
int-to-long v2, v1
invoke-virtual {v0, v2, v3}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V
move v0, v1
goto :goto_2a
.end method
.method public getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
return-object v0
.end method
.method protected hasBufferedData()Z
.registers 3
iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I
if-ge v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method protected init(Ljava/io/InputStream;ILch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 7
const/4 v0, 0x0
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Input stream may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
if-gtz p2, :cond_15
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Buffer size may not be negative or zero"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_15
if-nez p3, :cond_1f
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP parameters may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;
new-array v1, p2, [B
iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I
new-instance v1, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
invoke-direct {v1, p2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;-><init>(I)V
iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;
const-string v2, "US-ASCII"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_4a
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;
const-string v2, "ASCII"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_4b
:cond_4a
const/4 v0, 0x1
:cond_4b
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ascii:Z
const-string v0, "http.connection.max-line-length"
const/4 v1, -0x1
invoke-interface {p3, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->maxLineLen:I
const-string v0, "http.connection.min-chunk-limit"
const/16 v1, 0x200
invoke-interface {p3, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->createTransportMetrics()Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
return-void
.end method
.method public length()I
.registers 3
iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
sub-int/2addr v0, v1
return v0
.end method
.method public read()I
.registers 4
const/4 v0, -0x1
:cond_1
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z
move-result v1
if-nez v1, :cond_e
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->fillBuffer()I
move-result v1
if-ne v1, v0, :cond_1
:goto_d
return v0
:cond_e
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
aget-byte v0, v0, v1
and-int/lit16 v0, v0, 0xff
goto :goto_d
.end method
.method public read([B)I
.registers 4
const/4 v0, 0x0
if-nez p1, :cond_4
:goto_3
return v0
:cond_4
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->read([BII)I
move-result v0
goto :goto_3
.end method
.method public read([BII)I
.registers 8
const/4 v0, -0x1
if-nez p1, :cond_5
const/4 v0, 0x0
:goto_4
:cond_4
return v0
:cond_5
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z
move-result v1
if-eqz v1, :cond_21
iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
sub-int/2addr v0, v1
invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
add-int/2addr v1, v0
iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
goto :goto_4
:cond_21
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I
if-le p3, v1, :cond_34
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
move-result v0
if-lez v0, :cond_4
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
int-to-long v2, v0
invoke-virtual {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V
goto :goto_4
:cond_34
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z
move-result v1
if-nez v1, :cond_41
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->fillBuffer()I
move-result v1
if-ne v1, v0, :cond_34
goto :goto_4
:cond_41
iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
sub-int/2addr v0, v1
invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
add-int/2addr v1, v0
iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
goto :goto_4
.end method
.method public readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
.registers 10
const/4 v1, 0x0
const/4 v3, -0x1
if-nez p1, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Char array buffer may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
const/4 v0, 0x1
move v2, v1
:cond_e
if-eqz v0, :cond_6c
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->locateLF()I
move-result v4
if-eq v4, v3, :cond_4c
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->isEmpty()Z
move-result v0
if-eqz v0, :cond_23
invoke-direct {p0, p1, v4}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->lineFromReadBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;I)I
move-result v0
:goto_22
return v0
:cond_23
add-int/lit8 v0, v4, 0x1
iget v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
sub-int/2addr v0, v5
iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
iget v7, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
invoke-virtual {v5, v6, v7, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V
add-int/lit8 v0, v4, 0x1
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
move v0, v1
:goto_36
:cond_36
iget v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->maxLineLen:I
if-lez v4, :cond_e
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
invoke-virtual {v4}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I
move-result v4
iget v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->maxLineLen:I
if-lt v4, v5, :cond_e
new-instance v0, Ljava/io/IOException;
const-string v1, "Maximum line length limit exceeded"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4c
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z
move-result v2
if-eqz v2, :cond_64
iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I
iget v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
sub-int/2addr v2, v4
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B
iget v6, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
invoke-virtual {v4, v5, v6, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V
iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I
iput v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I
:cond_64
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->fillBuffer()I
move-result v2
if-ne v2, v3, :cond_36
move v0, v1
goto :goto_36
:cond_6c
if-ne v2, v3, :cond_78
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->isEmpty()Z
move-result v0
if-eqz v0, :cond_78
move v0, v3
goto :goto_22
:cond_78
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->lineFromLineBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
move-result v0
goto :goto_22
.end method
.method public readLine()Ljava/lang/String;
.registers 4
new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
const/16 v1, 0x40
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_13
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method