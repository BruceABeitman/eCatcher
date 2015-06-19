.class public Lch/boye/httpclientandroidlib/protocol/RequestContent;
.super Ljava/lang/Object;
.source "RequestContent.java"
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 9
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP request may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
if-eqz v0, :cond_46
const-string v0, "Transfer-Encoding"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1e
new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;
const-string v1, "Transfer-encoding header already present"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
const-string v0, "Content-Length"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2e
new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;
const-string v1, "Content-Length header already present"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2e
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v1
move-object v0, p1
check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v0
if-nez v0, :cond_47
const-string v0, "Content-Length"
const-string v1, "0"
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:goto_46
:cond_46
return-void
:cond_47
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->isChunked()Z
move-result v2
if-nez v2, :cond_57
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J
move-result-wide v2
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-gez v2, :cond_a6
:cond_57
sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z
move-result v2
if-eqz v2, :cond_74
new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Chunked transfer encoding not allowed for "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_74
const-string v1, "Transfer-Encoding"
const-string v2, "chunked"
invoke-interface {p1, v1, v2}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:goto_7b
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_90
const-string v1, "Content-Type"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_90
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;
move-result-object v1
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Lch/boye/httpclientandroidlib/Header;)V
:cond_90
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentEncoding()Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_46
const-string v1, "Content-Encoding"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_46
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentEncoding()Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Lch/boye/httpclientandroidlib/Header;)V
goto :goto_46
:cond_a6
const-string v1, "Content-Length"
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v1, v2}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7b
.end method