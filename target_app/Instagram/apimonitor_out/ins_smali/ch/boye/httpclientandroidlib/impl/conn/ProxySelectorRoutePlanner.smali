.class public Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner;
.super Ljava/lang/Object;
.source "ProxySelectorRoutePlanner.java"
.implements Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
.field protected proxySelector:Ljava/net/ProxySelector;
.field protected final schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "SchemeRegistry must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;
return-void
.end method
.method protected chooseProxy(Ljava/util/List;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/net/Proxy;
.registers 10
if-eqz p1, :cond_8
invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_10
:cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Proxy list must not be empty."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
const/4 v1, 0x0
const/4 v0, 0x0
move v2, v0
:goto_13
if-nez v1, :cond_36
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-ge v2, v0, :cond_36
invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/net/Proxy;
sget-object v3, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner$1;->$SwitchMap$java$net$Proxy$Type:[I
invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
move-result-object v4
invoke-virtual {v4}, Ljava/net/Proxy$Type;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_3c
move-object v0, v1
:pswitch_31
add-int/lit8 v1, v2, 0x1
move v2, v1
move-object v1, v0
goto :goto_13
:cond_36
if-nez v1, :cond_3a
sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;
:cond_3a
return-object v1
nop
:pswitch_data_3c
.packed-switch 0x1
:pswitch_31
:pswitch_31
.end packed-switch
.end method
.method protected determineProxy(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpHost;
.registers 8
const/4 v0, 0x0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;
if-nez v1, :cond_9
invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;
move-result-object v1
:cond_9
if-nez v1, :cond_c
:cond_b
:goto_b
return-object v0
:cond_c
:try_start_c
new-instance v2, Ljava/net/URI;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->toURI()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
:try_end_15
.catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_15} :catch_46
invoke-virtual {v1, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;
move-result-object v1
invoke-virtual {p0, v1, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner;->chooseProxy(Ljava/util/List;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/net/Proxy;
move-result-object v1
invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
move-result-object v2
sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
if-ne v2, v3, :cond_b
invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;
move-result-object v0
instance-of v0, v0, Ljava/net/InetSocketAddress;
if-nez v0, :cond_5c
new-instance v0, Lch/boye/httpclientandroidlib/HttpException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unable to handle non-Inet proxy address: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V
throw v0
:catch_46
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/HttpException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Cannot convert host to URI: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:cond_5c
invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;
move-result-object v0
check-cast v0, Ljava/net/InetSocketAddress;
new-instance v1, Lch/boye/httpclientandroidlib/HttpHost;
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner;->getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I
move-result v0
invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;I)V
move-object v0, v1
goto :goto_b
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
invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner;->determineProxy(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpHost;
move-result-object v2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
move-result-object v0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->isLayered()Z
move-result v3
if-nez v2, :cond_41
new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
invoke-direct {v0, p1, v1, v3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Z)V
goto :goto_14
:cond_41
new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
invoke-direct {v0, p1, v1, v2, v3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;Z)V
goto :goto_14
.end method
.method protected getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;
.registers 3
invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z
move-result v0
if-eqz v0, :cond_b
invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;
move-result-object v0
invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method
.method public getProxySelector()Ljava/net/ProxySelector;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;
return-object v0
.end method
.method public setProxySelector(Ljava/net/ProxySelector;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;
return-void
.end method