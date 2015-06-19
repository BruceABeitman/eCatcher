.class public abstract Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
.super Ljava/lang/Object;
.source "AbstractPoolEntry.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

.field protected final connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

.field protected volatile route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

.field protected volatile state:Ljava/lang/Object;

.field protected volatile tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection operator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;->createConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public layerProtocol(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 6

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection not open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protocol layering without a tunnel not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isLayered()Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple protocol layering not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v1, v2, v0, p1, p2}, Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;->updateSecureConnection(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isSecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layerProtocol(Z)V

    return-void
.end method

.method public open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 11

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p3, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection already open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;-><init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v6

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    if-eqz v6, :cond_4f

    move-object v2, v6

    :goto_3a
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;->openConnection(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    if-nez v0, :cond_54

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v2

    goto :goto_3a

    :cond_54
    if-nez v6, :cond_60

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isSecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connectTarget(Z)V

    :goto_5f
    return-void

    :cond_60
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isSecure()Z

    move-result v1

    invoke-virtual {v0, v6, v1}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connectProxy(Lch/boye/httpclientandroidlib/HttpHost;Z)V

    goto :goto_5f
.end method

.method public setState(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->state:Ljava/lang/Object;

    return-void
.end method

.method protected shutdownEntry()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->state:Ljava/lang/Object;

    return-void
.end method

.method public tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Next proxy must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p3, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection not open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;Z)V

    return-void
.end method

.method public tunnelTarget(ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 6

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection not open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already tunnelled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    const/4 v1, 0x0

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelTarget(Z)V

    return-void
.end method
