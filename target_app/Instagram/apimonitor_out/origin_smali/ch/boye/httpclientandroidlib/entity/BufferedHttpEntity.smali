.class public Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;
.super Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;
.source "BufferedHttpEntity.java"


# instance fields
.field private final buffer:[B


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .registers 6

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    :cond_13
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toByteArray(Lch/boye/httpclientandroidlib/HttpEntity;)[B

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->buffer:[B

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->buffer:[B

    goto :goto_19
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->buffer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_b
.end method

.method public getContentLength()J
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->buffer:[B

    array-length v0, v0

    int-to-long v0, v0

    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v0

    goto :goto_8
.end method

.method public isChunked()Z
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->buffer:[B

    if-nez v0, :cond_e

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->buffer:[B

    if-nez v0, :cond_e

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_14

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->buffer:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_13
.end method
