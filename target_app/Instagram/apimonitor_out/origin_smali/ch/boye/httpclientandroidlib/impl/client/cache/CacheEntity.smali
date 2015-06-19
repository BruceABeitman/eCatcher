.class Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntity;
.super Ljava/lang/Object;
.source "CacheEntity.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpEntity;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x301d8cf7d0140f29L


# instance fields
.field private final cacheEntry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntity;->cacheEntry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public consumeContent()V
    .registers 1

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntity;->cacheEntry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lch/boye/httpclientandroidlib/Header;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntity;->cacheEntry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntity;->cacheEntry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/cache/Resource;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lch/boye/httpclientandroidlib/Header;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntity;->cacheEntry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntity;->cacheEntry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :try_start_14
    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1b

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method
