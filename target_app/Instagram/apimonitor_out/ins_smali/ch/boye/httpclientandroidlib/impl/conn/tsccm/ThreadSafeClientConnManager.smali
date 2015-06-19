.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"
.implements Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
.field protected final connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
.field protected final connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;
.field protected final connectionPool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.field protected final pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
.field protected final schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
.method public constructor <init>()V
.registers 2
invoke-static {}, Lch/boye/httpclientandroidlib/impl/conn/SchemeRegistryFactory;->createDefault()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
move-result-object v0
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
.registers 5
const-wide/16 v0, -0x1
sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-direct {p0, p1, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Scheme registry may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
new-instance v0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionOperator(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
invoke-virtual {p0, p2, p3, p4}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionPool(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p2, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Scheme registry may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
new-instance v0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionOperator(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionPool(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;
return-void
.end method
.method public closeExpiredConnections()V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "Closing expired connections"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->closeExpiredConnections()V
return-void
.end method
.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
.registers 7
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Closing connections idle longer than "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_26
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
return-void
.end method
.method protected createConnectionOperator(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
.registers 3
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;
invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
return-object v0
.end method
.method protected createConnectionPool(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;
.registers 4
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
invoke-direct {v0, v1, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/params/HttpParams;)V
return-object v0
.end method
.method protected createConnectionPool(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
.registers 11
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;
const/16 v3, 0x14
move-wide v4, p1
move-object v6, p3
invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V
return-object v0
.end method
.method protected finalize()V
.registers 2
:try_start_0
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V
:try_end_3
.catchall {:try_start_0 .. :try_end_3} :catchall_7
invoke-super {p0}, Ljava/lang/Object;->finalize()V
return-void
:catchall_7
move-exception v0
invoke-super {p0}, Ljava/lang/Object;->finalize()V
throw v0
.end method
.method public getConnectionsInPool()I
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getConnectionsInPool()I
move-result v0
return v0
.end method
.method public getConnectionsInPool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getConnectionsInPool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I
move-result v0
return v0
.end method
.method public getDefaultMaxPerRoute()I
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->getDefaultMaxPerRoute()I
move-result v0
return v0
.end method
.method public getMaxForRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;
invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->getMaxForRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I
move-result v0
return v0
.end method
.method public getMaxTotal()I
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getMaxTotalConnections()I
move-result v0
return v0
.end method
.method public getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
return-object v0
.end method
.method public releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
.registers 12
instance-of v0, p1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Connection class mismatch, connection not obtained from this manager."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
check-cast p1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
move-result-object v0
if-eqz v0, :cond_22
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;->getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
move-result-object v0
if-eq v0, p0, :cond_22
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Connection not obtained from this manager."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
monitor-enter p1
:try_start_23
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
move-result-object v1
check-cast v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
if-nez v1, :cond_2d
monitor-exit p1
:goto_2c
:try_end_2c
.catchall {:try_start_23 .. :try_end_2c} :catchall_5d
return-void
:try_start_2d
:cond_2d
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;->isOpen()Z
move-result v0
if-eqz v0, :cond_3c
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z
move-result v0
if-nez v0, :cond_3c
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;->shutdown()V
:try_end_3c
.catchall {:try_start_2d .. :try_end_3c} :catchall_a0
.catch Ljava/io/IOException; {:try_start_2d .. :try_end_3c} :catch_68
:try_start_3c
:cond_3c
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z
move-result v2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_51
if-eqz v2, :cond_60
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v3, "Released connection is reusable."
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:goto_51
:cond_51
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
move-wide v3, p2
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
:goto_5b
monitor-exit p1
:try_end_5c
.catchall {:try_start_3c .. :try_end_5c} :catchall_5d
goto :goto_2c
:catchall_5d
move-exception v0
monitor-exit p1
throw v0
:cond_60
:try_start_60
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v3, "Released connection is not reusable."
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:try_end_67
.catchall {:try_start_60 .. :try_end_67} :catchall_5d
goto :goto_51
:catch_68
move-exception v0
:try_start_69
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v2
if-eqz v2, :cond_78
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v3, "Exception shutting down released connection."
invoke-virtual {v2, v3, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
:cond_78
:try_start_78
:try_end_78
.catchall {:try_start_69 .. :try_end_78} :catchall_a0
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z
move-result v2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_8d
if-eqz v2, :cond_98
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v3, "Released connection is reusable."
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_8d
:goto_8d
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
move-wide v3, p2
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
goto :goto_5b
:cond_98
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v3, "Released connection is not reusable."
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
goto :goto_8d
:catchall_a0
move-exception v0
move-object v6, v0
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z
move-result v2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_b7
if-eqz v2, :cond_c2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v3, "Released connection is reusable."
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_b7
:goto_b7
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
move-wide v3, p2
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
throw v6
:cond_c2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v3, "Released connection is not reusable."
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:try_end_c9
.catchall {:try_start_78 .. :try_end_c9} :catchall_5d
goto :goto_b7
.end method
.method public requestConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
.registers 5
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->requestPoolEntry(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;
move-result-object v0
new-instance v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;
invoke-direct {v1, p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;-><init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
return-object v1
.end method
.method public setDefaultMaxPerRoute(I)V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;
invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->setDefaultMaxPerRoute(I)V
return-void
.end method
.method public setMaxForRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;I)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;
invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->setMaxForRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;I)V
return-void
.end method
.method public setMaxTotal(I)V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->setMaxTotalConnections(I)V
return-void
.end method
.method public shutdown()V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "Shutting down"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->shutdown()V
return-void
.end method