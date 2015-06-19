.class public Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;
.super Ljava/lang/Object;
.source "EntitySerializer.java"


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
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;->lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    return-void
.end method


# virtual methods
.method protected doSerialize(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/io/OutputStream;
    .registers 8

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;->lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    invoke-interface {v0, p2}, Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;->determineLength(Lch/boye/httpclientandroidlib/HttpMessage;)J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v0, v1, v3

    if-nez v0, :cond_12

    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;)V

    :goto_11
    return-object v0

    :cond_12
    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_1e

    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;)V

    goto :goto_11

    :cond_1e
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;

    invoke-direct {v0, p1, v1, v2}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;J)V

    goto :goto_11
.end method

.method public serialize(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;Lch/boye/httpclientandroidlib/HttpEntity;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session output buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-nez p3, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;->doSerialize(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method
