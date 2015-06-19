.class public final Lch/boye/httpclientandroidlib/params/HttpProtocolParams;
.super Ljava/lang/Object;
.source "HttpProtocolParams.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/params/CoreProtocolPNames;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.protocol.content-charset"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_16

    const-string v0, "ISO-8859-1"

    :cond_16
    return-object v0
.end method

.method public static getHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.protocol.element-charset"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_16

    const-string v0, "US-ASCII"

    :cond_16
    return-object v0
.end method

.method public static getUserAgent(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.useragent"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/ProtocolVersion;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.protocol.version"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    :goto_14
    return-object v0

    :cond_15
    check-cast v0, Lch/boye/httpclientandroidlib/ProtocolVersion;

    goto :goto_14
.end method

.method public static setContentCharset(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.protocol.content-charset"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public static setHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.protocol.element-charset"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public static setUseExpectContinue(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.protocol.expect-continue"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public static setUserAgent(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.useragent"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public static setVersion(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/ProtocolVersion;)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.protocol.version"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public static useExpectContinue(Lch/boye/httpclientandroidlib/params/HttpParams;)Z
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.protocol.expect-continue"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
