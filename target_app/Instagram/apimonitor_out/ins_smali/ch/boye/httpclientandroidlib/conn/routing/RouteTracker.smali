.class public final Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;
.super Ljava/lang/Object;
.source "RouteTracker.java"
.implements Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;
.field private connected:Z
.field private layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
.field private final localAddress:Ljava/net/InetAddress;
.field private proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
.field private secure:Z
.field private final targetHost:Lch/boye/httpclientandroidlib/HttpHost;
.field private tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Target host may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;
sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
.registers 4
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;
move-result-object v0
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;
move-result-object v1
invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;)V
return-void
.end method
.method public final clone()Ljava/lang/Object;
.registers 2
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final connectProxy(Lch/boye/httpclientandroidlib/HttpHost;Z)V
.registers 5
const/4 v1, 0x1
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Proxy host may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
if-eqz v0, :cond_17
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Already connected."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iput-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
new-array v0, v1, [Lch/boye/httpclientandroidlib/HttpHost;
const/4 v1, 0x0
aput-object p1, v0, v1
iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
iput-boolean p2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z
return-void
.end method
.method public final connectTarget(Z)V
.registers 4
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Already connected."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
iput-boolean p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:cond_4
:goto_4
return v0
:cond_5
instance-of v2, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;
iget-boolean v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
iget-boolean v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
if-ne v2, v3, :cond_43
iget-boolean v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z
iget-boolean v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z
if-ne v2, v3, :cond_43
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
if-ne v2, v3, :cond_43
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
if-ne v2, v3, :cond_43
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_43
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;
iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_43
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_43
move v0, v1
goto :goto_4
.end method
.method public final getHopCount()I
.registers 3
const/4 v0, 0x0
iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
if-eqz v1, :cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
if-nez v0, :cond_b
const/4 v0, 0x1
:cond_a
:goto_a
return v0
:cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
array-length v0, v0
add-int/lit8 v0, v0, 0x1
goto :goto_a
.end method
.method public final getHopTarget(I)Lch/boye/httpclientandroidlib/HttpHost;
.registers 6
if-gez p1, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Hop index must not be negative: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->getHopCount()I
move-result v0
if-lt p1, v0, :cond_42
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Hop index "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " exceeds tracked route length "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_42
add-int/lit8 v0, v0, -0x1
if-ge p1, v0, :cond_4b
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
aget-object v0, v0, p1
:goto_4a
return-object v0
:cond_4b
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
goto :goto_4a
.end method
.method public final getLayerType()Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
return-object v0
.end method
.method public final getLocalAddress()Ljava/net/InetAddress;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;
return-object v0
.end method
.method public final getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
const/4 v1, 0x0
aget-object v0, v0, v1
goto :goto_5
.end method
.method public final getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
return-object v0
.end method
.method public final getTunnelType()Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
return-object v0
.end method
.method public final hashCode()I
.registers 4
const/16 v0, 0x11
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v1
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
if-eqz v0, :cond_23
const/4 v0, 0x0
:goto_13
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
array-length v2, v2
if-ge v0, v2, :cond_23
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
aget-object v2, v2, v0
invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v1
add-int/lit8 v0, v0, 0x1
goto :goto_13
:cond_23
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(IZ)I
move-result v0
iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(IZ)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
return v0
.end method
.method public final isConnected()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
return v0
.end method
.method public final isLayered()Z
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->LAYERED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final isSecure()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z
return v0
.end method
.method public final isTunnelled()Z
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final layerProtocol(Z)V
.registers 4
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No layered protocol unless connected."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->LAYERED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
iput-boolean p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z
return-void
.end method
.method public final toRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
.registers 8
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;
iget-object v3, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
iget-boolean v4, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z
iget-object v5, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
iget-object v6, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V
goto :goto_5
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v1, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->getHopCount()I
move-result v0
mul-int/lit8 v0, v0, 0x1e
add-int/lit8 v0, v0, 0x32
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v0, "RouteTracker["
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;
if-eqz v0, :cond_20
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v0, "->"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_20
const/16 v0, 0x7b
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
if-eqz v0, :cond_2e
const/16 v0, 0x63
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_2e
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
sget-object v2, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
if-ne v0, v2, :cond_39
const/16 v0, 0x74
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_39
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
sget-object v2, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->LAYERED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
if-ne v0, v2, :cond_44
const/16 v0, 0x6c
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_44
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z
if-eqz v0, :cond_4d
const/16 v0, 0x73
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_4d
const-string v0, "}->"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
if-eqz v0, :cond_6b
const/4 v0, 0x0
:goto_57
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
array-length v2, v2
if-ge v0, v2, :cond_6b
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
aget-object v2, v2, v0
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v2, "->"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_57
:cond_6b
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const/16 v0, 0x5d
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;Z)V
.registers 7
const/4 v3, 0x0
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Proxy host may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
if-nez v0, :cond_17
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No tunnel unless connected."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
if-nez v0, :cond_23
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No proxy tunnel without proxy."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
array-length v0, v0
add-int/lit8 v0, v0, 0x1
new-array v0, v0, [Lch/boye/httpclientandroidlib/HttpHost;
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
array-length v2, v2
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
array-length v1, v0
add-int/lit8 v1, v1, -0x1
aput-object p1, v0, v1
iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
iput-boolean p2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z
return-void
.end method
.method public final tunnelTarget(Z)V
.registers 4
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No tunnel unless connected."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
if-nez v0, :cond_18
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No tunnel without proxy."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
iput-boolean p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z
return-void
.end method