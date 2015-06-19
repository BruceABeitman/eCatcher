.class public Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
.super Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;
.source "RequestWrapper.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private execCount:I

.field private method:Ljava/lang/String;

.field private final original:Lch/boye/httpclientandroidlib/HttpRequest;

.field private uri:Ljava/net/URI;

.field private version:Lch/boye/httpclientandroidlib/ProtocolVersion;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .registers 7

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->original:Lch/boye/httpclientandroidlib/HttpRequest;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V

    instance-of v0, p1, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    if-eqz v0, :cond_39

    move-object v0, p1

    check-cast v0, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    check-cast p1, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->method:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    :goto_35
    const/4 v0, 0x0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->execCount:I

    return-void

    :cond_39
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    :try_start_3d
    new-instance v0, Ljava/net/URI;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->uri:Ljava/net/URI;
    :try_end_48
    .catch Ljava/net/URISyntaxException; {:try_start_3d .. :try_end_48} :catch_55

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->method:Ljava/lang/String;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    goto :goto_35

    :catch_55
    move-exception v0

    new-instance v2, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid request URI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public abort()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExecCount()I
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->execCount:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->original:Lch/boye/httpclientandroidlib/HttpRequest;

    return-object v0
.end method

.method public getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getVersion(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    :cond_e
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    return-object v0
.end method

.method public getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
    .registers 5

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    if-eqz v3, :cond_13

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    :cond_13
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1d

    :cond_1b
    const-string v0, "/"

    :cond_1d
    new-instance v3, Lch/boye/httpclientandroidlib/message/BasicRequestLine;

    invoke-direct {v3, v1, v0, v2}, Lch/boye/httpclientandroidlib/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    return-object v3
.end method

.method public getURI()Ljava/net/URI;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public incrementExecCount()V
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->execCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->execCount:I

    return-void
.end method

.method public isAborted()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public resetHeaders()V
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->clear()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->original:Lch/boye/httpclientandroidlib/HttpRequest;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->method:Ljava/lang/String;

    return-void
.end method

.method public setProtocolVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)V
    .registers 2

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .registers 2

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    return-void
.end method
