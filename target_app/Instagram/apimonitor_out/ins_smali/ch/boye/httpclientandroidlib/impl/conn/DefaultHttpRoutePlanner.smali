.class public Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpRoutePlanner;
.super Ljava/lang/Object;
.source "DefaultHttpRoutePlanner.java"
.implements Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
.field protected final schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "SchemeRegistry must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
return-void
.end method
.method public determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
.registers 8
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Request must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v0
invoke-static {v0}, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;->getForcedRoute(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v0
if-eqz v0, :cond_15
:goto_14
return-object v0
:cond_15
if-nez p1, :cond_1f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Target host must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v0
invoke-static {v0}, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;->getLocalAddress(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/InetAddress;
move-result-object v1
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v0
invoke-static {v0}, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;->getDefaultProxy(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/HttpHost;
move-result-object v2
:try_start_2f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
:try_end_38
.catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_38} :catch_45
move-result-object v0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->isLayered()Z
move-result v3
if-nez v2, :cond_50
new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
invoke-direct {v0, p1, v1, v3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Z)V
goto :goto_14
:catch_45
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/HttpException;
invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V
throw v1
:cond_50
new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
invoke-direct {v0, p1, v1, v2, v3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;Z)V
goto :goto_14
.end method