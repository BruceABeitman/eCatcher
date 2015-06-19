.class public Lch/boye/httpclientandroidlib/protocol/ResponseConnControl;
.super Ljava/lang/Object;
.source "ResponseConnControl.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpResponseInterceptor;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 9

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_38

    const/16 v1, 0x198

    if-eq v0, v1, :cond_38

    const/16 v1, 0x19b

    if-eq v0, v1, :cond_38

    const/16 v1, 0x19d

    if-eq v0, v1, :cond_38

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_38

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_38

    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_40

    :cond_38
    const-string v0, "Connection"

    const-string v1, "Close"

    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v1

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_6e

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_66

    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_66
    const-string v0, "Connection"

    const-string v1, "Close"

    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_6e
    const-string v0, "http.request"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpRequest;

    if-eqz v0, :cond_3f

    const-string v1, "Connection"

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_8a

    const-string v0, "Connection"

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_8a
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "Connection"

    const-string v1, "Close"

    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f
.end method
