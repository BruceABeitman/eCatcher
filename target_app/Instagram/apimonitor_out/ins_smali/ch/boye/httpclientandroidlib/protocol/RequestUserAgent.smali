.class public Lch/boye/httpclientandroidlib/protocol/RequestUserAgent;
.super Ljava/lang/Object;
.source "RequestUserAgent.java"
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP request may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const-string v0, "User-Agent"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_21
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v0
invoke-static {v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getUserAgent(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_21
const-string v1, "User-Agent"
invoke-interface {p1, v1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_21
return-void
.end method