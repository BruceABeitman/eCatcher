.class public Lch/boye/httpclientandroidlib/client/protocol/RequestClientConnControl;
.super Ljava/lang/Object;
.source "RequestClientConnControl.java"
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
.field private static final PROXY_CONN_DIRECTIVE:Ljava/lang/String; = "Proxy-Connection"
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestClientConnControl;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
return-void
.end method
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 6
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
if-eqz v0, :cond_22
const-string v0, "Proxy-Connection"
const-string v1, "Keep-Alive"
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:goto_21
:cond_21
return-void
:cond_22
const-string v0, "http.connection"
invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;
if-nez v0, :cond_34
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestClientConnControl;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "HTTP connection not set in the context"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
goto :goto_21
:cond_34
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getHopCount()I
move-result v1
const/4 v2, 0x1
if-eq v1, v2, :cond_45
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->isTunnelled()Z
move-result v1
if-eqz v1, :cond_54
:cond_45
const-string v1, "Connection"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_54
const-string v1, "Connection"
const-string v2, "Keep-Alive"
invoke-interface {p1, v1, v2}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_54
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getHopCount()I
move-result v1
const/4 v2, 0x2
if-ne v1, v2, :cond_21
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->isTunnelled()Z
move-result v0
if-nez v0, :cond_21
const-string v0, "Proxy-Connection"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_21
const-string v0, "Proxy-Connection"
const-string v1, "Keep-Alive"
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_21
.end method