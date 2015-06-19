.class public Lch/boye/httpclientandroidlib/protocol/RequestExpectContinue;
.super Ljava/lang/Object;
.source "RequestExpectContinue.java"
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 7
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP request may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
if-eqz v0, :cond_42
move-object v0, p1
check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v0
if-eqz v0, :cond_42
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_42
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v0
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v1
invoke-static {v1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->useExpectContinue(Lch/boye/httpclientandroidlib/params/HttpParams;)Z
move-result v1
if-eqz v1, :cond_42
sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z
move-result v0
if-nez v0, :cond_42
const-string v0, "Expect"
const-string v1, "100-continue"
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_42
return-void
.end method