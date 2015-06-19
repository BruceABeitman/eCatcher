.class public Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"
.implements Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."
.field protected final alwaysShutDown:Z
.field protected final connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
.field protected connectionExpiresTime:J
.field protected volatile isShutDown:Z
.field protected lastReleaseTime:J
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.field protected managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
.field protected final schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
.field protected uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
.method public constructor <init>()V
.registers 2
invoke-static {}, Lch/boye/httpclientandroidlib/impl/conn/SchemeRegistryFactory;->createDefault()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
move-result-object v0
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
if-nez p1, :cond_19
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Scheme registry must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_19
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->createConnectionOperator(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
invoke-direct {v0, p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J
iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->alwaysShutDown:Z
iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->isShutDown:Z
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
.registers 3
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
return-void
.end method
.method protected final assertStillUp()V
.registers 3
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->isShutDown:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Manager is shut down."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method public declared-synchronized closeExpiredConnections()V
.registers 5
monitor-enter p0
:try_start_1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J
cmp-long v0, v0, v2
if-ltz v0, :cond_12
const-wide/16 v0, 0x0
sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
:cond_12
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_14
monitor-exit p0
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
.registers 8
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->assertStillUp()V
if-nez p3, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Time unit must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_e
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_e
move-exception v0
monitor-exit p0
throw v0
:cond_11
:try_start_11
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
if-nez v0, :cond_33
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isOpen()Z
move-result v0
if-eqz v0, :cond_33
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v2
sub-long/2addr v0, v2
iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J
:try_end_2a
.catchall {:try_start_11 .. :try_end_2a} :catchall_e
cmp-long v0, v2, v0
if-gtz v0, :cond_33
:try_start_2e
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->close()V
:goto_33
:try_end_33
.catchall {:try_start_2e .. :try_end_33} :catchall_e
.catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_35
:cond_33
monitor-exit p0
return-void
:catch_35
move-exception v0
:try_start_36
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Problem closing idle connection."
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
:try_end_3d
.catchall {:try_start_36 .. :try_end_3d} :catchall_e
goto :goto_33
.end method
.method protected createConnectionOperator(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
.registers 3
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;
invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
return-object v0
.end method
.method protected finalize()V
.registers 2
:try_start_0
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->shutdown()V
:try_end_3
.catchall {:try_start_0 .. :try_end_3} :catchall_7
invoke-super {p0}, Ljava/lang/Object;->finalize()V
return-void
:catchall_7
move-exception v0
invoke-super {p0}, Ljava/lang/Object;->finalize()V
throw v0
.end method
.method public declared-synchronized getConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
.registers 9
const/4 v2, 0x1
const/4 v1, 0x0
monitor-enter p0
if-nez p1, :cond_10
:try_start_5
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Route may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_d
:try_end_d
.catchall {:try_start_5 .. :try_end_d} :catchall_d
move-exception v0
monitor-exit p0
throw v0
:cond_10
:try_start_10
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->assertStillUp()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_2f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Get connection for route "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_2f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
if-eqz v0, :cond_3b
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3b
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->closeExpiredConnections()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isOpen()Z
move-result v0
if-eqz v0, :cond_7b
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;
if-eqz v0, :cond_58
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->toRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v0
invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z
:try_end_55
.catchall {:try_start_10 .. :try_end_55} :catchall_d
move-result v0
if-nez v0, :cond_79
:cond_58
move v0, v2
:goto_59
move v5, v0
move v0, v1
move v1, v5
:goto_5c
if-eqz v1, :cond_86
:try_start_5e
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
:try_end_63
.catchall {:try_start_5e .. :try_end_63} :catchall_d
.catch Ljava/io/IOException; {:try_start_5e .. :try_end_63} :catch_7d
:goto_63
if-eqz v2, :cond_6c
:try_start_65
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
invoke-direct {v0, p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
:cond_6c
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
invoke-direct {v0, p0, v1, p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;-><init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
:try_end_77
.catchall {:try_start_65 .. :try_end_77} :catchall_d
monitor-exit p0
return-object v0
:cond_79
move v0, v1
goto :goto_59
:cond_7b
move v0, v2
goto :goto_5c
:catch_7d
move-exception v0
:try_start_7e
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v3, "Problem shutting down connection."
invoke-virtual {v1, v3, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
:try_end_85
.catchall {:try_start_7e .. :try_end_85} :catchall_d
goto :goto_63
:cond_86
move v2, v0
goto :goto_63
.end method
.method public getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
return-object v0
.end method
.method public declared-synchronized releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
.registers 10
const-wide/16 v3, 0x0
monitor-enter p0
:try_start_3
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->assertStillUp()V
instance-of v0, p1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
if-nez v0, :cond_15
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Connection class mismatch, connection not obtained from this manager."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_12
:try_end_12
.catchall {:try_start_3 .. :try_end_12} :catchall_12
move-exception v0
monitor-exit p0
throw v0
:cond_15
:try_start_15
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_31
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Releasing connection "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_31
check-cast p1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
iget-object v0, p1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
:try_end_35
.catchall {:try_start_15 .. :try_end_35} :catchall_12
if-nez v0, :cond_39
:goto_37
monitor-exit p0
return-void
:cond_39
:try_start_39
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
move-result-object v0
if-eqz v0, :cond_49
if-eq v0, p0, :cond_49
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Connection not obtained from this manager."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_49
.catchall {:try_start_39 .. :try_end_49} :catchall_12
:try_start_49
:cond_49
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->isOpen()Z
move-result v0
if-eqz v0, :cond_6b
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->alwaysShutDown:Z
if-nez v0, :cond_59
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->isMarkedReusable()Z
move-result v0
if-nez v0, :cond_6b
:cond_59
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_68
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "Released connection open but not reusable."
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_68
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->shutdown()V
:cond_6b
:try_start_6b
:try_end_6b
.catchall {:try_start_49 .. :try_end_6b} :catchall_c0
.catch Ljava/io/IOException; {:try_start_49 .. :try_end_6b} :catch_8d
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J
cmp-long v0, p2, v3
if-lez v0, :cond_85
invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v0
iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J
add-long/2addr v0, v2
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J
goto :goto_37
:cond_85
const-wide v0, 0x7fffffffffffffffL
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J
:try_end_8c
.catchall {:try_start_6b .. :try_end_8c} :catchall_12
goto :goto_37
:catch_8d
move-exception v0
:try_start_8e
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v1
if-eqz v1, :cond_9d
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Exception shutting down released connection."
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
:try_end_9d
.catchall {:try_start_8e .. :try_end_9d} :catchall_c0
:try_start_9d
:cond_9d
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J
cmp-long v0, p2, v3
if-lez v0, :cond_b7
invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v0
iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J
add-long/2addr v0, v2
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J
goto :goto_37
:cond_b7
const-wide v0, 0x7fffffffffffffffL
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J
goto/16 :goto_37
:catchall_c0
move-exception v0
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V
const/4 v1, 0x0
iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J
cmp-long v1, p2, v3
if-lez v1, :cond_db
invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v1
iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J
add-long/2addr v1, v3
iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J
:goto_da
throw v0
:cond_db
const-wide v1, 0x7fffffffffffffffL
iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J
:try_end_e2
.catchall {:try_start_9d .. :try_end_e2} :catchall_12
goto :goto_da
.end method
.method public final requestConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
.registers 4
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$1;
invoke-direct {v0, p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$1;-><init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)V
return-object v0
.end method
.method protected declared-synchronized revokeConnection()V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_1b
if-nez v0, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V
:try_start_c
:try_end_c
.catchall {:try_start_7 .. :try_end_c} :catchall_1b
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
:try_end_11
.catchall {:try_start_c .. :try_end_11} :catchall_1b
.catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_12
goto :goto_5
:catch_12
move-exception v0
:try_start_13
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Problem while shutting down connection."
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
:try_end_1a
.catchall {:try_start_13 .. :try_end_1a} :catchall_1b
goto :goto_5
:catchall_1b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized shutdown()V
.registers 4
monitor-enter p0
const/4 v0, 0x1
:try_start_2
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->isShutDown:Z
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
if-eqz v0, :cond_d
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V
:try_start_d
:cond_d
:try_end_d
.catchall {:try_start_2 .. :try_end_d} :catchall_27
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
if-eqz v0, :cond_16
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
:cond_16
:try_end_16
.catchall {:try_start_d .. :try_end_16} :catchall_2a
.catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_1b
const/4 v0, 0x0
:try_start_17
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
:goto_19
:try_end_19
.catchall {:try_start_17 .. :try_end_19} :catchall_27
monitor-exit p0
return-void
:catch_1b
move-exception v0
:try_start_1c
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Problem while shutting down manager."
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
:try_end_23
.catchall {:try_start_1c .. :try_end_23} :catchall_2a
const/4 v0, 0x0
:try_start_24
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
:try_end_26
.catchall {:try_start_24 .. :try_end_26} :catchall_27
goto :goto_19
:catchall_27
move-exception v0
monitor-exit p0
throw v0
:catchall_2a
move-exception v0
const/4 v1, 0x0
:try_start_2c
iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
throw v0
:try_end_2f
.catchall {:try_start_2c .. :try_end_2f} :catchall_27
.end method