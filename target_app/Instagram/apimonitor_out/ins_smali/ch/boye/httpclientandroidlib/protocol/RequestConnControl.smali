.class public Lch/boye/httpclientandroidlib/protocol/RequestConnControl;
.super Ljava/lang/Object;
.source "RequestConnControl.java"
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
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v0
const-string v1, "CONNECT"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b
:goto_1a
:cond_1a
return-void
:cond_1b
const-string v0, "Connection"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1a
const-string v0, "Connection"
const-string v1, "Keep-Alive"
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1a
.end method