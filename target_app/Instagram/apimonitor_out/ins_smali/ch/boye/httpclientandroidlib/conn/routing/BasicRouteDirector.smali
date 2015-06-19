.class public Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;
.super Ljava/lang/Object;
.source "BasicRouteDirector.java"
.implements Lch/boye/httpclientandroidlib/conn/routing/HttpRouteDirector;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected directStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I
.registers 6
const/4 v0, -0x1
invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I
move-result v1
const/4 v2, 0x1
if-le v1, v2, :cond_9
:goto_8
:cond_8
return v0
:cond_9
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;
move-result-object v1
invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;
move-result-object v2
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/HttpHost;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_8
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isSecure()Z
move-result v1
invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isSecure()Z
move-result v2
if-ne v1, v2, :cond_8
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;
move-result-object v1
if-eqz v1, :cond_35
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;
move-result-object v1
invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_8
:cond_35
const/4 v0, 0x0
goto :goto_8
.end method
.method protected firstStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I
.registers 4
const/4 v0, 0x1
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I
move-result v1
if-le v1, v0, :cond_8
const/4 v0, 0x2
:cond_8
return v0
.end method
.method public nextStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Planned route may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-eqz p2, :cond_12
invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I
move-result v0
if-gtz v0, :cond_17
:cond_12
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;->firstStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I
move-result v0
:goto_16
return v0
:cond_17
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_23
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;->proxiedStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I
move-result v0
goto :goto_16
:cond_23
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;->directStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I
move-result v0
goto :goto_16
.end method
.method protected proxiedStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I
.registers 10
const/4 v1, 0x0
const/4 v0, -0x1
invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I
move-result v2
const/4 v3, 0x1
if-gt v2, v3, :cond_a
:goto_9
:cond_9
return v0
:cond_a
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;
move-result-object v2
invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;
move-result-object v3
invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/HttpHost;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_9
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I
move-result v3
invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopCount()I
move-result v4
if-lt v3, v4, :cond_9
move v2, v1
:goto_23
add-int/lit8 v5, v4, -0x1
if-ge v2, v5, :cond_38
invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopTarget(I)Lch/boye/httpclientandroidlib/HttpHost;
move-result-object v5
invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->getHopTarget(I)Lch/boye/httpclientandroidlib/HttpHost;
move-result-object v6
invoke-virtual {v5, v6}, Lch/boye/httpclientandroidlib/HttpHost;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_9
add-int/lit8 v2, v2, 0x1
goto :goto_23
:cond_38
if-le v3, v4, :cond_3c
const/4 v0, 0x4
goto :goto_9
:cond_3c
invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isTunnelled()Z
move-result v2
if-eqz v2, :cond_48
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isTunnelled()Z
move-result v2
if-eqz v2, :cond_9
:cond_48
invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isLayered()Z
move-result v2
if-eqz v2, :cond_54
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isLayered()Z
move-result v2
if-eqz v2, :cond_9
:cond_54
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isTunnelled()Z
move-result v2
if-eqz v2, :cond_62
invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isTunnelled()Z
move-result v2
if-nez v2, :cond_62
const/4 v0, 0x3
goto :goto_9
:cond_62
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isLayered()Z
move-result v2
if-eqz v2, :cond_70
invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isLayered()Z
move-result v2
if-nez v2, :cond_70
const/4 v0, 0x5
goto :goto_9
:cond_70
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isSecure()Z
move-result v2
invoke-interface {p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;->isSecure()Z
move-result v3
if-ne v2, v3, :cond_9
move v0, v1
goto :goto_9
.end method