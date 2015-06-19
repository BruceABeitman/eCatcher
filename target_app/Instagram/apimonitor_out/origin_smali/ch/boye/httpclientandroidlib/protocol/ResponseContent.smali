.class public Lch/boye/httpclientandroidlib/protocol/ResponseContent;
.super Ljava/lang/Object;
.source "ResponseContent.java"

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
    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;

    const-string v1, "Transfer-encoding header already present"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;

    const-string v1, "Content-Length header already present"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_90

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->isChunked()Z

    move-result v4

    if-eqz v4, :cond_7c

    sget-object v4, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v0, v4}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_7c

    const-string v0, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-interface {p1, v0, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    :goto_51
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_66

    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    :cond_66
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentEncoding()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_7b

    const-string v0, "Content-Encoding"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentEncoding()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_51

    const-string v0, "Content-Length"

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_90
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_7b

    const/16 v1, 0x130

    if-eq v0, v1, :cond_7b

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_7b

    const-string v0, "Content-Length"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b
.end method
