.class Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;
.super Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.source "CombinedEntity.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final combinedStream:Ljava/io/InputStream;

.field private final resource:Lch/boye/httpclientandroidlib/client/cache/Resource;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/client/cache/Resource;Ljava/io/InputStream;)V
    .registers 6

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

    new-instance v0, Ljava/io/SequenceInputStream;

    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity$ResourceStream;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity$ResourceStream;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;Ljava/io/InputStream;)V

    invoke-direct {v0, v1, p2}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->combinedStream:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$000(Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;)V
    .registers 1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->dispose()V

    return-void
.end method

.method private dispose()V
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/cache/Resource;->dispose()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->combinedStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const/16 v0, 0x800

    :try_start_10
    new-array v0, v0, [B

    :goto_12
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_12

    :catchall_1e
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_23
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void
.end method
