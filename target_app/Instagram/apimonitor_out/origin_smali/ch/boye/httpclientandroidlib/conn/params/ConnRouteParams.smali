.class public Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;
.super Ljava/lang/Object;
.source "ConnRouteParams.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/params/ConnRoutePNames;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field public static final NO_HOST:Lch/boye/httpclientandroidlib/HttpHost;

.field public static final NO_ROUTE:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lch/boye/httpclientandroidlib/HttpHost;

    const-string v1, "127.0.0.255"

    const/4 v2, 0x0

    const-string v3, "no-host"

    invoke-direct {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;->NO_HOST:Lch/boye/httpclientandroidlib/HttpHost;

    new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    sget-object v1, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;->NO_HOST:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Lch/boye/httpclientandroidlib/HttpHost;)V

    sput-object v0, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;->NO_ROUTE:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultProxy(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/HttpHost;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.route.default-proxy"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpHost;

    if-eqz v0, :cond_1d

    sget-object v1, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;->NO_HOST:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    :cond_1d
    return-object v0
.end method

.method public static getForcedRoute(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.route.forced-route"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    if-eqz v0, :cond_1d

    sget-object v1, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;->NO_ROUTE:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    :cond_1d
    return-object v0
.end method

.method public static getLocalAddress(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/InetAddress;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.route.local-address"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method public static setDefaultProxy(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/HttpHost;)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.route.default-proxy"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public static setForcedRoute(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.route.forced-route"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public static setLocalAddress(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/net/InetAddress;)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.route.local-address"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method
