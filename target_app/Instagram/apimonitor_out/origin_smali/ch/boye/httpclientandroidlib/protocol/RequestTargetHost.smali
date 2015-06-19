.class public Lch/boye/httpclientandroidlib/protocol/RequestTargetHost;
.super Ljava/lang/Object;
.source "RequestTargetHost.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 7

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v3

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v3, v0}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_34
    :goto_34
    return-void

    :cond_35
    const-string v0, "Host"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "http.target_host"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v0, :cond_7d

    const-string v1, "http.connection"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/HttpConnection;

    instance-of v2, v1, Lch/boye/httpclientandroidlib/HttpInetConnection;

    if-eqz v2, :cond_6b

    move-object v2, v1

    check-cast v2, Lch/boye/httpclientandroidlib/HttpInetConnection;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    check-cast v1, Lch/boye/httpclientandroidlib/HttpInetConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpInetConnection;->getRemotePort()I

    move-result v1

    if-eqz v2, :cond_6b

    new-instance v0, Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_6b
    if-nez v0, :cond_7d

    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v3, v0}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_34

    new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;

    const-string v1, "Target host missing"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    const-string v1, "Host"

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method
