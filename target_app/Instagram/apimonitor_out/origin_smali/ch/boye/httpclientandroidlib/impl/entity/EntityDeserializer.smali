.class public Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;
.super Ljava/lang/Object;
.source "EntityDeserializer.java"


# instance fields
.field private final lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;->lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    return-void
.end method


# virtual methods
.method public deserialize(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Lch/boye/httpclientandroidlib/HttpEntity;
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;->doDeserialize(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;

    move-result-object v0

    return-object v0
.end method

.method protected doDeserialize(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;
    .registers 11

    const/4 v7, 0x0

    const-wide/16 v5, -0x1

    new-instance v0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;-><init>()V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;->lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    invoke-interface {v1, p2}, Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;->determineLength(Lch/boye/httpclientandroidlib/HttpMessage;)J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v3, v1, v3

    if-nez v3, :cond_3a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setChunked(Z)V

    invoke-virtual {v0, v5, v6}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContentLength(J)V

    new-instance v1, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;

    invoke-direct {v1, p1}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    :goto_23
    const-string v1, "Content-Type"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContentType(Lch/boye/httpclientandroidlib/Header;)V

    :cond_2e
    const-string v1, "Content-Encoding"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContentEncoding(Lch/boye/httpclientandroidlib/Header;)V

    :cond_39
    return-object v0

    :cond_3a
    cmp-long v3, v1, v5

    if-nez v3, :cond_4d

    invoke-virtual {v0, v7}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setChunked(Z)V

    invoke-virtual {v0, v5, v6}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContentLength(J)V

    new-instance v1, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;

    invoke-direct {v1, p1}, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_23

    :cond_4d
    invoke-virtual {v0, v7}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setChunked(Z)V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContentLength(J)V

    new-instance v3, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;

    invoke-direct {v3, p1, v1, v2}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;J)V

    invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_23
.end method
