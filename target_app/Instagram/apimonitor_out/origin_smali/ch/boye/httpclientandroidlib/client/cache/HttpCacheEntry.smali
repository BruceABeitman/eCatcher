.class public Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
.super Ljava/lang/Object;
.source "HttpCacheEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x576fdc1d5b5b2ca5L


# instance fields
.field private final requestDate:Ljava/util/Date;

.field private final resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

.field private final responseDate:Ljava/util/Date;

.field private final responseHeaders:Lch/boye/httpclientandroidlib/message/HeaderGroup;

.field private final statusLine:Lch/boye/httpclientandroidlib/StatusLine;

.field private final variantMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/client/cache/Resource;)V
    .registers 13

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/client/cache/Resource;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/client/cache/Resource;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lch/boye/httpclientandroidlib/StatusLine;",
            "[",
            "Lch/boye/httpclientandroidlib/Header;",
            "Lch/boye/httpclientandroidlib/client/cache/Resource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request date may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response date may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-nez p3, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    if-nez p4, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response headers may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    if-nez p5, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Resource may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->requestDate:Ljava/util/Date;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->responseDate:Ljava/util/Date;

    iput-object p3, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->statusLine:Lch/boye/httpclientandroidlib/StatusLine;

    new-instance v0, Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->responseHeaders:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->responseHeaders:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p4}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V

    iput-object p5, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

    if-eqz p6, :cond_53

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_50
    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->variantMap:Ljava/util/Map;

    return-void

    :cond_53
    const/4 v0, 0x0

    goto :goto_50
.end method


# virtual methods
.method public getAllHeaders()[Lch/boye/httpclientandroidlib/Header;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->responseHeaders:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->responseHeaders:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->responseHeaders:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->statusLine:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->statusLine:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestDate()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->requestDate:Ljava/util/Date;

    return-object v0
.end method

.method public getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

    return-object v0
.end method

.method public getResponseDate()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->responseDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->statusLine:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->statusLine:Lch/boye/httpclientandroidlib/StatusLine;

    return-object v0
.end method

.method public getVariantMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->variantMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hasVariants()Z
    .registers 2

    const-string v0, "Vary"

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[request date="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->requestDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; response date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->responseDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; statusLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->statusLine:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
