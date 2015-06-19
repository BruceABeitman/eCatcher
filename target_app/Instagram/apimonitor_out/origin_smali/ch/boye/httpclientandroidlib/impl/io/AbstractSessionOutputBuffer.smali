.class public abstract Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionOutputBuffer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/BufferInfo;
.implements Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;


# static fields
.field private static final CRLF:[B


# instance fields
.field private ascii:Z

.field private buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

.field private charset:Ljava/lang/String;

.field private metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

.field private minChunkLimit:I

.field private outstream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    return-void

    nop

    :array_a
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "US-ASCII"

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    const/16 v0, 0x200

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->minChunkLimit:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method protected createTransportMetrics()Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;-><init>()V

    return-object v0
.end method

.method public flush()V
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method protected flushBuffer()V
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1f

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->clear()V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    :cond_1f
    return-void
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method protected init(Ljava/io/OutputStream;ILch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-gtz p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size may not be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-nez p3, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    new-instance v0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-direct {v0, p2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_41
    const/4 v0, 0x1

    :goto_42
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    const-string v0, "http.connection.min-chunk-limit"

    const/16 v1, 0x200

    invoke-interface {p3, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->minChunkLimit:I

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->createTransportMetrics()Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    return-void

    :cond_55
    const/4 v0, 0x0

    goto :goto_42
.end method

.method public length()I
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v0

    return v0
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append(I)V

    return-void
.end method

.method public write([B)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write([BII)V

    goto :goto_2
.end method

.method public write([BII)V
    .registers 7

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->minChunkLimit:I

    if-gt p3, v0, :cond_f

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->capacity()I

    move-result v0

    if-le p3, v0, :cond_1e

    :cond_f
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    goto :goto_2

    :cond_1e
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_30

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    :cond_30
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V

    goto :goto_2
.end method

.method public writeLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    if-eqz v0, :cond_34

    const/4 v1, 0x0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v0

    :goto_c
    if-lez v0, :cond_41

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_26

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v3, p1, v1, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V

    :cond_26
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->isFull()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    :cond_31
    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_c

    :cond_34
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write([B)V

    :cond_41
    sget-object v0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write([B)V

    goto :goto_2
.end method

.method public writeLine(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write([B)V

    :cond_12
    sget-object v0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write([B)V

    goto :goto_2
.end method
