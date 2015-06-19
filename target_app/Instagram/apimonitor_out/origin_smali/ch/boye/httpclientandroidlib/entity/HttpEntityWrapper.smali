.class public Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;
.super Ljava/lang/Object;
.source "HttpEntityWrapper.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpEntity;


# instance fields
.field protected wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrapped entity must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lch/boye/httpclientandroidlib/Header;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentEncoding()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lch/boye/httpclientandroidlib/Header;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
