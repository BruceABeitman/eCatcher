.class public abstract Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;
.super Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;
.source "AbstractPooledConnAdapter.java"
.field protected volatile poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
.method protected constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
.registers 4
iget-object v0, p2, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
return-void
.end method
.method protected final assertAttached()V
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
if-nez v0, :cond_a
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V
throw v0
:cond_a
return-void
.end method
.method protected assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
.registers 3
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->isReleased()Z
move-result v0
if-nez v0, :cond_8
if-nez p1, :cond_e
:cond_8
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V
throw v0
:cond_e
return-void
.end method
.method public close()V
.registers 2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->shutdownEntry()V
:cond_9
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
move-result-object v0
if-eqz v0, :cond_12
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->close()V
:cond_12
return-void
.end method
.method protected declared-synchronized detach()V
.registers 2
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->detach()V
:try_end_7
.catchall {:try_start_2 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
return-object v0
.end method
.method public getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
.registers 3
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
iget-object v1, v0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;
if-nez v1, :cond_d
const/4 v0, 0x0
:goto_c
return-object v0
:cond_d
iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->toRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v0
goto :goto_c
.end method
.method public getState()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public layerProtocol(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 4
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->layerProtocol(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
return-void
.end method
.method public open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 5
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
return-void
.end method
.method public setState(Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->setState(Ljava/lang/Object;)V
return-void
.end method
.method public shutdown()V
.registers 2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->shutdownEntry()V
:cond_9
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
move-result-object v0
if-eqz v0, :cond_12
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->shutdown()V
:cond_12
return-void
.end method
.method public tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 5
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V
return-void
.end method
.method public tunnelTarget(ZLch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 4
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tunnelTarget(ZLch/boye/httpclientandroidlib/params/HttpParams;)V
return-void
.end method