.class public Lch/boye/httpclientandroidlib/message/BasicHttpRequest;
.super Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;
.source "BasicHttpRequest.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpRequest;


# instance fields
.field private final method:Ljava/lang/String;

.field private requestline:Lch/boye/httpclientandroidlib/RequestLine;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/RequestLine;)V
    .registers 4

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->requestline:Lch/boye/httpclientandroidlib/RequestLine;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->method:Ljava/lang/String;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->uri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request URI may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->method:Ljava/lang/String;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->uri:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->requestline:Lch/boye/httpclientandroidlib/RequestLine;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V
    .registers 5

    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicRequestLine;

    invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Lch/boye/httpclientandroidlib/RequestLine;)V

    return-void
.end method


# virtual methods
.method public getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->requestline:Lch/boye/httpclientandroidlib/RequestLine;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getVersion(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicRequestLine;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->method:Ljava/lang/String;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->uri:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lch/boye/httpclientandroidlib/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->requestline:Lch/boye/httpclientandroidlib/RequestLine;

    :cond_17
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->requestline:Lch/boye/httpclientandroidlib/RequestLine;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
