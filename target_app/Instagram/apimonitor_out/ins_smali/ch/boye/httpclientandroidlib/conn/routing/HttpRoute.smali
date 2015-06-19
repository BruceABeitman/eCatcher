.class public final Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
.super Ljava/lang/Object;
.source "HttpRoute.java"
.implements Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;
.field private static final EMPTY_HTTP_HOST_ARRAY:[Lch/boye/httpclientandroidlib/HttpHost;
.field private final layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
.field private final localAddress:Ljava/net/InetAddress;
.field private final proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
.field private final secure:Z
.field private final targetHost:Lch/boye/httpclientandroidlib/HttpHost;
.field private final tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Lch/boye/httpclientandroidlib/HttpHost;
sput-object v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lch/boye/httpclientandroidlib/HttpHost;
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;)V
.registers 9
const/4 v1, 0x0
sget-object v3, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lch/boye/httpclientandroidlib/HttpHost;
const/4 v4, 0x0
sget-object v5, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
sget-object v6, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
move-object v0, p0
move-object v2, p1
invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;Z)V
.registers 12
invoke-static {p3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->toChain(Lch/boye/httpclientandroidlib/HttpHost;)[Lch/boye/httpclientandroidlib/HttpHost;
move-result-object v3
if-eqz p4, :cond_1d
sget-object v5, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
:goto_8
if-eqz p4, :cond_20
sget-object v6, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->LAYERED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
:goto_c
move-object v0, p0
move-object v1, p2
move-object v2, p1
move v4, p4
invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V
if-nez p3, :cond_23
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Proxy host may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1d
sget-object v5, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
goto :goto_8
:cond_20
sget-object v6, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
goto :goto_c
:cond_23
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V
.registers 14
invoke-static {p3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->toChain(Lch/boye/httpclientandroidlib/HttpHost;)[Lch/boye/httpclientandroidlib/HttpHost;
move-result-object v3
move-object v0, p0
move-object v1, p2
move-object v2, p1
move v4, p4
move-object v5, p5
move-object v6, p6
invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Z)V
.registers 11
sget-object v3, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lch/boye/httpclientandroidlib/HttpHost;
sget-object v5, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
sget-object v6, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
move-object v0, p0
move-object v1, p2
move-object v2, p1
move v4, p3
invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V
.registers 14
invoke-static {p3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->toChain([Lch/boye/httpclientandroidlib/HttpHost;)[Lch/boye/httpclientandroidlib/HttpHost;
move-result-object v3
move-object v0, p0
move-object v1, p2
move-object v2, p1
move v4, p4
move-object v5, p5
move-object v6, p6
invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V
return-void
.end method
.method private constructor <init>(Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/HttpHost;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p2, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Target host may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
if-nez p3, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Proxies may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
if-ne p5, v0, :cond_26
array-length v0, p3
if-nez v0, :cond_26
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Proxy required if tunnelled."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_26
if-nez p5, :cond_2a
sget-object p5, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
:cond_2a
if-nez p6, :cond_2e
sget-object p6, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
:cond_2e
iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;
iput-object p3, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
iput-boolean p4, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->secure:Z
iput-object p5, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
iput-object p6, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
return-void
.end method
.method private static toChain(Lch/boye/httpclientandroidlib/HttpHost;)[Lch/boye/httpclientandroidlib/HttpHost;
.registers 3
if-nez p0, :cond_5
sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lch/boye/httpclientandroidlib/HttpHost;
:goto_4
return-object v0
:cond_5
const/4 v0, 0x1
new-array v0, v0, [Lch/boye/httpclientandroidlib/HttpHost;
const/4 v1, 0x0
aput-object p0, v0, v1
goto :goto_4
.end method
.method private static toChain([Lch/boye/httpclientandroidlib/HttpHost;)[Lch/boye/httpclientandroidlib/HttpHost;
.registers 5
const/4 v1, 0x0
if-eqz p0, :cond_6
array-length v0, p0
if-gtz v0, :cond_9
:cond_6
sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lch/boye/httpclientandroidlib/HttpHost;
:goto_8
return-object v0
:cond_9
array-length v2, p0
move v0, v1
:goto_b
if-ge v0, v2, :cond_1c
aget-object v3, p0, v0
if-nez v3, :cond_19
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Proxy chain may not contain null elements."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_19
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_1c
array-length v0, p0
new-array v0, v0, [Lch/boye/httpclientandroidlib/HttpHost;
array-length v2, p0
invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_8
.end method
.method public final clone()Ljava/lang/Object;
.registers 2
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:cond_4
:goto_4
return v0
:cond_5
instance-of v2, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
if-eqz v2, :cond_3d
check-cast p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
iget-boolean v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->secure:Z
iget-boolean v3, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->secure:Z
if-ne v2, v3, :cond_3b
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
if-ne v2, v3, :cond_3b
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
if-ne v2, v3, :cond_3b
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3b
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;
iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3b
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_3b
move v0, v1
goto :goto_4
:cond_3d
move v0, v1
goto :goto_4
.end method
.method public final getHopCount()I
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
array-length v0, v0
add-int/lit8 v0, v0, 0x1
return v0
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
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getHopCount()I
move-result v0
if-lt p1, v0, :cond_3c
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Hop index "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " exceeds route length "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_3c
add-int/lit8 v0, v0, -0x1
if-ge p1, v0, :cond_45
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
aget-object v0, v0, p1
:goto_44
return-object v0
:cond_45
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
goto :goto_44
.end method
.method public final getLayerType()Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
return-object v0
.end method
.method public final getLocalAddress()Ljava/net/InetAddress;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;
return-object v0
.end method
.method public final getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
array-length v0, v0
if-nez v0, :cond_7
const/4 v0, 0x0
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
const/4 v1, 0x0
aget-object v0, v0, v1
goto :goto_6
.end method
.method public final getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
return-object v0
.end method
.method public final getTunnelType()Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
return-object v0
.end method
.method public final hashCode()I
.registers 4
const/16 v0, 0x11
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v1
const/4 v0, 0x0
:goto_f
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
array-length v2, v2
if-ge v0, v2, :cond_1f
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
aget-object v2, v2, v0
invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v1
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_1f
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->secure:Z
invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(IZ)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
return v0
.end method
.method public final isLayered()Z
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
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
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->secure:Z
return v0
.end method
.method public final isTunnelled()Z
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final toString()Ljava/lang/String;
.registers 6
new-instance v1, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getHopCount()I
move-result v0
mul-int/lit8 v0, v0, 0x1e
add-int/lit8 v0, v0, 0x32
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v0, "HttpRoute["
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;
if-eqz v0, :cond_20
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v0, "->"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_20
const/16 v0, 0x7b
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
sget-object v2, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
if-ne v0, v2, :cond_30
const/16 v0, 0x74
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_30
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
sget-object v2, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->LAYERED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
if-ne v0, v2, :cond_3b
const/16 v0, 0x6c
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_3b
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->secure:Z
if-eqz v0, :cond_44
const/16 v0, 0x73
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_44
const-string v0, "}->"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;
array-length v3, v2
const/4 v0, 0x0
:goto_4d
if-ge v0, v3, :cond_5c
aget-object v4, v2, v0
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v4, "->"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_4d
:cond_5c
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const/16 v0, 0x5d
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method